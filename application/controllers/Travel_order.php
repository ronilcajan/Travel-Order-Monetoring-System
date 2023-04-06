<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Travel_order extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // require_once 'dompdf/autoload.inc.php';
        include APPPATH . 'third_party/phpqrcode/qrlib.php';
        
        if (!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        }
    }

    public function index()
    {
        $data['title'] = 'Travel Order Management';

        $data['to'] = $this->travelOrderModel->travelOrders();
        $data['employee'] = $this->employeeModel->employee();
        $this->admin->load('admin', 'travel_order/manage', $data);
    } 

    public function generate_travel_order($id){
        
        $data['title'] = 'Travel Order';
        $data['request'] = $this->travelOrderModel->getTravelOrderRequester($id); // get the requester info
        $data['qrCode'] = $this->qrCode($data['request']);
        $data['officials'] = $this->officialsModel->officials();
        $data['format'] = $this->travelOrderModel->getFormat($id); // get the document format for signatures
        
        //return the data of official approver for the travel order
        $data['initial_approval'] = $this->travelOrderModel->getOfficial($data['request']->approver_id);
        $data['final_approval'] = $this->travelOrderModel->getOfficial($data['request']->approver_id_2);
        
        $this->admin->load('admin', 'travel_order/generate_travel_order', $data);
    
    } 

    public function checkApprover(){ // find approver 
        $validator = array('success' => true, 'initial_approval' => array(), 'final_approval' => array());
        
        $user_id = $this->input->post('user_id');
        $within_region = $this->input->post('within_region');

        $data['request'] = $this->travelOrderModel->getEmployeeDivision($user_id); //get the division of the requester
        
        $division = $data['request']->division_id; // initialize division requester
        
        //return the data of official approver for the travel order
        $validator['initial_approval'] = $this->travelOrderModel->initial_approval($within_region, $division);
        $validator['final_approval'] =  $this->travelOrderModel->final_approval($within_region);

        echo json_encode($validator);
    }

    public function getTravelOrder($id){ // find travel order for edit function
        $search = $this->travelOrderModel->getTravelOrder($id);
        if($search){
            $validator['success'] = true;
            $validator['data'] = $search;
        } else {
            $validator['success'] = false;
            $validator['data'] = 'Something went wrong. Please contact the administrator';
        }

        echo json_encode($validator);
    }

    public function create(){

        $this->form_validation->set_rules('user_id', 'Employee Name', 'required|trim');
        $this->form_validation->set_rules('date_applied', 'Application Date ', 'required|trim');

        if ($this->form_validation->run() === FALSE) {

            $this->session->set_flashdata('errors', validation_errors());
            
        } else {

            $to_no = $this->travelOrderModel->to_last_inserted(); //get the latest travel order id
            
            if(empty($to_no)){
                $no = 10001;
            }else{
                $no = 10001 + $to_no->id;
            }
        
            $data = array(
                'user_id' => $this->input->post('user_id'),
                'to_no' => 'PA-'.date('Y').'-'.date('m').'-'.$no , // create a travel order no
                'within' => $this->input->post('within'),
                'destination' => $this->input->post('destination'),
                'purpose' => $this->input->post('purpose'),
                'assistant' => $this->input->post('assistant'),
                'source_of_funds' => $this->input->post('source_of_funds'),
                'remarks' => $this->input->post('remarks'),
                'approver_id' => $this->input->post('approver'),
                'approver_id_2' => $this->input->post('approver2'),
                'date_applied' => $this->input->post('date_applied'),
                'departure_date' => $this->input->post('departure_date'),
                'date_arrived' => $this->input->post('date_arrived'),
            );
            $insert = $this->travelOrderModel->create($data);

            if ($insert) {
                $travel_order_id = array(
                    'travel_order_id' => $insert
                );
                $this->travelOrderModel->insert_travel_order_format($travel_order_id);
                

                $log = array(
                    'activity' => 'Travel Orders created',
                    'action' =>  'Create',
                    'username' => $this->session->username,
                );
                
                $this->settingsModel->insert_activity($log);
                
                $this->session->set_flashdata('message', 'Travel order has been created!');
            } else {
                $this->session->set_flashdata('errors', 'Travel order not created!');
            }
        }

        redirect("admin/travel_orders", 'refresh');
    }

    public function updateFormat(){

        $id = $this->input->post('travel_order_id');

        $data = array(
            'rec_approval' => $this->input->post('approver'),
            'rec_approval_sig' => $this->input->post('approver_sig'),
            'approval' => $this->input->post('approval'),
            'approval_sig' => $this->input->post('approver_sig2'),
            'approver_absence' => $this->input->post('approver_absence'),
            'emp_sign' => $this->input->post('emp_sign'),
        );

        if(!empty($this->input->post('user_id'))){
            $data['user_id'] = $this->input->post('user_id');
        }

        $update = $this->travelOrderModel->update_travel_order_format($data,$id);

        if ($update) {

            $log = array(
                'activity' => 'Travel Orders format',
                'action' =>  'Update',
                'username' => $this->session->username,
            );
            
            $this->settingsModel->insert_activity($log);
            
            $this->session->set_flashdata('message', 'Travel order format has been updated!');
        } else {
            $this->session->set_flashdata('errors', 'No changes has been made!');
        }

        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }

    public function update(){

            $id = $this->input->post('travel_order_id');

            $data = array(
                'user_id' => $this->input->post('user_id'),
                'within' => $this->input->post('within'),
                'destination' => $this->input->post('destination'),
                'purpose' => $this->input->post('purpose'),
                'assistant' => $this->input->post('assistant'),
                'source_of_funds' => $this->input->post('source_of_funds'),
                'remarks' => $this->input->post('remarks'),
                'approver_id' => $this->input->post('approver'),
                'approver_id_2' => $this->input->post('approver2'),
                'date_applied' => $this->input->post('date_applied'),
                'departure_date' => $this->input->post('departure_date'),
                'date_arrived' => $this->input->post('date_arrived'),
            );

            $update = $this->travelOrderModel->update($data,$id);

            if ($update) {
                $log = array(
                    'activity' => 'Travel Orders updated',
                    'action' =>  'Update',
                    'username' => $this->session->username,
                );
                
                $this->settingsModel->insert_activity($log);

                $this->session->set_flashdata('message', 'Travel order has been updated!');
            } else {
                $this->session->set_flashdata('errors', 'No changes has been made!');
            }
        

        redirect("admin/travel_orders", 'refresh');
    }


    public function delete($id)
    {
        $this->session->set_flashdata('errors', 'Something went wrong!');
        $delete = $this->travelOrderModel->delete($id);
        if ($delete) {
            $log = array(
                'activity' => 'Travel Orders deleted',
                'action' =>  'Delete',
                'username' => $this->session->username,
            );
            
            $this->settingsModel->insert_activity($log);

            $this->session->set_flashdata('errors', 'Travel order has been deleted!');
        }
        redirect("admin/travel_orders", 'refresh');
    }

    public function qrCode($employee)
    {
        $query = $this->db->query("SELECT * FROM station WHERE id =1");
        $img = $query->row();

        $imgname = "assets/uploads/qr/qr.png";
        $data = 'This DENR-V Personnel: '.strtoupper($employee->prefix.' '.$employee->firstname .' '.$employee->middlename[0] .'. '.$employee->lastname .' '.$employee->suffix );
        $data .= ' with a Travel Order No.:'. $employee->to_no;
        if($employee->approve == 0){
            $data .= ' is still PENDING.';
        }
        if($employee->approve == 1){
            $data .= ' is APPROVED.';
        }
        if($employee->approve == 2){
            $data .= ' is DISAPPROVED.';
        }
        $logo = site_url().'assets/uploads/' . $img->logo;
        $sdir = explode("/", $_SERVER['REQUEST_URI']);
        $dir = str_replace($sdir[count($sdir) - 1], "", $_SERVER['REQUEST_URI']);

        QRcode::png($data, $imgname, QR_ECLEVEL_H, 2);

        $QR = imagecreatefrompng($imgname);
        if ($logo !== FALSE) {
            $logopng = imagecreatefrompng($logo);
            $QR_width = imagesx($QR);
            $QR_height = imagesy($QR);
            $logo_width = imagesx($logopng);
            $logo_height = imagesy($logopng);

            list($newwidth, $newheight) = getimagesize($logo);
            $out = imagecreatetruecolor($QR_width, $QR_width);
            imagecopyresampled($out, $QR, 0, 0, 0, 0, $QR_width, $QR_height, $QR_width, $QR_height);
            imagecopyresampled($out, $logopng, intval($QR_width / 2.36), intval($QR_height / 2.36), 0, 0, intval($QR_width / 6), intval($QR_height / 6), $newwidth, $newheight);
        }
        imagepng($out, $imgname);
        imagedestroy($out);

        // === Change image color
        $im = imagecreatefrompng($imgname);
        $r = 44;
        $g = 62;
        $b = 80;
        for ($x = 0; $x < imagesx($im); ++$x) {
            for ($y = 0; $y < imagesy($im); ++$y) {
                $index     = imagecolorat($im, $x, $y);
                $c       = imagecolorsforindex($im, $index);
                if (($c['red'] < 100) && ($c['green'] < 100) && ($c['blue'] < 100)) { // dark colors
                    // here we use the new color, but the original alpha channel
                    $colorB = imagecolorallocatealpha($im, 0x12, 0x2E, 0x31, $c['alpha']);
                    imagesetpixel($im, $x, $y, $colorB);
                }
            }
        }
        // imagepng($im, $imgname);
        // imagedestroy($im);

        // === Convert Image to base64
        $type = pathinfo($imgname, PATHINFO_EXTENSION);
        $data = file_get_contents($imgname);
        $imgbase64 = 'data:image/' . $type . ';base64,' . base64_encode($data);

        return $imgbase64;
    }
} 