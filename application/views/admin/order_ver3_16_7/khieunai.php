<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
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
</div>
<div class="col_right_body">
    <div class="name_page">Danh sách khiếu nại</div>
    <div class="clearfix"></div>

    <div class="content_page_donhang">

        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai')?>">Tất cả <span>(36572)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=1')?>">Đang khiếu nại <span>(107)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=2')?>">Xin trả tiền <span>(184)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=3')?>">Đổi trả hàng <span>(39)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=4')?>">Duyệt khiến nại <span>(920)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=5')?>">Quản lý duyệt <span>(920)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=6')?>">Khiến nại thành  <span>(712)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=7')?>">Khiếu nại thất bại <span>(125436)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=8')?>">Đã hủy <span>(7113)</span></a></li>
            </ul>

            <div class="tab-content">
                <div id="Home" class="tab-pane fade in active">
                    <table class="table table-bordered table-cart">
                        <tr class="active">
                            <th class="text-center" width="5%">STT</th>
                            <th width="15%">Ngày tạo đơn hàng</th>
                            <th width="7%">Hình ảnh</th>
                            <th>Thông tin sản phẩm</th>
                            <th class="text-center" width="10%">Giá / Số lượng</th>
                            <th class="text-center" width="20%">Ghi chú</th>
                            <th class="text-center" width="12%">Trạng thái</th>
                            <th width="10%">Chỉnh sửa</th>
                        </tr>
                        <?php  if(count($carts)) : $stt = 0; ?>
                            <?php foreach($carts as $cat) : $stt +=1; ?>
                                <tr>
                                    <td width="5%" class="text-center"><?=$stt;?></td>
                                    <td width="15%">
                                        <a style="color:#00BCD4;font-weight: bold"><?= $cat->order->code?></a>
                                        <br>
                                        <?= date('H:i d/m/Y',$cat->order->time)?>
                                        <br>
                                        Mã shop : <?= $cat->tracking->shop_id?>
                                        <br>
                                        Mã VĐ: <?= $cat->tracking->tracking_id?>
                                        <br>
                                        Người tạo: <?= @$cat->buyer->fullname?>
                                    </td>
                                    <td width="6%" class="text-center">
                                        <img style="max-width: 45px" src="<?=$cat->item_image;?>" />
                                    </td>
                                    <td>
                                        <p style="color:#1999d6;font-weight: bold"><?=$cat->item_name;?></p>
                                        <p><?=$cat->item_size;?></p>
                                        <p><a target="_blank" style="color: #f36907" href="<?=$cat->item_link;?>"><i class="fa fa-link"></i> Link sản phẩm</a></p>
                                    </td>
                                    <td>
                                        <p>Giá : <span style="color:#e64c11;font-weight: bold"><?= $cat->price?> NDT</span></p>
                                        <p>Số lượng : <?=@$cat->quantity;?></p>
                                        <p>Thực mua : <span style="color:#27b30d;font-weight: bold"><?=@$cat->qty_buy;?></span></p>
                                    </td>
                                    <td>
                                        <p>Lời nhắn</p>
                                        <p>
                                            <textarea class="form-control" rows="2"></textarea>
                                        </p>
                                        <p><input type="file" name=""></p>
                                        <p><button class="btn btn-xs btn-success"><i class="fa fa-check"></i> Lưu</button></p>
                                    </td>
                                    <td class="text-center">
                                        <span class="kho_cl">Xin trả hàng</span>
                                    </td>
                                    <td>
                                        <div class="dropdown khieunai">
                                            <button class="btn btn-primary btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
                                                Đang khiếu nại
                                                <span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Xin trả tiền</a></li>
                                                <li><a href="#">Đổi trả hàng</a></li>
                                                <li><a href="#">Duyệt khiếu nại</a></li>
                                                <li><a href="#">Quản lý duyệt</a></li>
                                                <li><a href="#">Khiếu nại thành công</a></li>
                                                <li><a href="#">Khiếu nại thất bại</a></li>
                                                <li><a href="#">Đã hủy</a></li>
                                            </ul>
                                        </div>
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
    textarea{font-size: 11px !important;}
    .khieunai{font-size: 11px}
    .khieunai ul li{font-size: 12px}
    .khieunai ul button{font-size: 11px}
    .khieunai ul{
        left:-85px !important;
    }
</style>
<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');
</script>