<?php 
class M_Tehnisi extends CI_Model
{
	function tampil_data_tehnisi()
	{
		$query= $this->db->query("SELECT * from tbl_tehnisi order by id_tehnisi asc");
			return $query;
	}

	function lihat_profil($id_tehnisi)
	{
		$query= $this->db->query("SELECT * from tbl_tehnisi where id_tehnisi='$id_tehnisi'");
			return $query;
	}

	function detail_profil($id_tehnisi)
	{
		$this->db->select('*');
		$this->db->from('tbl_tehnisi');
		//$this->db->join('tbl_kategori', 'tbl_tehnisi.kategori = tbl_kategori.id_kategori', 'left');
		$this->db->where('id_tehnisi', $id_tehnisi);

		$query= $this->db->get();
		return $query;
	}
}
