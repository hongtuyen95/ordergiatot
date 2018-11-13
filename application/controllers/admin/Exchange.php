<?php
class Exchange extends MY_Controller
{
    public $total_order;
    public $total_exchange;
    function __construct()
    {
        parent::__construct();
        $this->load->model('ordermodel');
        $this->load->model('cartmodel');
        $this->load->model('m_exchange');
        $this->load->library('pagination');
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnadmin', 'location');
            die();
        }

        $this->total_order = $this->ordermodel->count_All('order');
        $this->total_exchanges = $this->ordermodel->count_All('exchanges');
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
    public function index(){
        $data['headerTitle'] = "Danh sách giao dịch";

        $where = array();
        if($this->input->get('status')){
            $where['status'] = (int) $this->input->get('status');
        }else{
            $where['status'] = '';
        }
        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/exchange/index?');
        $config['total_rows']           = $this->m_exchange->countExchange($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $this->m_exchange->getListExchange($where,$config['per_page'], $this->input->get('per_page'));

        $data['countAll'] = $this->m_exchange->countExchangeByStatus(array('status' => ''));

        for($i=1;$i<=3;$i++){
            $data['status'.$i] = $this->m_exchange->countExchangeByStatus(array('status' => $i));
        }

        //echo $data['status3'];die;

        //echo "<pre>";print_r($data['lists']);die;
        $this->LoadHeaderAdmin($data);

        $this->load->view('admin/exchanges/index', $data);
        $this->load->view('admin/footer');
    }

    public function detail(){
        $this->check_acl();
        $userAdmin = $this->session->userdata('adminfull');

        $data = array();
        $id = base64_decode($this->input->get('id'));

        $exchange = $this->m_exchange->getFirstRowWhere('exchanges',array(
            'id' => $id
        ));

        $data['info'] = $this->m_exchange->getExchangeInfoById($id);

        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/exchanges/detail', $data);
        $this->load->view('admin/footer');
    }

    public function updateStatusExchange(){

        if($this->input->post('id') && $this->input->post('status')){
            $id_exchange = $this->input->post('id');
            $status = $this->input->post('status');
            $userAdmin = $this->session->userdata('adminfull');
            $exchange = $this->m_exchange->getFirstRowWhere('exchanges',array(
                'id' => $id_exchange
            ));
            $check = true;
            $id_customer = $exchange->id_customer;
            $oid = $exchange->id_order;
            $customer = $this->m_exchange->getFirstRowWhere('users',array(
                'id' => $exchange->id_customer
            ));

            if($status == 2){
                $u_waller = $customer->wallet;

                $pay = $exchange->price;

                $new_wallet = $u_waller - $pay;
                //update new wallet for user
                $this->m_exchange->Update_where('users',array('id' => $id_customer),array('wallet' => $new_wallet));
                //update giao dịch
                $this->m_exchange->Update_where('exchanges',array('id' => $id_exchange),array(
                    'status' => 2,
                    'id_approved' => $userAdmin->id
                ));
                //update status and price

                $order = $this->m_exchange->getFirstRowWhere('order',array(
                    'id' => $oid
                ));

                $current_payted = $order->payted;

                $payted = $current_payted + $pay;

                $this->m_exchange->Update_where('order',array('id' => $oid),array(
                    'payted' => $payted,
                ));
                //user change

                $ups = array(
                    'type' => 1,
                    'price' => $pay,
                    'time' => time(),
                    'id_user' => $order->user_id,
                    'admin_user' => $userAdmin->id,
                    'form' => 'Chuyển khoản',
                    'note' => 'Thanh toán hóa đơn '.$order->code,
                );

                $this->m_exchange->Add("transactions",$ups);

                $mess = "Bạn vừa cập nhật trạng thái giao dịch thành công";
            }
            if($status == 3){
                $this->m_exchange->Update_where('exchanges',array('id' => $id_exchange),array(
                    'status' => 3
                ));
                $mess = "Bạn vừa cập nhật trạng thái giao dịch thành công";
            }

            $data['check'] = $check;
            $data['mess'] = $mess;

            echo json_encode($data);die;
        }
    }

    public function printExchange(){
        $data = array();
        $id = $this->input->post('id');
        $exchange = $this->m_exchange->getFirstRowWhere('exchanges',array(
            'id' => $id
        ));
        $id_customer = $exchange->id_customer;
        $oid = $exchange->id_order;

        $data['exchange'] = $exchange;
        $data['customer'] = $this->m_exchange->getFirstRowWhere('users',array(
            'id' => $exchange->id_customer
        ));

        $data['order'] = $this->m_exchange->getFirstRowWhere('order',array(
            'id' => $oid
        ));

        $res['view'] = $this->load->view('admin/exchanges/view_print', $data,true);
        echo json_encode($res);die;
    }
    public function printEx(){
        $data = array();
        $check = $this->input->post('check');
        $res['view'] = $this->load->view('admin/exchanges/view_printex', $data,true);
        echo json_encode($res);die;
    }

    public function addBill(){
        $bills = $this->input->post('bills');
        $countB = count($bills);
        $cols_min = 4;
        $plus = 0;
        $plus_cols = 0;
        if($countB < $cols_min){
            $cols = $cols_min;
        }else{
            $plus = $countB % 4;
            $cols = $countB + (4 - $plus);
            if($plus !=0)
            {
                $plus_cols = (4 - $plus);
            }
        }

        $data['tracking'] = $this->m_exchange->getFirstRowWhere('tracking',array(
            'tracking_id' => $bills[0]
        ));

        $data['order'] = array();

        if($data['tracking']){
            $data['order'] = $this->m_exchange->getFirstRowWhere('order',array(
                'id' => $data['tracking']->order_id
            ));
        }

        //echo "<pre>";print_r($data['order']);die;

        $data['cols'] = $cols;
        $data['bills'] = $bills;
        $data['plus'] = $plus_cols;
        $res['view'] = $this->load->view('admin/exchanges/add_bills',$data,true);
        echo json_encode($res);die;
    }

    public function updateTotalBill(){
        if($this->input->post('oid')){
            $oid = $this->input->post('oid');
            $total_bill = str_replace(array(';',',',' '),'',$this->input->post('total_bill'));

            
            $this->m_exchange->Update_where('order',array('id' => $oid),array(
                'total_bill' => $total_bill
            ));
        }
        $data['check'] = true;
        echo json_encode($data);die;
    }

    public function pay(){
        $this->check_acl();
        $data = array();
        $id = base64_decode($this->input->get('id'));
        $data['order'] = $this->m_exchange->getFirstRowWhere('order',array(
            'id' => $id
        ));
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/exchanges/view_pay', $data);
        $this->load->view('admin/footer');
    }

    public function prepay(){
        $mess = '';
        $check = false;

        $admin = $this->session->userdata('adminfull');
        if(!isset($admin)){
            return false;
        }

        if($this->input->post('oid') && $this->input->post('prepay')){
            $oid = $this->input->post('oid');
            $prepay = $this->input->post('prepay');

            $order = $this->m_exchange->getFirstRowWhere('order',array(
                'id' => $oid
            ));

            //echo '<pre>';print_r($admin);die;

            $arr = array(
                'id_customer' => $order->user_id,
                'id_order' => $oid,
                'price' => $prepay,
                'note' => $this->input->post('note'),
                'time' => time(),
                'user_create' => $admin->fullname,
                'payment' => 'Thanh toán',
                'type' => 'Thanh toán đơn hàng',
                'status' => 1
            );

            $id = $this->m_exchange->Add('exchanges',$arr);
            $sku = "GD-".date('d-m-Y',time()).'-'.$id;

            $this->m_exchange->Update_where('exchanges',array('id' => $id),array('sku' => $sku));

            $check = true;
            $this->session->set_flashdata("mess","Bạn đã đặt cọc thành công, giao dịch đang trong quá trình phê duyệt");
        }

        $data['mess'] = $mess;

        $data['check'] = $check;

        echo json_encode($data);die;
    }

    public function updatePay(){
        $mess = '';
        $check = false;

        $admin = $this->session->userdata('adminfull');
        if(!isset($admin)){
            return false;
        }

        if($this->input->post('oid') && $this->input->post('paydebt')){
            $oid = $this->input->post('oid');
            $order = $this->m_exchange->getFirstRowWhere('order',array(
                'id' => $oid
            ));
            $pay_debt = $this->input->post('paydebt');

            $note = $this->input->post('note');
            
            $arr = array(
                'id_customer' => $order->id,
                'id_order' => $oid,
                'price' => $pay_debt,
                'note' => $note,
                'time' => time(),
                'user_create' => $admin->fullname,
                'type' => 'Thanh toán đơn hàng',
                'payment' => 'Tất toán',
                'status' => 1
            );

            $id = $this->m_exchange->Add('exchanges',$arr);

            $sku = "GD-".date('d-m-Y',time()).'-'.$id;

            $this->m_exchange->Update_where('exchanges',array('id' => $id),array('sku' => $sku));

            $check = true;
            $this->session->set_flashdata("mess","Giao dịch của bạn đã được gửi về ban quản trị để xử lý !!!");
        }

        $data['mess'] = $mess;

        $data['check'] = $check;

        echo json_encode($data);die;
    }

    public function updateOrderStatusByShop(){
        $check = false;
        if($this->input->post('tracking_id') && $this->input->post('shop_status')){
            $trackingId = $this->input->post('tracking_id');
            $shop_status = $this->input->post('shop_status');

            $this->m_exchange->Update_where('tracking',array('id' => $trackingId),array('status' => $shop_status));


            if($this->input->post('shop_status') == 7){
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
                    'id' => $trackingId
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

                $receiver_email = $user->email.',daibkz@gmail.com';
                //$receiver_email = "daibkz@gmail.com";
                $this->email->from('Ordergiatot.vn','Thông báo'); // change it to yours
                $this->email->to($receiver_email);
                $this->email->subject($subject);
                $this->email->message($body);
                $this->email->send();
            }
            $check = true;
        }
        $data['check'] = $check;
        echo json_encode($data);
    }
}