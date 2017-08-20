<?php
class Admin_role extends CI_Model {

	protected $table = 'admin_role';
	
	function __construct()//重载构造函数
	{
		parent::__construct();
		$this->load->database();
	}
	
	public function getlist() //获取所有操作
	{
		$query = $this->db->order_by('role_id','desc')->get($this->table);
		$data = $query->result_array();
		return $data;
	}
	
	public function delete($role_id) //删除操作
	{
		return $this->db->where('role_id',$role_id)->delete($this->table);
	}
	
	public function getone($role_id) //获取一条菜单记录
	{
		$query =$this->db->where('role_id',$role_id)->limit('0,1')->get($this->table);
		return $query->first_row('array');
	}
	
	public function modify($role_id,$data)  //修改操作
	{
		return $this->db->where('role_id',$role_id)->update($this->table, $data);
	
	}
	
	public function add($data) //添加菜单
	{
		return $this->db->insert($this->table, $data);
	
	}
}