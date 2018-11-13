<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_exchange extends MY_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('model');
        $this->load->database();
    }

    public function getListExchange($where,$limit = null,$offset = null){
        $this->db->select('exchanges.*,order.fullname,order.code,users.fullname as user_approved');
        $this->db->join('order','order.id=exchanges.id_order','left');
        $this->db->join('users','exchanges.id_approved=users.id','left');

        if(empty($where['status']) !== true){
            $this->db->where('exchanges.status',$where['status']);
        }

        $this->db->limit($limit,$offset);

        $this->db->order_by('exchanges.id','desc');
        $this->db->group_by('exchanges.id');
        $q=$this->db->get('exchanges');
        return $q->result();
    }

    public function countExchange($where){
        $this->db->select('exchanges.id');
        $this->db->join('order','order.id=exchanges.id_order','left');
        $this->db->join('users','exchanges.id_approved=users.id','left');

        if(empty($where['status']) !== true){
            $this->db->where('exchanges.status',$where['status']);
        }

        $this->db->order_by('exchanges.id','desc');
        $this->db->group_by('exchanges.id');
        $q=$this->db->get('exchanges');
        return $q->num_rows();
    }

    public function countExchangeByStatus($where=null){
        $this->db->select('exchanges.id');

        //echo $where['status'];die;

        if($where['status'] != ''){
            $this->db->where('exchanges.status',$where['status']);
        }

        $q=$this->db->get('exchanges');
        return $q->num_rows();
    }

    public function getExchangeInfoById($id){
        $this->db->select('exchanges.*,order.fullname,order.code,order.total_item,order.total_price,
        order.payted,order.status as o_status,users.fullname as user_approved,order.phone,order.email,
        order.address,order.total_bill');

        $this->db->join('order','order.id=exchanges.id_order','left');
        $this->db->join('users','exchanges.id_approved=users.id','left');

        $this->db->where('exchanges.id',$id);

        $this->db->group_by('exchanges.id');
        $q=$this->db->get('exchanges');
        return $q->first_row();
    }
}