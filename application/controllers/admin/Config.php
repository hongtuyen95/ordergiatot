<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Config extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'administ', 'location');
            die();
        }
        $this->load->model('adminmodel');
        $this->load->library('filter');
    }

    public function phimuahang(){
        $data['headerTitle']="Phí mua hang";

        $data['lists'] = $this->adminmodel->get_data('config_phimuahang',array(),array('to' => ''));

        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/configs/phimuahang',$data);
        $this->load->view('admin/footer');
    }
    public function add_phimuahang(){
        $data['headerTitle']="Thêm mới phí mua hàng";

        if($this->input->post('addnews')){
            $from       = str_replace(array(';','.',',',' '),'',$this->input->post('from'));
            $to       = str_replace(array(';','.',',',' '),'',$this->input->post('to'));
            $arr = array(
                'from' => $from,
                'to' => $to,
                'price' => $this->input->post('price'),
                'time' => time()
            );

            $this->adminmodel->Add('config_phimuahang',$arr);
            $this->session->set_flashdata("mess","Bạn vừa thêm mới phí mua hàng thành công !");
            redirect(base_url('vnadmin/config/phimuahang'));
        }

        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/configs/add_phimuahang',$data);
        $this->load->view('admin/footer');
    }
    public function edit_phimuahang(){
        $data['headerTitle']="Sửa phí mua hàng";
        $id = (int) base64_decode($this->input->get('id'));
        $data['edit'] = $this->adminmodel->getFirstRowWhere('config_phimuahang',array(
            'id' => $id
        ));
        if($this->input->post('edit')){
            $from       = str_replace(array(';','.',',',' '),'',$this->input->post('from'));
            $to       = str_replace(array(';','.',',',' '),'',$this->input->post('to'));
            $arr = array(
                'from' => $from,
                'to' => $to,
                'price' => $this->input->post('price'),
            );

            $this->adminmodel->Update_where('config_phimuahang',array('id' => $id),$arr);
            $this->session->set_flashdata("mess","Bạn vừa cập nhật phí mua hàng thành công !");
            redirect(base_url('vnadmin/config/phimuahang'));
        }
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/configs/edit_phimuahang',$data);
        $this->load->view('admin/footer');
    }

    public function delete_phimuahang(){
        $id = (int) base64_decode($this->input->get('id'));
        $this->session->set_flashdata("mess","Bạn vừa xóa một bản ghi, phí mua hàng !");

        $this->adminmodel->Delete_where('config_phimuahang',array(
            'id' => $id
        ));

        redirect(base_url('vnadmin/config/phimuahang'));
    }

    public function tygiacannang(){
        $data['headerTitle']="Tỷ giá cân nặng";

        $data['lists'] = $this->adminmodel->get_data('config_tygiacannang',array(),array('to' => ''));

        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/configs/tygiacannang',$data);
        $this->load->view('admin/footer');
    }
    public function add_tygiacannang(){
        $data['headerTitle']="Thêm mới tỷ giá cân nặng";

        if($this->input->post('addnews')){
            $price       = str_replace(array(';','.',',',' '),'',$this->input->post('price'));
            $arr = array(
                'from' => $this->input->post('from'),
                'to' => $this->input->post('to'),
                'price' => $price,
                'time' => time()
            );

            $this->adminmodel->Add('config_tygiacannang',$arr);

            $this->session->set_flashdata("mess","Bạn vừa thêm mới phí mua hàng thành công !");
            redirect(base_url('vnadmin/config/tygiacannang'));
        }

        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/configs/add_tygiacannang',$data);
        $this->load->view('admin/footer');
    }
    public function edit_tygiacannang(){
        $data['headerTitle']="Sửa tỷ giá cân nặng";
        $id = (int) base64_decode($this->input->get('id'));
        $data['edit'] = $this->adminmodel->getFirstRowWhere('config_tygiacannang',array(
            'id' => $id
        ));
        if($this->input->post('edit')){
            $price       = str_replace(array(';','.',',',' '),'',$this->input->post('price'));
            $arr = array(
                'from' => $this->input->post('from'),
                'to' => $this->input->post('to'),
                'price' => $price,
            );


            $this->adminmodel->Update_where('config_tygiacannang',array('id' => $id),$arr);

            $this->session->set_flashdata("mess","Bạn vừa cập nhật phí mua hàng thành công !");
            redirect(base_url('vnadmin/config/tygiacannang'));
        }
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/configs/edit_tygiacannang',$data);
        $this->load->view('admin/footer');
    }

    public function delete_tygiacannang(){
        $id = (int) base64_decode($this->input->get('id'));
        $this->session->set_flashdata("mess","Bạn vừa xóa một bản ghi, tỷ giá cân nặng !");

        $this->adminmodel->Delete_where('config_tygiacannang',array(
            'id' => $id
        ));

        redirect(base_url('vnadmin/config/tygiacannang'));
    }

}