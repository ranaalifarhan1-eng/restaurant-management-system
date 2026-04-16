<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Authentication_model');
        $this->load->model('Common_model');
        $this->load->model('Sale_model');
        header('Content-Type: application/json');
    }

    private function response($status, $message, $data = []) {
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
        $this->response(false, 'Unauthorized. Invalid, expired, or revoked token.', []);
    }

    public function login() {
        if ($this->input->server('REQUEST_METHOD') !== 'POST') {
            $this->response(false, 'Method not allowed');
        }

        $input = json_decode(file_get_contents('php://input'), true);
        $email = isset($input['email']) ? $input['email'] : $this->input->post('email');
        $password = isset($input['password']) ? $input['password'] : $this->input->post('password');

        if (!$email || !$password) {
            $this->response(false, 'Email and password required');
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

        $this->response(false, 'Invalid credentials');
    }

    public function products() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed');
        }
        
        $user = $this->check_auth();

        // Use safe explicit adapter, avoiding session dependency
        $products = $this->Sale_model->getApiItemMenus($user->company_id);
        $this->response(true, 'Products retrieved successfully', $products);
    }

    public function me() {
        if ($this->input->server('REQUEST_METHOD') !== 'GET') {
            $this->response(false, 'Method not allowed');
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
}
