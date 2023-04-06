<?php
defined('BASEPATH') or exit('No direct script access allowed');

class DashboardModel extends CI_Model
{

    public function __contruct()
    {
        $this->load->database();
    }

    public function employee(){
        $query = $this->db->get('employee');
        return $query->num_rows();
    }
    public function officials(){
        $query = $this->db->get('officials');
        return $query->num_rows();
    }
    public function users(){
        $query = $this->db->get('users');
        return $query->num_rows();
    }

}