<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Statistic extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('adminmodel');
        $this->load->model('ordermodel');
        $this->load->library('pagination');
        $this->load->model('m_statistic');
        if (!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin'))) {
            redirect(base_url() . 'vnadmin');
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

    public function employees(){
        $data = array();

        $data['lists'] = array();
        $time_from = '';
        $time_to = '';
        if($this->input->get('from') && $this->input->get('to')){
            $from = $this->input->get('from');
            $to = $this->input->get('to');
            $arr_from = explode('/',$from);
            $time_from = strtotime($arr_from[1].'/'.$arr_from[0].'/'.$arr_from[2].' 12:00:00 am');

            $arr_to = explode('/',$to);
            $time_to = strtotime($arr_from[1].'/'.$arr_to[0].'/'.$arr_to[2]) + 86400;
        }

        $where = array(
            'key' => $this->input->get('key'),
            'from' => $time_from,
            'to' => $time_to,
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/statistic/debt?');
        $config['total_rows']           = $this->m_statistic->countOrdersEmployee($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $this->m_statistic->getOrdersEmployee($where,$config['per_page'],$this->input->get('per_page'));


        $data['headerTitle'] = "Thống kê theo nhân viên";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/statistics/view_employees', $data);
        $this->load->view('admin/footer');
    }
    // detail order employ
    public function detail_order_employ(){
        $id = (int) base64_decode($this->input->get('id'));

        $data['employee'] = $this->m_statistic->getFirstRowWhere('users',array(
            'id' => $id
        ));
        $time_from = '';
        $time_to = '';
        if($this->input->get('from')){
            $from = $this->input->get('from');
            $to = $this->input->get('to');
            $arr_from = explode('/',$from);
            $time_from = strtotime($arr_from[1].'/'.$arr_from[0].'/'.$arr_from[2].' 12:00:00 am');
            if($this->input->get('to')){
                $arr_to = explode('/',$to);
                $time_to = strtotime($arr_to[1].'/'.$arr_to[0].'/'.$arr_to[2]) + 86400;
            }else{
                $time_to = strtotime(date('m').'/'.date('d').'/'.date("Y")) + 86400;
            }
        }

        $where = array(
            'uid' => $id,
            'from' => $time_from,
            'to' => $time_to,
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/statistic/debt?');
        $config['total_rows']           = $this->m_statistic->countOrdersByEmployee($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $this->m_statistic->getOrdersByEmployee($where,$config['per_page'],$this->input->get('per_page'));

        $data['headerTitle'] = "Order theo nhân viên";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/statistics/detail_order_employee', $data);
        $this->load->view('admin/footer');
    }
    //kh
    public function debt(){
        $data['lists'] = array();
        $time_from = '';
        $time_to = '';

        if($this->input->get('from') && $this->input->get('to')){
            $from = $this->input->get('from');
            $to = $this->input->get('to');
            $arr_from = explode('/',$from);
            $time_from = strtotime($arr_from[1].'/'.$arr_from[0].'/'.$arr_from[2].' 12:00:00 am');

            $arr_to = explode('/',$to);
            $time_to = strtotime($arr_to[1].'/'.$arr_to[0].'/'.$arr_to[2].' 12:00:00 am');
        }

        $where = array(
            'key' => $this->input->get('key'),
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/statistic/debt?');
        $config['total_rows']           = $this->m_statistic->countDebtsByEmployee($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;

        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $this->m_statistic->getDebtsByEmployee($where,$config['per_page'], $this->input->get('per_page'));

        $data['headerTitle'] = "Công nợ";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/statistics/view_debt', $data);
        $this->load->view('admin/footer');
    }

    public function debtCustomer(){
        $data['headerTitle'] = "Công nợ khách hàng";
        $id = (int) base64_decode($this->input->get('id'));

        $data['customer'] = $this->m_statistic->getFirstRowWhere('users',array(
            'id' => $id
        ));

        $time_from = '';
        $time_to = '';
        if($this->input->get('from')){
            $from = $this->input->get('from');
            $to = $this->input->get('to');
            $arr_from = explode('/',$from);
            $time_from = strtotime($arr_from[1].'/'.$arr_from[0].'/'.$arr_from[2].' 12:00:00 am');
            if($this->input->get('to')){
                $arr_to = explode('/',$to);
                $time_to = strtotime($arr_to[1].'/'.$arr_to[0].'/'.$arr_to[2]) + 86400;
            }else{
                $time_to = strtotime(date('m').'/'.date('d').'/'.date("Y")) + 86400;;
            }
        }

        $where = array(
            'uid' => $id,
            'from' => $time_from,
            'to' => $time_to,
        );

        $config['page_query_string']    = TRUE;
        $config['enable_query_strings'] = TRUE;
        $config['base_url']             = base_url('vnadmin/statistic/debtCustomer?id='.base64_encode($id));
        $config['total_rows']           = $this->m_statistic->countDebtsByCustomer($where);
        $config['per_page']             = 20;
        $config['uri_segment'] = 4;
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);

        $data['lists'] = $this->m_statistic->getDebtsByCustomer($where,$config['per_page'], $this->input->get('per_page'));

        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/statistics/view_debt_customer', $data);
        $this->load->view('admin/footer');
    }

    //export exel
    public function export_debt_customer(){
        $data = array();
        $where = array(
            'key' => ''
        );
        $data['lists'] = $this->m_statistic->getDebtsByEmployee($where);

        $filename = 'cong_no_kh-'.date('d-m-Y');

        $filename = rtrim($filename, '_');

        header("Content-Type: application/xls; charset=UTF-8");
        header("Content-Disposition: attachment; filename=$filename.xls");
        header("Pragma: no-cache");
        header("Expires: 0");
        $this->load->view('admin/statistics/export_debt_customer', $data);
    }

    public function export_by_customer(){
        $id = (int) $this->input->get('id');
        $data['customer'] = $customer = $this->m_statistic->getFirstRowWhere('users',array(
            'id' => $id
        ));



        $where = array(
            'uid' => $id,
            'from' => '',
            'to' => ''
        );

        $data['lists'] = $this->m_statistic->getDebtsByCustomer($where);


        $filename = 'cong_no_kh-'.$data['customer']->fullname;
        $filename = rtrim($filename, '_');

        header("Content-Type: application/xls; charset=UTF-8");
        header("Content-Disposition: attachment; filename=$filename.xls");
        header("Pragma: no-cache");
        header("Expires: 0");
        $this->load->view('admin/statistics/export_by_customer', $data);
    }
    //export by employee
    public function export_by_employee(){
        $id = (int) $this->input->get('id');
        $data['customer'] = $customer = $this->m_statistic->getFirstRowWhere('users',array(
            'id' => $id
         ));

        $where = array(
            'uid' => $id,
            'from' => '',
            'to' => ''
        );

        $data['lists'] = $this->m_statistic->getOrdersByEmployee($where);


        $filename = 'Don_hang_NV-'.$data['customer']->fullname;
        $filename = rtrim($filename, '_');

        header("Content-Type: application/xls; charset=UTF-8");
        header("Content-Disposition: attachment; filename=$filename.xls");
        header("Pragma: no-cache");
        header("Expires: 0");
        $this->load->view('admin/statistics/export_by_employee', $data);
    }


}

?>