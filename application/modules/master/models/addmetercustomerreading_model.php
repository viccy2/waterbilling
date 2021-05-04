<?php 
class addmetercustomerreading_model extends CI_Model {
	public $table_name = 'tbl_addcustomer_reading';
	public $table_name_monthly_dummy = 'tbl_monthlycustomer_dummy';
    public $table_customername = 'tbl_addcustomer';
	public $table_billing = 'tbl_feesplaning';
	public $table_address = 'tbl_web_settings';
	public $table_months = 'tbl_months';
	public $table_generate_customer = 'tbl_generate_customer';
	public $table_zone = 'tbl_zone';
	public $tbl_amount = 'tbl_amountrate';
	public $table_meter = 'tbl_addmetercustomer';
	public $table_monthly = 'tbl_monthlycustomer';
	public $table_expenses = 'tbl_addexpenses';
	public $table_payrol = 'tbl_payrols';
	// Autoloading a system library usin constructor method
	public function __construct() {
        parent::__construct();
    }
	
	/** In Function Get all records from select table **/
    public function get_all_records() {
        $this->db->select("*,(Select first_name from ".$this->table_customername." where ".$this->table_customername.".customer_id = ".$this->table_name.".customer_id) as names,
		(Select id  from ".$this->table_generate_customer." where ".$this->table_generate_customer.".insert_month_id = ".$this->table_name.".id) as id_generate,
		
		");
		$this->db->from($this->table_name);
		$this->db->order_by('id','desc');
		$query = $this->db->get();
		//echo $this->db->last_query();
		$result = $query->result_array();
		return $result;
    }
	public function add_record(){
		$get_date = $this->input->post('date');
		$parts = explode('-', $get_date);
        $year = $parts[2];
		$customer_read = mysql_real_escape_string($this->input->post('customer_id'));
		$month_name = mysql_real_escape_string($this->input->post('month'));
		
		$this->db->select("*");
		$this->db->from($this->table_name);
		$this->db->where('customer_id',$customer_read);
		$this->db->where('month',$month_name);
		$this->db->where('year',$year);
		$query = $this->db->get();
		$count = $query->num_rows();
		if($count == 0){
		
	    $set_data = array(
						'customer_id' => mysql_real_escape_string($this->input->post('customer_id')),
						'previous_reading' => mysql_real_escape_string($this->input->post('preview')),
						'reading' => mysql_real_escape_string($this->input->post('current_meter')),
						'consumed' => mysql_real_escape_string($this->input->post('different')),
						'unit_price' => mysql_real_escape_string($this->input->post('unit_price')),
						'amount' => mysql_real_escape_string($this->input->post('amount_pay')),
						'month' => mysql_real_escape_string($this->input->post('month')),
						'year' =>  $year,
						'date' => mysql_real_escape_string($this->input->post('date')),
					);
		$result = $this->db->insert($this->table_name, $set_data); 
		return $result;
		}
		else{
			$result = '0';
			return $result;
		}
	}
	
	/** In Function Update records for select table **/
	public function update_record($id){
		
		$set_data = array(
						'customer_id' => $this->input->post('customer_id'),
						'reading' => $this->input->post('reading'),
						'month' => $this->input->post('month'),
					);
		$this->db->where('id',$id);
		$result = $this->db->update($this->table_name, $set_data); 
		return $result;
	}
	
	
	/** In Function Delete records for select table **/
	public function delete_record($id){
		$this->db->where('id',$id);
		$result = $this->db->delete($this->table_name); 
		return $result;
	}
	
	public function get_months(){
		$this->db->select("*");
		$this->db->from($this->table_months);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
		
	public function get_single_record($id='') {
        $this->db->select("*");
		$this->db->from($this->table_name);
		if($id != ''){
			$this->db->where("id",$id);
			$query = $this->db->get();
			$result = $query->row_array();
		}
		return $result;
    }
	
	public function get_customer_info($id){
		
		$this->db->select('tbl_addcustomer.customer_id, tbl_addcustomer.first_name, tbl_addcustomer.middle_name, tbl_addcustomer.last_name,
		                  tbl_addcustomer.email_id, tbl_addcustomer.mobile1, tbl_addcustomer.mobile2, tbl_addcustomer.customer_type,
						  tbl_addcustomer.zone, tbl_zone.id, tbl_zone.zone');
		$this->db->from('tbl_addcustomer');
		$this->db->join('tbl_zone', 'tbl_addcustomer.zone = tbl_zone.id');
		$this->db->where('tbl_addcustomer.customer_type','metercustomer');
		$this->db->where('tbl_addcustomer.customer_id',$id);
		$this->db->or_where('tbl_addcustomer.email_id',$id);
		$this->db->or_where('tbl_addcustomer.mobile1',$id);
		$this->db->or_where('tbl_addcustomer.mobile2',$id);
        $query = $this->db->get();
		$result = $query->result_array();
		return $result;
		
	}
	
	public function get_last_reading($id){
		$this->db->select("*");
		$this->db->from($this->table_name);
		$this->db->where('customer_id', $id);
		$this->db->order_by("id", "desc");
		$this->db->limit(1);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
		
	}
	public function get_unit_price(){
		$this->db->select("*");
		$this->db->from($this->tbl_amount);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
		
	}
	public function get_month_name($mon_id){
		$this->db->select("*");
		$this->db->from($this->table_months);
		$this->db->where('month_id', $mon_id);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
	public function get_income_metercustomer(){
		$this->db->select('SUM(pay_amount) as total1');
		$this->db->from($this->table_meter);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	public function get_income_monthlycustomer(){
		$this->db->select('SUM(paidamount) as total2');
		$this->db->from($this->table_monthly);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	public function get_outcome_expenses(){
		$this->db->select('SUM(total) as extotal1');
		$this->db->from($this->table_expenses);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	public function get_outcome_payroll(){
		$this->db->select('SUM(total) as extotal2');
		$this->db->from($this->table_payrol);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	public function total_customer(){
		$this->db->select('COUNT(id) as count_id');
		$this->db->from($this->table_customername);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	
	
}
?>