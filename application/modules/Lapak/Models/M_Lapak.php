<?php 
class M_Lapak extends CI_Model
{
	function tampil(){
		$this->db->select('*');
		$this->db->from('produk');
		$this->db->join('tbl_kategori', 'produk.id_produk = tbl_kategori.id_kategori', 'left');
		//$this->db->join('tbl_kategori', 'produk.kategori = tbl_kategori.id_kategori', 'left');
		//$this->db->where('id_tehnisi', $id_tehnisi);

		$query= $this->db->get();
		return $query;
	}

	function Laptop(){
	}

	function monitor(){

	}

	function keyboard(){

	}

	function printer(){

	}

	function sparepart(){

	}

	function accecories(){
		
	}
}