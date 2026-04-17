<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Authentication_model');
        $this->load->model('Common_model');
        $this->load->model('Sale_model');
        $this->load->model('Sale_write_model');
        header('Content-Type: application/json');
    }

    private function response($status, $message, $data = [], $http_status = 200) {
        $this->output->set_status_header($http_status);
        echo json_encode([
            'status' => $status,
            'message' => $message,
            'data' => $data
        ]);
        exit;
    }

    private function check_auth() {
        $headers = $this->input->request_headers();
        $auth_header = isset($headers['Authorization']) ? $headers['Authorization'] : '';
        if (!$auth_header && isset($_SERVER['HTTP_AUTHORIZATION'])) {
            $auth_header = $_SERVER['HTTP_AUTHORIZATION'];
        }

        if (preg_match('/Bearer\s(\S+)/', $auth_header, $matches)) {
            $token_plaintext = $matches[1];
            $token_hash = hash('sha256', $token_plaintext);

            // Verify against real DB authentication table
            $auth_record = $this->db->get_where('tbl_api_tokens', [
                'token_hash' => $token_hash,
                'revoked' => 0,
                'expires_at >=' => date('Y-m-d H:i:s')
            ])->row();

            if ($auth_record) {
                $user = $this->db->get_where('tbl_users', ['id' => $auth_record->user_id, 'del_status' => 'Live'])->row();
                if ($user) {
                    return $user;
                }
            }
        }
        $this->response(false, 'Unauthorized. Invalid, expired, or revoked token.', [], 401);
    }

    private function get_request_payload(&$raw_invalid_json = false) {
        $raw_input = trim(file_get_contents('php://input'));
        if ($raw_input !== '') {
            $decoded = json_decode($raw_input, true);
            if (json_last_error() === JSON_ERROR_NONE && is_array($decoded)) {
                return $decoded;
            }
            $raw_invalid_json = true;
        }

        $post_data = $this->input->post(NULL, true);
        return is_array($post_data) ? $post_data : [];
    }

    private function is_valid_uuid($value) {
        return preg_match('/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/', $value) === 1;
    }

    private function is_valid_discount_value($value) {
        $value = trim((string) $value);
        if ($value === '') {
            return true;
        }
        if (substr($value, -1) === '%') {
            $value = substr($value, 0, -1);
        }
        return is_numeric($value) && (float) $value >= 0;
    }

    private function get_discount_type($discount_value) {
        $discount_value = trim((string) $discount_value);
        if ($discount_value !== '' && substr($discount_value, -1) === '%') {
            return 'percentage';
        }
        return 'plain';
    }

    private function format_money($value) {
        return number_format((float) $value, 2, '.', '');
    }

    private function format_quantity($value) {
        $value = trim((string) $value);
        if ($value === '' || !is_numeric($value)) {
            return '0';
        }
        $numeric_value = (float) $value;
        if (floor($numeric_value) == $numeric_value) {
            return (string) ((int) $numeric_value);
        }
        $formatted_value = number_format($numeric_value, 3, '.', '');
        return rtrim(rtrim($formatted_value, '0'), '.');
    }

    private function get_discount_amount($discount_value, $amount) {
        $discount_value = trim((string) $discount_value);
        $amount = (float) $amount;
        if ($discount_value === '') {
            return $this->format_money(0);
        }

        if (substr($discount_value, -1) === '%') {
            $numeric_discount = (float) substr($discount_value, 0, -1);
            return $this->format_money(($amount * $numeric_discount) / 100);
        }

        return $this->format_money((float) $discount_value);
    }

    private function normalize_client_datetime($value) {
        $value = trim((string) $value);
        if ($value === '') {
            return null;
        }

        $timestamp = strtotime($value);
        if ($timestamp === false) {
            return false;
        }

        return date('Y-m-d H:i:s', $timestamp);
    }

    private function get_sale_by_offline_uuid($offline_uuid) {
        return $this->db->get_where('tbl_sales', ['offline_uuid' => $offline_uuid])->row();
    }

    private function get_order_tables_by_sale_id($sale_id) {
        return $this->db->select('table_id, persons')
            ->from('tbl_orders_table')
            ->where('sale_id', $sale_id)
            ->get()
            ->result();
    }

    private function get_forbidden_order_field_errors($input) {
        $errors = [];
        $forbidden_top_level_fields = [
            'sale_id',
            'sale_no',
            'user_id',
            'company_id',
            'outlet_id',
            'order_status',
            'paid_amount',
            'due_amount',
            'payment_method_id',
            'close_order',
            'sub_total',
            'total_vat',
            'total_payable',
            'total_item_discount_amount',
            'sub_total_with_discount',
            'sub_total_discount_amount',
            'total_discount_amount',
            'sale_vat_objects',
        ];

        foreach ($forbidden_top_level_fields as $field_name) {
            if (array_key_exists($field_name, $input)) {
                $errors[$field_name] = $field_name . ' must not be supplied.';
            }
        }

        if (isset($input['items']) && is_array($input['items'])) {
            $forbidden_item_fields = [
                'item_name',
                'item_vat',
                'item_price_without_discount',
                'item_unit_price',
                'item_previous_id',
                'item_cooking_done_time',
                'item_cooking_start_time',
                'item_cooking_status',
                'item_type',
                'item_price_with_discount',
                'item_discount_amount',
                'modifiers_price',
            ];

            foreach ($input['items'] as $index => $item) {
                if (!is_array($item)) {
                    continue;
                }

                foreach ($forbidden_item_fields as $field_name) {
                    if (array_key_exists($field_name, $item)) {
                        $errors['items.' . $index . '.' . $field_name] = $field_name . ' must not be supplied.';
                    }
                }
            }
        }

        return $errors;
    }

    private function build_order_response_from_sale($sale, $result = 'duplicate') {
        $tables = [];
        foreach ($this->get_order_tables_by_sale_id($sale->id) as $table_row) {
            $tables[] = [
                'table_id' => (int) $table_row->table_id,
                'persons' => (int) $table_row->persons,
            ];
        }

        $sale_vat_objects = [];
        if (!empty($sale->sale_vat_objects)) {
            $decoded_taxes = json_decode($sale->sale_vat_objects, true);
            if (is_array($decoded_taxes)) {
                $sale_vat_objects = $decoded_taxes;
            }
        }

        return [
            'result' => $result,
            'sale_id' => (int) $sale->id,
            'sale_no' => $sale->sale_no,
            'offline_uuid' => $sale->offline_uuid,
            'offline_order_no' => $sale->offline_order_no,
            'device_id' => $sale->device_id,
            'order_status' => (int) $sale->order_status,
            'sync_status' => $sale->sync_status ? $sale->sync_status : 'Synced',
            'sync_version' => isset($sale->sync_version) ? (int) $sale->sync_version : 1,
            'customer_id' => (int) $sale->customer_id,
            'waiter_id' => ($sale->waiter_id !== null && $sale->waiter_id !== '') ? (int) $sale->waiter_id : null,
            'order_type' => (int) $sale->order_type,
            'total_items' => (int) $sale->total_items,
            'totals' => [
                'sub_total' => $this->format_money($sale->sub_total),
                'vat' => $this->format_money($sale->vat),
                'total_item_discount_amount' => $this->format_money($sale->total_item_discount_amount),
                'sub_total_with_discount' => $this->format_money($sale->sub_total_with_discount),
                'sub_total_discount_amount' => $this->format_money($sale->sub_total_discount_amount),
                'total_discount_amount' => $this->format_money($sale->total_discount_amount),
                'delivery_charge' => $this->format_money($sale->delivery_charge),
                'total_payable' => $this->format_money($sale->total_payable),
            ],
            'sale_vat_objects' => $sale_vat_objects,
            'tables' => $tables,
            'created_at' => $sale->date_time,
        ];
    }

    private function prepare_order_payload($input, $user) {
        $errors = [];

        if ($this->Common_model->isOpenRegister($user->id, $user->outlet_id) == 0) {
            $errors['register'] = 'Register is not open for this user and outlet.';
        }

        $outlet = $this->db->get_where('tbl_outlets', [
            'id' => $user->outlet_id,
            'company_id' => $user->company_id,
            'del_status' => 'Live'
        ])->row();

        if (!$outlet) {
            $errors['outlet_id'] = 'Invalid outlet for authenticated user.';
        }

        $customer_id = isset($input['customer_id']) ? trim((string) $input['customer_id']) : '';
        if ($customer_id === '' || !ctype_digit($customer_id)) {
            $errors['customer_id'] = 'customer_id is required and must be an integer.';
        }

        $order_type = isset($input['order_type']) ? trim((string) $input['order_type']) : '';
        if (!in_array($order_type, ['1', '2', '3'], true)) {
            $errors['order_type'] = 'order_type must be 1, 2, or 3.';
        }

        $waiter_id = isset($input['waiter_id']) ? trim((string) $input['waiter_id']) : '';
        if (in_array($order_type, ['1', '2'], true) && ($waiter_id === '' || !ctype_digit($waiter_id))) {
            $errors['waiter_id'] = 'waiter_id is required for dine-in and take-away.';
        } elseif ($waiter_id !== '' && !ctype_digit($waiter_id)) {
            $errors['waiter_id'] = 'waiter_id must be an integer.';
        }

        $delivery_charge = isset($input['delivery_charge']) ? trim((string) $input['delivery_charge']) : '';
        if ($delivery_charge !== '' && (!is_numeric($delivery_charge) || (float) $delivery_charge < 0)) {
            $errors['delivery_charge'] = 'delivery_charge must be a non-negative number.';
        }

        $sub_total_discount_value = isset($input['sub_total_discount_value']) ? trim((string) $input['sub_total_discount_value']) : '';
        if (!$this->is_valid_discount_value($sub_total_discount_value)) {
            $errors['sub_total_discount_value'] = 'sub_total_discount_value must be a non-negative plain number or percentage.';
        }

        $offline_order_no = isset($input['offline_order_no']) ? trim((string) $input['offline_order_no']) : '';
        if (strlen($offline_order_no) > 50) {
            $errors['offline_order_no'] = 'offline_order_no may not exceed 50 characters.';
        }

        $client_created_at = $this->normalize_client_datetime(isset($input['client_created_at']) ? $input['client_created_at'] : '');
        if ($client_created_at === false) {
            $errors['client_created_at'] = 'client_created_at must be a valid datetime.';
        }

        $client_updated_at = $this->normalize_client_datetime(isset($input['client_updated_at']) ? $input['client_updated_at'] : '');
        if ($client_updated_at === false) {
            $errors['client_updated_at'] = 'client_updated_at must be a valid datetime.';
        }

        $items_input = isset($input['items']) ? $input['items'] : null;
        if (!is_array($items_input) || count($items_input) === 0) {
            $errors['items'] = 'items must be a non-empty array.';
        }

        $tables_input = isset($input['tables']) ? $input['tables'] : [];
        if ($tables_input === null) {
            $tables_input = [];
        }
        if (!is_array($tables_input)) {
            $errors['tables'] = 'tables must be an array.';
        }

        $customer = null;
        if (!isset($errors['customer_id'])) {
            $customer = $this->db->get_where('tbl_customers', [
                'id' => (int) $customer_id,
                'company_id' => $user->company_id,
                'del_status' => 'Live'
            ])->row();
            if (!$customer) {
                $errors['customer_id'] = 'Invalid customer_id.';
            }
        }

        $waiter = null;
        if ($waiter_id !== '' && !isset($errors['waiter_id'])) {
            $waiter = $this->db->get_where('tbl_users', [
                'id' => (int) $waiter_id,
                'company_id' => $user->company_id,
                'designation' => 'Waiter',
                'del_status' => 'Live'
            ])->row();
            if (!$waiter) {
                $errors['waiter_id'] = 'Invalid waiter_id.';
            }
        }

        if ($order_type === '3' && $customer) {
            if ((int) $customer->id === 1) {
                $errors['customer_id'] = 'Delivery order cannot use the walk-in customer.';
            }
            if (trim((string) $customer->address) === '') {
                $errors['customer_id'] = 'Delivery customer must have an address.';
            }
        }

        $table_map = [];
        if (is_array($tables_input)) {
            $table_ids = [];
            foreach ($tables_input as $index => $table_input) {
                if (!is_array($table_input)) {
                    $errors['tables.' . $index] = 'Each table entry must be an object.';
                    continue;
                }
                $table_id = isset($table_input['table_id']) ? trim((string) $table_input['table_id']) : '';
                $persons = isset($table_input['persons']) ? trim((string) $table_input['persons']) : '';

                if ($table_id === '' || !ctype_digit($table_id)) {
                    $errors['tables.' . $index . '.table_id'] = 'table_id must be an integer.';
                } else {
                    $table_ids[] = (int) $table_id;
                }

                if ($persons === '' || !is_numeric($persons) || (float) $persons <= 0) {
                    $errors['tables.' . $index . '.persons'] = 'persons must be a positive number.';
                }
            }

            if (empty($errors) && !empty($table_ids)) {
                $table_rows = $this->db->select('id')
                    ->from('tbl_tables')
                    ->where('outlet_id', $user->outlet_id)
                    ->where('company_id', $user->company_id)
                    ->where('del_status', 'Live')
                    ->where_in('id', array_unique($table_ids))
                    ->get()
                    ->result();
                foreach ($table_rows as $table_row) {
                    $table_map[(int) $table_row->id] = $table_row;
                }

                foreach ($table_ids as $table_id) {
                    if (!isset($table_map[(int) $table_id])) {
                        $errors['tables'] = 'One or more tables are invalid for this outlet.';
                        break;
                    }
                }
            }
        }

        $menu_ids = [];
        $items_clean = [];
        if (is_array($items_input)) {
            foreach ($items_input as $index => $item_input) {
                if (!is_array($item_input)) {
                    $errors['items.' . $index] = 'Each item must be an object.';
                    continue;
                }

                $food_menu_id = isset($item_input['food_menu_id']) ? trim((string) $item_input['food_menu_id']) : '';
                $qty = isset($item_input['qty']) ? trim((string) $item_input['qty']) : '';
                $item_discount_value = isset($item_input['item_discount_value']) ? trim((string) $item_input['item_discount_value']) : '';
                $modifier_ids = isset($item_input['modifier_ids']) ? $item_input['modifier_ids'] : [];
                $note = isset($item_input['note']) ? trim(preg_replace('/\s+/', ' ', (string) $item_input['note'])) : '';

                if ($food_menu_id === '' || !ctype_digit($food_menu_id)) {
                    $errors['items.' . $index . '.food_menu_id'] = 'food_menu_id must be an integer.';
                } else {
                    $menu_ids[] = (int) $food_menu_id;
                }

                if ($qty === '' || !is_numeric($qty) || (float) $qty <= 0) {
                    $errors['items.' . $index . '.qty'] = 'qty must be a positive number.';
                }

                if (!$this->is_valid_discount_value($item_discount_value)) {
                    $errors['items.' . $index . '.item_discount_value'] = 'item_discount_value must be a non-negative plain number or percentage.';
                }

                if (strlen($note) > 150) {
                    $errors['items.' . $index . '.note'] = 'note may not exceed 150 characters.';
                }

                if ($modifier_ids === null) {
                    $modifier_ids = [];
                }
                if (!is_array($modifier_ids)) {
                    $errors['items.' . $index . '.modifier_ids'] = 'modifier_ids must be an array.';
                    $modifier_ids = [];
                }

                $normalized_modifier_ids = [];
                foreach ($modifier_ids as $modifier_index => $modifier_id) {
                    $modifier_id = trim((string) $modifier_id);
                    if ($modifier_id === '' || !ctype_digit($modifier_id)) {
                        $errors['items.' . $index . '.modifier_ids.' . $modifier_index] = 'Each modifier_id must be an integer.';
                    } else {
                        $normalized_modifier_ids[] = (int) $modifier_id;
                    }
                }

                $items_clean[] = [
                    'food_menu_id' => $food_menu_id,
                    'qty' => $qty,
                    'item_discount_value' => $item_discount_value,
                    'modifier_ids' => $normalized_modifier_ids,
                    'note' => $note,
                ];
            }
        }

        $menu_map = [];
        $modifier_map = [];
        if (empty($errors) && !empty($menu_ids)) {
            $menu_rows = $this->db->select('id, name, sale_price, tax_information, bar_item')
                ->from('tbl_food_menus')
                ->where('company_id', $user->company_id)
                ->where('del_status', 'Live')
                ->where_in('id', array_unique($menu_ids))
                ->get()
                ->result();

            foreach ($menu_rows as $menu_row) {
                $menu_map[(int) $menu_row->id] = $menu_row;
            }

            foreach (array_unique($menu_ids) as $menu_id) {
                if (!isset($menu_map[(int) $menu_id])) {
                    $errors['items'] = 'One or more food_menu_id values are invalid.';
                    break;
                }
            }

            if (empty($errors)) {
                $modifier_rows = $this->db->select('tbl_food_menus_modifiers.food_menu_id, tbl_food_menus_modifiers.modifier_id, tbl_modifiers.name, tbl_modifiers.price')
                    ->from('tbl_food_menus_modifiers')
                    ->join('tbl_modifiers', 'tbl_modifiers.id = tbl_food_menus_modifiers.modifier_id', 'left')
                    ->where('tbl_food_menus_modifiers.del_status', 'Live')
                    ->where('tbl_modifiers.company_id', $user->company_id)
                    ->where('tbl_modifiers.del_status', 'Live')
                    ->where_in('tbl_food_menus_modifiers.food_menu_id', array_unique($menu_ids))
                    ->get()
                    ->result();

                foreach ($modifier_rows as $modifier_row) {
                    if (!isset($modifier_map[(int) $modifier_row->food_menu_id])) {
                        $modifier_map[(int) $modifier_row->food_menu_id] = [];
                    }
                    $modifier_map[(int) $modifier_row->food_menu_id][(int) $modifier_row->modifier_id] = $modifier_row;
                }
            }
        }

        if (!empty($errors)) {
            return ['valid' => false, 'errors' => $errors];
        }

        $normalized_items = [];
        $tax_totals = [];
        $sub_total = 0;
        $total_item_discount_amount = 0;

        $customer_gst_number = trim((string) $customer->gst_number);
        $customer_state_code = $customer_gst_number !== '' ? substr($customer_gst_number, 0, 2) : '';
        $same_state = ($customer_state_code === '' || $customer_state_code == $outlet->state_code);

        foreach ($items_clean as $index => $item_input) {
            $menu_id = (int) $item_input['food_menu_id'];
            $menu = $menu_map[$menu_id];
            $quantity_value = (float) $item_input['qty'];
            $quantity = $this->format_quantity($item_input['qty']);
            $unit_price = $this->format_money($menu->sale_price);
            $item_price_without_discount = $this->format_money($quantity_value * (float) $menu->sale_price);
            $item_discount_value = $item_input['item_discount_value'];
            $item_discount_amount = $this->get_discount_amount($item_discount_value, $item_price_without_discount);
            $item_price_with_discount = $this->format_money((float) $item_price_without_discount - (float) $item_discount_amount);

            if ((float) $item_price_with_discount < 0) {
                $errors['items.' . $index . '.item_discount_value'] = 'Item discount exceeds item total.';
                continue;
            }

            $tax_information = [];
            $decoded_tax_information = json_decode($menu->tax_information, true);
            if (is_array($decoded_tax_information)) {
                foreach ($decoded_tax_information as $tax_row) {
                    if (!is_array($tax_row)) {
                        continue;
                    }
                    $tax_percentage = isset($tax_row['tax_field_percentage']) ? (float) $tax_row['tax_field_percentage'] : 0;
                    $tax_row['item_vat_amount_for_unit_item'] = $this->format_money(((float) $menu->sale_price * $tax_percentage) / 100);
                    $tax_row['item_vat_amount_for_all_quantity'] = $tax_row['item_vat_amount_for_unit_item'];
                    $tax_information[] = $tax_row;

                    $tax_field_name = isset($tax_row['tax_field_name']) ? $tax_row['tax_field_name'] : '';
                    $tax_field_id = isset($tax_row['tax_field_id']) ? $tax_row['tax_field_id'] : '';
                    $should_apply = false;

                    if ($outlet->tax_is_gst == 'Yes' && $same_state && $tax_field_name != 'IGST') {
                        $should_apply = true;
                    } elseif ($outlet->tax_is_gst == 'Yes' && !$same_state && $tax_field_name != 'SGST') {
                        $should_apply = true;
                    } elseif ($outlet->collect_tax == 'Yes' && $outlet->tax_is_gst != 'Yes' && !in_array($tax_field_name, ['IGST', 'CGST', 'SGST'])) {
                        $should_apply = true;
                    }

                    if ($should_apply) {
                        $tax_key = $tax_field_name . '_' . $tax_field_id;
                        if (!isset($tax_totals[$tax_key])) {
                            $tax_totals[$tax_key] = [
                                'tax_field_id' => (string) $tax_field_id,
                                'tax_field_type' => $tax_field_name,
                                'tax_field_amount' => $this->format_money(0),
                            ];
                        }

                        $tax_amount = ((float) $item_price_with_discount * $tax_percentage) / 100;
                        $tax_totals[$tax_key]['tax_field_amount'] = $this->format_money((float) $tax_totals[$tax_key]['tax_field_amount'] + $tax_amount);
                    }
                }
            }

            $modifier_ids_for_writer = [];
            $modifier_prices_for_writer = [];
            $modifier_total = 0;
            foreach ($item_input['modifier_ids'] as $modifier_index => $modifier_id) {
                if (!isset($modifier_map[$menu_id]) || !isset($modifier_map[$menu_id][$modifier_id])) {
                    $errors['items.' . $index . '.modifier_ids.' . $modifier_index] = 'Modifier is not allowed for this menu.';
                    continue;
                }

                $modifier_row = $modifier_map[$menu_id][$modifier_id];
                $modifier_ids_for_writer[] = (string) $modifier_id;
                $modifier_prices_for_writer[] = $this->format_money($modifier_row->price);
                $modifier_total += ((float) $modifier_row->price * $quantity_value);
            }

            if (!empty($errors)) {
                continue;
            }

            $sub_total += (float) $item_price_with_discount + $modifier_total;
            $total_item_discount_amount += (float) $item_discount_amount;

            $normalized_items[] = (object) [
                'item_id' => (string) $menu_id,
                'item_name' => $menu->name,
                'item_vat' => $tax_information,
                'item_discount' => $item_discount_value,
                'discount_type' => $this->get_discount_type($item_discount_value),
                'item_price_without_discount' => $item_price_without_discount,
                'item_unit_price' => $unit_price,
                'item_quantity' => $quantity,
                'item_previous_id' => '',
                'item_cooking_done_time' => '',
                'item_cooking_start_time' => '',
                'item_cooking_status' => '',
                'item_type' => '',
                'item_price_with_discount' => $item_price_with_discount,
                'item_discount_amount' => $item_discount_amount,
                'modifiers_id' => implode(',', $modifier_ids_for_writer),
                'modifiers_price' => implode(',', $modifier_prices_for_writer),
                'item_note' => $item_input['note'],
            ];
        }

        if (!empty($errors)) {
            return ['valid' => false, 'errors' => $errors];
        }

        $sub_total = $this->format_money($sub_total);
        $total_item_discount_amount = $this->format_money($total_item_discount_amount);

        $sub_total_discount_amount = $this->get_discount_amount($sub_total_discount_value, $sub_total);
        if ((float) $sub_total_discount_amount > (float) $sub_total) {
            $sub_total_discount_value = '';
            $sub_total_discount_amount = $this->format_money(0);
        }

        $sub_total_with_discount = $this->format_money((float) $sub_total - (float) $sub_total_discount_amount);
        $total_discount_amount = $this->format_money((float) $total_item_discount_amount + (float) $sub_total_discount_amount);
        $delivery_charge = $this->format_money($delivery_charge === '' ? 0 : $delivery_charge);

        $sale_vat_objects = array_values($tax_totals);
        $total_vat = 0;
        foreach ($sale_vat_objects as $sale_vat_object) {
            $total_vat += (float) $sale_vat_object['tax_field_amount'];
        }
        $total_vat = $this->format_money($total_vat);
        $total_payable = $this->format_money((float) $sub_total_with_discount + (float) $total_vat + (float) $delivery_charge);

        $now = date('Y-m-d H:i:s');
        $sale_data = [
            'customer_id' => (string) $customer->id,
            'total_items' => (string) count($normalized_items),
            'sub_total' => $sub_total,
            'vat' => $total_vat,
            'total_payable' => $total_payable,
            'total_item_discount_amount' => $total_item_discount_amount,
            'sub_total_with_discount' => $sub_total_with_discount,
            'sub_total_discount_amount' => $sub_total_discount_amount,
            'total_discount_amount' => $total_discount_amount,
            'delivery_charge' => $delivery_charge,
            'sub_total_discount_value' => $sub_total_discount_value,
            'sub_total_discount_type' => $this->get_discount_type($sub_total_discount_value),
            'user_id' => $user->id,
            'waiter_id' => $waiter_id !== '' ? (string) ((int) $waiter_id) : '',
            'outlet_id' => $user->outlet_id,
            'sale_date' => date('Y-m-d'),
            'date_time' => $now,
            'order_time' => date('H:i:s'),
            'order_status' => 1,
            'sale_vat_objects' => json_encode($sale_vat_objects),
            'order_type' => (string) $order_type,
            'offline_uuid' => trim((string) $input['offline_uuid']),
            'offline_order_no' => $offline_order_no !== '' ? $offline_order_no : null,
            'device_id' => trim((string) $input['device_id']),
            'sync_status' => 'Synced',
            'sync_version' => 1,
            'synced_at' => $now,
            'client_created_at' => $client_created_at ?: null,
            'client_updated_at' => $client_updated_at ?: null,
        ];

        $orders_table_payload = [];
        $response_tables = [];
        foreach ($tables_input as $table_input) {
            $table_id = (int) $table_input['table_id'];
            $persons = (int) $table_input['persons'];
            $orders_table_payload[] = (object) [
                'table_id' => (string) $table_id,
                'persons' => (string) $persons,
            ];
            $response_tables[] = [
                'table_id' => $table_id,
                'persons' => $persons,
            ];
        }

        $response_data = [
            'result' => 'created',
            'offline_uuid' => $sale_data['offline_uuid'],
            'offline_order_no' => $sale_data['offline_order_no'],
            'device_id' => $sale_data['device_id'],
            'order_status' => 1,
            'sync_status' => 'Synced',
            'sync_version' => 1,
            'customer_id' => (int) $customer->id,
            'waiter_id' => $waiter_id !== '' ? (int) $waiter_id : null,
            'order_type' => (int) $order_type,
            'total_items' => (int) count($normalized_items),
            'totals' => [
                'sub_total' => $sub_total,
                'vat' => $total_vat,
                'total_item_discount_amount' => $total_item_discount_amount,
                'sub_total_with_discount' => $sub_total_with_discount,
                'sub_total_discount_amount' => $sub_total_discount_amount,
                'total_discount_amount' => $total_discount_amount,
                'delivery_charge' => $delivery_charge,
                'total_payable' => $total_payable,
            ],
            'sale_vat_objects' => $sale_vat_objects,
            'tables' => $response_tables,
            'created_at' => $now,
        ];

        return [
            'valid' => true,
            'context' => [
                'user_id' => $user->id,
                'company_id' => $user->company_id,
                'outlet_id' => $user->outlet_id,
            ],
            'writer_payload' => [
                'sale' => $sale_data,
                'orders_table' => $orders_table_payload,
                'items' => $normalized_items,
            ],
            'response_data' => $response_data,
        ];
    }

    public function order() {
        if ($this->input->server('REQUEST_METHOD') !== 'POST') {
            $this->response(false, 'Method not allowed', [], 405);
        }

        $user = $this->check_auth();

        $raw_invalid_json = false;
        $input = $this->get_request_payload($raw_invalid_json);
        if ($raw_invalid_json && empty($input)) {
            $this->response(false, 'Validation failed', ['errors' => ['body' => 'Invalid JSON body.']], 422);
        }

        if (!is_array($input) || empty($input)) {
            $this->response(false, 'Validation failed', ['errors' => ['body' => 'Request body is required.']], 422);
        }

        $identity_errors = [];
        $offline_uuid = isset($input['offline_uuid']) ? trim((string) $input['offline_uuid']) : '';
        $device_id = isset($input['device_id']) ? trim((string) $input['device_id']) : '';

        if ($offline_uuid === '') {
            $identity_errors['offline_uuid'] = 'offline_uuid is required.';
        } elseif (!$this->is_valid_uuid($offline_uuid)) {
            $identity_errors['offline_uuid'] = 'offline_uuid must be a valid UUID.';
        }

        if ($device_id === '') {
            $identity_errors['device_id'] = 'device_id is required.';
        } elseif (strlen($device_id) > 64) {
            $identity_errors['device_id'] = 'device_id may not exceed 64 characters.';
        }

        if (!empty($identity_errors)) {
            $this->response(false, 'Validation failed', ['errors' => $identity_errors], 422);
        }

        $forbidden_field_errors = $this->get_forbidden_order_field_errors($input);
        if (!empty($forbidden_field_errors)) {
            $this->response(false, 'Validation failed', ['errors' => $forbidden_field_errors], 422);
        }

        $existing_sale = $this->get_sale_by_offline_uuid($offline_uuid);
        if ($existing_sale) {
            if ((int) $existing_sale->outlet_id !== (int) $user->outlet_id) {
                $this->response(false, 'Validation failed', ['errors' => ['offline_uuid' => 'offline_uuid already exists for a different outlet.']], 409);
            }

            if (!empty($existing_sale->device_id) && $existing_sale->device_id !== $device_id) {
                $this->response(false, 'Validation failed', ['errors' => ['offline_uuid' => 'offline_uuid already exists for a different device.']], 409);
            }

            $this->response(true, 'Order already exists for offline_uuid', $this->build_order_response_from_sale($existing_sale, 'duplicate'), 200);
        }

        $prepared_order = $this->prepare_order_payload($input, $user);
        if (!$prepared_order['valid']) {
            $this->response(false, 'Validation failed', ['errors' => $prepared_order['errors']], 422);
        }

        $write_result = $this->Sale_write_model->create_running_order($prepared_order['context'], $prepared_order['writer_payload']);

        if (!empty($write_result['success'])) {
            $response_data = $prepared_order['response_data'];
            $response_data['sale_id'] = (int) $write_result['sale_id'];
            $response_data['sale_no'] = $write_result['sale_no'];
            $this->response(true, 'Running order created', $response_data, 201);
        }

        $existing_sale_after_write = $this->get_sale_by_offline_uuid($offline_uuid);
        if ($existing_sale_after_write) {
            if ((int) $existing_sale_after_write->outlet_id !== (int) $user->outlet_id) {
                $this->response(false, 'Validation failed', ['errors' => ['offline_uuid' => 'offline_uuid already exists for a different outlet.']], 409);
            }
            if (!empty($existing_sale_after_write->device_id) && $existing_sale_after_write->device_id !== $device_id) {
                $this->response(false, 'Validation failed', ['errors' => ['offline_uuid' => 'offline_uuid already exists for a different device.']], 409);
            }
            $this->response(true, 'Order already exists for offline_uuid', $this->build_order_response_from_sale($existing_sale_after_write, 'duplicate'), 200);
        }

        $this->response(false, 'Failed to create running order.', [], 500);
    }

    public function login() {
        if ($this->input->server('REQUEST_METHOD') !== 'POST') {
            $this->response(false, 'Method not allowed', [], 405);
        }

        $input = json_decode(file_get_contents('php://input'), true);
        $email = isset($input['email']) ? $input['email'] : $this->input->post('email');
        $password = isset($input['password']) ? $input['password'] : $this->input->post('password');

        if (!$email || !$password) {
            $this->response(false, 'Email and password required', [], 422);
        }

        $user = $this->db->get_where('tbl_users', ['email_address' => $email, 'del_status' => 'Live'])->row();
        
        if ($user) {
            $is_valid = false;
            // Password verification using BCrypt migration standard
            if (password_verify($password, $user->password) || $password === $user->password) {
                $is_valid = true;
            }
            if ($is_valid) {
                // Generate secure cryptographic token
                $token_plaintext = bin2hex(random_bytes(32)); 
                $token_hash = hash('sha256', $token_plaintext);
                
                // Set expiry (e.g. 30 days)
                $expires_at = date('Y-m-d H:i:s', strtotime('+30 days'));

                $this->db->insert('tbl_api_tokens', [
                    'user_id' => $user->id,
                    'token_hash' => $token_hash,
                    'created_at' => date('Y-m-d H:i:s'),
                    'expires_at' => $expires_at,
                    'revoked' => 0
                ]);

                $this->response(true, 'Login successful', [
                    // Provide the raw token. ONLY stored hashed in DB.
                    'token' => $token_plaintext,
                    'expires_at' => $expires_at,
                    'user' => [
                        'id' => $user->id,
                        'name' => $user->full_name,
                        'email' => $user->email_address,
                        'role' => $user->role,
                        'company_id' => $user->company_id,
                        'outlet_id' => $user->outlet_id
                    ]
                ]);
            }
        }

        $this->response(false, 'Invalid credentials', [], 401);
    }

    public function products() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        
        $user = $this->check_auth();

        // Use safe explicit adapter, avoiding session dependency
        $products = $this->Sale_model->getApiItemMenus($user->company_id);
        $this->response(true, 'Products retrieved successfully', $products);
    }

    public function me() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        
        $user = $this->check_auth();
        
        $this->response(true, 'User details retrieved', [
             'id' => $user->id,
             'name' => $user->full_name,
             'email' => $user->email_address,
             'role' => $user->role,
             'company_id' => $user->company_id,
             'outlet_id' => $user->outlet_id
        ]);
    }

    public function categories() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        $user = $this->check_auth();

        $categories = $this->Sale_model->getFoodMenuCategories($user->company_id);
        $this->response(true, 'Categories retrieved successfully', $categories);
    }

    public function customers() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        $user = $this->check_auth();

        $customers = $this->Common_model->getAllByCompanyIdForDropdown($user->company_id, 'tbl_customers');
        $this->response(true, 'Customers retrieved successfully', $customers);
    }

    public function settings_summary() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        $user = $this->check_auth();

        $company = $this->db->get_where('tbl_companies', ['id' => $user->company_id])->row();
        $outlet = $this->db->get_where('tbl_outlets', ['id' => $user->outlet_id])->row();
        $settings = $this->db->get_where('tbl_settings', ['company_id' => $user->company_id])->row();

        $summary = [
            'company_id' => $user->company_id,
            'outlet_id' => $user->outlet_id,
            'restaurant_name' => $outlet ? $outlet->outlet_name : null,
            'outlet_name' => $outlet ? $outlet->outlet_name : null,
            'currency' => $settings ? $settings->currency : null,
            'timezone' => $settings ? $settings->time_zone : null,
            'date_format' => $settings ? $settings->date_format : null,
        ];

        $this->response(true, 'Settings summary retrieved', $summary);
    }

    public function waiters() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        $user = $this->check_auth();

        $this->load->model('Sale_model');
        $raw_waiters = $this->Sale_model->getWaitersForThisCompany($user->company_id, 'tbl_users');
        
        $safe_waiters = array_map(function($w) {
            return [
                'id' => $w->id,
                'full_name' => $w->full_name,
                'phone' => $w->phone,
                'designation' => $w->designation,
                'email_address' => $w->email_address,
                'active_status' => $w->active_status
            ];
        }, $raw_waiters);

        $this->response(true, 'Waiters retrieved successfully', $safe_waiters);
    }

    public function payment_methods() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed', [], 405);
        }
        $user = $this->check_auth();

        $this->load->model('Sale_model');
        $methods = $this->Sale_model->getAllPaymentMethods();

        $this->response(true, 'Payment methods retrieved successfully', $methods);
    }
}
