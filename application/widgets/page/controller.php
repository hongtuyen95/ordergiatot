<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
    	$data = array();
    	$data['page'] = $this->system_model->getFirstRowWhere('staticpage',array(
    		'home' => 1,
    		'lang' => $this->language
    	));
    	
        $this->load->view('view',$data);
    }
}