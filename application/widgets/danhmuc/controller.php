<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Danhmuc_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        $data = array();
        $this->load->model('f_usersmodel');
        $uInfo = $this->session->userdata('userData');
        $user = $this->system_model->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));

        $data['user'] = $user;
        $data['countAll'] = $this->f_usersmodel->countAllOrders(array(
            'user_id' => $user->id,
        ));
        for($i=1;$i<=8;$i++){
            $data['status'.$i] = $this->f_usersmodel->countUserOrderByStatus(array(
                'user_id' => $user->id,
                'status' => $i,
            ));
        }

        $this->load->view('view',$data);
    }
}