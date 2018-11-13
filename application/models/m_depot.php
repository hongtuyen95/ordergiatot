<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_depot extends MY_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('model');
        $this->load->database();
    }
    public function getListsTrackingOrder($where = array(),$limit = null,$offset = null){
        $this->db->select('*');
        if(!empty($where['code'])){
            $this->db->like('madonvan',$where['code']);
        }
        if(!empty($where['loaihang'])){
            $this->db->where('loai_hang',$where['loaihang']);
        }
        if($where['from']){
            $this->db->where('time >=',$where['from']);
            $this->db->where('time <=',$where['to']);
        }
        $this->db->order_by('time_update','desc');
        $this->db->order_by('id','desc');
        $this->db->limit($limit,$offset);
        $q = $this->db->get('khohang_order');
        return $q->result();
    }
    public function countTrackingOrder($where = array()){
        $this->db->select('id');
        if(!empty($where['code'])){
            $this->db->like('madonvan',$where['code']);
        }
        if($where['loaihang']){
            $this->db->where('loai_hang',$where['loaihang']);
        }
        if($where['from']){
            $this->db->where('time >=',$where['from']);
            $this->db->where('time <=',$where['to']);
        }
        $q = $this->db->get('khohang_order');
        return $q->num_rows();
    }
    //
    public function getListsDeposit($where = array(),$limit = null,$offset = null){
        $this->db->select('*');
        $this->db->limit($limit,$offset);
        $q = $this->db->get('khohang_kygui');
        return $q->result();
    }
    public function countTrackingDeposit($where = array()){
        $this->db->select('id');
        $q = $this->db->get('khohang_kygui');
        return $q->num_rows();
    }
    //statis
    public function getLists_Statis($where = array(),$limit = null,$offset = null){
        $this->db->select('*');
        if($where['from']){
            $this->db->where('time_update >=',$where['from']);
            $this->db->where('time_update <=',$where['to']);
        }
        $this->db->order_by('id','desc');
        $this->db->limit($limit,$offset);
        $q = $this->db->get('statis');
        return $q->result();
    }
    public function counts_Statis($where = array()){
        $this->db->select('*');
        if($where['from']){
            $this->db->where('time_update >=',$where['from']);
            $this->db->where('time_update <=',$where['to']);
        }
        $this->db->order_by('id','desc');
        $q = $this->db->get('statis');
        return $q->num_rows();
    }
}