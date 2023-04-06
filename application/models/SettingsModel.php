<?php
defined('BASEPATH') or exit('No direct script access allowed');

class SettingsModel extends CI_Model
{

    public function __contruct()
    {
        $this->load->database();
    }

    public function updateInfo($data)
    {
        $this->db->update('system_info', $data, "id = 1");
        return $this->db->affected_rows();
    }

    public function updateStation($data)
    {
        $this->db->update('station', $data, "id = 1");
        return $this->db->affected_rows();
    }

    public function attempts()
    {
        $this->db->order_by('id', 'DESC');
        $query = $this->db->get('login_attempts');
        return $query->result();
    }

    public function logs($limit='')
    {
        if($limit){
            $this->db->limit($limit);
        }
        $this->db->order_by('id', 'DESC');
        $query = $this->db->get('logs');
        return $query->result();
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('support');
        return $this->db->affected_rows();
    }

    public function getInfo()
    {
        $this->db->where('id', 1);
        $query = $this->db->get('system_info');
        return $query->row();
    }

    public function insert_activity($data)
    {
        $this->db->insert('logs', $data);
        return $this->db->affected_rows();
    }
}