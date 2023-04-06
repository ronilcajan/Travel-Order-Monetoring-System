<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Officials extends CI_Controller
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
        $data['officials'] = $this->officialsModel->officials();

        $data['title'] = 'Official Management';
        $this->admin->load('admin', 'official/officials', $data);
    }

    public function create(){
        $data['pos'] = $this->positionModel->getPosition();
        $data['division'] = $this->divisionModel->divisions();
        $data['roles'] = $this->rolesModel->roles();

        $data['title'] = 'Create Official';
        $this->admin->load('admin', 'official/create_official', $data);
    }

    
    public function edit($id){
        $data['official'] = $this->officialsModel->getOfficial($id);
        $data['pos'] = $this->positionModel->getPosition();
        $data['division'] = $this->divisionModel->divisions();
        $data['role'] = $this->rolesModel->getRole($id);

        $data['title'] = 'Edit Official';
        $this->admin->load('admin', 'official/edit_official', $data);
    }

    public function store()
    {
        $config['upload_path'] = 'assets/uploads/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('username', 'Username', 'required|trim|is_unique[users.username]');
        $this->form_validation->set_rules('firstname', 'Firstname', 'required|trim');
        $this->form_validation->set_rules('lastname', 'Lastname', 'required|trim');
        $this->form_validation->set_rules('email', 'Email Address', 'required|trim|is_unique[users.email]');
        $this->form_validation->set_rules('position', 'Position', 'required|trim');
        $this->form_validation->set_rules('division', 'Division', 'required|trim');
        $this->form_validation->set_rules('roles', 'User Role', 'required|trim');
        
        if ($this->form_validation->run() == FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
        } else {
            $email = strtolower($this->input->post('email'));
            $identity = $this->input->post('username');
            $password = $this->input->post('username');

            $additional_data = array(
                'contact' => $this->input->post('contact'),
            );
            
            if ($this->upload->do_upload('avatar')) {
                $file = $this->upload->data();
                $additional_data['avatar'] = $file['file_name'];
            }
            
            $group = array($this->input->post('roles'));
            
            $insert = $this->ion_auth->register($identity, $password, $email, $additional_data, $group);
            if ($insert) {
                // check to see if we are creating the user
                // redirect them back to the admin page

                $name = array(
                    'user_id' => $insert,
                    'firstname' => $this->input->post('firstname'),
                    'middlename' => $this->input->post('middlename'),
                    'lastname' => $this->input->post('lastname'),
                    'prefix' => $this->input->post('prefix'),
                    'suffix' => $this->input->post('suffix'),
                );
                $address = array(
                    'user_id' => $insert,
                    'address' => $this->input->post('address'),
                    'barangay' => $this->input->post('barangay'),
                    'town' => $this->input->post('town'),
                    'province' => $this->input->post('province'),
                );

                $official = array(
                    'user_id' => $insert,
                    'position_id' => $this->input->post('position'),
                    'division_id' => $this->input->post('division'),
                    'approver' => $this->input->post('approver'),
                );

                
                if ($this->upload->do_upload('signature')) {
                    $sig = $this->upload->data();
                    $official['signature'] = $sig['file_name'];
                }
                
                $this->officialsModel->insert_official($official);
                $this->userModel->insert_names($name);
                $this->userModel->insert_address($address);

                $log = array(
                    'activity' => 'Official created',
                    'action' => 'Create',
                    'username' => $this->session->username,
                );
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('success', 'success');
                $this->session->set_flashdata('message', 'Official has been created!');
            } else {
                $this->session->set_flashdata('message', 'Something went wrong. Please try again!');
            }
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }

    public function update()
    {
        $config['upload_path'] = 'assets/uploads/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('firstname', 'Firstname', 'required|trim');
        $this->form_validation->set_rules('lastname', 'Lastname', 'required|trim');
        $this->form_validation->set_rules('email', 'Email Address', 'required|trim');
        $this->form_validation->set_rules('position', 'Position', 'required|trim');
        $this->form_validation->set_rules('division', 'Division', 'required|trim');
        $this->form_validation->set_rules('roles', 'User Role', 'required|trim');
        
        if ($this->form_validation->run() == FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
        } else {
            $id = $this->input->post('official_id');

            $data = array(
                'email' => $this->input->post('email'),
                'username' => $this->input->post('username'),
                'contact' => $this->input->post('contact'),
            );
            
            if ($this->upload->do_upload('avatar')) {
                $file = $this->upload->data();
                $data['avatar'] = $file['file_name'];
            }

            $update=$this->ion_auth->update_user($id, $data);
            
            if ($update) {
                // check to see if we are creating the user
                // redirect them back to the admin page
                $role = array(
                    'group_id' =>$this->input->post('roles')
                );
                
                $name = array(
                    'firstname' => $this->input->post('firstname'),
                    'middlename' => $this->input->post('middlename'),
                    'lastname' => $this->input->post('lastname'),
                    'prefix' => $this->input->post('prefix'),
                    'suffix' => $this->input->post('suffix'),
                );
                $address = array(
                    'address' => $this->input->post('address'),
                    'barangay' => $this->input->post('barangay'),
                    'town' => $this->input->post('town'),
                    'province' => $this->input->post('province'),
                );

                $official = array(
                    'position_id' => $this->input->post('position'),
                    'division_id' => $this->input->post('division'),
                    'approver' => $this->input->post('approver'),
                );

                if ($this->upload->do_upload('signature')) {
                    $sig = $this->upload->data();
                    $official['signature'] = $sig['file_name'];
                }
                
                $this->officialsModel->update_official($official, $id);

                $this->userModel->update_names($name, $id);
                $this->userModel->update_address($address, $id);
                $this->rolesModel->update_user_role($role, $id);

                $log = array(
                    'activity' => 'Official updated',
                    'action' => 'Update',
                    'username' => $this->session->username,
                );
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('success', 'success');
                $this->session->set_flashdata('message', 'Official has been created!');
            } else {
                $this->session->set_flashdata('message', 'No changes has been made!');
            }
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }

    public function delete($id)
    {
        $delete = $this->officialsModel->delete($id);
        if ($delete) {
            $log = array(
                'activity' => 'Official deleted',
                'action' => 'Delete',
                'username' => $this->session->username,
            );
            $this->settingsModel->insert_activity($log);
            $this->session->set_flashdata('errors', 'Official has been deleted!');
        } else {
            $this->session->set_flashdata('errors', 'Something went wrong!');
        }
        redirect('officials', 'refresh');
    }
}