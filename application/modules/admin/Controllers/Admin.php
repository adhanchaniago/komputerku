<?php 
class Admin extends MX_Controller
{
	
	function __construct()
	{
		parent::__construct();
		//$this->load->model('M_Admin');
	}

	function index(){
		$this->load->view('V_Admin');
	}

	function tambah_admin()
		{
			$this->load->view('Tambah_Admin');
		}
}