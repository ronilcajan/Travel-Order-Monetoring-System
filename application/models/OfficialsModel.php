<?php
defined('BASEPATH') or exit('No direct script access allowed');

class OfficialsModel extends CI_Model
{

    public function __contruct()
    {
        $this->load->database();
    }

    public function officials()
    {
        $this->db->select('*,users.id as id');
        $this->db->from('users');
        $this->db->join('officials', 'officials.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->join('position', 'position.id = officials.position_id');
        $this->db->join('division', 'division.id = officials.division_id', 'LEFT');
        $query = $this->db->get();
        return $query->result();
    }

    public function getOfficial($id)
    {
        $this->db->select('*,users.id as id');
        $this->db->from('users');
        $this->db->join('officials', 'officials.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->join('position', 'position.id = officials.position_id');
        $this->db->join('division', 'division.id = officials.division_id', 'LEFT');
        $this->db->where('users.id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function insert_official($data)
    {
        $this->db->insert('officials', $data);
        return $this->db->affected_rows();
    }

    public function update_official($data, $id)
    {
        $this->db->update('officials', $data, "user_id=" . $id);
        return $this->db->affected_rows();
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('users');
        return $this->db->affected_rows();
    }
}