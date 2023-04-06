<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PositionModel extends CI_Model {

	public function __contruct(){
        $this->load->database();
    }

    public function getPosition(){
        $query = $this->db->get('position');
        return $query->result_array();
    }

    public function save($data){
        $this->db->insert('position',$data);
        return $this->db->affected_rows();
    }

    public function update($data,$id){
        $this->db->update('position',$data, "id=".$id);
        return $this->db->affected_rows();
    }

    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('position');
        return $this->db->affected_rows();
    }
}
?>