<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pricelist extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        
        $this->load->model('ordermodel');
        $this->load->library('pagination');
    }

    public function index(){
        $data = array();
            
        $seo = array(
            'title' => 'Bảng giá'
        );

        $this->LoadHeader(null,$seo,false);
        $this->load->view('pricelists/index',$data);
        $this->LoadFooter();
    }   
}


?>