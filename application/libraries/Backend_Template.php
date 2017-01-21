<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Backend_Template
{
   var $template_data = array();
   function set($name, $value)
   {
      $this->template_data[$name] = $value;
   }
   function load($template = '', $view = '' , $view_data = array(), $return = FALSE)
   {               
      $this->CI =& get_instance();
      $this->set('head', $this->CI->load->view('admin/head', $view_data, TRUE));
      $this->set('topbar', $this->CI->load->view('admin/topbar', $view_data, TRUE));
      $this->set('sidebar', $this->CI->load->view('admin/sidebar', $view_data, TRUE));
      $this->set('content', $this->CI->load->view($view, $view_data, TRUE));
//      $this->set('js', $this->CI->load->view('admin/js', $view_data, TRUE));
      $this->set('foot', $this->CI->load->view('admin/foot', $view_data, TRUE));
      return $this->CI->load->view('admin/'.$template, $this->template_data, $return);
   }
}
 
/* End of file Template.php */
/* Location: ./apps/libraries/Template.php */