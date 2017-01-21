<?php 
class Login extends MX_Controller
{
     
     function __construct()
     {
          parent::__construct();
          $this->load->model('M_login');

     }

     function index(){
          $this->load->view('V_Login');
     }

     function aksi_login(){
          $username = $this->input->post('username');
          $password = $this->input->post('password');
          $where = array(
               'username' => $username,
               'password' => md5($password)
               );
          $cek = $this->M_login->cek_login("user",$where)->num_rows();
          if($cek > 0){

               $data_session = array(
                    'nama' => $username,
                    'status' => "login"
                    );

               $this->session->set_userdata($data_session);

               redirect(base_url("admin"));

          }else{
               echo "<script>alert('Password atau Username Salah !!!');</script>";
               redirect('Login','refresh');
               //echo "Username dan password salah !";
          }
     }

     function logout(){
          $this->session->sess_destroy();
          redirect(base_url('login'));
     }
}