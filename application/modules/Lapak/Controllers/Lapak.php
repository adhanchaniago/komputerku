<?php 
class Lapak extends MX_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('M_Lapak');
	}

	function index(){

		$data['header']=$this->header();
		$data['produk']=$this->M_Lapak->tampil();
		$this->load->view('V_Lapak', $data);

	}

	function header()
	{
		$this->load->view('dashboard/header');
	}

	function laptop(){
		$data['header']=$this->header();
		$data['produk']=$this->M_Lapak->Laptop();
		$this->load->view('V_Lapak_Laptop', $data);
	}

}