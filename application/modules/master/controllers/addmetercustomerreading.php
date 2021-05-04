<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class addmetercustomerreading extends CI_Controller {
	// Declare globle variable here
	
	public $headerPage = '../../views/admin-includes/header'; 
	
	public $table_name = 'tbl_addcustomer_reading';	  //*****  Table name  *****//
	public $addPage  = 'addmetercustomerreading_add';	     //*****  Add page    *****//
	public $editPage = 'addmetercustomerreading_edit';     //*****  Edit page   *****//
	public $listPage = 'addmetercustomerreading';		   //*****  View page   *****//
	public $searchPage ='addmetercustomer_search';
	public $addcustomerajax = 'addmetercustomer_search _ajax';
	public $month_customer_invoice = 'month_customer_invoice';
	public $addpages_ajax = 'addmetercustomerreading_add _ajax';
	
	public $listPage_redirect = '/master/addmetercustomerreading';		  //*****  Redirect View  *****//
	public $addPage_redirect = '/master/addmetercustomerreading/add/';	 //*****  Redirect Add   *****//
	public $editPage_redirect = '/master/addmetercustomerreading/edit/';  //*****  Redirect Edit  *****//
	
	
	public function __construct() {
        parent::__construct();
  		$this->load->model('addmetercustomerreading_model','my_model');   //*****    Model Loading     *****//	
		$this->load->model('common_model','comm_model');	
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="error" style="color:red;">', '</div>');
		error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
		error_reporting(0);
		ini_set('display_errors','off'); 				
		$this->load->model('adminheader_model','top_model');
    }
	
	public function index(){ 		 //*****  View Loading  *****//
		$header['roleResponsible'] = $this->top_model->get_responsibilities();
		$data['record'] = $this->my_model->get_all_records();	
		//$header['record_info'] = $this->top_model->get_last_login_details(1);
		$this->load->view($this->headerPage,$header);
		$this->load->view($this->listPage,$data);
	}
	
	/** Add Function **/
	public function add(){ 
		$data['msg'] ='';
		$header['roleResponsible'] = $this->top_model->get_responsibilities();
		$data['addmonth'] = $this->my_model->get_months();
		if($this->input->post('add') != ''){
                $result = $this->my_model->add_record();
				if($result == 1){
					
					if($result){
					$this->session->set_flashdata('msg_succ', 'Inserted Successfully...');
					$this->session->set_flashdata('msg', '<div class="alert alert-success text-center">Inserted Successfully...!</div>');
					redirect($this->listPage_redirect);
					}
					
				}elseif($result == 0){
					$data['msg'] = "Data Already available!...";
					$this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Data Already available!</div>');
				
				}else{
					
					$data['msg'] = "Not Inserted...";
					$this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Not Inserted...!</div>');
				
				}
				
		}
		$this->load->view($this->headerPage,$header);
		$this->load->view($this->addPage,$data);
	}
	public function get_custmer_all_data($id){
		$this->load->model('addmetercustomerreading_model','my_model'); 
		$id = $this->input->post('id');
		$data['record'] = $this->my_model->get_customer_info($id);
		$data['last_reading'] = $this->my_model->get_last_reading($id); 
		$data['get_unit_price'] = $this->my_model->get_unit_price();
		$this->load->view($this->addpages_ajax,$data);
	}
	
	public function edit($id){
		$header['roleResponsible'] = $this->top_model->get_responsibilities();
		$data['record'] = $this->my_model->get_single_record($id);
		$data['addmonth'] = $this->my_model->get_months();
		$data['msg'] ='';
		if($this->input->post('edit') != ''){
			$result = $this->my_model->update_record($id);
			if($result){
				$this->session->set_flashdata('msg_succ', 'Updated Successfully...');
				redirect($this->listPage_redirect);
			}else{
				$data['msg'] = "Not Updated...";
			}
		}
		$this->load->view($this->headerPage,$header);
		$this->load->view($this->editPage,$data);

	}
	
	
	/** Delete Function **/
	public function delete($id){ 
		$data['msg'] ='';
		if($id){
			$result = $this->my_model->delete_record($id);
			if($result){
			
				$this->session->set_flashdata('msg_succ', 'Deleted Successfully...');
				redirect($this->listPage_redirect);
			}else{
				$data['msg'] = "Not Deleted...";
			}
		}
	}
	/** Multiple Delete Function **/
	public function multi_delete(){
		$data['msg'] ='';
		if($this->input->post('delete_ids') != ''){
			$delete_ids = $this->input->post('delete_ids');
			for($i=0;$i<count($delete_ids);$i++){
				$result = $this->my_model->delete_record($delete_ids[$i]);
			}
			if($result){
				$this->session->set_flashdata('msg_succ', 'Deleted Successfully...');
				redirect($this->listPage_redirect);
			}else{
				$this->session->set_flashdata('msg_succ', 'Not Deleted...');
				redirect($this->listPage_redirect);
			}
		}else{
			$this->session->set_flashdata('msg_succ', 'Select any Check Box...');
			redirect($this->listPage_redirect);
		}
	}
	
}
?>