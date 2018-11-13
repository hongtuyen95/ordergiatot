<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/><link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.css" rel="stylesheet"/><!--date--><link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.css" rel="stylesheet"/><!--date--><script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.js"></script><!--date--><script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.js"></script><!--date--><div class="col_right_body">    <div class="top_list">        <div class="name_page">Thống kê ghi chú</div>    </div>    <div class="content_page_timkiem">        <div class="col-sm-3">            <input type="text"  autocomplete="off" name="key" id="key" placeholder="Nội dung ghi chú"  class="input-sm form-control input-timdon">            <input type="hidden" id="kho" name="kho" value="<?=@$note;?>">        </div>        <div class="col-sm-2">            <button onclick="update_note_statis()" class="btn btn-primary btn-sm">Thêm mới</button>        </div>        <div class="clearfix" style="background-color: #fff;">            <form action="" method="get">                <div class="col-sm-2">                    <input placeholder="Từ ngày" value="<?=@$this->input->get('tungay');?>" class="form-control input-sm" name="tungay" id="from">                </div>                <div class="col-sm-2">                    <input placeholder="Đến ngày" value="<?=@$this->input->get('denngay');?>" class="form-control input-sm" name="denngay" id="to">                </div>                <div class="col-sm-1"><button type="submit" class="btn btn-sm btn-primary">Lọc</button></div>                <input type="hidden" id="khohang" value="<?=@$admin->kho_hang;?>">            </form>        </div>        <div class="clearfix-10"></div>        <div class="table-responsive">            <table class="table table-bordered">                <tr class="active">                    <th width="5%" class="text-center" style="width: 3%;">STT</th>                    <th width="10%">Ngày tháng</th>                    <th width="40%">Ghi chú kho TQ</th>                    <th>Ghi chú kho VN</th>                    <th width="5%"></th>                </tr>                <?php if(count($lists)) : $stt = 0; ?>                    <?php foreach($lists as $list) : $stt += 1; ?>                        <tr>                            <td><?=@$stt;?></td>                            <td><?=date('d/m/Y H:i',$list->time_update);?></td>                            <td class="text-left">                                <strong><?=$list->note_cn;?></strong>                            </td>                            <td class="text-left">                                <?=$list->note_vn;?>                            </td>                            <td width="5%">                                <?php if($admin->kho_hang != 2) : ?>                                    <a  href="<?=base_url('vnadmin/depot/delete_statis?id='.base64_encode($list->id));?>" class="btn btn-xs btn-danger">                                        <i class="fa fa-times"></i>                                    </a>                                <?php endif;?>                            </td>                        </tr>                    <?php endforeach;?>                <?php endif;?>            </table>            <div class="clearfix-5"></div>            <div class="text-center">                <?php echo $this->pagination->create_links();?>            </div>        </div>        <div class="clearfix-5"></div>    </div></div><style>    .content-wrapper{        background-color:#fff !important;    }    .text_danger{color:red}    .text-success{color:#31af33}</style><script src="<?= base_url('assets/plugin/barcode/jquery.scannerdetection.js') ?>"></script><script type="text/javascript">    var url = '<?=base_url();?>';    $("#from").datepicker({        dateFormat: 'dd/mm/yy',    });    $("#to").datepicker({        dateFormat: 'dd/mm/yy',    });    function update_note(obj){        var tracking_id = $(obj).data('id');        var field = $(obj).data('skin');        var text = $(obj).val();        $.ajax({            url: url + 'vnadmin/depot/update_note',            type: "POST",            data:{id:tracking_id,field:field,text:text},            dataType:"json",            success : function(res){                window.location.reload();                alert("Bạn đã cập nhật thành công ghi chú");            }        });    }    function update_note_statis(obj){        var item = $('#kho').val();        var val = $('#key').val();        $.ajax({            url: url + 'vnadmin/depot/update_note_statis',            type: "POST",            data:{item:item,val:val},            dataType:"json",            success : function(res){                window.location.reload();            }        });    }</script>