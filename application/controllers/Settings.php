<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Settings extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        }
        if ($this->ion_auth->in_group('kiosk')) {
            // redirect them to the login page
            show_error('You are restricted to view this page.');
        }
    }
    public function support()
    {
        $data['ticket'] = $this->settingsModel->getSupport();
        $data['title'] = 'System Support';
        $this->admin->load('admin', 'support/support', $data);
    }

    public function login_attempts()
    {
        $data['attempts'] = $this->settingsModel->attempts();
        $data['title'] = 'Login Attempts';
        $this->admin->load('admin', 'login_attempts', $data);
    }

    public function history()
    {
        $data['history'] = $this->settingsModel->logs();
        $data['title'] = 'System History';
        $this->admin->load('admin', 'logs_history', $data);
    }

    public function delete($id)
    {
        $delete = $this->settingsModel->delete($id);
        if ($delete) {
            $log = array(
                'activity' => 'Service deleted',
                'action' => 'Delete',
                'username' => $this->session->username,
            );
            $this->settingsModel->insert_activity($log);
            $this->session->set_flashdata('errors', 'Support has been deleted!');
        } else {
            $this->session->set_flashdata('errors', 'Something went wrong!');
        }
        redirect('settings/support', 'refresh');
    }

    public function error_page(){
        $this->load->view('404');
    }
    public function error_forbidden(){
        $this->load->view('403');
    }

    public function updateSystem()
    {
        $config['upload_path'] = 'assets/uploads/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('name', 'System Name', 'required|trim');
        $this->form_validation->set_rules('acronym', 'System Acronym', 'required|trim');
        $this->form_validation->set_rules('powered_b', 'Powered By', 'required|trim');

        if ($this->form_validation->run() == FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
        } else {
            $data = array(
                'sname' => $this->input->post('name'),
                'acronym' => $this->input->post('acronym'),
                'powered_b' => $this->input->post('powered_b'),
            );
            if ($this->upload->do_upload('login_bg')) {
                $file = $this->upload->data();
                $data['login_bg'] = $file['file_name'];
            }

            $update = $this->settingsModel->updateInfo($data);
 
            if ($update) {
                $log = array(
                    'activity' => 'System Information updated',
                    'action' => 'Update',
                    'username' => $this->session->username,
                );
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('message', 'System info has been save!');
            } else {
                $this->session->set_flashdata('errors', 'No changes has been made!');
            }
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }

    public function station()
    {
        $config['upload_path'] = 'assets/uploads/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('department', 'Department', 'required|trim');
        $this->form_validation->set_rules('office_name', 'Office Name', 'required|trim');
        $this->form_validation->set_rules('office_name2', 'Office Name', 'required|trim');
        $this->form_validation->set_rules('office_address', 'Office Address', 'required|trim');

        if ($this->form_validation->run() == FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
        } else {
            $data = array(
                'department' => $this->input->post('department'),
                'office_name' => $this->input->post('office_name'),
                'office_name2' => $this->input->post('office_name2'),
                'office_address' => $this->input->post('office_address'),
            );
            if ($this->upload->do_upload('logo')) {
                $file = $this->upload->data();
                $data['logo'] = $file['file_name'];
            }

            $update = $this->settingsModel->updateStation($data);
 
            if ($update) {
                $log = array(
                    'activity' => 'Station Information updated',
                    'action' => 'Update',
                    'username' => $this->session->username,
                );
                $this->settingsModel->insert_activity($log);
                $this->session->set_flashdata('message', 'Station info has been save!');
            } else {
                $this->session->set_flashdata('errors', 'No changes has been made!');
            }
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }

    public function backup()
    {

        $this->load->dbutil();
        $prefs = array(
            'format'      => 'zip',
            'filename'    => 'my_db_backup.sql',
            'ignore'        => array('users', 'groups', 'users_groups', 'login_attempts'),
            'foreign_key_checks' => FALSE,
        );
        $log = array(
            'activity' => 'System backup',
            'action' => 'Backup',
            'username' => $this->session->username,
        );
        $this->settingsModel->insert_activity($log);

        $backup = $this->dbutil->backup($prefs);

        $db_name = 'backup-on-' . date("Y-m-d-H-i-s") . '.zip';
        $save = 'pathtobkfolder/' . $db_name;

        $this->load->helper('file');
        write_file($save, $backup);

        $this->load->helper('download');
        force_download($db_name, $backup);
    }

    public function restore()
    {
        $config['upload_path'] = './assets/backup/';
        $config['allowed_types'] = '*';
        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('backup_file')) {

            $this->session->set_flashdata('errors',  $this->upload->display_errors());
        } else {
            $file = $this->upload->data();
            $sql = file_get_contents('./assets/backup/' . $file['file_name']);
            $string_query = rtrim($sql, '\n;');
            $array_query = explode(';', $sql);

            foreach ($array_query as $query) {
                if (trim($query) != "" && trim($query)  != ';') {
                    $this->db->query($query);
                }
            }
            $log = array(
                'activity' => 'System restored',
                'action' => 'Restore',
                'username' => $this->session->username,
            );
            $this->settingsModel->insert_activity($log);
            $this->session->set_flashdata('success', 'success');
            $this->session->set_flashdata('message', 'Database Restored!');
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }
}