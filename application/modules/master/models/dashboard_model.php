<?php 
class dashboard_model extends CI_Model {
	
	public $table_customer = 'tbl_addcustomer';
	public $table_expenses = 'tbl_addexpenses';
	public $table_technical = 'tbl_technical';
	public $table_meter_customer = 'tbl_addmetercustomer';
	public $table_monthly_customer = 'tbl_monthlycustomer';
	public $table_payrol = 'tbl_payrols';
	// Autoloading a system library usin constructor method
	public function __construct() {
        parent::__construct();
    }
	
 	/** In Function Get count from select table **/
    public function get_total_customers() {
        $this->db->select("*");
		$this->db->from($this->table_customer);
		$this->db->group_by('customer_id');
		$query = $this->db->get();
		$result = $query->num_rows();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_meter_customers() {
        $this->db->select("*");
		$this->db->from($this->table_customer);
		$this->db->where('customer_type','metercustomer');
		//$this->db->group_by('customer_id');
		$query = $this->db->get();
		$result = $query->num_rows();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_monthly_customers() {
        $this->db->select("*");
		$this->db->from($this->table_customer);
		$this->db->where('customer_type','monthlycustomer');
		//$this->db->group_by('customer_id');
		$query = $this->db->get();
		$result = $query->num_rows();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_expenses() {
        $this->db->select("*");
		$this->db->from($this->table_expenses);
		$query = $this->db->get();
		$result = $query->num_rows();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_meter_pay() {
        $this->db->select("sum(total) as total");
		$this->db->from($this->table_meter_customer);
		$this->db->where('status','1');
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_monthly_pay() {
        $this->db->select("sum(amount) as total");
		$this->db->from($this->table_monthly_customer);
		$this->db->where('status','1');
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_technical_problems() {
        $this->db->select("*");
		$this->db->from($this->table_technical);
		$query = $this->db->get();
		$result = $query->num_rows();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_total_solved_problems() {
        $this->db->select("*");
		$this->db->from($this->table_technical);
		$this->db->where('status','1');
		$query = $this->db->get();
		$result = $query->num_rows();
		return $result;
    } 
	/** In Function Get count from select table **/
    public function get_customers_list() {
        $this->db->select("*");
		$this->db->from($this->table_customer);
		$this->db->order_by('id','desc');
		$this->db->group_by('customer_id');
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
    } 
	/** In Function Get count from select table **/
    public function get_expenses_list() {
        $this->db->select("*");
		$this->db->from($this->table_expenses);
		$this->db->order_by('id','desc');
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
    }
		 public function record_count() {
        return $this->db->count_all($this->table_expenses);
    }
	/** In Function Get count from select table **/
    public function get_month_expenses_list() {
		$date = date('Y-m-d', strtotime('today - 30 days'));
        $this->db->select("*");
		$this->db->from($this->table_expenses);
		$this->db->where('create_date_time >',$date);
		$this->db->order_by('id','desc');
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_list_monthly_income() {
		$date = date('Y-m-d', strtotime('today - 30 days'));
        $this->db->select("*,
		(Select first_name from ".$this->table_customer." where ".$this->table_customer.".customer_id = ".$this->table_monthly_customer.".customer_id) as name
		");
		$this->db->from($this->table_monthly_customer);
		$this->db->where('create_date_time >',$date);
		$this->db->order_by('id','desc');
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
    }   
	/** In Function Get count from select table **/
    public function get_list_meter_income() {
		$date = date('Y-m-d', strtotime('today - 30 days'));
        $this->db->select("*,
		(Select first_name from ".$this->table_customer." where ".$this->table_customer.".customer_id = ".$this->table_meter_customer.".customer_id) as name
		");
		$this->db->from($this->table_meter_customer);
		$this->db->where('create_date_time >',$date);
		$this->db->order_by('id','desc');
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
    }  
    public function get_income_metercustomer(){
		$this->db->select('SUM(pay_amount) as total1');
		$this->db->from($this->table_meter_customer);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}
	public function get_income_monthlycustomer(){
		$this->db->select('SUM(paidamount) as total2');
		$this->db->from($this->table_monthly_customer);
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
		$this->db->from($this->table_customer);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}	
	
}
?>