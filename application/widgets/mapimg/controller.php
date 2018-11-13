<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mapimg_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        $data['map'] = $this->system_model->getFirstRowWhere('images',array(
            'type' => 'bottom'
        ));
		$this->load->view('view',$data);
    }
}