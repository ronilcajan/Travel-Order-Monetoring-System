<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {

	public function __contruct(){
        $this->load->database();
    }

    public function users(){
        if(!$this->ion_auth->is_admin()){
            $this->db->where_not_in('group_id',1);
        }
        $this->db->select('*, users.id as id');
        $this->db->join('users_groups','users_groups.user_id=users.id');
        $this->db->join('names','names.user_id=users.id');
        $this->db->join('address','address.user_id=users.id');
        $this->db->join('groups','groups.id=users_groups.group_id');
        $query = $this->db->get('users');
        return $query->result();
    }

    public function login($data){

        $query = $this->db->get_where('users', $data);
        $result = $query->result_array();

        if(count($result) >0){
            return $result[0];
        }else{
            return null;
        }
    }

    public function getUsers(){
        $this->db->where_not_in('username', $this->session->username);
        $query = $this->db->get('users');
        return $query->result_array();
    }

    public function save($data){
        $this->db->insert('users',$data);
        return $this->db->affected_rows();
    }
    
    public function insert_names($data){
        $this->db->insert('names',$data);
        return $this->db->affected_rows();
    }
    public function insert_address($data){
        $this->db->insert('address',$data);
        return $this->db->affected_rows();
    }

    public function update_names($data,$id){
        $this->db->update('names',$data , 'user_id='.$id);
        return $this->db->affected_rows();
    }
    public function update_address($data,$id){
        $this->db->update('address',$data , 'user_id='.$id);
        return $this->db->affected_rows();
    }

    public function update($data, $id){
        $this->db->update('users', $data , 'id='.$id);
        return $this->db->affected_rows();
    }
    public function updateName($id,$data){
        $this->db->update('names', $data , 'user_id='.$id);
        return $this->db->affected_rows();
    }

    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('users');
        return $this->db->affected_rows();
    }
}
?>