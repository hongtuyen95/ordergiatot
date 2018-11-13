<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.css" rel="stylesheet"/>
<!--date-->
<link href="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.css" rel="stylesheet"/>
<!--date-->
<script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery-ui-1.10.4.custom.js"></script><!--date-->
<script type="text/javascript" src="<?= base_url('')?>assets/plugin/datetimepicker/jquery.datetimepicker.js"></script><!--date-->
<div class="col_right_body">
    <div class="top_list">
        <div class="name_page">Thống kê theo nhân viên</div>
    </div>
    <div class="content_page_timkiem">
        <div class="clearfix" style="background-color: #fff;">
            <form action="" class="form-mail" method="get">
                <div class="col-sm-4">
                    <input type="text" name="key" placeholder="Tìm tên nhân viên"  class="input-sm form-control input-timdon" id="">
                </div>
                <div class="col-sm-2">
                    <input type="text" name="from" autocomplete="off" placeholder="Từ ngày"  class="input-sm form-control input-timdon" id="from">
                </div>
                <div class="col-sm-2">
                    <input type="text" name="to" autocomplete="off" placeholder="Đến ngày"  class="input-sm form-control input-timdon" id="to">
                </div>
                <div class="col-sm-2">
                    <button type="submit" class="btn btn-sm btn-primary">Tìm kiếm</button>
                </div>
            </form>
        </div>
        <div class="clearfix-10"></div>
        <div class="table-responsive">
            <table class="table table-bordered table_search">
                <tr class="active">
                    <th class="text-center" width="10%">STT</th>
                    <th>Tên nhân viên</th>
                    <th width="12%">Số điện thoại</th>
                    <th width="12%">Email</th>
                    <th width="15%">Tổng tiền hàng</th>
                    <th width="12%">Đã thanh toán</th>
                    <th width="12%">Dư nợ</th>
                </tr>
                <?php if(count($lists)) : $stt = 0; ?>
                    <?php foreach($lists as $list) : $stt +=1;?>
                        <tr>
                            <td class="text-center"><?=$stt;?></td>
                            <td>
                                <a href="<?=base_url('vnadmin/statistic/detail_order_employ?id='.base64_encode($list->uid));?>" style="color:#26c24b;font-weight: bold"><?=@$list->fullname;?></a>
                            </td>
                            <td>
                                <?=@$list->phone;?>
                            </td>
                            <td>
                                <?=@$list->email;?>
                            </td>
                            <td>
                                <strong style="color:#ff0055"><?=number_format($list->total);?> VNĐ</strong>
                            </td>
                            <td>
                                <strong style="color:#4fcc26"><?=number_format($list->payted);?> VNĐ</strong>
                            </td>
                            <td>
                                <strong style="color:#ff0055"><?=number_format($list->total - $list->payted);?> VNĐ</strong>
                            </td>
                        </tr>
                    <?php endforeach;?>
                <?php endif;?>
                </tfoot>
            </table>
            <div class="col-sm-12 text-right">
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
</style>

<script type="text/javascript">
    $("#from").datepicker({
        dateFormat: 'dd/mm/yy',
    });
    $("#to").datepicker({
        dateFormat: 'dd/mm/yy',
    });
</script>