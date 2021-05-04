<?php 
    class adddailyreport_model extends CI_Model {
	public $table_name = 'tbl_addcustomer';
	public $table_billing = 'tbl_feesplaning';
	public $table_meter = 'tbl_addmetercustomer';
	public $table_monthly = 'tbl_monthlycustomer';
	public $table_expenses = 'tbl_addexpenses';
	public $table_payrol = 'tbl_payrols';
	public $table_assets = 'tbl_addassets';
	// Autoloading a system library usin constructor method
	public function __construct() {
        parent::__construct();
    }
	
	/** In Function Get all records from select table **/
    
	 public function get_metercustomer_records($from,$to,$type){
		$this->db->select('tbl_addcustomer.customer_id, tbl_addcustomer.customer_type, tbl_addmetercustomer.*');
		$this->db->from('tbl_addmetercustomer');
		$this->db->join('tbl_addcustomer', 'tbl_addmetercustomer.customer_id = tbl_addcustomer.customer_id');
		$this->db->where('tbl_addmetercustomer.date >=',$from);
		$this->db->where('tbl_addmetercustomer.date <=',$to);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
	
	 public function get_monthycustomer_records($from,$to,$type){
		$this->db->select('tbl_addcustomer.customer_id, tbl_addcustomer.customer_type, tbl_monthlycustomer.*');
		$this->db->from('tbl_monthlycustomer');
		$this->db->join('tbl_addcustomer', 'tbl_monthlycustomer.customer_id = tbl_addcustomer.customer_id');
		$this->db->where('tbl_monthlycustomer.date >=',$from);
		$this->db->where('tbl_monthlycustomer.date <=',$to);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
	
	public function get_payrol_records($from,$to,$type){
		$this->db->select('*');
		$this->db->from($this->table_payrol);
		$this->db->where('date >=',$from);
		$this->db->where('date <=',$to);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
	
	public function get_expense_records($from,$to,$type){
		$this->db->select('tbl_expensetype.id as extid, tbl_expensetype.expensestype_name, tbl_addexpenses.*');
		$this->db->from('tbl_addexpenses');
		$this->db->join('tbl_expensetype','tbl_addexpenses.id = tbl_addexpenses.expenses_type');
		$this->db->where('date >=',$from);
		$this->db->where('date <=',$to);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
	
	public function get_assets_records($from,$to,$type){
		$this->db->select('*');
		$this->db->from($this->table_assets);
		$this->db->where('date >=',$from);
		$this->db->where('date <=',$to);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}
	
	/*public function get_daily_records($from,$to,$type){
		$this->db->select('tbl_addmetercustomer.invoice_id as mid, tbl_addmetercustomer.customer_id as mcus_id,        tbl_addmetercustomer.pay_amount, tbl_addmetercustomer.date as mdate, tbl_addmetercustomer.status as mstat, 
		tbl_monthlycustomer.invoice_id as wid, tbl_monthlycustomer.customer_id as wcus_id, tbl_monthlycustomer.paidamount, tbl_monthlycustomer.date as wdate, tbl_monthlycustomer.status as wstat, tbl_addcustomer.*');
		$this->db->from('tbl_addcustomer');
		$this->db->join('tbl_addmetercustomer', 'tbl_addcustomer.customer_id = tbl_addmetercustomer.customer_id');
		$this->db->join('tbl_monthlycustomer', 'tbl_addcustomer.customer_id = tbl_monthlycustomer.customer_id');
		$this->db->where('tbl_addmetercustomer.date >=',$from);
		$this->db->where('tbl_addmetercustomer.date <=',$to);
		$this->db->where('tbl_monthlycustomer.date >=',$from);
		$this->db->where('tbl_monthlycustomer.dat1 <=',$to);
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}*/
	
	 /*public function get_daily_records($fromdate,$todate,$type){
		$this->db->select('tbl_zone.id as zoneid, tbl_zone.zone as zonena, tbl_feesplaning.id as feesid, tbl_feesplaning.name as beelname, tbl_feesplaning.days as days, tbl_feesplaning.amount as amountf, tbl_addmetercustomer.*');
		$this->db->from('tbl_addmetercustomer');
		$this->db->join('tbl_monthlycustomer', 'tbl_addcustomer.zone = tbl_zone.id');
		$this->db->join('tbl_addexpenses', 'tbl_addcustomer.billingplans = tbl_feesplaning.id');
		$this->db->join('tbl_addassets', 'tbl_addcustomer.billingplans = tbl_feesplaning.id');
		$this->db->where('tbl_addcustomer.id',$cusid);
		$this->db->where('tbl_addcustomer.customer_id',$customer);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}*/
	public function get_customer_form($cusid, $customer){
		$this->db->select('tbl_zone.id as zoneid, tbl_zone.zone as zonena, tbl_addcustomer.*');
		$this->db->from(tbl_addcustomer);
		$this->db->join('tbl_zone', 'tbl_addcustomer.zone = tbl_zone.id');
		$this->db->where('tbl_addcustomer.id',$cusid);
		$this->db->where('tbl_addcustomer.customer_id',$customer);
		$query = $this->db->get();
		$result = $query->row_array();
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
		$this->db->from($this->table_name);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	
}
?>
	
