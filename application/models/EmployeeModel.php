<?php
defined('BASEPATH') or exit('No direct script access allowed');

class EmployeeModel extends CI_Model
{

    public function __contruct()
    {
        $this->load->database();
    }

    public function employee()
    {
        $this->db->select('*,users.id as id');
        $this->db->from('users');
        $this->db->join('employee', 'employee.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->join('position', 'position.id = employee.position_id');
        $this->db->join('division', 'division.id = employee.division_id');
        $query = $this->db->get();
        return $query->result();
    }

    public function getEmployee($id)
    {
        $this->db->select('*,users.id as id');
        $this->db->from('users');
        $this->db->join('employee', 'employee.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->join('position', 'position.id = employee.position_id');
        $this->db->join('division', 'division.id = employee.division_id');
        $this->db->where('users.id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function insert_employee($data)
    {
        $this->db->insert('employee', $data);
        return $this->db->affected_rows();
    }

    public function update_employee($data, $id)
    {
        $this->db->update('employee', $data, "user_id=" . $id);
        return $this->db->affected_rows();
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('users');
        return $this->db->affected_rows();
    }
}