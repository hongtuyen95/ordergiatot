<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ordermodel extends MY_Model{
    function __construct() {
        parent::__construct();
        $this->load->helper('model');
    }
    public function Getlist_oder($where,$limit,$offset){
        $this->db->cache_on();
        $this->db->select('order.*,users.fullname,users.id as uid,order_item.item_image');
        $this->db->join('order_item','order.id=order_item.order_id','left');
        $this->db->join('users','order.user_id=users.id','left');

        if($where['status'] != ''){
            $this->db->where('order.status',$where['status']);
        }

        if($where['khohang'] != ''){
            $this->db->where('order.ma_kho',$where['khohang']);
        }

        if($where['buyer'] != ''){
            $this->db->where('order.id_buyer',$where['buyer']);
        }

        if($where['key'] != ''){
            $this->db->like('order.code',$where['key']);
            $this->db->or_like('order.fullname',$where['key']);
        }

        $this->db->group_by('order.id');
        $this->db->limit($limit,$offset);
        $this->db->order_by('id','desc');
        $q=$this->db->get('order');
        return $q->result();
    }

    public function countOrders($where){
        $this->db->select('order.id');
        $this->db->join('order_item','order.id=order_item.order_id','left');
        $this->db->join('users','order.user_id=users.id','left');
        if($where['status'] != ''){
            $this->db->where('order.status',$where['status']);
        }

        if($where['khohang'] != ''){
            $this->db->where('order.ma_kho',$where['khohang']);
        }

        if($where['buyer'] != ''){
            $this->db->where('order.id_buyer',$where['buyer']);
        }

        if($where['key'] != ''){
            $this->db->like('order.code',$where['key']);
            $this->db->or_like('order.fullname',$where['key']);
        }

        $this->db->group_by('order.id');
        $this->db->order_by('id','desc');
        $q=$this->db->get('order');
        return $q->num_rows();
    }

    public function order_detail($order_id){
        $this->db->select('product.id as product_id,product.name,order_item.*');
        $this->db->join('product','product.id=order_item.item_id');
        $this->db->where_in('order_item.order_id',$order_id);
        $this->db->order_by('product.id','desc');
        $q=$this->db->get('order_item');
        return $q->result();
    }

    public function countUserOrderByStatus($where){
       $this->db->select('id');

       if($where['status'] != ''){
           $this->db->where('status',$where['status']);
       }

       if($where['buyer'] != ''){
           $this->db->where('id_buyer',$where['buyer']);
       }

       $q = $this->db->get('order');
       return $q->num_rows();
    }


    public function getPuchaseWeight($weight){
        $this->db->select('price');
        $this->db->where('from <',$weight);
        $this->db->where('to >=',$weight);

        $q = $this->db->get('config_tygiacannang');
        return $q->first_row();
    }
}
