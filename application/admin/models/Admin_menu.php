<?php
class Admin_menu extends CI_Model {

	protected $table = 'admin_menu';
	
	function __construct()//重载构造函数
	{
		parent::__construct();
		$this->load->database();
	}
	
	public function getlist() //获取所有菜单
	{
		$query = $this->db->order_by('parent_menu_id','asc')->order_by('display_order','asc')->get($this->table);
		$data = $query->result_array();
		$menu_arr = array();
		foreach ($data as $key=>$value)
		{
			if ($value['parent_menu_id'] == 0) {
				$menu_arr[$value['menu_id']] = $value; 
			}else {
				$menu_arr[$value['parent_menu_id']]['son'][$value['menu_id']] = $value;
			}
		}
		return $menu_arr;
	}
	
	public function gettopmenu() //获取一级菜单
	{
		$query = $this->db->where('parent_menu_id',0)->order_by('display_order','asc')->get($this->table);
		$data = $query->result_array();
		return $data;
	}
	
	public function delete($menu_id) //删除菜单
	{
		return $this->db->where('menu_id',$menu_id)->delete($this->table);
	}
	
	public function getone($menu_id) //获取一条菜单记录
	{
		$query =$this->db->where('menu_id',$menu_id)->limit('0,1')->get($this->table);
		return $query->first_row('array');
	}
	
	public function modify($menu_id,$data)  //修改菜单
	{
		return $this->db->where('menu_id',$menu_id)->update($this->table, $data);
	
	}
	
	public function add($data) //添加菜单
	{
		return $this->db->insert($this->table, $data);
	
	}

	/*获得被选中导航标题的子菜单*/
	public  function  getchild($id){
        $query = $this->db->where('parent_menu_id', $id)->order_by('display_order','asc')->get($this->table);
        $data = $query->result_array();
        return $data;
    }
	public function getfirstmenu(){
        $query = $this->db->order_by('parent_menu_id','asc')->order_by('display_order','asc')->limit(1)->get($this->table);
        $data = $query->row_array();
        return $data;
    }
}