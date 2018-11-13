<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.css" rel="stylesheet"/>
<!--date-->
<link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.css" rel="stylesheet"/>
<!--date-->
<script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.js"></script><!--date-->
<script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.js"></script><!--date-->
<div class="col_right_body">
    <div class="top_list">
        <div class="name_page">Hàng ký gửi</div>
    </div>
    <div class="content_page_timkiem">
        <div class="clearfix" style="background-color: #fff;">
            <div class="col-sm-4">
                <input type="text" autocomplete="off" name="key" id="key" placeholder="Mã đơn vận"  class="input-sm form-control input-timdon">
            </div>
            <div class="col-sm-2">
                <select id="place" class="form-control input-sm">
                    <option <?php if($this->session->userdata('place') == 1){echo "selected";} ?> value="1">Kho Trung Quốc</option>
                    <option <?php if($this->session->userdata('place') == 2){echo "selected";} ?> value="2">Kho Việt Nam</option>
                </select>
            </div>
        </div>
        <div class="clearfix-10"></div>
        <div class="table-responsive">
            <table class="table table-bordered">
                <tr class="active">
                    <th width="10%" class="text-center" style="width: 3%;">STT</th>
                    <th width="20%">Ngày tháng</th>
                    <th>Mã đơn vận</th>
                    <th width="20%" class="text-center">Kho TQ</th>
                    <th width="20%" class="text-center">Kho VN</th>
                    <th width="5%"></th>
                </tr>
                <?php if(count($lists)) : $stt = 0; ?>
                    <?php foreach($lists as $list) : $stt += 1; ?>
                        <tr>
                            <td><?=@$stt;?></td>
                            <td><?=date('d/m/Y H:i',$list->time);?></td>
                            <td><strong style="color:#f39c12"><?=$list->madonvan;?></strong></td>
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
                                <a onclick="confirm('Bạn có chắc chắn muốn xóa không ?')" href="<?=base_url('vnadmin/depot/delete_deposit?id='.base64_encode($list->id));?>" class="btn btn-xs btn-danger">
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
        var place = $('#place option:selected').val();
        $.ajax({
            url: url + 'vnadmin/depot/createDeposit',
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
</script>