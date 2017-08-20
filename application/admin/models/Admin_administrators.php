<?php
class Admin_administrators extends CI_Model {

	protected $table = 'admin_user';
	
	function __construct()//重载构造函数
	{
		parent::__construct();
		$this->load->database();
	}
	
	public function getlist() //获取所有管理员
	{
		$query = $this->db->order_by('adminid','desc')->get($this->table);
		$data = $query->result_array();
		return $data;
	}
	
	public function delete($adminid) //删除
	{
		return $this->db->where('adminid',$adminid)->delete($this->table);
	}
	
	public function getone($adminid) //获取一条记录
	{
		$query =$this->db->where('adminid',$adminid)->limit(1)->get($this->table);
		return $query->first_row('array');
	}
	
	public function getone_by_username($username) //获取一条记录
	{
		$query =$this->db->where('username',$username)->limit(1)->get($this->table);
		return $query->first_row('array');
	}
	
	public function modify($adminid,$data)  //修改
	{
		return $this->db->where('adminid',$adminid)->update($this->table, $data);
	
	}
	
	public function add($data) //添加
	{
		return $this->db->insert($this->table, $data);
	
	}
	
	public function resetpassword($adminid,$password='123456') //重置密码
	{
		$data['password'] = md5($password);
		return $this->db->where('adminid',$adminid)->update($this->table, $data);
	}
	
	public function resetpassword_by_username($username,$password='123456') //重置密码
	{
		$data['password'] = md5($password);
		return $this->db->where('username',$username)->update($this->table, $data);
	}
	
	public function checklogin($username,$password)
	{
		$md5pass = md5($password);
//		$md5pass = $password;
		$query = $this->db->where(array('username'=>$username,'password'=>$md5pass))->limit(1)->get($this->table);
		return $query->first_row('array');
	}
	
	
}