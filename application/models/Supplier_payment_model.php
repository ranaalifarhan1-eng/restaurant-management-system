<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Supplier_payment_model
 *
 * @author user
 */
class Supplier_payment_model extends CI_Model {

    public function getSupplierDue($supplier_id) {

        $outlet_id = $this->session->userdata('outlet_id');

        $sql1 = "SELECT SUM(due) as due FROM tbl_purchase WHERE supplier_id = ? and outlet_id = ? and del_status='Live'";
        $supplier_due = $this->db->query($sql1, array($supplier_id, $outlet_id))->row();

        $sql2 = "SELECT SUM(amount) as amount FROM tbl_supplier_payments WHERE supplier_id = ? and outlet_id = ? and del_status='Live'";
        $supplier_payment = $this->db->query($sql2, array($supplier_id, $outlet_id))->row();

        $remaining_due = $supplier_due->due - $supplier_payment->amount;

        return $remaining_due;
    }

}

