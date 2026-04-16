<?php

class Sale_write_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->model('Sale_model');
    }

    public function create_running_order(array $context, array $payload, array $options = array()) {
        $sale_data = isset($payload['sale']) ? $payload['sale'] : array();
        $orders_table = isset($payload['orders_table']) ? $payload['orders_table'] : array();
        $items = isset($payload['items']) ? $payload['items'] : array();

        $result = array(
            'success' => false,
            'mode' => 'create',
            'sale_id' => 0,
            'sale_no' => '',
            'sale_consumption_id' => 0,
            'tables_written' => 0,
            'items_written' => 0,
            'modifier_rows_written' => 0,
            'menu_consumption_rows_written' => 0,
            'modifier_consumption_rows_written' => 0,
        );

        $this->db->trans_begin();

        $query = $this->db->insert('tbl_sales', $sale_data);
        $sales_id = $this->db->insert_id();
        $sale_no = str_pad($sales_id, 6, '0', STR_PAD_LEFT);
        $sale_no_update_array = array('sale_no' => $sale_no);
        $this->db->where('id', $sales_id);
        $this->db->update('tbl_sales', $sale_no_update_array);

        if (!empty($orders_table)) {
            foreach ($orders_table as $single_order_table) {
                $order_table_info = array();
                $order_table_info['persons'] = $single_order_table->persons;
                $order_table_info['booking_time'] = date('Y-m-d H:i:s');
                $order_table_info['sale_id'] = $sales_id;
                $order_table_info['sale_no'] = $sale_no;
                $order_table_info['outlet_id'] = $context['outlet_id'];
                $order_table_info['table_id'] = $single_order_table->table_id;

                $query = $this->db->insert('tbl_orders_table', $order_table_info);
                $result['tables_written']++;
            }
        }

        $data_sale_consumptions = array();
        $data_sale_consumptions['sale_id'] = $sales_id;
        $data_sale_consumptions['user_id'] = $context['user_id'];
        $data_sale_consumptions['outlet_id'] = $context['outlet_id'];
        $data_sale_consumptions['del_status'] = 'Live';
        $query = $this->db->insert('tbl_sale_consumptions', $data_sale_consumptions);
        $sale_consumption_id = $this->db->insert_id();

        if ($sales_id > 0 && count($items) > 0) {
            foreach ($items as $item) {
                $item_data = array();
                $item_data['food_menu_id'] = $item->item_id;
                $item_data['menu_name'] = $item->item_name;
                $item_data['qty'] = $item->item_quantity;
                $item_data['menu_price_without_discount'] = $item->item_price_without_discount;
                $item_data['menu_price_with_discount'] = $item->item_price_with_discount;
                $item_data['menu_unit_price'] = $item->item_unit_price;
                $item_data['menu_taxes'] = json_encode($item->item_vat);
                $item_data['menu_discount_value'] = $item->item_discount;
                $item_data['discount_type'] = $item->discount_type;
                $item_data['menu_note'] = $item->item_note;
                $item_data['discount_amount'] = $item->item_discount_amount;
                $item_data['item_type'] = ($this->Sale_model->getItemType($item->item_id)->item_type == "Bar No") ? "Kitchen Item" : "Bar Item";
                $item_data['cooking_status'] = ($item->item_cooking_status == "") ? NULL : $item->item_cooking_status;
                $item_data['cooking_start_time'] = ($item->item_cooking_start_time == "" || $item->item_cooking_start_time == "0000-00-00 00:00:00") ? '0000-00-00 00:00:00' : date('Y-m-d H:i:s', strtotime($item->item_cooking_start_time));
                $item_data['cooking_done_time'] = ($item->item_cooking_done_time == "" || $item->item_cooking_done_time == "0000-00-00 00:00:00") ? '0000-00-00 00:00:00' : date('Y-m-d H:i:s', strtotime($item->item_cooking_done_time));
                $item_data['previous_id'] = ($item->item_previous_id == "") ? 0 : $item->item_previous_id;
                $item_data['sales_id'] = $sales_id;
                $item_data['user_id'] = $context['user_id'];
                $item_data['outlet_id'] = $context['outlet_id'];
                $item_data['del_status'] = 'Live';
                $query = $this->db->insert('tbl_sales_details', $item_data);
                $sales_details_id = $this->db->insert_id();
                $result['items_written']++;

                if ($item->item_previous_id == "") {
                    $previous_id_update_array = array('previous_id' => $sales_details_id);
                    $this->db->where('id', $sales_details_id);
                    $this->db->update('tbl_sales_details', $previous_id_update_array);
                }

                $food_menu_ingredients = $this->db->query("SELECT * FROM tbl_food_menus_ingredients WHERE food_menu_id=$item->item_id")->result();

                foreach ($food_menu_ingredients as $single_ingredient) {
                    $data_sale_consumptions_detail = array();
                    $data_sale_consumptions_detail['ingredient_id'] = $single_ingredient->ingredient_id;
                    $data_sale_consumptions_detail['consumption'] = $item->item_quantity * $single_ingredient->consumption;
                    $data_sale_consumptions_detail['sale_consumption_id'] = $sale_consumption_id;
                    $data_sale_consumptions_detail['sales_id'] = $sales_id;
                    $data_sale_consumptions_detail['food_menu_id'] = $item->item_id;
                    $data_sale_consumptions_detail['user_id'] = $context['outlet_id'];
                    $data_sale_consumptions_detail['outlet_id'] = $context['outlet_id'];
                    $data_sale_consumptions_detail['del_status'] = 'Live';
                    $query = $this->db->insert('tbl_sale_consumptions_of_menus', $data_sale_consumptions_detail);
                    $result['menu_consumption_rows_written']++;
                }

                $modifier_id_array = ($item->modifiers_id != "") ? explode(",", $item->modifiers_id) : null;
                $modifier_price_array = ($item->modifiers_price != "") ? explode(",", $item->modifiers_price) : null;

                if (!empty($modifier_id_array) > 0) {
                    $i = 0;
                    foreach ($modifier_id_array as $single_modifier_id) {
                        $modifier_data = array();
                        $modifier_data['modifier_id'] = $single_modifier_id;
                        $modifier_data['modifier_price'] = $modifier_price_array[$i];
                        $modifier_data['food_menu_id'] = $item->item_id;
                        $modifier_data['sales_id'] = $sales_id;
                        $modifier_data['sales_details_id'] = $sales_details_id;
                        $modifier_data['user_id'] = $context['user_id'];
                        $modifier_data['outlet_id'] = $context['outlet_id'];
                        $modifier_data['customer_id'] = $sale_data['customer_id'];
                        $query = $this->db->insert('tbl_sales_details_modifiers', $modifier_data);
                        $result['modifier_rows_written']++;

                        $modifier_ingredients = $this->db->query("SELECT * FROM tbl_modifier_ingredients WHERE modifier_id=$single_modifier_id")->result();

                        foreach ($modifier_ingredients as $single_ingredient) {
                            $data_sale_consumptions_detail = array();
                            $data_sale_consumptions_detail['ingredient_id'] = $single_ingredient->ingredient_id;
                            $data_sale_consumptions_detail['consumption'] = $item->item_quantity * $single_ingredient->consumption;
                            $data_sale_consumptions_detail['sale_consumption_id'] = $sale_consumption_id;
                            $data_sale_consumptions_detail['sales_id'] = $sales_id;
                            $data_sale_consumptions_detail['food_menu_id'] = $item->item_id;
                            $data_sale_consumptions_detail['user_id'] = $context['outlet_id'];
                            $data_sale_consumptions_detail['outlet_id'] = $context['outlet_id'];
                            $data_sale_consumptions_detail['del_status'] = 'Live';
                            $query = $this->db->insert('tbl_sale_consumptions_of_modifiers_of_menus', $data_sale_consumptions_detail);
                            $result['modifier_consumption_rows_written']++;
                        }

                        $i++;
                    }
                }
            }
        }

        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            return $result;
        }

        $this->db->trans_commit();

        $result['success'] = true;
        $result['sale_id'] = $sales_id;
        $result['sale_no'] = $sale_no;
        $result['sale_consumption_id'] = $sale_consumption_id;

        return $result;
    }
}
