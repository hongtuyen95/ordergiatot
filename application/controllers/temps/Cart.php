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

            $item_id = $id.'_'.$b_colorsize;

            $key = uniqid();

            if (!empty($_SESSION['cart'])&&isset($_SESSION['cart'][$item_id])&&in_array($_SESSION['cart'][$item_id], $_SESSION['cart'])) {
                $old = $_SESSION['cart'][$item_id];

                $_SESSION['cart'][$item_id] = array(
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
                    'ct' => $this->input->post('ct'),
                );

                if (($this->language == 'vi')) {
                    $_SESSION['messege']='Sản phẩm đã cập nhật vào giỏ hàng của bạn! ';
                } else {
                    $_SESSION['messege']='Products were updated in your cart! ';
                }

                $rs['status']=true;

            } else {
                $_SESSION['cart'][$item_id] = array(
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
                    'ct' => $this->input->post('ct'),
                );
            }
        }
        die();
    }
    public function displayPayM(){
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
    public function updateNoteCartItemById(){
        $id = $this->input->post('id');
        $note = $this->input->post('note');
        $item = $_SESSION['cart'][$id];
        $_SESSION['cart'][$id]['comment'] = $note;

        echo "<pre>";print_r($_SESSION['cart']);die;
    }

    public function updateQtyItemCart(){
        if($this->input->post('id') && $this->input->post('qty')){
            $id = $this->input->post('id');
            $qty = $this->input->post('qty');
            $old = $_SESSION['cart'][$id];
            $_SESSION['cart'][$id]['qty'] = $qty;
        }

        $count = 0;
        $total = 0;
        foreach ($_SESSION['cart'] as $v) {
            $count += $v['qty'];
            $total += ($v['qty'] * $v['item_price']);
        }

        $data['count']      = $count;
        $data['total']      = $total;
        $data['item_price'] = $old['item_price'];
        $data['item_total'] = $old['item_price'] * $qty;

        $data['total_pri_vn'] = $total * 3630;

        $data['pmh'] = $data['item_total'] * 0.03;

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

    }

    public function checkOut(){
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("Vui lòng đăng nhập");
            redirect(base_url());
        }
        $uInfo = $this->session->userdata('userData');
        $user = $this->cartmodel->getFirstRowWhere('users',array(
            'id' => $uInfo['oauth_uid']
        ));
        $data['user'] = $user;
        $params = $_SERVER['QUERY_STRING'];
        $ids = explode('&cartid=',$params);
        foreach($_SESSION['cart'] as $cart){
            if(!in_array($cart['key'],$ids)){
                unset($_SESSION['cart'][$cart['rowid']]);
            }
        }

        $data['carts'] = $_SESSION['cart'];
        $seo = array(
            'title' => "Giỏ hàng"
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('carts/view_checkout',$data);
        $this->LoadFooter();
    }
    public function createOrder(){
        if(!$this->session->userdata('userData')){
            $this->session->set_flashdata("Vui lòng đăng nhập");
            redirect(base_url());
        }
        if($this->input->post('fullname')){
            $order = array(
                'fullname' => $this->input->post('fullname'),
                'address' => $this->input->post('address'),
                'phone' => $this->input->post('phone'),
                'email' => $this->input->post('email'),
                'note' => $this->input->post('note'),
                'ma_kho' => $this->input->post('khohang'),
                'note' => $this->input->post('note'),
                'time' => time(),
            );

            $res = $this->cartmodel->Add('order',$order);
            if($res){
                $mdh = 'DH'.$res;
                $this->cartmodel->Update_where('order',array('id' => $res),array('code' => $mdh));
                foreach ($_SESSION['cart'] as $cart) {
                    $detailOrder = array(
                        'order_id' => $res,
                        'item_id' => '',
                        'item_name' => $cart['item_name'],
                        'item_size' => $cart['item_size'],
                        'item_image' => $cart['item_image'],
                        'item_link' => $cart['item_link'],
                        'seller_name' => $cart['seller_name'],
                        'seller_id' => $cart['seller_id'],
                        'quantity' => $cart['qty'],
                        'price' => $cart['price'],
                        'comment' => $cart['comment'],
                        'currency' => $cart['currency'],
                        'ct' => $cart['ct'],
                    );
                }
            }
        }
    }
    public function deleteItemCart(){
        $id = $this->input->get('id');

        unset($_SESSION['cart'][$id]);

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
}
