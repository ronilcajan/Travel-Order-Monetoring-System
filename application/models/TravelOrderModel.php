<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TravelOrderModel extends CI_Model {

	public function __contruct(){
        $this->load->database();
    }

    public function travelOrders(){ // get all travel orders
        $this->db->select('*,travel_orders.id as id');
        $this->db->from('travel_orders');
        $this->db->join('users', 'users.id = travel_orders.user_id');
        $this->db->join('employee', 'employee.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->order_by('date_applied', 'DESC');
        $this->db->order_by('initial_approve', 'ASC');
        $this->db->order_by('approve', 'ASC');
        $query = $this->db->get();
        return $query->result();
    } 

    public function travelOrdersToApprove(){
        $initial_approver = array(2,3,7,8);
        $final_approver = array(6,9);
        
        if($this->ion_auth->in_group($initial_approver)){
            $this->db->where('travel_orders.approver_id', $this->session->user_id);
            $this->db->order_by('initial_approve', 'ASC');
        }
       
        if($this->ion_auth->in_group($final_approver)){
            $this->db->where('travel_orders.approver_id_2', $this->session->user_id);
            $this->db->order_by('approve', 'ASC');
        }
        
        $this->db->select('*,travel_orders.id as id');
        $this->db->from('travel_orders');
        $this->db->join('users', 'users.id = travel_orders.user_id');
        $this->db->join('employee', 'employee.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->order_by('date_applied', 'DESC');
        $query = $this->db->get();
        return $query->result();
    } 

    public function getTravelOrder($id){ // find travel orders
        $this->db->where('id', $id);
        $query = $this->db->get('travel_orders');
        return $query->row();
    }

    public function to_last_inserted(){ // find travel orders
        $this->db->order_by('id', 'DESC');
        $query = $this->db->get('travel_orders');
        return $query->row();
    }

    public function getTravelOrderRequester($id){ // get the employee who request the travel order
        $this->db->select('*,travel_orders.id as id');
        $this->db->from('users');
        $this->db->join('employee', 'employee.user_id = users.id');
        $this->db->join('names', 'names.user_id = users.id');
        $this->db->join('address', 'address.user_id = users.id');
        $this->db->join('position', 'position.id = employee.position_id');
        $this->db->join('division', 'division.id = employee.division_id');
        $this->db->join('travel_orders', 'travel_orders.user_id = employee.user_id');
        $this->db->where('travel_orders.id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function getEmployeeDivision($id)
    {
        $this->db->join('division', 'division.id = employee.division_id');
        $this->db->where('employee.user_id', $id);
        $query = $this->db->get('employee');
        return $query->row();
    }


    public function create($data){
        $this->db->insert('travel_orders',$data);
        return $this->db->insert_id();
    }
    public function insert_travel_order_format($data){
        $this->db->insert('travel_order_format',$data);
        return $this->db->affected_rows();
    }

    public function update_travel_order_format($data,$id){
        $this->db->update('travel_order_format',$data, "travel_order_id=".$id);
        return $this->db->affected_rows();
    }

    public function update($data,$id){
        $this->db->update('travel_orders',$data, "id=".$id);
        return $this->db->affected_rows();
    }

    public function getFormat($id)
    {
        $this->db->join('officials', 'officials.user_id = travel_order_format.user_id','LEFT');
        $this->db->join('names', 'names.user_id = officials.user_id','LEFT');
        $this->db->join('position', 'position.id = officials.position_id','LEFT');
        $this->db->join('division', 'division.id = officials.division_id', 'LEFT');
        $this->db->where('travel_order_format.travel_order_id ', $id);
        $query = $this->db->get('travel_order_format');
        return $query->row();
    }

    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('travel_orders');
        return $this->db->affected_rows();
    }
    public function getOfficial($id){
        $this->db->join('names', 'names.user_id = officials.user_id');
        $this->db->join('position', 'position.id = officials.position_id');
        $this->db->join('division', 'division.id = officials.division_id', 'LEFT');
        $this->db->where('officials.approver',1);
        $this->db->where('position.authorize',1);
        $this->db->where('officials.user_id',$id);
        $sql = $this->db->get('officials');
        return $sql->row();
    }

    public function initial_approval($within_region, $division){
    
        $this->db->join('names', 'names.user_id = officials.user_id');
        $this->db->join('position', 'position.id = officials.position_id');
        $this->db->join('division', 'division.id = officials.division_id');
        $this->db->where('officials.approver',1);
        $this->db->where('position.authorize',1);
        $this->db->where('division.id',$division);

        if($within_region==1){
            $this->db->where('position.id !=',2);
        }else{
            $this->db->where('position.id =',2);
        }
        
        $sql = $this->db->get('officials');
        return $sql->result();
    }
    
    public function final_approval($within_region){
    
        $this->db->join('names', 'names.user_id = officials.user_id');
        $this->db->join('position', 'position.id = officials.position_id');
        $this->db->where('officials.approver',1);
        $this->db->where('position.authorize',1);

        if($within_region==1){
            $this->db->where('position.id =',3);
        }else{
            $this->db->where('position.id =',1);
        }
        
        $sql = $this->db->get('officials');
        return $sql->result();
    }

    public function pending(){
        $this->db->where('approve',0);
        $query = $this->db->get('travel_orders');
        return $query->num_rows();
    }
    public function approved(){
        $this->db->where('approve',1);
        $query = $this->db->get('travel_orders');
        return $query->num_rows();
    }
    public function disapproved(){
        $this->db->where('approve',2);
        $query = $this->db->get('travel_orders');
        return $query->num_rows();
    }
    public function total(){
        $query = $this->db->get('travel_orders');
        return $query->num_rows();
    }

    public function get_Travel_Order_Year($year=''){
    $this->db->select('
            MONTHS.month_number AS month,
            COALESCE(SUM(CASE WHEN approve = 0 THEN 1 ELSE 0 END), 0) AS pending_count,
            COALESCE(SUM(CASE WHEN approve = 1 THEN 1 ELSE 0 END), 0) AS approved_count,
            COALESCE(SUM(CASE WHEN approve = 2 THEN 1 ELSE 0 END), 0) AS disapproved_count
        ');
        $this->db->from('
            (SELECT 1 AS month_number UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION 
            SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12) AS MONTHS
        ');
        if(!empty($year)){
            $this->db->join('travel_orders', 'MONTH(travel_orders.date_approved) = MONTHS.month_number AND YEAR(travel_orders.date_approved) ='.$year, 'left');
        }else{
            $this->db->join('travel_orders', 'MONTH(travel_orders.date_approved) = MONTHS.month_number', 'left');
        }

        $this->db->group_by('MONTHS.month_number');
        $query = $this->db->get();
        return $query->result();
    }
    
}
?>