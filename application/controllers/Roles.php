<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Roles extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        }
        if (!$this->ion_auth->in_group(1)){
            redirect('404_override', 'refresh');
        }
    }

    public function index()
    {
        $data['title'] = 'Roles Management';

        $data['roles'] = $this->rolesModel->roles();
        $this->admin->load('admin', 'user/roles', $data);
    }

    public function create(){

        $this->form_validation->set_rules('role', 'Role Name', 'required|trim|is_unique[groups.name]');

        if ($this->form_validation->run() === FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
            
        } else {
            $data = array(
                'name' => $this->input->post('role'),
                'description' => $this->input->post('description')
            );
            $insert = $this->rolesModel->create($data);

            if ($insert) {
                $log = array(
                    'activity' => 'User Roles created',
                    'action' =>  'Create',
                    'username' => $this->session->username,
                );
                
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('message', 'User role has been created!');
            } else {
                $this->session->set_flashdata('errors', 'User role not created!');
            }
        }

        redirect("admin/roles", 'refresh');
    }

    public function update(){

        $this->form_validation->set_rules('role', 'Role Name', 'required|trim');
        
        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('errors', validation_errors());
        } else {
            $id = $this->input->post('role_id');
            $data = array(
                'name' => $this->input->post('role'),
                'description' => $this->input->post('description')
            );
            $update = $this->rolesModel->update($data,$id);

            if ($update) {
                $log = array(
                    'activity' => 'User Roles update',
                    'action' =>  'Update',
                    'username' => $this->session->username,
                );
                
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('message', 'User role has been updated!');
            } else {
                $this->session->set_flashdata('errors', 'User role not updated!');
            }
        }

        redirect("admin/roles", 'refresh');
    }

    public function delete($id)
    {
        $this->session->set_flashdata('errors', 'Something went wrong!');
        $delete = $this->rolesModel->delete($id);
        if ($delete) {
            $log = array(
                'activity' => 'User Roles deleted',
                'action' =>  'Delete',
                'username' => $this->session->username,
            );
            
            $this->settingsModel->insert_activity($log);
            $this->session->set_flashdata('errors', 'User role has been deleted!');
        }
        redirect("admin/roles", 'refresh');
    }
}