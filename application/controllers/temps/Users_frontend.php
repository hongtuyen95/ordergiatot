<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Users_frontend extends MY_Controller
{
    private $b_Check = false;
    function __construct()
    {
        parent::__construct();
        $this->load->model('f_usersmodel');
        $this->load->library('pagination');
        $this->load->helper(array('form', 'url'));
        $this->load->helper('unlink');
        $this->load->library('form_validation');
        $this->load->library('hash');
        $this->load->library('filter');
    }
    protected $pagination_config= array(
        'full_tag_open'=>"<ul class='pagination pagination-sm'>",
        'full_tag_close'=>"</ul>",
        'num_tag_open'=>'<li>',
        'num_tag_close'=>'</li>',
        'cur_tag_open'=>"<li class='disabled'><li class='active'><a href='#'>",
        'cur_tag_close'=>"<span class='sr-only'></span></a></li>",
        'next_tag_open'=>"<li>",
        'next_tagl_close'=>"</li>",
        'prev_tag_open'=>"<li>",
        'prev_tagl_close'=>"</li>",
        'first_tag_open'=>"<li>",
        'first_tagl_close'=>"</li>",
        'last_tag_open'=>"<li>",
        'last_tagl_close'=>"</li>",
    );
// dang ky tai khoan thanh vien
     public function createpost()
    {
        $pass = $_POST['password'];
        for($i=0;$i<5;$i++){
            $pass=md5($pass);
        }
        if($this->input->post('form_key') && $this->input->post('form_key') == $this->session->userdata('formkey'))
        {
            if($this->checkEmail(trim($this->input->post('email')))){
                $salt = $this->hash->key(8);
                $regisdate = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
                $arr = array(
                    'username' => 'taikhoan',
                    'fullname' => $this->input->post('fullname'),
                    'email' => $this->input->post('email'),
                    'phone' => $this->input->post('phone'),
                    'use_regisdate' => $regisdate,
                    'use_salt'          =>      $salt,
                    'password' => $pass,
                    'use_key'           =>      $this->hash->create($this->input->post('fullname'), $this->input->post('fullname'), 'sha256md5'),
                    'active' => 0,
                    'lever' => 0,
                    'block'=>0,
                    'address_province' => $this->input->post('province'),
                );
                $id = $this->f_usersmodel->Add('users',$arr);
                $this->f_usersmodel->Update_Where('users', array('id' => $id),
                    array('md5_id' => md5($id), 'token' => md5($this->input->post('email') . $id),));
                if (isset($id)) {
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
                        $user=$this->f_usersmodel->getFirstRowWhere('users',array('id'=>$id));
                        $subject = $this->site_name.' - Kích hoạt tài khoản';
                        $message = '
                                    <p>Nhấn vào link dưới đây để kích hoạt tài khoản:</p>
                                    <a href="'.base_url('users_frontend/userActive?id='.$user->md5_id.'&token='.$user->token).'">
                                    '.base_url('users_frontend/userActive?id='.$user->md5_id.'&token='.$user->token).'</a>';

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

                        $receiver_email = $user->email . ','.@$this->option->site_email;
                        $this->email->set_newline("\r\n");
                        $this->email->from(@$this->option->site_email,'Thông tin tài khoản'); // change it to yours
                        $this->email->to($receiver_email);
                        $this->email->subject($subject);
                        $this->email->message($body);
                        if ($this->email->send()) {
                            $this->session->set_flashdata("mess", "Đăng ký tài khoản thành công!");
                            redirect(base_url('dang-ky-thanh-cong?u='.$user->md5_id));
                        } else {
                            $this->session->set_flashdata("mess_err", "Đăng ký thành công! Lỗi gửi email");
                            redirect($_SERVER['HTTP_REFERER']);
                        }
                    $this->session->set_flashdata("mess", "Đăng ký tài khoản thành công!");
                }
            }else{
                redirect($_SERVER['HTTP_REFERER']);
            }
        }
    }
// check email xem tai khoan da dang ky chua
    public function checkEmail($email){
        $check = $this->f_usersmodel->getFirstRowWhere('users',array(
            'email' => $email
        ));
        if(!empty($check)){
            $this->session->set_flashdata("mess", "Email đã tồn tại!");
            return false;
        }
        else{
            return true;
        }
    }
// kich hoat tai khoan thanh vien
    public function userActive(){
        if(isset($_GET['id'])&& isset($_GET['token'])){
            $md5_id=$_GET['id'];
            $user=$this->f_usersmodel->getFirstRowWhere('users',array('md5_id'=>$md5_id));
            if($user->token==$_GET['token']){
                $this->f_usersmodel->Update_where('users',array('id'=>$user->id),array('active'=>1));
            }
            $seo = array(
                'title' => "Kích hoạt tài khoản"
            );
            $data = array();
            $this->LoadHeader(null,$seo,false);
            $this->load->view('users/success_active_user',$data);
            $this->LoadFooter();

        }else
        {redirect(base_url());}
    }
   // kich hoat tai khoan thanh cong
  public function success_active_user(){
        $seo = array(
            'title' => 'Kích hoạt tài khoản thành công'
        );
        $this->load->LoadHeader(null,$seo);
        $this->load->view('users/success_active_user',$data);
        $this->load->LoadFooter();
    }
// dang ky tai khoan thanh cong
 public function success_signup(){
        if(isset($_GET['u'])){
            $data['u']=$this->f_usersmodel->getFirstRowWhere('users',array('md5_id'=>$_GET['u']));
        }
        $seo = array(
            'title' => 'Đăng ký thành công'
        );
        $this->LoadHeader(null,$seo);
        $this->load->view('users/success_signup',$data);
        $this->LoadFooter();
    }
// dang nhap user fonts_end
    public function login(){
        $email = $_POST['email'];
        $pass=$_POST['pass'];
        for($i=0;$i<5;$i++){
            $pass=md5($pass);
        }

        $check = false;
        if($this->input->post('email') && trim($this->input->post('email')) != '' && $this->input->post('pass') && trim($this->input->post('pass')) != ''){
           $user = $this->f_usersmodel->getFirstRowWhere('users',array(
                'email' => $this->filter->injection_html($this->input->post('email'))
            ));
            if(!empty($user)){
                $this->load->library('hash');
                if($user->password === $pass && $user->lever == 0){
                    if($user->active == 1){
                        $userData['oauth_uid'] = $user->id;
                        $userData['use_salt'] = $user->use_salt;
                        $userData['fullname'] = $user->fullname;
                        $userData['email'] = $user->email;
                        $userData['avatar'] = $user->avatar;
                        $this->session->set_userdata('userData',$userData);
                        $check = true;
                        $this->session->set_flashdata("mess", "Bạn đã đăng nhập thành công!");
                    }else{
                        $this->session->set_flashdata("mess_err", "Bạn Chưa kích hoạt tài khoản!");
                    }
                }else{
                     $this->session->set_flashdata("mess_err", "Sai mật khẩu!");
                }
            }else{
                $this->session->set_flashdata("mess_err", "Tài khoản đăng nhập sai !!!");
            }
        }else{
            $this->session->set_flashdata("mess_err", "Mời bạn nhập đầy đủ thông tin !!!");
        }
        $data['check'] = $check;
        if($check==true){
            $data['mss_success'] = $this->session->flashdata('mess');
        }else{
             $data['mss_success'] = $this->session->flashdata('mess_err');
        }
        echo json_encode($data);
    }
    // thanh vien thoat
    public function logout() {
        $user = $this->session->userData('userData');
        // cập nhật giờ logout
        $this->f_usersmodel->Update_where('users',array('id' => $user['oauth_uid']),array(
                    'lastest_login' => time("Y-m-d H:i:s")
                ));
        $this->session->unset_userdata('token');
        $this->session->unset_userdata('userData');
        redirect($_SERVER['HTTP_REFERER']);
    }
// thông tin tai khoan
    public function acount()
    {
        $user = $this->session->userData('userData');
        $id = $user['oauth_uid'];
        $config['upload_path'] = './upload/img/avatar/';
        $config['allowed_types'] = 'gif|jpg|png|JPG|PNG|GIF';
        $config['max_size'] = '4000';
        $config['max_width'] = '3000';
        $config['max_height'] = '3000';
        $this->load->library('upload', $config);
       
        $data['user_item'] = $this->f_usersmodel->getFirstRowWhere('users',array('id'=>$id));
        //echo "<pre>";print_r($data['user_item']);die;
        if (isset($_POST['update_profiler'])) {

            //die();
            $arr = array(
                'fullname' => $this->input->post('fullname'),
                'phone' => $this->input->post('phone'),
                'birthday' => $this->input->post('birthday'),
                'address' => $this->input->post('address'),
                'sex' => $this->input->post('sex'),
                'depot' => $this->input->post('depot'),
                'address_province' => $this->input->post('province'),
                'address_district' => $this->input->post('address_district'),
               // 'address_ward' => $this->input->post('address_ward')
            );
            $this->f_usersmodel->Update_where('users',array('id' => $id ),$arr);
            $this->session->set_flashdata("mess", "Cập nhật thông tin thành công!!!");
            redirect($_SERVER['HTTP_REFERER']);
        }

        $data['province'] = $this->f_usersmodel->get_data('province');
        //var_dump($data['province']);die();
        $seo = array(
            'title' => 'Thông tin tài khoản'
        );
        
        $this->LoadHeader(null,$seo);
        $this->load->view('users/acount',$data);
        $this->LoadFooter();

    }
   // thay doi mat khau
     public function change_pass(){
         $data = array();
         if(!$this->session->userdata('userData')){
             $this->session->set_flashdata("mess","Vui lòng đăng nhập");
             redirect(base_url());
         }

         $uInfo = $this->session->userdata('userData');
         $user = $this->f_usersmodel->getFirstRowWhere('users',array(
             'id' => $uInfo['oauth_uid']
         ));
         if($this->input->post('new_pass')){
            $pass=$this->input->post('old_pass');

            $password_new = $this->input->post('new_pass');
            for($i=0;$i<5;$i++){
                $pass=md5($pass);
                $password_new=md5($password_new);
            }
            //var_dump($password_new);die;
            $arr2 = array('password' => $password_new);
            $user = $this->f_usersmodel->getFirstRowWhere('users',array('id'=> $user->id));

            if($pass==$user->password){
                $rs=$this->f_usersmodel->Update_where('users',array('id' => $user->id),$arr2);
                  if($rs){
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
                        $subject = $this->option->site_name.' - Thay đổi mật khẩu';
                        $message = '<p>Mật khẩu tài khoản của bạn đã được đổi: '.$this->input->post('new_pass').'</p>';
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
                       
						$receiver_email = $user->email . ','.@$this->option->site_email;
                        $this->email->set_newline("\r\n");
                        $this->email->from(@$this->option->site_email,'Thay đổi mật khẩu'); // change it to yours
                        $this->email->to($receiver_email);
                        $this->email->subject($subject);
                        $this->email->message($body);
                        if ($this->email->send()) {
                            $this->session->set_flashdata("mess", "Đổi mật khẩu thành công!!!");
                        } else {
                            $this->session->set_flashdata("mess_err", "Đổi mật khẩu thất bại!!!");
                            redirect($_SERVER['HTTP_REFERER']);
                        }
                      $this->session->set_flashdata("mess","Đổi mật khẩu thành công");
                    redirect($_SERVER['HTTP_REFERER']);
                }
           }else{
               $this->session->set_flashdata("mess", "mật khẩu cũ không đúng!!!");
               redirect($_SERVER['HTTP_REFERER']);
           }

        }
         $seo = array('title' => 'Đổi mật khẩu');
         $this->LoadHeader(null,$seo);
         $this->load->view('users/view_change_pass',$data);
         $this->LoadFooter();
    }

  // thay doi mat khau
    public function changePass()
    {
        if($_POST['old_pass'] && $_POST['old_pass'] !=''){
            $user = $this->f_usersmodel->getFirstRowWhere('users',array(
                'phone' => $this->input->post('phone')
            ));
            $current_pass = $this->input->post('old_pass');
            for ($i=0; $i < 5; $i++) {
                 $current_pass = md5( $current_pass);
            }
            $check = false;
            if($user->password == $current_pass){
                $check = true;
                $change_pass = $this->input->post('new_pass');
                for ($i=0; $i < 5; $i++) {
                     $change_pass = md5( $change_pass);
                }
                $this->f_usersmodel->Update_where('users',array('id'=>$user->id),array(
                    'password' => $change_pass,
                    //'modified' => date("Y-m-d H:i:s"),
                    //'use_salt'          =>      $salt,
                ));
            }
        }
        $data['check'] = $check;
        echo json_encode($data);
    }
// danh sach don hang cua tai khoan
    public function acount_order()
    {
        $data = array();
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("Vui lòng đăng nhập");
            redirect(base_url());
        }

        $user = $this->session->userData('userData');
        $id = $user['oauth_uid'];

        $where = array(
            'user_id' => $id,
            'key' => $this->input->get('key'),
            'status' => $this->input->get('status'),
        );



        $data['lists'] = $this->f_usersmodel->Getlist_oder($where);

        $seo = array(
            'title' => 'Quản lý đơn hàng'
        );


        $this->LoadHeader(null,$seo);
        $this->load->view('users/acount_order',$data);
        $this->LoadFooter();
    }
    // them san pham yeu thich
    public function addWishList()
    {
        $pro_id = $this->input->post('pro_id');
        $user_id = $this->input->post('user_id');
        $item = $this->f_usersmodel->getFirstRowWhere('wishlist',array(
            'pro_id' => $pro_id, 'user_id' => $user_id
        ));
        if(!empty($item)){
            $check = false;
            $data['mess'] = 'Sản phẩm này đã có trong danh sách sản phẩm yêu thích của bạn!';
        }else{
            $check = true;
            $this->f_usersmodel->Add('wishlist',array(
                'pro_id' => $pro_id,
                'user_id' => $user_id
            ));
        }
        $data['check'] = $check;
        echo json_encode($data);
    }
    // ajax kiem tra email xem co tôn tai trong db không
    public function check_email(){
        $email = $this->input->post('email');
        $rs['check']=false;
        $rs['mss']='';
        if (!empty($email)){
            $user = $this->f_usersmodel->getFirstRowWhere('users',array(
                'email' => $this->input->post('email'),
                'lever' => 0
            ));
            if(!empty($user)){
                $rs['check']=true;
            }else{
                $rs['check']=false;
                $rs['mss']='Email chưa đăng ký';
            }
        }else{
             $rs['check']=false;
             $rs['mss']='Email không được để trống';
        }
        echo json_encode($rs);
    }
    // tao mat khaui random
    function randString($length, $charset='abcdefghijklmnopqrstuvwxyz0123456789')
    {
        $str = '';
        $count = strlen($charset);
        while ($length--) {
            $str .= $charset[mt_rand(0, $count-1)];
        }
        return $str;
    }
     // quên mật khẩu khi ma tai khoan tim mat khau
    public function forgotPass(){
        if (isset($_POST['email'])) {
             $email=$this->input->post('email');
             $pass  = $this->randString(6);
            $user = $this->f_usersmodel->getFirstRowWhere('users',array(
                'email' => $this->input->post('email'),
                'lever' => 0
            ));

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

             $this->load->library('email', @$config);

            $subject = $this->site_name . ' - Xác nhận thay đổi mật khẩu tài khoản';
            $subject_admin = $this->site_name . ' - Xác nhận thay đổi mật khẩu tài khoản';

            $message = '
                    <p>Nhấn vào link dưới đây (bắt buộc) để Xác nhận thay đổi mật khẩu tài khoản:</p>
                    <a href="' . base_url('users_frontend/userchangepass?id=' . $user->md5_id . '&token=' . $user->token . '&pass=' . $pass) . '">
                    ' . base_url('users_frontend/userchangepass?id=' . $user->md5_id . '&token=' . $user->token . '&pass=' . $pass) . '</a>
                    <p>Mật khẩu mới của bạn là: ' .$pass. '  </p>';

            //Get full html:
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

            $receiver_email = $email. ','.@$this->option->site_email;
            $this->email->set_newline("\r\n");
            $this->email->from(@$this->option->site_email,'Thay đổi mật khẩu'); // change it to yours
            $this->email->to($receiver_email);
            $this->email->subject($subject);
            $this->email->message($body);
            if ($this->email->send()) {
                $this->session->set_flashdata("mess", "Gửi email cập lại mật khẩu thành công!!!");
                redirect(base_url('thay-doi-mat-khau-thanh-cong?email='.$email));
            } else {
                $this->session->set_flashdata("mess_err", "Gửi email cập lại mật khẩu thất bại!!!");
                redirect($_SERVER['HTTP_REFERER']);
            }

        }
        // $seo = array(
            // 'title' => 'Thay đổi mật khẩu'
        // );
        // $data = array();
        // $this->LoadHeader(null,$seo,false);
        // $this->load->view('users/view_forgot_pass',$data);
        // $this->LoadFooter();
    }
