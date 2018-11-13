<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Depot extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('staticpagemodel');
        $this->load->model('ordermodel');
        $this->load->model('m_depot');
        $this->load->library('pagination');
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnadmin', 'location');
            die();
        }
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

	// danh sach trang nội dung
    public function lists(){
		$this->check_acl();
        $data = array();
		$data['lists'] = $this->staticpagemodel->get_data('depots',array(),array('id' => 'desc'));


        $data['headerTitle']="Kho hàng";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/depots/list',$data);
        $this->load->view('admin/footer');
    }

    public function add($id_edit=null){
		$this->check_acl();

        $data['btn_name']='Thêm';
        $sort = $this->staticpagemodel->SelectMax('depots','sort') + 1;
        if($id_edit){
            //get news item
            $item = $this->staticpagemodel->get_data('depots',array('id'=>$id_edit),array(),true);
            $data['edit']=$item;
            $data['btn_name']='Cập nhật';
            $sort = $item->sort;
        }

        $data['sort'] = $sort;

        if (isset($_POST['addnews'])) {
            $alias = make_alias($this->input->post('alias'));

            $arr=array(
                'name'=>$this->input->post('name'),
                'description'=>$this->input->post('description'),
                'sort'=>$this->input->post('sort'),
                'time' => time(),
                'user_id' => $this->session->userdata("adminid")
            );

			if (!empty($_POST['edit'])){
				$id = $this->staticpagemodel->Update_where('depots', array('id'=>$id_edit), $arr);
				$this->session->set_flashdata("mess", "Cập nhật thành công!");
            } else {
                $id = $this->staticpagemodel->Add('depots', $arr);
				$this->session->set_flashdata("mess", "Thêm thành công!");
            }

            redirect(base_url('vnadmin/depot/lists'));
        }

        $data['headerTitle']="Kho hàng";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/depots/add',$data);
        $this->load->view('admin/footer');
    }

    public function edit($id)
    {
        $this->add($id);
    }

    public function delete($id){
        $this->staticpagemodel->Delete('depots',$id);
		$this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function hang_order(){
        $data['lists'] = array();

        $from = '';
        $to = '';
        if($this->input->get('tungay')){
            $arr_from = explode('/',$this->input->get('tungay'));
            $from = strtotime($arr_from[1].'/'.$arr_from[0].'/'.$arr_from[2].' 12:00:00 am');

            if($this->input->get('denngay')){
                $arr_to = explode('/',$this->input->get('denngay'));
                $to = strtotime($arr_to[1].'/'.$arr_to[0].'/'.$arr_to[2]) + 86400;
            }else{
                $to = strtotime(date('m').'/'.date('d').'/'.date("Y")) + 86400;
            }
        }

        $where = array(
            'code' => trim($this->input->get('code')),
            'loaihang' => $this->input->get('loaihang'),
            'from' => $from,
            'to' => $to,
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/depot/hang_order?loaihang='.$this->input->get('loaihang').'&tungay='.$this->input->get('tungay').'&denngay='.$this->input->get('denngay'));
        $config['total_rows']           = $this->m_depot->countTrackingOrder($where);
        $config['per_page']             = 50;
        $config['uri_segment'] = 4;

        $config = array_merge($config,$this->pagination_config);

        $this->pagination->initialize($config);

        $data['lists'] = $this->m_depot->getListsTrackingOrder($where, $config['per_page'], $this->input->get('per_page'));

        $data['admin'] = $this->session->userdata('adminfull');
        $data['kho'] = 1;
        if(!empty($data['admin']->kho_hang)){
            $data['kho'] = $data['admin']->kho_hang;
        }
        //echo "<pre>";print_r($data['admin']);die;

        $data['headerTitle']="Hàng order";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/depots/view_hang_order',$data);
        $this->load->view('admin/footer');
    }

    public function delete_tracking_order(){
        $id = (int) base64_decode($this->input->get('id'));
        
        $this->m_depot->Delete_where('khohang_order',array(
            'id' => $id
        ));
        redirect($_SERVER["HTTP_REFERER"]);
    }

    public function createOrderTracking(){
        $tracking = $this->input->post('tracking');

        $check = $this->staticpagemodel->getFirstRowWhere('khohang_order',array(
            'madonvan' => $tracking
        ));

        $check_tracking = $this->staticpagemodel->getFirstRowWhere("tracking",array(
            'tracking_id' => $tracking
        ));

        if($this->input->post('place')){
            $place = $this->input->post('place');
        }else{
            $place = 1;
        }

        $loaihang = '';
        if(empty($check_tracking)){
            //ký gửi
            $loaihang = 2;
        }else{
            //order
            $loaihang  = 1;

            $trakings = $this->ordermodel->get_data('tracking',array(
                'tracking_id' => $tracking
            ));
            foreach($trakings as $track){
                /*$order = $this->ordermodel->getFirstRowWhere('order',array(
                    'id' => $track->order_id
                ));*/
                if($place == 1){
                    if($track->status < 7){
                        $this->ordermodel->Update_where('tracking',array('id' => $track->id),array('status' => 7));

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

                        $tracking = $this->m_exchange->getFirstRowWhere('tracking',array(
                            'id' => $track->id
                        ));
                        //order
                        $order = $this->m_exchange->getFirstRowWhere('order',array(
                            'id' => $tracking->order_id
                        ));

                        //user
                        $user = $this->m_exchange->getFirstRowWhere('users',array(
                            'id' => $tracking->user_id
                        ));
                        $subject = 'ordergiatot.vn - Thông báo';
                        $message = '';
                        $message .= '<p><strong>Xin chào!</strong></p>';
                        $message .= '<p><strong>Sản phẩm trong đơn hàng : '.$order->code.' của quý khách đã về đến kho VN.</strong></p>';
                        $message .= '<p><strong>Đề nghị quý khách vào đơn hàng '.$order->code.' kiểm tra và thanh toán nốt số tiền còn thiếu để Ordergiatot.vn có thể gửi hàng sớm cho quý khách.</strong></p>';
                        $message .= '<p><strong>Xin cảm ơn!</strong></p>';

                        $body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

                        $this->email->set_newline("\r\n");

                        $receiver_email = $user->email;
                        //$receiver_email = "daibkz@gmail.com";
                        $this->email->from('Ordergiatot.vn','Thông báo'); // change it to yours
                        $this->email->to($receiver_email);
                        $this->email->subject($subject);
                        $this->email->message($body);
                        $this->email->send();
                    }
                }

                if($place == 2){
                    if($track->status < 6){
                        $this->ordermodel->Update_where('tracking',array('id' => $track->id),array('status' => 6));

                    }
                }
            }
        }

        if(empty($check)){
            if($place == 2){
                $kho_tq = 'Đã nhận';
                $kho_vn = 'Chưa nhận';
            }else{
                $kho_tq = 'Chưa nhận';
                $kho_vn = 'Đã nhận';
            }
            $arr = array(
                'time' => time(),
                'time_update' => time(),
                'madonvan' => $tracking,
                'kho_tq' => $kho_tq,
                'kho_vn' => $kho_vn,
                'loai_hang' => $loaihang
            );

            $this->ordermodel->Add('khohang_order',$arr);
        }else{
            if($place == 2){
                $this->ordermodel->Update_where('khohang_order',array('madonvan' => $tracking),array(
                    'kho_tq' => 'Đã nhận',
                    'time_update' => time(),
                ));
            }else{
                $this->ordermodel->Update_where('khohang_order',array('madonvan' => $tracking),array(
                    'kho_vn' => 'Đã nhận',
                    'time_update' => time(),
                ));
            }
        }

        $data['check'] = true;
        echo json_encode($data);
    }
    // Hang ky gửi
    public function hang_kygui(){
        $data['lists'] = array();
        $where = array();

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/depot/hang_kygui?');
        $config['total_rows']           = $this->m_depot->countTrackingDeposit($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;

        $config=array_merge($config,$this->pagination_config);

        $this->pagination->initialize($config);

        $data['lists'] = $this->m_depot->getListsDeposit($where, $config['per_page'], $this->input->get('per_page'));

        $data['headerTitle']="Hàng ký gửi";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/depots/view_hang_ky_gui',$data);
        $this->load->view('admin/footer');
    }
    //hang ky gui
    public function createDeposit(){
        $tracking = trim($this->input->post('tracking'));
        $check = $this->staticpagemodel->getFirstRowWhere('khohang_kygui',array(
            'madonvan' => $tracking
        ));

        if(empty($check)){
            if($this->input->post('place') == 1){
                $kho_tq = 'Đã nhận';
                $kho_vn = 'Chưa nhận';
            }else{
                $kho_tq = 'Chưa nhận';
                $kho_vn = 'Đã nhận';
            }

            $arr = array(
                'time' => time(),
                'time_update' => time(),
                'madonvan' => $tracking,
                'kho_tq' => $kho_tq,
                'kho_vn' => $kho_vn
            );

            $this->ordermodel->Add('khohang_kygui',$arr);
        }else{
            if($this->input->post('place') == 1){
                $this->ordermodel->Update_where('khohang_kygui',array('madonvan' => $tracking),array(
                    'kho_tq' => 'Đã nhận',
                    'time_update' => time(),
                ));
            }else{
                $this->ordermodel->Update_where('khohang_kygui',array('madonvan' => $tracking),array(
                    'kho_vn' => 'Đã nhận',
                    'time_update' => time(),
                ));
            }

        }

        $data['check'] = true;
        echo json_encode($data);
    }

    public function delete_deposit(){
        $id = (int) base64_decode($this->input->get('id'));

        $this->m_depot->Delete_where('khohang_kygui',array(
            'id' => $id
        ));

        redirect($_SERVER["HTTP_REFERER"]);
    }

    public function setPlace(){
        $place = $this->input->get('place');

        $this->session->set_userdata('place',$place);
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function update_note(){
        $id = $this->input->post('id');
        $field = $this->input->post('field');
        $text = $this->input->post('text');

        $data['check'] = true;
        $this->m_depot->Update_where('khohang_order',array(
            'id' => $id
        ),array(
            $field => $text
        ));

        echo json_encode($data);die;
    }

    public function create_tracking(){

        $tracking = trim($this->input->post('tracking'));

        $check = $this->staticpagemodel->getFirstRowWhere('khohang_order',array(
            'madonvan' => $tracking
        ));

        $check_tracking = $this->staticpagemodel->getFirstRowWhere("tracking",array(
            'tracking_id' => $tracking
        ));

        if($this->input->post('place')){
            $place = $this->input->post('place');
        }else{
            $place = 1;
        }

        $loaihang = '';
        if(empty($check_tracking)){
            //ký gửi
            $loaihang = 2;
        }else{
            //order
            $loaihang  = 1;

            $trakings = $this->ordermodel->get_data('tracking',array(
                'tracking_id' => $tracking
            ));

            foreach($trakings as $track){
                /*$order = $this->ordermodel->getFirstRowWhere('order',array(
                    'id' => $track->order_id
                ));*/
                if($place == 1){
                    if($track->status < 7){
                        $this->ordermodel->Update_where('tracking',array('id' => $track->id),array('status' => 7));

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

                        $tracking = $this->m_exchange->getFirstRowWhere('tracking',array(
                            'id' => $track->id
                        ));
                        //order
                        $order = $this->m_exchange->getFirstRowWhere('order',array(
                            'id' => $tracking->order_id
                        ));

                        //user
                        $user = $this->m_exchange->getFirstRowWhere('users',array(
                            'id' => $tracking->user_id
                        ));
                        $subject = 'ordergiatot.vn - Thông báo';
                        $message = '';
                        $message .= '<p><strong>Xin chào!</strong></p>';
                        $message .= '<p><strong>Sản phẩm trong đơn hàng : '.$order->code.' của quý khách đã về đến kho VN.</strong></p>';
                        $message .= '<p><strong>Đề nghị quý khách vào đơn hàng '.$order->code.' kiểm tra và thanh toán nốt số tiền còn thiếu để Ordergiatot.vn có thể gửi hàng sớm cho quý khách.</strong></p>';
                        $message .= '<p><strong>Xin cảm ơn!</strong></p>';

                        $body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

                        $this->email->set_newline("\r\n");

                        $receiver_email = $user->email;
                        //$receiver_email = "daibkz@gmail.com";
                        $this->email->from('Ordergiatot.vn','Thông báo'); // change it to yours
                        $this->email->to($receiver_email);
                        $this->email->subject($subject);
                        $this->email->message($body);
                        $this->email->send();
                    }
                }
                if($place == 2){
                    if($track->status < 6){
                        $this->ordermodel->Update_where('tracking',array('id' => $track->id),array('status' => 6));

                    }
                }
            }
        }

        if(empty($check)){
            if($place == 2){
                $kho_tq = 'Đã nhận';
                $kho_vn = 'Chưa nhận';
            }else{
                $kho_tq = 'Chưa nhận';
                $kho_vn = 'Đã nhận';
            }
            $arr = array(
                'time' => time(),
                'time_update' => time(),
                'madonvan' => $tracking,
                'kho_tq' => $kho_tq,
                'kho_vn' => $kho_vn,
                'loai_hang' => $loaihang
            );
            $this->ordermodel->Add('khohang_order',$arr);
        }else{
            if($place == 2){
                $this->ordermodel->Update_where('khohang_order',array('madonvan' => $tracking),array(
                    'kho_tq' => 'Đã nhận',
                    'time_update' => time(),
                ));
            }else{
                $this->ordermodel->Update_where('khohang_order',array('madonvan' => $tracking),array(
                    'kho_vn' => 'Đã nhận',
                    'time_update' => time(),
                ));
            }
        }

        $data['check'] = true;
        echo json_encode($data);
    }

    public function statis(){
        $data['headerTitle'] = "Hàng ký gửi";

        $from = '';
        $to = '';
        if($this->input->get('tungay')){
            $arr_from = explode('/',$this->input->get('tungay'));
            $from = strtotime($arr_from[1].'/'.$arr_from[0].'/'.$arr_from[2].' 12:00:00 am');

            if($this->input->get('denngay') != ''){
                $arr_to = explode('/',$this->input->get('denngay'));
                $to = strtotime($arr_to[1].'/'.$arr_to[0].'/'.$arr_to[2]) + 86400;
            }else{
                $tomorow = time() + 86400;
                $to = strtotime(date('Y',$tomorow).'-'.date('m',$tomorow).'-'.date('d',$tomorow));

            }
        }

        $where = array(
            'loaihang' => $this->input->get('loaihang'),
            'from' => $from,
            'to' => $to,
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/depot/statis?tungay='.$this->input->get('tungay').'&denngay='.$this->input->get('denngay'));
        $config['total_rows']           = $this->m_depot->counts_Statis($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;

        $config = array_merge($config,$this->pagination_config);

        $this->pagination->initialize($config);

        $data['lists'] = $this->m_depot->getLists_Statis($where, $config['per_page'], $this->input->get('per_page'));

        $yesterday = time() - 86400;
        /*echo $yesterday;die;
        echo date('d',$yesterday).'-'.date('m',$yesterday).'-'.date('Y',$yesterday);
        die;*/
        $date = strtotime(date('Y').'-'.date('m').'-'.date('d'));

        $data['date'] = $date;

        $data['admin'] = $this->session->adminfull;

        $note = 'note_vn';
        if($data['admin']->kho_hang == 1){
            $note = 'note_vn';
        }else if($data['admin']->kho_hang == 2){
            $note = 'note_cn';
        }
        $data['admin'] = $this->session->userdata('adminfull');

        $data['note'] = $note;
        //echo "<pre>";print_r($data['admin']);die;
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/depots/view_statis',$data);
        $this->load->view('admin/footer');
    }

    //update_note_statis
    public function update_note_statis(){
        $item = $this->input->post('item');
        $val = $this->input->post('val');
        $date = strtotime(date('Y').'-'.date('m').'-'.date('d'));

        if($this->input->post('item') && $this->input->post('val')){
            $check = $this->ordermodel->getFirstRowWhere('statis',array(
                'date' =>  $date
            ));

            if(empty($check)){
                $this->ordermodel->Add('statis',array(
                    'date' => $date,
                    $item => '<p>'.$val.'</p>',
                    'time_update' => time()
                ));
            }else{
                $new_note = $check->$item.'<p>'.$val.'</p>';
                $this->ordermodel->Update_where('statis',array('date' => $date),array(
                    $item => $new_note,
                    'time_update' => time()
                ));
            }
        }

        $data['check'] = true;
        echo json_encode($data);
    }

    public function delete_statis(){
        $id = (int) base64_decode($this->input->get('id'));

        $this->ordermodel->Delete_where("statis",array(
            'id' => $id
        ));
        redirect($_SERVER['HTTP_REFERER']);
    }
}