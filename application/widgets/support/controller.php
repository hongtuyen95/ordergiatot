<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Support_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        $data['supports'] = $this->system_model->get_data('support_online',array(
            'active' => 1,
        ),array('id' => 'desc'),null);
        $this->load->view('view',$data);
    }
}