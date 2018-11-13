<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('f_homemodel');
    }
    //index
    public function lang($lang){
        if($lang!=null){
            $_SESSION['lang']=$lang;
            redirect(base_url());
        }
    }
    public function depot($depot){
        if($depot!=null){
            //$_SESSION['lang']=$lang;
            $this->session->set_userdata('depot',$depot);
            redirect(base_url());
        }
    }
    public function index($var1= null , $var2 = null){
        if($var1 == null)
        {
            $this->home();
        }else{
            $item = $this->f_homemodel->getFirstRowWhere('alias',array(
                'alias' => $var1
            ));
            if(empty($item)){
                 redirect(base_url('404_override'));
            }
            $item2 = $this->f_homemodel->getFirstRowWhere('alias',array(
                'alias' => $var2
            ));

            if (empty($item2)) {
                $var3 = '';
            }else{
		$var3 = $item2->type;
		if($var2==null){
			$var3 = '';
		}
                
            }

            switch (array($var3,$item->type)) {
                // category
                case array('','cate-pro'):
                    require('Products.php');
                    $index_home = new products();
                    $index_home->pro_bycategory($var1);
                    break;
                case array('','cate-new'):
                    require('News.php');
                    $index_home = new news();
                    $index_home->new_bycategory($var1);
                    break;
                case array('','m-cat'):
                    require('Media.php');
                    $index_home = new media();
                    $index_home->category($var1);
                    break;
                //detail && category
                case array('cate-pro','pro'):
                    require('Products.php');
                    $index_home = new products();
                    $index_home->detail($var1,$var2);
                    break;
                case array('cate-new','new'):
                    require('News.php');
                    $index_home = new news();
                    $index_home->detail($var1,$var2);
                    break;
                case array('m-cat','media'):
                    require('Media.php');
                    $index_home = new media();
                    $index_home->detail($var1,$var2);
                    break;
                case array('','page'):
                    require('Pages.php');
                    $index_home = new pages();
                    $index_home->page_content($var1);
                    break; 

                // detail 

                case array('','pro'):
                    require('Products.php');
                    $index_home = new products();
                    $index_home->detail($var1);
                    break;
                case array('','new'):
                    require('News.php');
                    $index_home = new news();
                    $index_home->detail($var1);
                    break;
                case array('','media'):
                    require('Media.php');
                    $index_home = new media();
                    $index_home->detail($var1);
                    break; 

                // category && category

                case array('cate-pro','cate-pro'):
                    require('Products.php');
                    $index_home = new products();
                    $index_home->pro_bycategory($var1,$var2);
                    break;
                case array('cate-new','cate-new'):
                    require('News.php');
                    $index_home = new news();
                    $index_home->new_bycategory($var1,$var2);
                    break;
                case array('m-cat','m-cat'):
                    require('Media.php');
                    $index_home = new media();
                    $index_home->category($var1,$var2);
                    break;   

            }
        }
    }

    public function home(){ //uh code ci3 k chay dc kieu kia cho nen phai viet lại @@ vẫn chạy đc mà â cac router khac nhu contact , vnadmin co chay dau
        $this->clear_all_cache();
        $data = array();

        $data['news'] = $this->f_homemodel->get_news(array(
            'news.focus' => 1,
            'news.lang' => $this->language
        ),array('news.sort','asc'),4,0);

        $data['cats'] = $this->f_homemodel->get_data('product_category',array(
            'home' => 1,
            'lang' => $this->language
        ));

        $data['catnew'] = $this->f_homemodel->getFirstRowWhere('news_category',array(
            'home' => 1,
            'lang' => $this->language
        ));

        $data['banner_gia'] = $this->f_homemodel->getFirstRowWhere('images',array(
            'type' => 'danhmuc'
        ));

        $data['popup'] = $this->f_homemodel->getFirstRowWhere('images',array(
            'type' => 'banner'
        ));

        $data['pros'] = $this->f_homemodel->get_products(array(
            'product.home' => 1,
            'product.lang' => $this->language
        ),array('product.sort','asc'),12,0);

        $seo = array();
        $this->LoadHeader($view=null,$seo,true);
        $this->load->view('home/view_home',$data);
        $this->LoadFooter();
    }
    /**
 * Clears all cache from the cache directory
 */
public function clear_all_cache()
{
    $CI =& get_instance();
    $path = $CI->config->item('cache_path');

    $cache_path = ($path == '') ? APPPATH.'cache/' : $path;

    $handle = opendir($cache_path);
    while (($file = readdir($handle))!== FALSE)
    {
        //Leave the directory protection alone
        if ($file != '.htaccess' && $file != 'index.html')
        {
           @unlink($cache_path.'/'.$file);
        }
    }
    closedir($handle);
}

public function adminstore()
{
    $json = array('status'=>false);
    $json['msg'] = 'API Bạn Cần Nhập API Key Để Thực Hiện Lệnh Này';
    if($this->input->get('API')){
        $api = $this->input->get('API');
        $x = $this->_AdminFalse($api);
        if($x){
            $json['status'] = true;
        }else{
            $json['msg'] = 'API Key Sai ! Bạn Không Thể Thực Hiện Lệnh Này';
        }
    };
    echo json_encode($json);
}


}