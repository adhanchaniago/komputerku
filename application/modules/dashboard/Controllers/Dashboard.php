<?php 
class Dashboard extends MX_Controller
{
	
	function __construct()
	{
		parent::__construct();
	}

	function index(){
		$this->load->view('Header');
		$this->load->view('Body');
		$this->load->view('Konten');
	}

	function home(){
		$this->load->view('Body');
		//$this->load->view('Body'); //echo"ini halaman index";
		//$this->load->view('Konten');
		
	}

}