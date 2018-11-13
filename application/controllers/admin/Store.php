<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Store extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('adminmodel');
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnadmin');
            die();
        }
    }
	public function Ds_shopping(){

        $data['lists'] = $this->adminmodel->get_data('map_shopping',array(
            'lang' => $this->language
        ));

        //echo "<pre>";print_r($data['lists']);die;

        $data['headerTitle'] = 'Danh sách Shopping';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/stores/list', $data);
        $this->load->view('admin/footer');
    }
	public function add($id=null){
        $data = array();
		$data['btn_name']='Thêm';
        if($id){
            $data['row'] = $row=$this->adminmodel->get_data('map_shopping',array(
                'id'=>$id,
                'lang' => $this->language
            ),array(),true);
			$data['btn_name']='Cập nhật';
        }

        //$row=$this->Googlemapmodel->getFirstRow('site_option');
        $alias = make_alias($this->input->post('title'));
        if (isset($_POST['addnews'])) {
            $array = array("(", ")");
            $arr=array(
                'title' => $this->input->post('title'),
                'alias' => $alias,
                'toa_domap'            => $this->input->post('hdfMap'),
                'tim_kiem'            => $this->input->post('dia_chi_timkiem'),
                'diachi_shop'            => $this->input->post('diachi_shop'),
                'phone'            => $this->input->post('phone'),
                'map'            => $this->input->post('map'),
                'content'            => $this->input->post('content'),
                'toa_dohienthi'            => str_replace($array,'',$this->input->post('hdfMap')),
                'lang' => $this->language
            );


            if($id){
                //update news
                $this->adminmodel->Update_where('map_shopping', array('id'=>$id),$arr);
				$_SESSION['mess']='Cập nhật thành công!';
            }else{
                //add news
                $rs = $this->adminmodel->Add('map_shopping', $arr);
                //add enlanguage
                $arr_en = array(
                    'title' => $this->input->post('title'),
                    'alias' => $alias,
                    'toa_domap'            => $this->input->post('hdfMap'),
                    'tim_kiem'            => $this->input->post('dia_chi_timkiem'),
                    'diachi_shop'            => $this->input->post('diachi_shop'),
                    'phone'            => $this->input->post('phone'),
                    'map'            => $this->input->post('map'),
                    'content'            => $this->input->post('content'),
                    'toa_dohienthi'            => str_replace($array,'',$this->input->post('hdfMap')),
                    'lang' => 'en'
                );
                $this->adminmodel->Add('map_shopping', $arr_en);

				$_SESSION['mess']='Thêm mới thành công!';
            }
            redirect(base_url('vnadmin/store/Ds_shopping'));
        }else{
			$_SESSION['mess_err']='Thêm mới không thành công!';
		}

        $data['headerTitle'] = 'Thêm vị trí Shopping';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/stores/add', $data);
        $this->load->view('admin/footer');
    }
     public function edit($id)
    {
        $this->add($id);
    }
	public function deletes(){
        $ids = $this->input->post('checkone');
        foreach($ids as $id)
        {
            $this->delete_once($id);
        }
		$_SESSION['mess']='Xóa thành công!';
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function delete_once($id)
    {
		// xoa ban ghi trong map_shopping
		$this->adminmodel->Delete_where('map_shopping',array('id' => $id));
    }
	// xoa ban ghi
    public function delete($id){

		$this->adminmodel->Delete_where('map_shopping',array('id' => $id));
		$_SESSION['mess']='Xóa thành công!';
        redirect($_SERVER['HTTP_REFERER']);
    }

}