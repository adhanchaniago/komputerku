<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
  
  function sesi($item)
  {
    $CI =& get_instance();
    return $CI->config->item("ses_pref").$item;
  }
  
  function parent_icon()
  {
    $CI =& get_instance();
    $q = $CI->db->select('a.nama, b.script')
      ->from('master_group_modul a')
      ->join('master_icon b', 'a.id_icon = b.id_icon', 'left')
      ->get();
    if ($q->num_rows()>0) {
      foreach ($q->result() as $k0) {
        $hasil[$k0->nama]=$k0->script;
      }
    }else{
      $hasil = array();
    }
    return $hasil;
  }

  function modul_icon()
  {
    $CI =& get_instance();
    $q = $CI->db->select('a.script as link, b.script')
      ->from('master_modul a')
      ->join('master_icon b', 'a.id_icon = b.id_icon', 'left')
      ->get();
    if ($q->num_rows()>0) {
      foreach ($q->result() as $k0) {
        $hasil[$k0->link]=$k0->script;
      }
    }else{
      $hasil = array();
    }
    return $hasil;
  }

/* End of file App_helper.php */
/* Location: ./application/helpers/App_helper.php */