// thya doi mat khau thanh cong
    public function success_changepass(){
        if(isset($_GET['email'])){
            $data['u']=$this->f_usersmodel->getFirstRowWhere('users',array('email'=>$_GET['email']));
        }

        $data['doitac']=$this->load->widget('doitac');

        $seo = array(
            'title' => 'Thay đổi mật khẩu thành công'
        );

        $this->LoadHeader(null,$seo);
        $this->load->view('users/success_changepass',$data);
        $this->LoadFooter();
    }
// xac nhan thay đôi mat khau tai khoan thanh vien qua email
    public function userchangepass(){
        if(isset($_GET['id'])&& isset($_GET['token'])&& isset($_GET['pass'])){
            $md5_id=$_GET['id'];

            $salt = $this->hash->key(8);
            $pass = $_GET['pass'];

            for($i=0;$i<5;$i++){
                $pass=md5($pass);
            }
            $data['u'] = $user=$this->f_usersmodel->getFirstRowWhere('users',array('md5_id'=>$md5_id));
            if($user->token==$_GET['token']){
                $this->f_usersmodel->Update_where('users',array(
                    'id'=>$user->id,
                    'lever' => 0
                ),array(
                    'password' => $pass,
                    'lastest_login' => time("Y-m-d H:i:s"),
                    'use_salt'          =>      $salt,
                ));
            }
            $data['doitac']=$this->load->widget('doitac');

            $seo = array(
                'title' => 'Thay đổi mật khẩu thành công'
            );

            $this->LoadHeader(null,$seo);
            $this->load->view('users/success_changepass',$data);
            $this->LoadFooter();

        }else
        {
            redirect(base_url());
        }
    }
    // kiem tra mat khau cu xem co dung k
    public function check_old_pass(){
        if ($this->input->post('pass')) {
            $uInfo = $this->session->userdata('userData');
            $user=$this->f_usersmodel->getFirstRowWhere('users',array(
                'id' => $uInfo['oauth_uid']
            ));

            $rs['check']=false;
            $rs['mss']='Mật khẩu cũ không chính xác';
            $pass=$this->input->post('pass');
            for($i=0;$i<5;$i++){
                $pass=md5($pass);
            }
            if($pass==$user->password){
                $rs['check']=true;
                $rs['mss']='';
            }

            echo json_encode($rs);
        }
    }
 #kich hoat sms
    public function sms_active_signup()
    {
        // ajax
        if (!$this->input->is_ajax_request()) {
           exit('No direct script access allowed');
        }
        $arr = array();
        if(isset($_POST['md5id'])&& isset($_POST['type'])){
            $id=$_POST['md5id'];
            $user=$this->f_usersmodel->getFirstRowWhere('users',array('md5_id'=>$id));
            if(!empty($user)){
                if($user->smskey==$_POST['key']){
                    // kiểm tra loại yêu cầu
                    $this->f_usersmodel->Update_where('users',array('id'=>$user->id),array('use_status'=>1));

                    $arr['status'] = true;
                    $arr['msg'] = 'Kích Hoạt Thành Cồng ! Bạn Có thể Đăng Nhập !';
                }else{
                    $arr['status'] = false;
                    $arr['msg'] = 'Mã SMS Không đúng';
                }
            }else{
                // tài khoản nhập key sai
                $arr['status'] = false;
                $arr['msg'] = 'Mã Tài Khoản Không đúng 1';
            }

        }else {
            // POST không hợp lệ
            $arr['status'] = false;
            $arr['msg'] = 'Không Hợp Lệ !';
        }
        echo json_encode($arr);
    }
    // check kiem tra tai khoan da dang ky chua
    public function  checkRegisterUser()
    {
        if ($this->input->post('username')) {
            $arr=$this->f_usersmodel->getField_array('users','username');
            $input=array('username'=>$this->input->post('username'));
            $rs['check']=true;
            $rs['mss']='';
            if(in_array($input,$arr)){
                $rs['check']=false;
                $rs['mss']='Tên đăng nhập này đã có người sử dụng !';
            }
            echo json_encode($rs);
        }
    }

    public function transaction(){
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            redirect(base_url());
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->f_usersmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));



        $id = base64_decode($this->input->get('id'));

        $data['order'] = $this->f_usersmodel->getFirstRowWhere('order',array('id' => $id));

        $seo = array(
            'title' => "Thanh toán đơn hàng"
        );


        $this->LoadHeader(null,$seo,false);
        $this->load->view('users/view_transaction',$data);
        $this->LoadFooter();
    }

    public function prepay(){
        $mess = '';
        $check = false;
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            $mess = "Bạn chưa đăng nhập";
        }

        $uInfo = $this->session->userdata('userData');
        $user = $this->f_usersmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));


        $oid = $this->input->post('oid');
        $price = str_replace(array(';','.',',',' '),'',$this->input->post('price'));

        $order = $this->f_usersmodel->getFirstRowWhere('order',array(
            'id' => $oid
        ));
        if($this->input->post('price')){
            $arr = array(
                'id_order' => $oid,
                'id_customer' => $user->id,
                'note' => $this->input->post('comment'),
                'price' => $price,
                'time' => time(),
                'type' => 'Thanh toán đơn hàng',
                'payment' => $this->input->post('payment'),
                'user_create' => $user->fullname,
                'status' => 0,
            );
            //echo "<pre>";print_r($arr);die;
            $this->f_usersmodel->Add("exchanges",$arr);

            $mess = 'Thanh toán thành công';
            $this->session->set_flashdata("mess","Thanh toán thành công");
            $check = true;
        }

        $data['mess'] = $mess;
        $data['check'] = $check;
        echo json_encode($data);die;
    }

    public function updatePay(){
        $mess = '';
        $check = false;
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            $mess = "Bạn chưa đăng nhập";
        }

        $uInfo = $this->session->userdata('userData');
        $user = $this->f_usersmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));

        $oid = $this->input->post('oid');
        $paydebt = $this->input->post('paydebt');

        $order = $this->f_usersmodel->getFirstRowWhere('order',array(
            'id' => $oid
        ));

        if($user->wallet < $paydebt){
            $mess = "Tài khoản của bạn không đủ để thực hiện giao dịch, Vui lòng nạp tiền vào tài khoản, hoặc liên hệ với ban quan trị website !";
        }else{

            $arr = array(
                'id_order' => $oid,
                'id_customer' => $user->id,
                'price' => $paydebt,
                'time' => time(),
                'type' => 'Thanh toán đơn hàng',
                'status' => 0,
            );
            $this->f_usersmodel->Add("exchanges",$arr);

            $this->f_usersmodel->Update_where('order',array('id' => $oid),array('payted' => $order->total_price));

            $current_wallet = $user->wallet;
            $new_wallet = $current_wallet - $paydebt;
            $this->f_usersmodel->Update_where('users',array('id' => $uInfo['oauth_uid']),array('wallet' => $new_wallet));
            $mess = 'Bạn đã thanh toán hoàn tất';
            $this->session->set_flashdata("mess","Bạn đã thanh toán hoàn tất");
            $check = true;
        }

        $data['mess'] = $mess;

        $data['check'] = $check;

        echo json_encode($data);die;
    }

    public function updateMess(){
        $check = true;
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            $mess = "Bạn chưa đăng nhập";
            $check = false;
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->f_usersmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));
        if($check){
            $oid = $this->input->post('oid');
            $seller_name = $this->input->post('seller_name');
            $seller_id = $this->input->post('seller_id');
            $uid = $user->id;
            $text = $this->input->post('mess');

            $tracking = $this->f_usersmodel->get_data('tracking',array(
                'order_id' => $oid,
                'shop_name' => $seller_name,
            ),null,true);

            $data_mess = array();
            if($tracking){
                $data_mess = json_decode($tracking->message);
                $data_mess[] = array(
                    'content' => $text,
                    'time' => time(),
                    'user' => $user->fullname
                );

                $this->f_usersmodel->Update_where('tracking',array(
                    'order_id' => $oid,
                    'shop_name' => $seller_name,
                ),array('message' => json_encode($data_mess)));
            }else{
                $data_mess[] = array(
                    'content' => $text,
                    'time' => time(),
                    'user' => $user->fullname
                );
                $arr = array(
                    'order_id' => $oid,
                    'shop_name' => $seller_name,
                    'shop_id' => $seller_id,
                    'user_id' => $uid,
                    'message' => json_encode($data_mess)
                );
                $this->f_usersmodel->Add('tracking',$arr);
            }

        }
        $messContent = '';
        foreach($data_mess as $message){
            if(is_object($message)){
                $messContent .= '<p><strong><i class="fa fa-clock-o"></i> '.$message->user.':</strong> '.$message->content.'</p>';;
            }else{
                $messContent .= '<p><strong><i class="fa fa-clock-o"></i> '.$message["user"].':</strong> '.$message["content"].'</p>';;
            }
        }

        $res['text'] = $messContent;
        echo json_encode($res);die;
    }

    public function exchanges(){
        $data = array();

        $check = true;
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            $mess = "Bạn chưa đăng nhập";
            $check = false;
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->f_usersmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));

        $status = $this->input->get("status");
        if($this->input->get("status")){
            $where = array('status' => $status);
        }else{
            $where = array('status' => '');
        }

        $data['countAll'] = $this->f_usersmodel->countListExchange(array('status' => ''));
        for($i=0;$i<=2;$i++){
            $data['status'.$i] = $this->f_usersmodel->countListExchange(array('status' => $i));;
        }

        $data['lists'] = $this->f_usersmodel->getListExchange($where);

        $seo = array(
            'title' => "Lịch sử giao dịch"
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('users/view_exchanges',$data);
        $this->LoadFooter();
    }

}