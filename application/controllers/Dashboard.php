<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
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
        $data['title'] = 'Dashboard';
        $data['employee'] = $this->dashboardModel->employee();
        $data['officials'] = $this->dashboardModel->officials();
        $data['users'] = $this->dashboardModel->users();
        $data['travel_orders'] = $this->travelOrderModel->total();
        $data['history'] = $this->settingsModel->logs($limit=18);

        $this->admin->load('admin', 'dashboard', $data);
    }

    public function morris_chart(){ 
        $validator = array('pending' => array(), 'approved' => array(), 'total' => array());
        $validator['pending'] = $this->travelOrderModel->pending();
        $validator['approved'] =  $this->travelOrderModel->approved();
        $validator['disapproved'] =  $this->travelOrderModel->disapproved();
        $validator['total'] =  $this->travelOrderModel->total();

        echo json_encode($validator);
    }
    public function morris_line_chart(){ 

        $year = $this->input->post('year');

        $result =  $this->travelOrderModel->get_Travel_Order_Year($year);

        $month_names = array(
            '1' => 'January',
            '2' => 'February',
            '3' => 'March',
            '4' => 'April',
            '5' => 'May',
            '6' => 'June',
            '7' => 'July',
            '8' => 'August',
            '9' => 'September',
            '10' => 'October',
            '11' => 'November',
            '12' => 'December'
        );

        foreach ($result as $row) {
            $row->month = $month_names[$row->month];
        }
        echo json_encode($result);
    }
}