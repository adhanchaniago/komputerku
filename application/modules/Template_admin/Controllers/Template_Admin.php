<?php
	class Template_admin extends MX_Controller
	{
		
		function __construct()
		{
			parent::__construct();		
		}

		function index()
		{
			$this->load->view('template');
		}
	}