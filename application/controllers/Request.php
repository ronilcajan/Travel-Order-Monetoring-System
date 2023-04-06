<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Request extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        }
    }

    public function index()
    {
        // $final_approver = array(6,9);
        // var_dump($this->ion_auth->in_group($final_approver));
        
        $data['title'] = 'Travel Order Request';
        
        $data['employee'] = $this->employeeModel->employee();
        $data['to'] = $this->travelOrderModel->travelOrdersToApprove();
        $this->admin->load('admin', 'request/manage', $data);
    }

    public function approve(){

        $id = $this->input->post('travel_id');
        $approve = $this->input->post('approve');
        $approve_no = $this->input->post('approve_no'); // initial approve is 1 and final approve is 2
        
        if($approve_no == 1){ // initial approve
            $data = array(
                'initial_approve' => $approve,
                'date_initial_approved' => date('Y-m-d h:i:s'),
                'add_remarks' => $this->input->post('remarks')
            );
        }
        if($approve_no == 2){ //final approve
            $data = array( 
                'approve' => $approve,
                'date_approved' => date('Y-m-d h:i:s'),
                'add_remarks_2' => $this->input->post('remarks')
            );
        }

        $update = $this->travelOrderModel->update($data,$id);

        if ($update) {
            if($approve==1){
                $approve = 'Approved';
            }else{
                $approve = 'Disapproved';
            }
            $log = array(
                'activity' => 'Travel orders approval',
                'action' =>  $approve,
                'username' => $this->session->username,
            );
            
            $this->settingsModel->insert_activity($log);
            $this->session->set_flashdata('message', 'Travel order approval has been updated!');
        } else {
            $this->session->set_flashdata('errors', 'No changes has been made!');
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }
}