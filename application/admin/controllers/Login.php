<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
//        session_start();
        $this->load->helper('url');

    }

	public function index()
	{
		if ($_POST) {
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$this->load->model('admin_administrators');
			$admin_info = $this->admin_administrators->checklogin($username,$password);
			if (is_array($admin_info))
			{
				$this->load->library('session');
				$this->session->adminuser = $username;
//                $_SESSION['adminuser'] = $username;
				$data=array();
				$data['login_time'] = time();
				$this->admin_administrators->modify($admin_info['adminid'],$data);
				
				$this->load->model('admin_role');
//                $this->load->helper('url');
                $role_info = $this->admin_role->getone($admin_info['role_id']);
				$this->session->operate_flags = $role_info['operate_flags'];
				$this->session->role_name = $role_info['role_name'];

                $url = site_url('/');
				redirect($url);
			}else {
                show_message(site_url('login'), 'error', '登录失败');
            }
		}else {
			$data['title'] = '后台登录';
			$this->load->vars($data);
			$this->load->view('admin/login');
		}
	}
	
	public function logout()
	{
		$this->load->library('session');
		$this->session->unset_userdata("adminuser");
		$this->session->unset_userdata("operate_flags");
		$this->session->unset_userdata("role_name");
		redirect('login');
		
	}

}
