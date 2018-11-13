<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Search extends MY_Controller
{
    public $total_order;

    function __construct()
    {
        parent::__construct();
        if (!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin'))) {
            redirect(base_url() . 'vnadmin', 'location');
            die();
        }
        $this->load->model('ordermodel');
        $this->load->model('cartmodel');
        $this->load->model('searchmodel');
        $this->load->library('pagination');
        if (!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin'))) {
            redirect(base_url() . 'vnadmin', 'location');
            die();
        }
        $this->total_order = $this->ordermodel->count_All('order');
        $this->total_exchanges = $this->ordermodel->count_All('exchanges');
    }

    protected $pagination_config = array(
        'full_tag_open' => "<ul class='pagination pagination-sm'>",
        'full_tag_close' => "</ul>",
        'num_tag_open' => '<li>',
        'num_tag_close' => '</li>',
        'cur_tag_open' => "<li class='disabled'><li class='active'><a href='#'>",
        'cur_tag_close' => "<span class='sr-only'></span></a></li>",
        'next_tag_open' => "<li>",
        'next_tagl_close' => "</li>",
        'prev_tag_open' => "<li>",
        'prev_tagl_close' => "</li>",
        'first_tag_open' => "<li>",
        'first_tagl_close' => "</li>",
        'last_tag_open' => "<li>",
        'last_tagl_close' => "</li>",
    );

    public function index(){
        $where = array(
            'key' => trim($this->input->get('key')),
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url'] = base_url('vnadmin/search/index?key='.$this->input->get('key'));

        $config['total_rows'] = $this->searchmodel->countSearchOrders($where); // xác định tổng số record
        $config['per_page'] = 20; // xác định số record ở mỗi trang
        $config['uri_segment'] = 4; // xác định segment chứa page number
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = array();
        $lists = $this->searchmodel->Getlist_oder($where,$config['per_page'],$this->input->get('per_page'));

        if(count($lists)){
            $data['lists'] = $lists;
        }

        //echo "<pre>";print_r($lists);die;

        $data['headerTitle'] = 'Tìm kiếm đơn hàng';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/searchs/view_search', $data);
        $this->load->view('admin/footer');
    }
}