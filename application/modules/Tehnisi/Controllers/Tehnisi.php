<?php 
class Tehnisi extends MX_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('M_Tehnisi');
	}

	function index(){

		$data['header']= $this->header();
		$data['tehnisi']= $this->M_Tehnisi->tampil_data_tehnisi()->result();
		$this->load->view('V_Tehnisi', $data); 
	}

	function lihat_data_tehnisi($id_tehnisi)
	{
		$data['header']=$this->header();
		$data['tehnisi']=$this->M_Tehnisi->detail_profil($id_tehnisi);
		$this->load->view('V_lihatprofil',$data);
	}

	function header()
	{
		$this->load->view('dashboard/header');
	}
}