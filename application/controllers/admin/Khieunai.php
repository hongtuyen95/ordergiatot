<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Khieunai extends MY_Controller
{
    public $total_order;
    public $total_exchanges;
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('system_model');
        $this->load->model('ordermodel');
        $this->load->library('pagination');
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnadmin', 'location');
            die();
        }
        $this->total_order = $this->ordermodel->count_All('order');
        $this->total_exchanges = $this->ordermodel->count_All('exchanges');
    }

    public function list_khieunai()
    {
        $data= array();
        if ($this->input->get('status')) {
            $data['carts'] = $this->system_model->get_data('order_item',array('khieunai'=>$this->input->get('status')));
        }else{
            $data['carts'] = $this->system_model->get_data('order_item',array('khieunai !='=>0));
        }
        
        $data['count_all'] = $this->system_model->Count('order_item',array('khieunai !='=>0));
        $data['count_1'] = $this->system_model->Count('order_item',array('khieunai '=>1));
        $data['count_2'] = $this->system_model->Count('order_item',array('khieunai '=>2));
        $data['count_3'] = $this->system_model->Count('order_item',array('khieunai '=>3));
        $data['count_4'] = $this->system_model->Count('order_item',array('khieunai '=>4));
        $data['count_5'] = $this->system_model->Count('order_item',array('khieunai '=>5));
        $data['count_6'] = $this->system_model->Count('order_item',array('khieunai '=>6));
        $data['count_7'] = $this->system_model->Count('order_item',array('khieunai '=>7));
        $data['count_8'] = $this->system_model->Count('order_item',array('khieunai '=>8));


        if(count($data['carts'])){
            foreach ($data['carts'] as $carts){
                $carts->order = $this->system_model->getFirstRowWhere('order',array('id'=>$carts->order_id));
                $carts->tracking = $this->system_model->getFirstRowWhere('tracking',array(
                    'shop_name'=>$carts->seller_name,
                    'shop_id' => $carts->seller_id,
                    'order_id' => $carts->order_id
                ));
                $carts->buyer = $this->system_model->getFirstRowWhere('users',array('id'=>$carts->order->id_buyer));
                $carts->admin = $this->system_model->getFirstRowWhere('users',array('id'=>$carts->order->id_admin));
            }
        }
        $data['headerTitle']="Khiếu nại";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/order/khieunai',$data);
        $this->load->view('admin/footer');
    }

    public function add()
    {
        if($this->input->get('id')){
            $order_item = $this->system_model->getFirstRowWhere('order_item',array('id'=>$this->input->get('id')));
            if (count($order_item)){
                $this->system_model->Update_where('order_item',array('id'=>$this->input->get('id')), array('khieunai'=>'1'));
            }
            redirect(base_url('vnadmin/khieunai/list_khieunai'));
        }
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function update_khieunai()
    {
        if($this->input->get('id')){
            $order_item = $this->system_model->getFirstRowWhere('order_item',array('id'=>$this->input->get('id')));
            if (count($order_item)){
                $this->system_model->Update_where('order_item',array('id'=>$this->input->get('id')), array('khieunai'=>$this->input->get('status')));
            }
            redirect($_SERVER['HTTP_REFERER']);
        }
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function comment()
    {
        $user = $this->session->userdata('adminfull');
        $image = '';
        if ($this->input->post("post_comment")) {
            $config['upload_path'] = './upload/img/';
            $config['allowed_types'] = '*';
            $config['max_size'] = '5000';
            $config['max_width']  = '5000';
            $config['max_height']  = '4000';
            $this->load->library('upload', $config);
            if ($_FILES['userfile']['name'] != '') {
                if (!$this->upload->do_upload('userfile')) {
                   $this->session->set_flashdata("mess", "".$this->upload->display_errors());
                } else {
                    $upload = array('upload_data' => $this->upload->data());
                    $image  = 'upload/img/' . $upload['upload_data']['file_name'];
                    
                }
            }
            $order_item = $this->system_model->getFirstRowWhere('order_item',array('id'=>$this->input->post('id_cart')));
            $arr = json_decode($order_item->comment_khieunai);
            if (empty($arr)) {
                $arr = array(array('name_admin'=>$user->fullname,'comment'=>$this->input->post('comment'),'link_file'=>$image));
            }else{
                array_push($arr,array('name_admin'=>$user->fullname,'comment'=>$this->input->post('comment'),'link_file'=>$image));
            }
            $arr = json_encode($arr);

            $this->system_model->Update_where('order_item',array('id'=>$this->input->post('id_cart')), array('comment_khieunai'=>$arr));
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    // danh sach trang nội dung


}