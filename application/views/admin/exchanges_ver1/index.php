<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="top_list">
        <div class="list_tk">
            <ul>
                <li><a href="<?=base_url('vnadmin/search/index');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_timkiem.png" alt="">Tìm kiếm</a></li>
                <li><a href="<?=base_url('vnadmin/order/orders');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_donhang.png" alt="">Đơn hàng</a> <span>(<?=@$this->total_order;?>)</span></li>
                <li><a href="<?=base_url('vnadmin/exchange/index');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giaodich.png" alt="">Giao dịch - Thanh toán</a> <span>(<?=@$this->total_exchanges;?>)</span></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai');?>" title="" rel=""><i class="fa fa-info" aria-hidden="true"></i> Danh sách đơn hàng khiếu nại</a> <!--<span>(<?/*=@$this->total_exchanges;*/?>)</span>--></li>
                <li><a href="<?=base_url('vnadmin/order/giaohang');?>" title="" rel=""><i class="fa fa-bars"></i> Giao hàng</a></li>
            </ul>
        </div>
        <div class="name_page">Danh sách giao dịch</div>
    </div>
    <div class="name_page">Danh sách giao dịch</div>
    <div class="content_page_donhang">
        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/exchange/index')?>">Tất cả <span>(<?=@$countAll;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/exchange/index?status=1')?>">Chưa duyệt <span>(<?=$status1;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/exchange/index?status=2')?>">Đã duyệt <span>(<?=@$status2;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/exchange/index?status=3')?>">Hủy <span>(<?=@$status3;?>)</span></a></li>
            </ul>

            <div class="tab-content">
                <div id="Home" class="tab-pane fade in active">
                    <table class="table table_search">
                        <tr class="active">
                            <th width="5%" class="text-center" style="width: 3%;">STT</th>
                            <th width="15%">Khách hàng</th>
                            <th>Thông tin giao dịch</th>
                            <th>Lời nhắn</th>
                            <th width="8%">Thời gian</th>
                            <th width="12%">Người thao tác</th>
                            <th class="text-center" style="width: 10%">Trạng thái</th>
                            <th>Tùy chọn</th>
                        </tr>
                        <?php if(count($lists)) : $stt = 0; ?>
                            <?php foreach($lists as $list) : $stt +=1; ?>
                                <tr>
                                    <td class="text-center"><?=$stt;?></td>
                                    <td><?=$list->fullname;?></td>
                                    <td>
                                        Đơn hàng : <span style="color:#52d0be;font-weight: bold"><?=$list->code;?></span>
                                    </td>
                                    <td>
                                        <?php if(!empty($list->note)) : ?>
                                            <?=$list->note;?>
                                        <?php else : ?>
                                            ---
                                        <?php endif;?>
                                    </td>
                                    <td>
                                        <?=date('H:i d/m/Y',$list->time);?>
                                    </td>
                                    <td>
                                        <?php if(!empty($list->user_create)) : ?>
                                            <?=$list->user_create;?>
                                        <?php else : ?>
                                            ---
                                        <?php endif;?>
                                    </td>
                                    <td class="text-center">
                                        <div class="dropdown">
                                        <?php
                                        $status = array(
                                            '1' => array('Chờ duyệt', 'btn-primary'),
                                            '2' => array('Đã duyệt', 'btn-success'),
                                            '3' => array('Đã hủy', 'btn-danger'),
                                        );
                                        ?>
                                        <?php if($list->status == 1) : ?>
                                            <?php foreach($status as $k => $sta) : ?>
                                                <?php if($k == $list->status) : ?>
                                                    <button class="btn <?=$sta[1];?> btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <i class="fa fa-refresh fa-spin"></i>  <?=$sta[0];?>
                                                    </button>
                                                    <!--<ul class="dropdown-menu">
                                                        <li onclick="update_order_status($(this))" data-id="<?/*=@$list->id;*/?>" data-value="2"><span><i class="fa fa-check text-primary"></i> Duyệt giao dịch</span></li>
                                                        <li onclick="update_order_status($(this))" data-id="<?/*=@$list->id;*/?>" data-value="3"><span ><i class="fa fa-times text-danger"></i> Hủy</span></li>
                                                    </ul>-->
                                                <?php endif;?>
                                            <?php endforeach;?>
                                        <?php endif;?>
                                        <?php if($list->status == 2) : ?>
                                            <button class="btn btn-success btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
                                                <i class="fa fa-check"></i> Đã duyệt
                                            </button>
                                        <?php endif;?>
                                        <?php if($list->status == 3) : ?>
                                            <button class="btn btn-danger btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
                                                Đã hủy
                                            </button>
                                        <?php endif;?>
                                        </div>
                                    </td>
                                    <td class="text-center" width="7%">
                                        <a href="<?=base_url('vnadmin/exchange/detail?id='.base64_encode($list->id));?>" class="btn btn-sm btn-info"><i class="fa fa-info"></i> Chi tiết</a>
                                    </td>
                                </tr>
                            <?php endforeach;?>
                        <?php endif;?>
                    </table>
                </div>

            </div>
        </div>
        <div class="clearfix-5"></div>
    </div>
</div>

<style>
    .tab_info_admin li.active a{border-top:3px solid #41ec2d}
    .khieunai ul li{padding:3px 5px;border-bottom: 1px solid #ddd;cursor: pointer}
    .khieunai ul li:last-child{border-bottom: none !important;}
</style>
<script type="text/javascript">
    var url = '<?=base_url();?>';
    var x = window.location.href;
    $('.menu-item  a[href="' + x + '"]').parent().addClass('active');

    function update_order_status(obj){
        var status = $(obj).data('value');
        var id = $(obj).data('id');
        if(confirm("Bạn có muốn cập nhật trạng thái giao dịch này không")){
            $.ajax({
                url: url + 'vnadmin/exchange/updateStatusExchange',
                type: "POST",
                dataType: "json",
                data: {id:id,status:status},
                success : function(res){
                    //window.location.reload();
                }
            });
        }

    }
</script>