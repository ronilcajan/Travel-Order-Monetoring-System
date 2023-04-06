<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DivisionModel extends CI_Model {

	public function __contruct(){
        $this->load->database();
    }

    public function divisions(){
        $query = $this->db->get('division');
        return $query->result();
    }

    public function create($data){
        $this->db->insert('division',$data);
        return $this->db->affected_rows();
    }

    public function update($data,$id){
        $this->db->update('division',$data, "id=".$id);
        return $this->db->affected_rows();
    }

    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('division');
        return $this->db->affected_rows();
    }
}
?>