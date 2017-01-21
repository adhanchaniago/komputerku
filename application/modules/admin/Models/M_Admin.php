<?php 

class M_Admin extends CI_Model
	{

	function tampil_data()
		{
			$query= $this->db->query("SELECT * from user");
			return $query;
		}


	function tambah_data($in)
		{
			$this->db->insert('user', $in);
		}