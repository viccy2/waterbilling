<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class adddailyreport extends CI_Controller {
	// Declare globle variable here
	
	public $headerPage = '../../views/admin-includes/header'; 
	
	
	public $listPage = 'adddailyreport_add';		   //*****  View page   *****//
	public $searchPage ='adddaily_search _ajax';
	
	public function __construct() {
        parent::__construct();
  		$this->load->model('adddailyreport_model','my_model');   //*****    Model Loading     *****//	
		$this->load->model('common_model','comm_model');	
		$this->load->library('form_validation');
		$this->load->library('Pdf');
		$this->form_validation->set_error_delimiters('<div class="error" style="color:red;">', '</div>');
		error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
		error_reporting(0);
		ini_set('display_errors','off'); 				
		$this->load->model('adminheader_model','top_model');
    }
	public function index(){ 		 //*****  View Loading  *****//
		$header['roleResponsible'] = $this->top_model->get_responsibilities();
		//$header['record_info'] = $this->top_model->get_last_login_details(1);
		$this->load->view($this->headerPage,$header);
		$this->load->view($this->listPage,$data);
	}
	
	public function getadddailyreportsearch()
	{		//*****  Add Search records  *****//
			$data['msg'] ='';
			//echo '<pre>'; print_r($this->input->post('zone'));exit;
			if($this->input->post('fromdate') !='' && $this->input->post('todate') !=''){
			if($this->input->post('fromdate') =='' && $this->input->post('todate') =='' && $this->input->post('type') ==''){
				$selBox ='<h6><span style="color:red">Dear Admin Please select customer type option to search feilds</h6>' ;
				echo $selBox;
			}
			if($this->input->post('fromdate') !='' || $this->input->post('todate') !='' || $this->input->post('type') !=''){
				$type = $this->input->post('type');
				$fromdate = $this->input->post('fromdate');
				$todate = $this->input->post('todate');
				$from = date('Y-m-d', strtotime($fromdate));
				$to = date('Y-m-d', strtotime($todate));
				
				$data['record'] = $this->my_model->get_metercustomer_records($from,$to,$type);
				$data['monthly'] = $this->my_model->get_monthycustomer_records($from,$to,$type);
				$data['payroll'] = $this->my_model->get_payrol_records($from,$to,$type);
				$data['expense'] = $this->my_model->get_expense_records($from,$to,$type);
				//$data['value'] = $this->my_model->get_daily_records($from,$to,$type);
				//echo'<pre>';print_r($data['record']);exit;
				$this->load->view($this->searchPage,$data);
			}		
			}else{
				$selBox ='<h6><span style="color:red">Dear Admin Please select from-date and to-datetype</h6>' ;
				echo $selBox;				
			}
	}	
	
}
?>