<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Security extends MY_admin_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin_administrators');
		
	}
	
	public function password()
	{
		if ($_POST) {
			$password = $this->input->post('password');
			$new_password = $this->input->post('new_password');
			$new_password2 = $this->input->post('new_password2');
			$adminusername = $this->adminusername;
			$member_info = $this->admin_administrators->getone_by_username($adminusername);

			if (md5($password) != $member_info['password']) {
				show_message(site_url('security/password'), 'error', '原密码错误，修改不成功');
			}else
				if ($new_password != $new_password2) {
				show_message(site_url('security/password'), 'error', '两次密码不一致，修改不成功');
			}else {
				$this->admin_administrators->resetpassword_by_username($adminusername,$new_password);
				show_message(site_url('security/password'), 'success', '密码修改成功');
			}
			
		}else {
			$data['title'] = '修改密码';
			$this->load->vars($data);
			$this->load->view('admin/security_password');
		}
	}
	
}
