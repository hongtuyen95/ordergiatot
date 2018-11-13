<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
			
		//nội dung 
		
		// noi dung
        $data['pages'] = $this->f_homemodel->get_data('staticpage',
            array(
                'focus' => 1,
                'lang' => $this->language
            ));
					
			$this->load->view('view',$data);
    }
}