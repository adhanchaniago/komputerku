<?php 
class Map extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
        //$this->load->model('M_Map');
    }
 
    function index()
    {
        $this->load->library('googlemaps');
        
        $config['center'] = '-6.589981, 110.667255';
        $config['zoom'] = '13';
        $this->googlemaps->initialize($config);
        
        //$marker = array();
        //$marker['position'] = '37.429, -122.1519';
        //$marker['infowindow_content'] = '1 - Hello World!';
        //$marker['icon'] = 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=A|9999FF|000000';
        //$this->googlemaps->add_marker($marker);
        
        $data['map'] = $this->googlemaps->create_map();
        
        $this->load->view('V_Map', $data);
    }


    function Get_Lokasi(){
        $this->load->library('googlemaps');
        
        $config['center'] = '<?php echo"$latitude"?>,<?php echo "$longitude" ?>';
        $config['zoom'] = '13';
        $this->googlemaps->initialize($config);

        $data['map'] = $this->googlemaps->create_map();
        
        $this->load->view('V_Map', $data);
    }
    // koordinat jepara (-6.589981, 110.667255)
    //koordinat agskomputer (-6.606451, 110.681227)
    //anavisia(-6.605940, 110.681371)
    
}