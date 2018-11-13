<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Content extends MY_Controller
{
    function __construct()
    {

        parent::__construct();
        $CI =& get_instance();
        $this->load->model('f_productmodel');
        $this->load->library('pagination');
    }

    protected $pagination_config = array(
        'full_tag_open' => "<ul class='pagination phantrang'>",
        'full_tag_close' => "</ul>",
        'first_link' => 'Trang đầu',
        'last_link' => 'Trang cuối',
        'num_links' => 2,
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
    public function category($alias){
        $data = array();
        $data['cat'] = $current = $this->f_productmodel->getFirstRowWhere('product_category',array(
            'alias' => $alias
        ));

        $data['cate'] = $this->system_model->get_data('product_category',array(
            'lang' => $this->language
        ),array());

        $order = array('product.id','desc');
        $config['page_query_string'] = TRUE;
        $config['enable_query_string'] = TRUE;
        $config['total_rows'] = $this->f_productmodel->count_ProbyCate($current->id);
        $config['per_page'] = 12; // xác định số record ở mỗi trang
        $config['uri_segment'] = 4; // xác định segment chứa page number
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $lists = $this->f_productmodel->getProbyCate($current->id,$order,4,0);
        //echo "<pre>";print_r($data['lists']);die;
        $seo = array('title'=>@$data['cate_curent']->title_seo==''? @$data['cate_curent']->name:@$data['cate_curent']->title_seo,
            'description'=>@$data['cate_curent']->description_seo,
            'keyword'=>@$data['cate_curent']->keyword_seo,
            'image'=>@$data['cate_curent']->image,
            'type'=>'products'
        );

        $this->LoadHeader(null,$seo,false);
        $this->load->view('contents/category',$data);
        $this->LoadFooter();
    }
}