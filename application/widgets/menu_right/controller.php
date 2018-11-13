<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu_right_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
		$this->load->model('f_homemodel');

		$data['menu_root'] = $this->f_homemodel->getFirstRowWhere('news_category',array(
			'hot' => 1,
			'lang' => $this->language)
           );

		$data['subs']=  $this->system_model->get_data('news',array(
			'category_id'=> $data['menu_root']->id
			),
			array('sort'=>'asc'));

		$this->load->view('view',$data);
    }
}