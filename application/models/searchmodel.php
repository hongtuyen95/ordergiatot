<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Searchmodel extends MY_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('model');
    }

    public function Getlist_oder($where,$limit=null,$offset=null){
        if($where['key'] != ''){
            $this->db->select('order.*,users.fullname,users.id as uid,order_item.item_image');
            $this->db->join('order_item','order.id=order_item.order_id','left');
            $this->db->join('tracking','order.id=tracking.order_id','left');
            $this->db->join('users','order.user_id=users.id','left');

            $this->db->like('order.code',$where['key']);
            $this->db->or_like('order.fullname',$where['key']);
            $this->db->or_like('tracking.shop_sku',$where['key']);
            $this->db->or_like('tracking.tracking_id',$where['key']);

            $this->db->limit($limit,$offset);
            $this->db->order_by('order.id','desc');
            $this->db->group_by('order.id');
            $q=$this->db->get('order');
            return $q->result();
        }else{
            return array();
        }
    }

    public function countSearchOrders($where){

        if($where['key'] != ''){
            $this->db->select('order.*,users.fullname,users.id as uid,order_item.item_image');
            $this->db->join('order_item','order.id=order_item.order_id','left');
            $this->db->join('tracking','order.id=tracking.order_id','left');
            $this->db->join('users','order.user_id=users.id','left');

            $this->db->like('order.code',$where['key']);
            $this->db->or_like('order.fullname',$where['key']);
            $this->db->or_like('tracking.shop_sku',$where['key']);
            $this->db->or_like('tracking.tracking_id',$where['key']);

            $this->db->order_by('order.id','desc');
            $this->db->group_by('order.id');
            $q=$this->db->get('order');
            return $q->num_rows();
        }else{
            return 0;
        }
    }

}