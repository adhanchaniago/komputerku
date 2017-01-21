<?php 
class About extends MX_Controller
{
	
	function __construct()
	{
		parent::__construct();
	}

	function index(){

		$this->load->view('V_About');
	}
}