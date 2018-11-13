<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Location extends MY_Controller
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
        $data['store'] = $this->f_productmodel->getFirstRowWhere('map_shopping',array(
            'alias' => $alias,
            'lang' => $this->language
        ));



        $seo = array('title'=>@$data['cate_curent']->title_seo==''? @$data['cate_curent']->name:@$data['cate_curent']->title_seo,
            'description'=>@$data['cate_curent']->description_seo,
            'keyword'=>@$data['cate_curent']->keyword_seo,
            'image'=>@$data['cate_curent']->image,
            'type'=>'products'
        );

        $this->LoadHeader(null,$seo,false);
        $this->load->view('locations/category',$data);
        $this->LoadFooter();
    }
}