<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu_bottom_widget extends MY_Widget
{

    function index(){

		 $data['menu_bottom'] = $this->system_model->get_data('menu',array('position'=>'bottom','parent_id'=>0,'lang' => $this->language),
                array('sort'=>'')
            );
		  foreach ($data['menu_bottom'] as $key => $cat) {
            $data['menu_bottom'][$key]->menu_sub =  $this->system_model->get_data('menu',array( 'position'=>'bottom',
            'parent_id ='=>$cat->id,
            'lang' => $this->language),
                array('sort'=>'desc'));
        }
		// var_dump($data['menu_bottom']);die();
		$this->load->view('view',$data);
    }
}