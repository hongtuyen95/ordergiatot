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
        <div class="name_page">Thông tin giao dịch <a class="btn btn-sm btn-primary" href="<?=base_url('vnadmin/exchange/index');?>"><i class="fa fa-sign-out" ></i> Thoát</a></div>
    </div>
    <div class="content_page_donhang clearfix">
        <div class="col-sm-12">
            <ul class="nav nav-tabs">
                <li class="active"><a href="">Thông tin</a></li>
            </ul>
        </div>
        <div class="tab_info_admin"  style="background-color: #fff">
            <div class="row">
                <div class="col-sm-6">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <td>Mã hóa đơn</td>
                                <td><a style="color:#00adef;font-weight: bold"><?=@$info->sku;?></a></td>
                            </tr>
                            <tr>
                                <td>Tổng giá trị đơn hàng</td>
                                <td><span style="color:#ea8181;font-weight: bold"><?=number_format($info->total_bill);?> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td>Số tiền đã thanh toán</td>
                                <td><span style="color:#ea8181;font-weight: bold"><?=number_format($info->payted);?> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td>Số tiền còn thiếu</td>
                                <td><span style="color:#ea8181;font-weight: bold"><?=number_format($info->total_bill - $info->payted);?> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td>Trạng thái</td>
                                <td>
                                    <?php if($info->o_status <= 3) : ?>
                                        <button class="btn btn-xs btn-danger">
                                            Chưa thanh toán
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 3) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Đã thanh toán
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 4) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Đã mua hàng
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 5) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Đã tất toán
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 6) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Hàng đã về
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 7) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Đã giao hàng
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 8) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Kết thúc đơn
                                        </button>
                                    <?php endif;?>
                                    <?php if($info->o_status == 9) : ?>
                                        <button class="btn btn-xs btn-success">
                                            <i class="fa fa-check"></i> Đã hủy
                                        </button>
                                    <?php endif;?>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-sm-6">
                    <input type="hidden" id="id_exchange" value="<?=$info->id;?>" />
                    <table class="table">
                        <tr>
                            <td>Khách hàng</td>
                            <td><span style="color:#ea8181;font-weight: bold"><?=$info->fullname;?></span></td>
                        </tr>
                        <tr>
                            <td>Điện thoại</td>
                            <td><span style="color:#ea8181;font-weight: bold"><?=$info->phone;?></span></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><span style="color:#ea8181;font-weight: bold"><?=$info->email;?></></td>
                        </tr>
                        <tr>
                            <td>Địa chỉ</td>
                            <td><span style="color:#ea8181;font-weight: bold"><?=$info->address;?></span></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-sm-12">
                <button onclick="print_exchange()" class="btn btn-sm btn-info"><i class="fa fa-print"></i> In giao dịch</button>
                <div class="dropdown khieunai" style="display: inline-block">
                    <?php
                        $status = array(
                            '1' => array('Chờ duyệt', 'btn-primary'),
                            '2' => array('Đã duyệt', 'btn-success'),
                            '3' => array('Đã hủy', 'btn-danger'),
                        );
                    ?>
                    <?php if($info->status == 1) : ?>
                        <?php foreach($status as $k => $sta) : ?>
                            <?php if($k == $info->status) : ?>
                                <button class="btn <?=$sta[1];?> btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
                                    <i class="fa fa-refresh fa-spin"></i> <?=$sta[0];?> <span class="caret"></span>
                                </button>
                            <?php endif;?>
                                <ul class="dropdown-menu">
                                    <li onclick="update_order_status($(this))" data-id="<?=@$info->id;?>" data-value="2"><span><i class="fa fa-check text-primary"></i> Duyệt giao dịch</span></li>
                                    <li onclick="update_order_status($(this))" data-id="<?=@$info->id;?>" data-value="3"><span ><i class="fa fa-times text-danger"></i> Hủy</span></li>
                                </ul>
                        <?php endforeach;?>
                    <?php endif;?>
                    <?php if($info->status == 2) : ?>
                        <button class="btn btn-success btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
                            <i class="fa fa-check"></i> Đã duyệt
                        </button>
                    <?php endif;?>
                    <?php if($info->status == 3) : ?>
                        <button class="btn btn-danger btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
                            Đã hủy
                        </button>
                    <?php endif;?>
                </div>
            </div>
            <div class="clearfix-5"></div>
            <hr/>
            <div class="clearfix-10"></div>
            <div class="row">
                <div class="col-sm-6">
                    <table class="table">
                        <tr>
                            <td>Số tiền thanh toán</td>
                            <td><span style="color:#16af16;font-weight: bold"><?=number_format($info->price);?> VNĐ</span></td>
                        </tr>
                        <tr>
                            <td>Loại giao dịch</td>
                            <td><?=@$info->type;?></td>
                        </tr>
                        <tr>
                            <td>Ngày tạo</td>
                            <td><?=date('d/m/Y',$info->time);?></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
<style>
    .khieunai ul li{cursor: pointer}
    @media print {
        .col-xs-4{width: 33.33333333%}
        .col-xs-3{width: 25%;}
        .col-xs-9{width: 75%}
    }
</style>

<script type="text/javascript">
    var url = '<?=base_url();?>';

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
                    if(res.check==false){
                        alert(res.mess);
                    }else{
                        alert(res.mess);
                        window.location.reload();
                    }
                }
            });
        }

    }

    function print_exchange(){
        var id = $('#id_exchange').val();
        $.ajax({
            url: url + 'vnadmin/exchange/printExchange',
            type: "POST",
            dataType: "json",
            data: {id:id},
            success : function(res){
                $('body').append(res.view);
                $('#myModal').modal('show');
            }
        });
    }
</script>