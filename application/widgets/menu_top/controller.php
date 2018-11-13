<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu_top_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){

		//menu top
		$data['menu_top'] = $this->system_model->getFirstRowWhere('menu',array('position'=>'top','parent_id'=>0,'lang' => $this->language),
               array('sort'=>'')
           );
		//var_dump($data['menu_top']);
		
			$data['menu_sub']=  $this->system_model->get_data('menu',array( 'position'=>'top',
			'parent_id ='=>$data['menu_top']->id,
			'lang' => $this->language),
                array('sort'=>''));
		
		$this->load->view('view',$data);
    }
}