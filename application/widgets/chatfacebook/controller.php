<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Chatfacebook_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index($alias=null){

        $data = array();
        $this->load->view('view',$data);
    }
}