<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Slide_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){

		$data = array();
        $data['slides'] = $this->system_model->get_data('images',array(
            'type' => 'slide',
        ),array('sort' => ''));
        //echo "<pre>";print_r($data['slides']);die;
        $this->load->view('view',$data);
    }
    
}