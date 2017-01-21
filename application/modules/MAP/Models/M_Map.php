<?php 
class M_Map extends CI_Model
{

	function get_lokasi($data){
		$data['latitude']=$this->db->select('latitude');
		$data['longitude']=$this->db->select('longitude');
		$this->db->from('tbl_lokasi');
		$data['lokasi']=$this->db->where('id_lokasi', $data);

		$query= $this->db->get();
		return $query;
	}
}