<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Cart extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('cartmodel');
    }

    public function addToCart(){
        if($this->input->post()){
            $session_cart = $_SESSION['cart'];
            $uInfo = $this->session->userdata('userData');
            if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r");
                $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
                fclose($myfile);
            }


            $type = $this->input->post('type');
            $id = $this->input->post('item_id');
            $item_name = $this->input->post('name');
            $item_price = $this->input->post('item_price');
            $seller_name = $this->input->post('seller_name');
            $seller_id = $this->input->post('seller_id');
            $quantity = $this->input->post('quantity');
            $color_size = $this->input->post('color_size');
            $item_link = $this->input->post('item_link');
            $currency = $this->input->post('currency');
            $comment = $this->input->post('comment');
            $item_image = $this->input->post('item_image');

            $b_colorsize = $color_size;
            $subItems = '';

            $subItems = json_decode($this->input->post('subItems'));

            $p_name = '';
            if($this->input->post('item_image')){
                $arr_name = explode('/',$this->input->post('item_image'));
                $name1 = end($arr_name);

                $temp_arr = explode('.',$name1);

                $p_name = $temp_arr[0];
            }


            if($subItems != null){
                //echo "<pre>";print_r($subItems);die;
                $cs = explode(';',$color_size);

                foreach($subItems as $subitem){
                    $key = uniqid();
                    //$item_id = $id.'_'.$subitem->name;
                    $item_id = $id.'_'.$subitem->name.'_'.$subitem->keyword.$p_name;

                    $qty = $subitem->quantity;
                    $pri =  $subitem->price;
                    $cls = $subitem->name;
                    if(!empty($subitem->image)){
                        $anh = $subitem->image;
                    }else{
                        $anh = $item_image;
                    }
                    if (!empty($session_cart)&&isset($session_cart[$item_id])&&in_array($session_cart[$item_id], $session_cart)) {
                        $old = $session_cart[$item_id];
                        if(!empty($pri) && is_numeric($pri)){
                            $session_cart[$item_id] = array(
                                'rowid' => $item_id,
                                'item_id' => $id,
                                'type' => $type,
                                'item_name' => $item_name,
                                'item_price' => $pri,
                                'qty' => $old['qty'] + $qty,
                                'color_size' => $cs[1].''.$cls,
                                'comment' => $comment,
                                'item_link' => $item_link,
                                'key' => $old['key'],
                                'currency' => $currency,
                                'seller_name' => $seller_name,
                                'seller_id' => $seller_id,
                                'item_image' => $anh,
                            );
                        }


                        if (($this->language == 'vi')) {
                            $_SESSION['messege']='Sản phẩm đã cập nhật vào giỏ hàng của bạn! ';
                        } else {
                            $_SESSION['messege']='Products were updated in your cart! ';
                        }

                        $rs['status']=true;

                    } else {
                        if(!empty($pri) && is_numeric($pri)){
                            $session_cart[$item_id] = array(
                                'rowid' => $item_id,
                                'item_id' => $id,
                                'type' => $type,
                                'item_name' => $item_name,
                                'item_price' => $pri,
                                'qty' => $qty,
                                'key' => $key,
                                'color_size' => $cs[1].''.$cls,
                                'comment' => $comment,
                                'item_link' => $item_link,
                                'currency' => $currency,
                                'seller_name' => $seller_name,
                                'seller_id' => $seller_id,
                                'item_image' => $anh,
                            );
                        }
                    }
                }
            }else{
                $key = uniqid();
                $item_id = $id.'_'.$b_colorsize;
                if (!empty($session_cart)&&isset($session_cart[$item_id])&&in_array($session_cart[$item_id], $session_cart)) {
                    $old = $session_cart[$item_id];

                    $session_cart[$item_id] = array(
                        'rowid' => $item_id,
                        'item_id' => $id,
                        'type' => $type,
                        'item_name' => $item_name,
                        'item_price' => $item_price,
                        'qty' => $old['qty'] + $quantity,
                        'color_size' => $color_size,
                        'comment' => $comment,
                        'item_link' => $item_link,
                        'key' => $old['key'],
                        'currency' => $currency,
                        'seller_name' => $seller_name,
                        'seller_id' => $seller_id,
                        'item_image' => $item_image,
                    );

                    if (($this->language == 'vi')) {
                        $_SESSION['messege']='Sản phẩm đã cập nhật vào giỏ hàng của bạn! ';
                    } else {
                        $_SESSION['messege']='Products were updated in your cart! ';
                    }

                    $rs['status']=true;

                } else {
                    $session_cart[$item_id] = array(
                        'rowid' => $item_id,
                        'item_id' => $id,
                        'type' => $type,
                        'item_name' => $item_name,
                        'item_price' => $item_price,
                        'qty' => $quantity,
                        'key' => $key,
                        'color_size' => $color_size,
                        'comment' => $comment,
                        'item_link' => $item_link,
                        'currency' => $currency,
                        'seller_name' => $seller_name,
                        'seller_id' => $seller_id,
                        'item_image' => $item_image,
                    );
                }
            }
            if ($this->session->userdata('userData')) {
                $uInfo = $this->session->userdata('userData');
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
                $txt = json_encode($session_cart);
                fwrite($myfile, $txt);
                fclose($myfile);
            }else{
                $_SESSION['cart'] = $session_cart;
            }
            
        }
        die();
    }
    public function displayPayM(){
        $data = array();
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            redirect(base_url());
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));

        $shops = array();

        $temp_total = 0;

        $session_cart = @$_SESSION['cart'];
        if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
            $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r");
            $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
            fclose($myfile);
        }


        if(count($session_cart)){
            if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r") or die("Unable to open file!");
                $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
                fclose($myfile);
            }
            $cats = $session_cart;
            foreach($cats as $cat){
                if(!in_array(@$cat['seller_name'],$shops)){
                    $shops[] = @$cat['seller_name'];
                }
            }
             foreach($shops as $shop) :
                $temp_total = 0;
                if(count($cats)) : 
                    foreach($cats as $key => $cart) : 
                        if($cart['seller_name'] == $shop) : 
                            $temp_total += $this->option->exchange * $cart['item_price'] * @$cart['qty'];
                            if(count($cats)) : 
                                foreach($cats as $key => $cart) : 
                                    if($cart['seller_name'] == $shop) : 
                                        $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);

                                        if(empty($puchar_fee)){
                                            $fee = $user->fee / 100;
                                        }else{
                                            $fee = $puchar_fee->price/100;
                                        }
                                        $cats[$key]['fee'] = $fee;
                                    endif;
                                endforeach;
                            endif;
                        endif;
                    endforeach;
                endif;
            endforeach;
        }
        $session_cart = @$cats;

        $uInfo = $this->session->userdata('userData');
        $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
        $txt = json_encode($session_cart);
        fwrite($myfile, $txt);
        fclose($myfile);

        $data['carts'] = @$session_cart;
        $temp_total = $this->option->exchange * $temp_total;
        //get purchase fee
        $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);


        if(empty($puchar_fee)){
            $fee = $user->fee / 100;
        }else{
            $fee = $puchar_fee->price/100;
        }
        $data['fee'] = $fee;
        //echo $fee;die;

        $data['shops'] = $shops;

        //echo '<pre>';print_r($shops);die;


        $seo = array(
            'title' => 'Giỏ hàng'
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_giohang',$data);
        $this->LoadFooter();
    }

    public function updateNoteCartItemById(){
        $id = $this->input->post('id');
        $note = $this->input->post('note');
        $item = $_SESSION['cart'][$id];
        $_SESSION['cart'][$id]['comment'] = $note;
        if ($this->session->userdata('userData')) {
                $uInfo = $this->session->userdata('userData');
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
                $txt = json_encode($_SESSION['cart']);
                fwrite($myfile, $txt);
                fclose($myfile);
            }
        echo "<pre>";print_r($_SESSION['cart']);die;
    }

    public function updateQtyItemCart(){
        $session_cart = $_SESSION['cart'];
        $uInfo = $this->session->userdata('userData');
        if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
            $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r");
            $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
            fclose($myfile);
        }
        if($this->input->post('id') && $this->input->post('qty')){
            $id = $this->input->post('id');
            $qty = $this->input->post('qty');
            $old = $session_cart[$id];
            $session_cart[$id]['qty'] = $qty;
        }

        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            redirect(base_url());
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));

        $fee = 0.08;
        if(!empty($user->fee)){
            $fee = $user->fee / 100;
        }

        $re_change = $this->option->exchange;
        if(empty($rechange)){
            $re_change = 3630;;
        }

        $count = 0;
        $total = 0;
        foreach ($session_cart as $v) {
            $count += $v['qty'];
            $total += ($v['qty'] * $v['item_price']);
        }

        $data['count']      = $count;
        $data['total']      = $total;
        $data['item_price'] = $old['item_price'];
        $data['item_total'] = $old['item_price'] * $qty;

        $data['total_pri_vn'] = $total * $re_change;
        $data['pmh'] = $data['item_total'] * $fee;

        $uInfo = $this->session->userdata('userData');
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
                $txt = json_encode($session_cart);
                fwrite($myfile, $txt);
                fclose($myfile);

        $this->session->set_flashdata("mess","Cập nhật thành công");
        echo json_encode($data);
        die();
    }

    public function showCart(){
        $data['carts'] = @$_SESSION['cart'];
        if(!isset($data['carts'])){
            $this->session->set_flashdata("mess","Giỏ hàng hiện tại trống");
            redirect(base_url());
        }
        $seo = array();
        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_display',$data);
        $this->LoadFooter();
    }

    public function exchange_rate(){
        $data['cny'] = $this->option->exchange;
        echo json_encode($data);die;
    }

    public function checkOut(){
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            redirect(base_url());
        }
        if(count($_SESSION['cart']) < 1){
            $this->session->set_flashdata("mess","Giỏ hàng trống");
            redirect(base_url('cart/displayPayM'));
        }

        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));
        $data['user'] = $user;

        $params = $_SERVER['QUERY_STRING'];
        $ids = explode('&cartid=',$params);
        $ids = array_filter($ids);
        $arrids = array();
        $new_data = array();
        foreach($ids as $idp){
            $arrids[] = urldecode($idp);
        }
        if($params){
            foreach($_SESSION['cart'] as $cart){
                if(in_array($cart['rowid'],$arrids)){

                    array_push($new_data,$_SESSION['cart'][$cart['rowid']]);

                    unset($_SESSION['cart'][$cart['rowid']]);
                }
            }
        }else{
            $this->session->set_flashdata("check_cartall","true");
            $new_data = $_SESSION['cart'];
        }
        $_SESSION['new_cats'] = $new_data;

        $temp_total = 0;

        if(isset($_SESSION['new_cats'])){
            if(count($_SESSION['new_cats'])){
                $cats = $_SESSION['new_cats'];
                foreach($cats as $cat){
                    if(!in_array(@$cat['seller_name'],$shops)){
                        $shops[] = @$cat['seller_name'];
                    }
                }
                 foreach($shops as $shop) : 
                     if(count($cats)) : 
                        foreach($cats as $key => $cart) : 
                            if($cart['seller_name'] == $shop) : 
                                $temp_total = $this->option->exchange * $cart['item_price'] * @$cart['qty'];
                                //get purchase fee
                                $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);


                                if(empty($puchar_fee)){
                                    $fee = $user->fee / 100;
                                }else{
                                    $fee = $puchar_fee->price/100;
                                }

                                $cats[$key]['fee'] = $fee;
                            endif;
                        endforeach;
                    endif;
                endforeach;
                        
            }

        }
        $_SESSION['new_cats'] = $cats;
        $data['carts'] = @$_SESSION['new_cats'];



        
        // foreach($_SESSION['new_cats'] as $cat){
        //     $temp_total += $cat['item_price'] * $cat['qty'];
        // }

        // $temp_total = $this->option->exchange * $temp_total;
        // //get purchase fee
        // $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);


        // if(empty($puchar_fee)){
        //     $fee = $user->fee / 100;
        // }else{
        //     $fee = $puchar_fee->price/100;
        // }


        // $data['fee'] = $fee;

        // $data['carts'] = $_SESSION['new_cats'];



        $seo = array(
            'title' => "Giỏ hàng"
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_checkout',$data);
        $this->LoadFooter();
    }
    public function createOrder()
    {
        if (!$this->session->userdata('userData')) {
            $this->session->set_flashdata("Vui lòng đăng nhập");
            redirect(base_url());
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users', array(
            'id' => $uInfo['oauth_uid']
        ));
        $fee = $user->fee;
        if ($this->input->post('fee')) {
            $fee = $this->input->post('fee');
        }
        //$fee = $fee / 100;
        $weight_exchange = 20000;

        if ($user->fee) {
            $weight_exchange = $user->weight_exchange;
        }
        $tongtien = 0;
        foreach ($_SESSION['new_cats'] as $cart){
            $tongtien += $cart['item_price'] * $cart['qty'];
        }

        if($tongtien <= 0){
            $this->session->set_flashdata("mess","Giỏ hàng hiện tại trống");
            redirect(base_url());
        }
        
        if($this->input->post('fullname')){
            $this->db->cache_delete_all();
            $order = array(
                'fullname' => $this->input->post('fullname'),
                'address' => $this->input->post('address'),
                'phone' => $this->input->post('phone'),
                'email' => $this->input->post('email'),
                'note' => $this->input->post('note'),
                'ma_kho' => $this->input->post('depot'),
                'note' => $this->input->post('note'),
                //'fee' => $fee  * 100,
                'rate' => $this->option->exchange,
                'weight_rate' => $weight_exchange,
                'id_buyer' => $user->id_admin,
                'time' => time(),
                'user_id' => $uInfo['oauth_uid'],
                'status' => 1
            );

            $res = $this->cartmodel->Add('order',$order);

            if($res){
                $mdh = 'DH'.$res;
                $this->cartmodel->Update_where('order',array('id' => $res),array('code' => $mdh));
                $i = 0;
                $j = 0;
                $shops = array();
                foreach ($_SESSION['new_cats'] as $cart) { 
                    if(!in_array($cart->seller_name,$shops)){
                        $shops[] = $cart->seller_name;
                        $phi_kiem_hang = $_POST['phi_kiem_hang'][$j];
                        $j++;
                    }
                    $detailOrder = array(
                        'order_id' => $res,
                        'item_id' => $cart['item_id'],
                        'item_name' => $cart['item_name'],
                        'item_size' => $cart['color_size'],
                        'item_image' => $cart['item_image'],
                        'item_link' => $cart['item_link'],
                        'seller_name' => $cart['seller_name'],
                        'fee' => $_POST['fee'][$i],
                        'phi_kiem_hang' => $phi_kiem_hang,
                        'seller_id' => $cart['seller_id'],
                        'quantity' => $cart['qty'],
                        'qty_buy' => $cart['qty'],
                        'price' => $cart['item_price'],
                        'note' => $cart['comment'],
                        'currency' => $cart['currency'],
                        'ct' => @$cart['ct'],
                        'type' => $cart['type'],
                    );
                    $i++;
                    $this->cartmodel->Add('order_item',$detailOrder);
                    $check_item = $this->cartmodel->getFirstRowWhere('tracking',array('order_id'=>$res,'shop_name' => $cart['seller_name']));
                    if(empty($check_item)){
                        $arr = array(
                            'order_id' => $res,
                            'user_id' => $uInfo['oauth_uid'],
                            'shop_name' => $cart['seller_name'],
                            'shop_id' => $cart['seller_id'],
                        );
                        $this->cartmodel->Add('tracking',$arr);
                    }
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

                $htm = '<table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#caf6ea">
                            <thead>
                                <tr style="background:#92ddc9">
                                    <td></td>
                                    <td>Sản phẩm</td>
                                    <td>Đơn giá</td>
                                    <td>Số lượng</td>
                                    <td>Thành tiền</td>
                                    <td>Phí mua hàng</td>
                                </tr>
                            </thead>
                            <tbody>';

                $subtotal = 0;
                $totals = 0;
                $tongtien = 0;
                $sum_fee = 0;
                $total_item = 0;
                foreach($_SESSION['new_cats'] as $key => $tcat){
                    $subtotal = $tcat['item_price'] * $tcat['qty'];
                    $tongtien += $subtotal;
                    $totals += $subtotal ;
                    $total_item += $tcat['qty'];
                    $sum_fee += $tcat['item_price'] * $tcat['qty'] * $tcat['fee'];
                    $htm .='<tr>';
                    $htm .='<td><img style="max-width: 100px" src="'.$tcat["item_image"].'"></td>';
                    $htm .='<td>';
                    $htm .='<p>'.$tcat['item_name'].'</p>';
                    $htm .='<p>'.$tcat['color_size'].'</p>';
                    $htm .='</td>';
                    $htm .='<td>'.number_format($tcat["item_price"],2).'</td>';
                    $htm .='<td>'.$tcat['qty'].'</td>';
                    $htm .='<td>'.number_format($subtotal,2).'</td>';
                    $htm .='<td>'.number_format($subtotal * $tcat['fee'],2).'</td>';
                    $htm .='</tr>';
                }

                $this->cartmodel->Update_where('order',array('id' => $res),array(
                    'total_item' => $total_item,
                    'total_price' => ($tongtien + $sum_fee) * $this->option->exchange,
                    'total_bill' => ($tongtien + $sum_fee) * $this->option->exchange
                ));

                $htm .='<tr><td colspan="6" align="right"><span style="color:red">Tổng tiền hàng:'.number_format($tongtien + $sum_fee,2).'&nbsp;NDT</span></td></tr>';
                $htm .='<tr><td colspan="6" align="right"><span style="color:red">Tỷ giá:'.number_format($this->option->exchange).'&nbsp;¥/VNĐ</span></td></tr>';
                $htm .='<tr><td colspan="6" align="right"><span style="color:red">Tổng cộng:'.number_format(($tongtien + $sum_fee) * $this->option->exchange,2).'&nbsp;VNĐ</span></td></tr>';
                $htm .='</tbody>';
                $htm .='</table>';

                $subject = $this->option->site_name.' - Thông tin đặt hàng'.'['.$mdh.']';
                $img ='<p><img src="'.base_url(@$this->option->site_logo).'" alt=""/></p>';
                $img_footer ='<p style="float: right" class="pull-right"><img src="'.base_url(@$this->option->site_logo).'" alt=""/></p>';

                $message = '';
                //$message .= $img;
                $message .= '<p><h2 style="color: green">EMAIL XÁC NHẬN ĐƠN HÀNG !</h2></p>';
                $message .='<p>Kính chào &nbsp;'.$this->input->post('fullname').',<p>';
                $message .='<p>'.@$this->option->site_name.' đã nhận được đơn đặt hàng của Qúy khách:<p></br>';

                $message .='<b>Thông tin khách hàng:</b></br>';
                $message .='<p>Họ tên:'.$this->input->post('fullname').'<p></br>';
                $message .='<p>Điện thoại:'.$this->input->post('phone').'<p></br>';
                $message .='<p>Địa chỉ:'.$this->input->post('address').'<p></br>';
                $message .='<p>Kho hàng:'.$this->input->post('khohang').'<p></br>';

                $message .='<p>Quí khách vui lòng thanh toán <span style="color:red">'.number_format(($tongtien + $sum_fee) * $this->option->exchange).'vnđ</span>&nbsp;khi nhận hàng.</p>';
                $message .= '<p><b>Mã đơn hàng : </b>'.$mdh.'</p>';
                $message .='<p>Tình trạng : Chưa thanh toán.</p>';
                $message .='<p><b>Chi tiết đơn hàng :</b></p>';
                $message .=$htm;

                $message .='<p style="border: 1px solid #e7d17a;padding: 8px">Ngoài hình thức thanh toán và giao hàng tận nơi, Quí khách có thể đến văn
                    phòng giao dịch của '.@$this->option->site_name.' tại Hà Nội để thanh toán<br>';
                $message .= $this->option->address.'</p>';
                $message .= '<p>Nếu quí khách cần hỗ trợ, vui lòng gọi <span style="color:red">'.@$this->option->hotline1.'</span> hoặc gửi đến mail :'.@$this->option->site_email.'</p>';
                $message .= '<p>Cảm ơn quí khách đã mua sắm trên '.@$this->option->site_name.'</p>';
                $message .= '<p><br><br><br>(<span style="color:red">*</span>)Đây là mail hệ thống tự động gửi, vui lòng không trả lời (Reply) lại mail này.</p>';
                $message .= $img_footer;
                // Get full html:

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

                $receiver_email = $this->input->post('email') . ','.@$this->option->site_email;
                //$receiver_email = "daibkz@gmail.com";
                $this->email->from(@$this->option->site_email,'Thông tin đơn hàng'); // change it to yours
                $this->email->to($receiver_email);
                $this->email->subject($subject);
                $this->email->message($body);
                $this->email->send();
                if($this->session->flashdata('check_cartall')){
                    unset($_SESSION['cart']);
                }
                unset($_SESSION['new_cats']);
                if ($this->session->userdata('userData')) {
                    $uInfo = $this->session->userdata('userData');
                    $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
                    $txt = json_encode($_SESSION['cart']);
                    fwrite($myfile, $txt);
                    fclose($myfile);
                }                
                $this->session->set_flashdata("mess","Đặt hàng thành công");
                redirect(base_url('don-hang'));
            }
        }
    }

    public function detail(){
        $data = array();
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("Vui lòng đăng nhập");
            redirect(base_url());
        }

        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));
        $fee = 0.08;
        if($user->fee){
            $fee = $user->fee / 100;
        }
        $data['fee'] = $fee;
        $data['user'] = $user;

        $id = base64_decode($this->input->get('id'));
        $data['order'] = $this->cartmodel->getFirstRowWhere('order',array(
            'id' => $id
        ));

        $data['carts'] = $cats = $this->cartmodel->get_data('order_item',array(
            'order_id' => $id
        ));

        $shops = array();
        $check_kiem_hang = array();

        if(count($cats)){
            foreach($cats as $cat){
                if(!in_array($cat->seller_name,$shops)){
                    $shops[] = $cat->seller_name;
                    $check_kiem_hang[] = $cat->phi_kiem_hang;
                    $fee_order_item[] = $cat->fee;
                }
            }
        }

        $data['shops'] = $shops;
        $data['check_phi_kiem_hang'] = $check_kiem_hang;
        $data['fee_order_item'] = $fee_order_item;

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

        //echo "<pre>";print_r($data['stores']);die;

        $seo = array(
            'title' => "Chi tiết đơn hàng"
        );

        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_detail',$data);
        $this->LoadFooter();
    }
    public function deleteItemCart(){
        $id = urldecode($this->input->get('id'));
        $uInfo = $this->session->userdata('userData');
        if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r");
                $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
                fclose($myfile);
            }
        //echo $id;die;
        foreach($session_cart as $cat){
            if($cat['key'] == $id){
                unset($session_cart[$cat['rowid']]);
            }
        }
        if ($this->session->userdata('userData')) {
                $uInfo = $this->session->userdata('userData');
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
                $txt = json_encode($session_cart);
                fwrite($myfile, $txt);
                fclose($myfile);
            }

        $this->session->set_flashdata('mess','Sản phẩm đã được xóa');
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function RemoveAll(){
        $params = $_SERVER['QUERY_STRING'];
        $ids = explode('&cartid=',$params);
        foreach($_SESSION['cart'] as $cart){
            if(in_array($cart['key'],$ids)){
                unset($_SESSION['cart'][$cart['rowid']]);
            }
        }
        $this->session->set_flashdata("mess","Đã xóa thành công");
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function orders(){
        $data = array();
        $data['carts'] = @$_SESSION['cart'];
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            redirect(base_url());
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));

        $shops = array();

        $temp_total = 0;

        if(isset($_SESSION['cart'])){
            $cats = $_SESSION['cart'];
            foreach($cats as $cat){
                if(!in_array($cat['seller_name'],$shops)){
                    $shops[] = $cat['seller_name'];
                }
                $temp_total += $cat['item_price'] * $cat['qty'];
            }
        }

        $temp_total = $this->option->exchange * $temp_total;
        //get purchase fee
        $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);


        if(empty($puchar_fee)){
            $fee = $user->fee / 100;
        }else{
            $fee = $puchar_fee->price/100;
        }

        //echo $fee;die;

        $data['shops'] = $shops;

        //echo '<pre>';print_r($shops);die;

        $data['fee'] = $fee;

        $seo = array(
            'title' => 'Giỏ hàng'
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_test_cats',$data);
        $this->LoadFooter();
    }


    public function updateTotalCountCart(){
        $ids = $this->input->post('ids');
        $total_link = 0;
        $total_item = 0;
        $total_price = 0;
        $temp_total = 0;
        $total = 0;
        $uInfo = $this->session->userdata('userData');
        if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
                    $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r") or die("Unable to open file!");
                    $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
                    fclose($myfile);
                }
        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));
        $data['user'] = $user;
        $shops = array();
        if($this->input->post('ids')){
            if($session_cart){
                foreach($session_cart as $key => $cat){
                    if(in_array($cat['rowid'],$ids)){
                        if(!in_array($cat['seller_name'],$shops)){
                            $shops[] = $cat['seller_name'];
                        }
                    }
                }
                $temp_total += $cat['item_price'] * $cat['qty'] ;
            }
            foreach($shops as $shop) :
                $temp_total = 0;
                if(count($session_cart)) : 
                    foreach($session_cart as $key => $cart) : 
                        if($cart['seller_name'] == $shop) : 
                            $temp_total += $this->option->exchange * $cart['item_price'] * @$cart['qty'];
                            if(count($session_cart)) : 
                                foreach($session_cart as $key => $cart) : 
                                    if($cart['seller_name'] == $shop) : 
                                        $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);

                                        if(empty($puchar_fee)){
                                            $fee = $user->fee / 100;
                                        }else{
                                            $fee = $puchar_fee->price/100;
                                        }
                                        $session_cart[$key]['fee'] = $fee;
                                    endif;
                                endforeach;
                            endif;
                        endif;
                    endforeach;
                endif;
            endforeach;
            if($session_cart){
                foreach($session_cart as $key => $cat){
                    if(in_array($cat['rowid'],$ids)){
                        $total_link += 1;
                        $total_item += $cat['qty'];
                        $total_price += $cat['item_price'] * $cat['qty'] + ($cat['item_price'] * $cat['qty'])* $cat['fee'];
                    }
                }
            }
        }
        
        $total = round($total_price * $this->option->exchange);

        $data['total_links'] = $total_link;
        $data['total_items'] = $total_item;
        $data['total_prices'] = $total;
        $data['total_prices_2'] = round($total_price,2);
        $data['total_shops'] = count($shops);
        echo  json_encode($data);die;
    }

    public function catcheckOut(){
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("mess","Vui lòng đăng nhập");
            redirect(base_url());
        }

        $uInfo = $this->session->userdata('userData');
        if (file_exists ( "json_cart/".$uInfo['oauth_uid'].".json" )) {
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "r");
                $session_cart = json_decode(fread($myfile,filesize("json_cart/".$uInfo['oauth_uid'].".json")),true);
                fclose($myfile);
            }
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));
        $data['user'] = $user;
        $new_data = array();
        $_SESSION['new_cats'] = array();
        if (isset($_POST['rowid']) && sizeof($_POST['rowid']) > 0) {
            $ids = $_POST['rowid'];
            //echo "<pre>";print_r($ids);die;
            $i =0 ;
            foreach($session_cart as $key => $cart){
                if(in_array($cart['rowid'],$ids)){ 
                    //unset($_SESSION['cart'][$cart['rowid']]);
                    $_SESSION['new_cats'][$key] = array(
                        'rowid' => $cart['rowid'],
                        'item_id' => $cart['item_id'],
                        'type' => $cart['type'],
                        'item_name' => $cart['item_name'],
                        'item_price' => $cart['item_price'],
                        'qty' => $cart['qty'],
                        'key' => $cart['key'],
                        'phi_kiem_hang' => @$_POST['phi_kiem_hang'][$i],
                        'color_size' => $cart['color_size'],
                        'comment' => $cart['comment'],
                        'item_link' => $cart['item_link'],
                        'currency' => $cart['currency'],
                        'seller_name' => $cart['seller_name'],
                        'seller_id' => $cart['seller_id'],
                        'item_image' => $cart['item_image'],
                    );
                    $i++;
                    unset($session_cart[$cart['rowid']]);
                }
            }

        }


        //$_SESSION['new_cats'] = $new_data;

        $temp_total = 0;
        foreach($_SESSION['new_cats'] as $cat){
            $temp_total += $cat['item_price'] * $cat['qty'];
        }

        $temp_total = $this->option->exchange * $temp_total;
        //get purchase fee
        $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);


        if(empty($puchar_fee)){
            $fee = $user->fee / 100;
        }else{
            $fee = $puchar_fee->price/100;
        }


        $data['fee'] = $fee;
        $shops = array();
        $check_phi_kiem_hang = array();
        if(isset($_SESSION['new_cats'])){
             
            
            if(count($_SESSION['new_cats'])){
                 
                $cats = $_SESSION['new_cats'];
                foreach($cats as $cat){
                    if(!in_array(@$cat['seller_name'],$shops)){
                        $shops[] = @$cat['seller_name'];
                        $check_phi_kiem_hang[] = @$cat['phi_kiem_hang'];
                    }
                }
                 foreach($shops as $shop) : 
                     if(count($cats)) : 
                        foreach($cats as $key => $cart) : 
                            if($cart['seller_name'] == $shop) : 
                                $temp_total = $this->option->exchange * $cart['item_price'] * @$cart['qty'];
                                //get purchase fee
                                $puchar_fee = $this->cartmodel->getPurchaseFeeByTotalPrice($temp_total);


                                if(empty($puchar_fee)){
                                    $fee = $user->fee / 100;
                                }else{
                                    $fee = $puchar_fee->price/100;
                                }

                                $cats[$key]['fee'] = $fee;
                            endif;
                        endforeach;
                    endif;
                endforeach;
            }
        }
        $data['shop'] = $shops;
        $data['check_phi_kiem_hang'] = $check_phi_kiem_hang;
        $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
        $txt = json_encode($session_cart);
        fwrite($myfile, $txt);
        fclose($myfile);
        $data['carts'] = $_SESSION['new_cats'] = $cats;
        $seo = array(
            'title' => "Giỏ hàng"
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_checkout',$data);
        $this->LoadFooter();

    }
    public function delete_item()
    {
       foreach ($_POST['array_rowid'] as $key => $k) {
                    unset($_SESSION['cart'][$k]);
       }
       
        if ($this->session->userdata('userData')) {
                $uInfo = $this->session->userdata('userData');
                $myfile = fopen("json_cart/".$uInfo['oauth_uid'].".json", "w") or die("Unable to open file!");
                $txt = json_encode($_SESSION['cart']);
                fwrite($myfile, $txt);
                fclose($myfile);
            }
        echo 1;
    }
    public function update_check_kiemhang()
    {
        $item = $this->cartmodel->getFirstRowWhere('order_item',array('seller_name'=>$this->input->post('shop'),'order_id'=>$this->input->post('order')));
        if ($item->phi_kiem_hang !='') {
            $this->cartmodel->Update_where('order_item',array('seller_name'=>$this->input->post('shop'),'order_id'=>$this->input->post('order')),array('phi_kiem_hang'=>''));
        }else{
            $this->cartmodel->Update_where('order_item',array('seller_name'=>$this->input->post('shop'),'order_id'=>$this->input->post('order')),array('phi_kiem_hang'=>'on'));
        }
        echo 1;
    }
}
