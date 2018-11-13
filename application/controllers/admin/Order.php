<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Order extends MY_Controller
{
    public $total_order;

    function __construct()
    {
        parent::__construct();
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnadmin', 'location');
            die();
        }
        $this->load->model('ordermodel');
        $this->load->model('cartmodel');
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
    public function orders()
    {
		$this->check_acl();

        $admin = $this->session->userdata('adminfull');

        //echo "<pre>";print_r($admin);die;

        if($admin->group == 3){
            $buyer = $admin->id;
        }else{
            $buyer = '';
        }

        $where = array(
            'key' => trim($this->input->get('key')),
            'status' => $this->input->get('status'),
            'buyer' => $buyer,
            'khohang' => $this->input->get('khohang'),
        );
        //echo "<pre>";print_r($where);die;

        $data['countAll'] = $this->ordermodel->countUserOrderByStatus(array(
                'status' => '',
                'buyer' => $buyer,
            )
        );

        for($i=1;$i<=10;$i++){
            $data['status'.$i] = $this->ordermodel->countUserOrderByStatus(array(
                'status' => $i,
                'buyer' => $buyer,
            ));
        }
        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        if($this->input->get()){
            $config['base_url']             = base_url('vnadmin/order/orders?key='.$this->input->get("key").'&khohang='.$this->input->get("khohang").'&status='.$this->input->get('status'));
        }else{
            $config['base_url']             = base_url('vnadmin/order/orders?');
        }

        $config['total_rows']           = $this->ordermodel->countOrders($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $this->ordermodel->Getlist_oder($where,$config['per_page'], $this->input->get('per_page'));

        //echo "<pre>";print_r($data['lists']);die;

        $data['admin'] = $admin;

        $data['headerTitle'] = "Đơn đặt hàng";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/order/oder_list', $data);
        $this->load->view('admin/footer');
    }
    // xoa gio hang
	public function deletes()
    {
        $ids = $this->input->post('checkone');
        foreach($ids as $id)
        {
                $this->delete_once_orders($id);
        }

		$this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }
	public function delete_once_orders($id){
		$this->check_acl();

		$this->ordermodel->Delete_where('order',array('id' => $id));
		$this->ordermodel->Delete_where('order_item',array('order_id'=>$id));

		$this->ordermodel->Delete_where('exchanges',array('id_order'=>$id));

		$this->ordermodel->Delete_where('exchanges',array('id_order'=>$id));

        redirect($_SERVER['HTTP_REFERER']);
     }
	public function delete($id){
		if (is_numeric($id)) {
			$this->ordermodel->Delete_where('order',array('id' => $id));
			$this->ordermodel->Delete_where('order_item',array('order_id'=>$id));
			$this->session->set_flashdata("mess", "Xóa thành công!");
			redirect($_SERVER['HTTP_REFERER']);
		} else return false;
	}

    /**
     * update status order
     * @return bool
     */
    public function update_order_status(){
        $rs = array();
        $check = false;
        if($this->input->post('oid') && $this->input->post('status')){
            $oid = $this->input->post('oid');
            $status = $this->input->post('status');
            $this->ordermodel->Update_where('order',array('id' => $oid),array('status' => $status));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }

    /**
     * Update tỷ giá cân nặng
     */
    public function update_weight_rate(){
        $rs = array();
        $check = false;
        if($this->input->post('tracking_id')){
            $trackingId = $this->input->post('tracking_id');
            //$weightRate = $this->input->post('rate');

            $weightRate = str_replace(array(';','.',',',' '),'',$this->input->post('rate'));

            $this->ordermodel->Update_where('tracking',array('id' => $trackingId),array('weight_rate' => $weightRate));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    /**
     * Update Pucharse Fee
     */
    public function updatePucharseFee(){
        $rs = array();
        $check = false;

        if($this->input->post('oid') && $this->input->post('fee')){
            $oid = $this->input->post('oid');
            $fee = $this->input->post('fee');
            $this->ordermodel->Update_where('order',array('id' => $oid),array('fee' => $fee));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }

    /**
     * Update Rate
     */
    public function updateRate(){
        $rs = array();
        $check = false;

        if($this->input->post('oid') && $this->input->post('rate')){
            $oid = $this->input->post('oid');
            $rate = $this->input->post('rate');
            $this->ordermodel->Update_where('order',array('id' => $oid),array('rate' => $rate));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    /**
     * Update Buyer
     */
    public function updateBuyer(){
        $rs = array();
        $check = false;
        $admin = $this->session->userdata('adminfull');
        if($this->input->post('oid')){
            $oid = $this->input->post('oid');
            $buyer = $this->input->post('buyer');

            $this->ordermodel->Update_where('order',array('id' => $oid),array('id_buyer' => $buyer,'id_admin' => $admin->id));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }

    /**
     * Update admin note
     */
    public function  updateAdminNote(){
        $rs = array();
        $check = false;

        if($this->input->post('oid') && $this->input->post('note')){
            $oid = $this->input->post('oid');
            $note = $this->input->post('note');

            $this->ordermodel->Update_where('order',array('id' => $oid),array('admin_note' => $note));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }

    /***
     * updateNoteItem
     */
    public function updateNoteItem(){
        $rs = array();
        $check = false;

        if($this->input->post('oid') && $this->input->post('note')){
            $oid = $this->input->post('oid');
            $note = $this->input->post('note');

            $this->ordermodel->Update_where('order_item',array('id' => $oid),array('admin_note' => $note));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //update Quantity
    public function updateQuantity(){
        $rs = array();
        $check = false;

        if($this->input->post('id')){
            $oid = $this->input->post('id');
            $qty = $this->input->post('qty');
            $this->ordermodel->Update_where('order_item',array('id' => $oid),array('qty_buy' => $qty));
            $item = $this->ordermodel->getFirstRowWhere('order_item',array('id' => $oid));
            $order = $this->ordermodel->getFirstRowWhere('order',array('id' => $item->order_id));

            $cats = $this->ordermodel->get_data('order_item',array('order_id' => $item->order_id,'seller_name'=>$item->seller_name));
            $temp_total =0;
            if(count($cats)) : 
                foreach($cats as $key => $cart) : 
                        $temp_total += $order->rate * $cart->price * @$cart->qty_buy;
                endforeach;
                var_dump($order->rate);
                var_dump($temp_total);
                $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);
                if(empty($puchar_fee)){
                    $fee = $user->fee / 100;
                }else{
                    $fee = $puchar_fee->price/100;
                }
                var_dump($fee);
                $this->ordermodel->Update_where('order_item',array('order_id' => $item->order_id,'seller_name'=>$item->seller_name),array('fee' => $fee*100));
            endif;
            
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //Update Item Price
    public function updateItemPrice(){
        $rs = array();
        $check = false;

        if($this->input->post('id') && $this->input->post('price')){
            $oid = $this->input->post('id');

            //$price = str_replace(array(';','.',',',' '),'',$this->input->post('price'));
            $price = $this->input->post('price');
            $this->ordermodel->Update_where('order_item',array('id' => $oid),array('price' => $price));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //save note
    public function saveNote(){
        if($this->input->post('tracking') && $this->input->post('note')){
            $tracking_id = $this->input->post('tracking');
            $note = $this->input->post('note');

            $tracking = $this->ordermodel->get_data('tracking',array(
                'id' => $tracking_id,
            ),null,true);

            $data_mess = array();

            if($tracking){
                $data_mess = json_decode($tracking->message);
                $data_mess[] = array(
                    'user' => "Admin",
                    'content' => $note,
                    'time' => time(),
                );

                $this->ordermodel->Update_where('tracking',array(
                    'id' => $tracking_id,
                ),array('message' => json_encode($data_mess)));
                $check = true;
            }
        }

        $messContent = '';
        foreach($data_mess as $message){
            if(is_object($message)){
                $messContent .= '<p><strong><i class="fa fa-clock-o"></i> '.$message->user.':'.$message->content.'</strong> </p>';;
            }else{
                $messContent .= '<p><strong><i class="fa fa-clock-o"></i> '.$message["user"].': '.$message["content"].'</strong></p>';;
            }
        }

        $res['text'] = $messContent;
        echo json_encode($res);die;
    }
    //save Item orrder
    public function saveNoteItemOrder(){
        if($this->input->post('item_id') && $this->input->post('note')){
            $item_id = $this->input->post('item_id');
            $note = $this->input->post('note');

            $item = $this->ordermodel->get_data('order_item',array(
                'id' => $item_id,
            ),null,true);

            $data_mess = array();
            $admin = $this->session->userdata('adminfull');
            if($item){
                $data_mess = json_decode($item->comment);
                $data_mess[] = array(
                    'user' => $admin->fullname,
                    'content' => $note,
                    'time' => time(),
                );

                $this->ordermodel->Update_where('order_item',array(
                    'id' => $item_id,
                ),array('comment' => json_encode($data_mess)));
                $check = true;
            }
        }

        $messContent = '';
        foreach($data_mess as $message){
            if(is_object($message)){
                $messContent .= '<p><strong><i class="fa fa-clock-o"></i> '.$message->user.': '.$message->content.'</strong></p>';;
            }else{
                $messContent .= '<p><strong><i class="fa fa-clock-o"></i> '.$message["user"].': '.$message["content"].'</strong></p>';;
            }
        }

        $res['text'] = $messContent;
        echo json_encode($res);die;
    }
    //Update Domistec
    public function updateDomestic(){
        $rs = array();
        $check = false;

        if($this->input->post('tracking')){
            $id = $this->input->post('tracking');
            $phi_noi_dia = str_replace(array(';',',',' '),'',$this->input->post('phi_noi_dia'));

            $this->ordermodel->Update_where('tracking',array('id' => $id),array('phi_noi_dia' => $phi_noi_dia));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //Update weight
    public function updateWeight(){
        $rs = array();
        $check = false;
        $oid = $this->input->post('oid');

        $order = $this->ordermodel->getFirstRowWhere('order',array(
            'id' => $oid
        ));

        $data['customer'] = $this->ordermodel->getFirstRowWhere('users',array(
            'id' => $order->user_id
        ));

        if($this->input->post('tracking')){

            $id = $this->input->post('tracking');
            $weight = $this->input->post('weight');

            $p_weight = $this->ordermodel->getPuchaseWeight($weight);

            $w_price = '';
            if(empty($p_weight)){
                $w_price = $data['customer']->weight_exchange;
            }else{
                $w_price = $p_weight->price;
            }

            $this->ordermodel->Update_where('order',array('id' => $oid),array(
                'weight_rate' => $w_price
            ));

            $this->ordermodel->Update_where('tracking',array('id' => $id),array(
                'weight' => $weight,
                'weight_rate' => $w_price
            ));
            $list_kg = array();
            if (file_exists ( "json_kg/".$oid.".json" )) {
                $myfile = fopen("json_kg/".$oid.".json", "r");
                $list_kg = json_decode(fread($myfile,filesize("json_kg/".$oid.".json")),true);
                fclose($myfile);
            }
            $list_kg[count($list_kg)+1]=array('id_tracking'=>$id,'weight'=>$weight,'time'=>time());

            $myfile = fopen("json_kg/".$oid.".json", "w") or die("Unable to open file!");
                $txt = json_encode($list_kg);
                fwrite($myfile, $txt);
                fclose($myfile);
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    public function updatephikiemhang(){
        $rs = array();
        $check = false;


        if($this->input->post('tracking')){

            $id = $this->input->post('tracking');
            $order = $this->ordermodel->getFirstRowWhere('order_item',array('id' => $id));
            $price = str_replace(array(';',',',' '),'',$this->input->post('kiemhang'));
            //$this->input->post('price');

            $this->ordermodel->Update_where('order_item',array('order_id' => $order->order_id,'seller_name'=>$order->seller_name),array('phi_kiem_hang' => $price));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    public function updatephidichvu(){
        $rs = array();
        $check = false;


        if($this->input->post('tracking')){

            $id = $this->input->post('tracking');
            $order = $this->ordermodel->getFirstRowWhere('order_item',array('id' => $id));
            $price = str_replace(array(';',',',' '),'',$this->input->post('kiemhang'));
            //$this->input->post('price');

            $this->ordermodel->Update_where('order_item',array('order_id' => $order->order_id,'seller_name'=>$order->seller_name),array('fee' => $price));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //Update phi ngoai
    public function updatePhingoai(){
        $rs = array();
        $check = false;

        if($this->input->post('tracking')){
            $local = $this->input->post('local');

            $id = $this->input->post('tracking');
            $price = str_replace(array(';',',',' '),'',$this->input->post('price'));
            //$this->input->post('price');

            $this->ordermodel->Update_where('tracking',array('id' => $id),array('phi_ngoai_'.$local => $price));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //Update sku shop
    public function updateSkuShop(){
        $rs = array();
        $check = false;

        if($this->input->post('tracking')){
            $id = $this->input->post('tracking');
            $sku = $this->input->post('sku');

            $this->ordermodel->Update_where('tracking',array('id' => $id),array('shop_sku' => $sku));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //updateTracking
    function updateTracking(){
        $rs = array();
        $check = false;

        if($this->input->post('tracking')){
            $id = $this->input->post('tracking');

            $tracking_id = $this->input->post('tracking_id');

            //check hàng order , ky gui
            $check_order = $this->ordermodel->getFirstRowWhere("khohang_order",array(
                'madonvan' => $tracking_id
            ));

            if(!empty($check_order)){
                $this->ordermodel->Update_where("khohang_order",array(
                    'madonvan' => $tracking_id
                ),array(
                    'loai_hang' => 1
                ));
            }

            $this->ordermodel->Update_where('tracking',array('id' => $id),array('tracking_id' => $tracking_id));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }
    //Update pay
    function updatePay(){
        $rs = array();
        $check = false;

        if($this->input->post('tracking')){
            $id = $this->input->post('tracking');

            $price = str_replace(array(';',',',' '),'',$this->input->post('price'));
            //str_replace(array(';',',',' '),'',$this->input->post('price'));
            $this->ordermodel->Update_where('tracking',array('id' => $id),array('thanh_toan_thuc' => $price));
            $check = true;
        }

        $data['check'] = $check;
        echo json_encode($data);
    }


    public function detail(){
        $id = base64_decode($this->input->get('id'));
        $data['order'] = $this->ordermodel->getFirstRowWhere('order',array(
            'id' => $id
        ));
        $list_kg = array();
        if (file_exists ( "json_kg/".$id.".json" )) {
                $myfile = fopen("json_kg/".$id.".json", "r");
                $list_kg = json_decode(fread($myfile,filesize("json_kg/".$id.".json")),true);
                fclose($myfile);
            }
        $data['list_kg'] = $list_kg;
        $admin = $this->session->userdata('adminfull');

        $data['admin'] = $admin;
        //echo "<pre>";print_r($data['admin']);die;
        if(!empty($admin->kho_hang)){
            $khohang = $admin->kho_hang;
        }else{
            $khohang = '';
        }

        $data['khohang'] = $khohang;
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $data['order']->user_id
        ));

        $data['user'] = $user;

        $data['carts'] = $cats = $this->ordermodel->get_data('order_item',array(
            'order_id' => $id
        ));

        $shops = array();
        if(count($cats)){
            foreach($cats as $cat){
                if(!in_array($cat->seller_name,$shops)){
                    $shops[] = $cat->seller_name;
                    $check_kiem_hang[] = $cat->phi_kiem_hang;
                }
            }
        }

        $data['shops'] = $shops;
        $data['check_phi_kiem_hang'] = $check_kiem_hang;

        $data['stores'] = $this->cartmodel->getShops($id);
        foreach($data['stores'] as $k => $store){
            $data['stores'][$k]->items = $this->cartmodel->get_data('order_item',array(
                'seller_name' => $store->seller_name,
                'order_id' => $id
            ));
            $data['stores'][$k]->tracking = $this->cartmodel->get_data('tracking',array(
                'shop_name' => $store->seller_name,
                'order_id' => $id
            ),null,true);
        }
        
        $fee = $data['order']->fee/100;

        $data['fee'] = $fee;

        $data['employes'] = $this->cartmodel->get_data("users",array(
            'lever' => 1
        ));


        //echo "<pre>";print_r($data['employes']);die;

        $data['headerTitle'] = 'Chi tiết đơn hàng';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/order/view_detail', $data);
        $this->load->view('admin/footer');
    }

    public function giaohang(){
        $data['headerTitle'] = 'Giao hàng';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/order/giaohang', $data);
        $this->load->view('admin/footer');
    }


    //Danh sach thanh toan
    public function banking(){
        $data['lists'] = $this->cartmodel->get_data('banking',array(),array('id' => 'desc'));
        $data['headerTitle'] = 'Thông tin thanh toán';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/order/banking', $data);
        $this->load->view('admin/footer');
    }

    public function add_banking($id_edit=null){
        $sort = $this->cartmodel->SelectMax('banking','sort') + 1;
        if($id_edit){
            //get news item
            $item = $this->cartmodel->get_data('banking',array('id'=>$id_edit),array(),true);
            $data['edit']=$item;
            $data['btn_name']='Cập nhật';
            $sort = $item->sort;
        }
        if (isset($_POST['addnews'])) {
            $alias = make_alias($this->input->post('alias'));
            $arr = array(
                'name'=>$this->input->post('name'),
                'acount'=>$this->input->post('acount'),
                'bank'=>$this->input->post('bank'),
                'sort'=>$this->input->post('sort'),
                'time' => time(),
            );

            //echo '<pre>';print_r($arr);die;

            if (!empty($_POST['edit'])){
                $id = $this->cartmodel->Update_where('banking', array('id'=>$id_edit), $arr);
                $this->session->set_flashdata("mess", "Cập nhật thành công!");
            } else {
                $id = $this->cartmodel->Add('banking', $arr);
                $this->session->set_flashdata("mess", "Thêm thành công!");
            }

            redirect(base_url('vnadmin/order/banking'));
        }

        $data['sort'] = $sort;
        $data['headerTitle'] = 'Thêm thông tin thanh toán';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/order/add_banking', $data);
        $this->load->view('admin/footer');
    }
    public function delete_banking($id){
        $this->cartmodel->Delete('banking',$id);
        $this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function updatSTCT(){
        $id = $this->input->post('id');
        //$price = $this->input->post('price');

        $price = str_replace(array(';','.',',',' '),'',trim($this->input->post('price')));

        $check = false;
        if($this->input->post('id')){
            $this->cartmodel->Update_where('order',array('id' => $id),array(
                'payted' => $price
            ));
            $check = true;
        }

        $data['check'] = $check;

        echo json_encode($data);die;
    }

    public function changTotalPrice(){
        $id = $this->input->post('id');
        //$price = $this->input->post('price');

        $price = str_replace(array(';','.',',',' '),'',trim($this->input->post('price')));

        $check = false;
        if($this->input->post('id')){
            $this->cartmodel->Update_where('order',array('id' => $id),array(
                'total_bill' => $price
            ));
            $check = true;
        }

        $data['check'] = $check;

        echo json_encode($data);die;
    }
}