<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home_right_widget extends MY_Widget
{
    // sibar bên phải
    function index(){

			$data = array();
			/*begin content*/$data['news_nb']=$this->load->widget('news_nb');$data['support']=$this->load->widget('support');/*end content*/

		$this->load->view('common/right', $data);
    }
}