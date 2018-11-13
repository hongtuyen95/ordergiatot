<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.css" rel="stylesheet"/>
<!--date-->
<link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.css" rel="stylesheet"/>
<!--date-->
<script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.js"></script><!--date-->
<script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.js"></script><!--date-->
<div class="col_right_body">
    <div class="top_list">
        <div class="name_page">Kiểm hàng</div>
    </div>
    <div class="content_page_timkiem">
        <div class="clearfix" style="background-color: #fff;">
            <div class="col-sm-2">
                <input type="text" autocomplete="off" name="key" id="key" placeholder="Mã đơn vận"  class="input-sm form-control input-timdon">
                <input type="hidden" id="kho" name="kho" value="<?=@$kho;?>">
            </div>
            <div class="col-sm-1">
                <button onclick="create_tracking()" class="btn btn-primary btn-sm">Thêm mới</button>
            </div>
            <form action="" method="get">
                <div class="col-sm-2">
                    <input type="text" name="code" class="form-control input-sm" placeholder="Tìm mã...">
                </div>
                <div class="col-sm-2">
                    <input type="hidden" id="place" value="">
                    <select id="loaihang" name="loaihang" class="form-control input-sm">
                        <option value="">Loại hàng</option>
                        <option <?php if($this->input->get('loaihang') == 1){echo "selected";} ?> value="1">Hàng Order</option>
                        <option <?php if($this->input->get('loaihang') == 2){echo "selected";} ?> value="2">Hàng ký gửi</option>
                    </select>
                </div>
                <div class="col-sm-2">
                    <input placeholder="Từ ngày" value="<?=@$this->input->get('tungay');?>" class="form-control input-sm" name="tungay" id="from">
                </div>
                <div class="col-sm-2">
                    <input placeholder="Đến ngày" value="<?=@$this->input->get('denngay');?>" class="form-control input-sm" name="denngay" id="to">
                </div>
                <div class="col-sm-1"><button type="submit" class="btn btn-sm btn-primary">Lọc</button></div>
            </form>
        </div>
        <div class="clearfix-10"></div>
        <div class="table-responsive">
            <table class="table table-bordered">
                <tr class="active">
                    <th width="5%" class="text-center" style="width: 3%;">STT</th>
                    <th width="10%">Ngày tháng</th>
                    <th width="15%">Mã vận đơn</th>
                    <th>Loại hàng</th>
                    <th>Ghi chú kho TQ</th>
                    <th>Ghi chú kho VN</th>
                    <th width="10%" class="text-center">Kho TQ</th>
                    <th width="10%" class="text-center">Kho VN</th>
                    <th width="5%"></th>
                </tr>
                <?php if(count($lists)) : $stt = 0; ?>
                    <?php foreach($lists as $list) : $stt += 1; ?>
                        <tr class="<?php if((time() - $list->time_update) < 5){echo "row_edit";};?>">
                            <td><?=@$stt;?></td>
                            <td><?=date('d/m/Y H:i',$list->time);?></td>
                            <td><strong style="color:#f39c12"><?=$list->madonvan;?></strong></td>
                            <td>
                                <?php if($list->loai_hang == 1) : ?><strong style="color:#31af33">Hàng order</strong><?php endif;?>
                                <?php if($list->loai_hang == 2) : ?><strong>Hàng ký gửi</strong><?php endif;?>
                            </td>
                            <td>
                                <?php if($admin->kho_hang == 2) : ?>
                                    <textarea onchange="update_note($(this))" data-skin="note_cn" data-id="<?=@$list->id;?>" class="form-control" id="note_cn" name="note_cn"><?=@$list->note_cn;?></textarea>
                                <?php else : ?>
                                    <span><?=@$list->note_cn;?></span>
                                <?php endif ;?>
                            </td>
                            <td>
                                <?php if($admin->kho_hang != 2) : ?>
                                    <textarea class="form-control" onchange="update_note($(this))" data-id="<?=@$list->id;?>" data-skin="note_vn" id="note_vn" name="note_vn"><?=@$list->note_vn;?></textarea>
                                <?php else : ?>
                                    <span><?=@$list->note_vn;?></span>
                                <?php endif ;?>
                            </td>
                            <td class="text-center">
                                <?php if($list->kho_tq == "Đã nhận") : ?>
                                    <strong class="text-success"><i class="fa fa-check"></i> <?=$list->kho_tq;?></strong>
                                <?php endif;?>
                                <?php if($list->kho_tq == "Chưa nhận") : ?>
                                    <strong class="text_danger"><i class="fa fa-check"></i> <?=$list->kho_tq;?></strong>
                                <?php endif;?>
                            </td>
                            <td class="text-center">
                                <?php if($list->kho_vn == "Đã nhận") : ?>
                                    <strong class="text-success"><i class="fa fa-check"></i> <?=$list->kho_vn;?></strong>
                                <?php endif;?>
                                <?php if($list->kho_vn == "Chưa nhận") : ?>
                                    <strong class="text_danger"><?=$list->kho_vn;?></strong>
                                <?php endif;?>
                            </td>
                            <td width="5%">
                                <a  href="<?=base_url('vnadmin/depot/delete_tracking_order?id='.base64_encode($list->id));?>" class="btn btn-xs btn-danger">
                                    <i class="fa fa-times"></i>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach;?>
                <?php endif;?>
            </table>

            <div class="clearfix-5"></div>
            <div class="text-center">
                <?php echo $this->pagination->create_links();?>
            </div>
        </div>
        <div class="clearfix-5"></div>
    </div>
</div>

<style>
    .content-wrapper{
        background-color:#fff !important;
    }
    .text_danger{color:red}
    .text-success{color:#31af33}
    .row_edit{
        background-color: #c5c5c5;
    }
</style>
<script src="<?= base_url('assets/plugin/barcode/jquery.scannerdetection.js') ?>"></script>
<script type="text/javascript">
    var url = '<?=base_url();?>';
    $("#from").datepicker({
        dateFormat: 'dd/mm/yy',
    });
    $("#to").datepicker({
        dateFormat: 'dd/mm/yy',
    });


    $('#key').scannerDetection({
        timeBeforeScanTest: 200, // wait for the next character for upto 200ms
        avgTimeByChar: 40, // it's not a barcode if a character takes longer than 100ms
        preventDefault: false,
        endChar: [13],
        onComplete: function(barcode, qty) {
            validScan = false;
            $('#key').val('');
            //searchItemByCode(barcode);
            createTracking(barcode);
        }
    });

    function createTracking(barcode){
        var place = $('#kho').val();
        $.ajax({
            url: url + 'vnadmin/depot/createOrderTracking',
            type: "POST",
            data:{tracking:barcode,place:place},
            dataType:"json",
            success : function(res){
                window.location.reload();
            }
        });
    }

    $('#place').change(function(){
        var val = $(this).val();
        window.location.href = url + 'vnadmin/depot/setPlace?place='+val;
    });

    function update_note(obj){
        var tracking_id = $(obj).data('id');
        var field = $(obj).data('skin');
        var text = $(obj).val();
        $.ajax({
            url: url + 'vnadmin/depot/update_note',
            type: "POST",
            data:{id:tracking_id,field:field,text:text},
            dataType:"json",
            success : function(res){
                window.location.reload();
            }
        });
    }

    function create_tracking(){
        var tracking = $('#key').val();
        var place = $('#kho').val();
        $.ajax({
            url: url + 'vnadmin/depot/create_tracking',
            type: "POST",
            data:{tracking:tracking,place:place},
            dataType:"json",
            success : function(res){
                window.location.reload();
            }
        });
    }

</script>