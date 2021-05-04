<?php 
class Common_model extends CI_Model {
	
	public $web_setting_table_name = 'tbl_websettings';
	// Autoloading a system library usin constructor method
	public function __construct() {
        parent::__construct();
    }
	
 	/** In Function Get single records for edit view purpose from select table **/
    public function get_single_record() {
        $this->db->select("*");
		$this->db->from($this->web_setting_table_name);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
    }   
 
}
?>