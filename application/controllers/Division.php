<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Division extends CI_Controller
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
        $data['title'] = 'Division Management';

        $data['divisions'] = $this->divisionModel->divisions();
        $this->admin->load('admin', 'division/manage', $data);
    }

    public function create(){

        $this->form_validation->set_rules('division', 'Division Name', 'required|trim|is_unique[division.division]');

        if ($this->form_validation->run() === FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
            
        } else {
            $data = array(
                'division' => $this->input->post('division'),
                'description' => $this->input->post('description')
            );
            $insert = $this->divisionModel->create($data);

            if ($insert) {
                $log = array(
                    'activity' => 'Division created',
                    'action' => 'Create',
                    'username' => $this->session->username,
                );
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('message', 'Division has been created!');
            } else {
                $this->session->set_flashdata('errors', 'Error! Division is not created!');
            }
        }

        redirect("admin/division", 'refresh');
    }

    public function update(){

        $this->form_validation->set_rules('division', 'Division Name', 'required|trim');
        
        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('errors', validation_errors());
        } else {
            $id = $this->input->post('division_id');
            $data = array(
                'division' => $this->input->post('division'),
                'description' => $this->input->post('description')
            );
            $update = $this->divisionModel->update($data,$id);

            if ($update) {
                $log = array(
                    'activity' => 'Division updated',
                    'action' => 'Update',
                    'username' => $this->session->username,
                );
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('message', 'Division has been updated!');
            } else {
                $this->session->set_flashdata('errors', 'No changes has been made!');
            }
        }

        redirect("admin/division", 'refresh');
    }

    public function delete($id)
    {
        $this->session->set_flashdata('errors', 'Something went wrong!');
        $delete = $this->divisionModel->delete($id);
        if ($delete) {
            $log = array(
                'activity' => 'Division deleted',
                'action' => 'Delete',
                'username' => $this->session->username,
            );
            $this->settingsModel->insert_activity($log);
            $this->session->set_flashdata('errors', 'Division has been deleted!');
        }
        redirect("admin/division", 'refresh');
    }
}