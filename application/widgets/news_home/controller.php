<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News_home_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){

        $data['cats'] = $this->f_homemodel->get_data('news_category',
            array('focus' => 1,'
            lang' => $this->language),
            array('sort'=>''),false,2,0
        );
        foreach($data['cats'] as $k => $cat){
            $data['cats'][$k]->items =  $this->system_model->get_data('news',array(
                'category_id'=> $cat->id
            ),
                array('sort'=>'asc'));
        }



       $this->load->view('view',$data);
   }
}