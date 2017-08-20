<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('admin_menu');

    }

    public function index(){

    /*    $data['adminuser'] = $this->session->adminuser;
        $data['role_name'] = $this->session->role_name;
        $operate_flag_arr = explode(',',$this->session->operate_flags);*/
        $this->load->helper('url');

        //默认设置为超级管理员
        $data['adminuser'] = 'admin';
        $data['role_name'] = '1';
        $operate_flag_arr =  explode(',',"member,member-memberlist,member-business,caiwu,caiwu-recharge,caiwu-withdrawals,caiwu-bonus");

        /*返回导航栏、子菜单、被选中导航栏*/
        $data['menu_arr'] = $this->admin_menu->getlist();  //获得导航栏
        if(isset($_GET['menu'])){
            $data['selected_menu'] = $_GET['menu'];  //导航栏选中状态
            $data['child_menu'] = $this->admin_menu->getchild($_GET['menu']); //获得被选中导航标题的子菜单
        }else{
            $menu_id =  $this->admin_menu->getfirstmenu();;  //导航栏选中状态
            $data['selected_menu'] = $menu_id['menu_id'];
            $data['child_menu'] = $this->admin_menu->getchild($menu_id['menu_id']); //获得被选中导航标题的子菜单
        }



//        if ($this->session->adminuser == 'admin') {
        if (true) {
            foreach ($data['menu_arr'] as $key=>$value) {
                $data['menu_arr'][$key]['show'] = 1;
                if (isset($value['son']) && is_array($value['son'])) {
                    foreach ($value['son'] as $k=>$v) {
                        $data['menu_arr'][$key]['son'][$k]['show'] = 1;
                    }
                }
            }
        }else {
            foreach ($data['menu_arr'] as $key=>$value) {
                if (in_array($value['operate_flag'],$operate_flag_arr)) {
                    $data['menu_arr'][$key]['show'] = 1;
                    if (isset($value['son']) && is_array($value['son'])) {
                        foreach ($value['son'] as $k=>$v) {
                            if (in_array($v['operate_flag'],$operate_flag_arr)) {
                                $data['menu_arr'][$key]['son'][$k]['show'] = 1;
                            }
                        }
                    }
                }
            }
        }


        $data['title'] = '后台主页';
        $this->load->vars($data);
        $this->load->view('admin/index');
    }

}



