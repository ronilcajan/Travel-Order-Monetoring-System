<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RolesModel extends CI_Model {

	public function __contruct(){
        $this->load->database();
    }

    public function roles(){
        $query = $this->db->get('groups');
        return $query->result();
    }

    public function getRole($id){
        $this->db->select('*,groups.id as id');
        $this->db->join('users_groups', 'users_groups.group_id = groups.id');
        $this->db->where('users_groups.user_id', $id);
        $query = $this->db->get('groups');
        return $query->row();
    }

    public function create($data){
        $this->db->insert('groups',$data);
        return $this->db->affected_rows();
    }

    public function update_user_role($data,$id){
        $this->db->update('users_groups',$data, "user_id=".$id);
        return $this->db->affected_rows();
    }

    public function update($data,$id){
        $this->db->update('groups',$data, "id=".$id);
        return $this->db->affected_rows();
    }

    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('groups');
        return $this->db->affected_rows();
    }
}
?>