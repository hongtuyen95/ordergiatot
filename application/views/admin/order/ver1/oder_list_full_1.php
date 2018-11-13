<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="top_list">
        <div class="list_tk">
            <ul>
                <li><a href="<?=base_url('vnadmin/search/index');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_timkiem.png" alt="">Tìm kiếm</a></li>
                <li><a href="<?=base_url('vnadmin/order/orders');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_donhang.png" alt="">Đơn hàng</a> <span>(<?=@$countAll;?>)</span></li>
                <li><a href="<?=base_url('vnadmin/exchange/index');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giaodich.png" alt="">Giao dịch - Thanh toán</a> <span>(<?=@$this->total_exchanges;?>)</span></li>
            </ul>
        </div>
        <div class="name_page">Đơn hàng</div>
    </div>
    <div class="content_page_donhang">
        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/order/orders')?>">Tất cả <span>(<?=@$countAll;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=0')?>">Chưa duyệt <span>(<?=$status0;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=1')?>">Đã duyệt <span>(<?=$status1;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=2')?>">Đã thanh toán <span>(<?=$status2;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=3')?>">Đã mua hàng <span>(<?=$status3;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=4')?>">Đã tất toán <span>(<?=$status4;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=5')?>">Hàng đã về <span>(<?=$status5;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=6')?>">Đã giao hàng <span>(<?=$status5;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=7')?>">Kết thúc đơn <span>(<?=$status6;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=8')?>">Đã hủy <span>(<?=$status7;?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=9')?>">Hết hàng<span>(<?=$status8;?>)</span></a></li>
            </ul>

            <div class="tab-content">
                <div id="Home" class="tab-pane fade in active">
                    <div class="bo_loc">
                        <form action="" method="get" class="form-mail ">
                        <!--<ul class="list_btn_kind">
                            <li>
                                <button onclick="$('.btn-filter').removeClass('active');$(this).addClass('active');$('#filter_value').val(0)" type="button" class="btn btn-filter <?php /*if($this->input->get('filter') == 0){echo "active";}*/?>">Đơn hàng không mã VĐ</button>
                            </li>
                            <li>
                                <button  onclick="$('.btn-filter').removeClass('active');$(this).addClass('active');$('#filter_value').val(1)"  type="button" class="btn btn-filter <?php /*if($this->input->get('filter') == 1){echo "active";}*/?>">Đơn hàng chờ giao hàng</button>
                            </li>
                            <li>
                                <button  onclick="$('.btn-filter').removeClass('active');$(this).addClass('active');$('#filter_value').val(2)" type="button" class="btn btn-filter <?php /*if($this->input->get('filter') == 2){echo "active";}*/?>">Đơn hàng khiếu nại</button>
                            </li>
                            <li>
                                <button onclick="$('.btn-filter').removeClass('active');$(this).addClass('active');$('#filter_value').val(3)"  type="button" class="btn btn-filter <?php /*if($this->input->get('filter') == 3){echo "active";}*/?>">Đơn hàng về chậm</button>
                            </li>
                        </ul>-->

                        <div class="search_kind">
                                <div class="input-group">
                                    <input type="hidden" name="filter" id="filter_value" value="" />
                                    <input type="text" name="key" class="form-control" id="" placeholder="Mã hóa đơn hoặc tên khách hàng">
                                    <select name="khohang" class="form-control">
                                        <option value="">Tất cả kho</option>
                                        <?php foreach($this->depots as $depot) : ?>
                                            <option <?php if($depot->id == $this->input->get('khohang')){echo "selected";} ?>  value="<?php echo $depot->id;?>"><?php echo $depot->name;?></option>
                                        <?php endforeach;?>
                                    </select>
                                    <div class="input-group-addon btn btn-search-top">
                                        <button  class="">Tìm kiếm</button>
                                    </div>
                                </div>

                        </div>
                        </form>
                    </div>
                    <table class="table table_search">
                        <tr class="active">
                            <th class="text-center" style="width: 3%;">STT</th>
                            <th style="width: 9%;"></th>
                            <th style="width:18%">Mã hóa đơn</th>
                            <th style="width:14% ">Tên khách</th>
                            <th class="text-center" style="width: 12%">Kho hàng</th>
                            <th>Thông tin sản phẩm</th>
                            <th class="text-center" style="width: 13%">Đã thanh toán</th>
                            <th class="text-center" style="width: 10%">Trạng thái</th>
                        </tr>
                        <?php if(count($lists)) : $stt = 0; ?>
                            <?php foreach($lists as $list) : $stt +=1; ?>
                                <tr>
                                    <td class="text-center"><?=@$stt;?></td>
                                    <td class="text-center">
                                        <a href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>">
                                            <img style="width: 65px" src="<?=@$list->item_image;?>" class="w_100" alt="">
                                        </a>
                                    </td>
                                    <td>
                                        <p class="blue_txt"><a href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>" style="color:#1caeda;font-weight: bold"><?=@$list->code;?></a></p>
                                        <p><?=date('H:i d/m/Y',$list->time);?></p>
                                    </td>
                                    <td>
                                        <p><a style="color:#1caeda;font-weight: bold" href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>"><?=@$list->fullname;?></a></p>
                                        <p class="blue_txt">#KH<?=@$list->uid;?></p>
                                    </td>
                                    <td class="text-center">
                                        <?php foreach($this->depots as $depot) : ?>
                                            <?php if($depot->id == $list->ma_kho) : ?>
                                                <span class="kho_cl"><?php echo $depot->name;?></span>
                                            <?php endif;?>
                                        <?php endforeach;?>
                                    </td>
                                    <td>
                                        <p>Tổng số SP: <span class="red_txt"><?=@$list->total_item;?></span></p>
                                        <p>Tổng tiền: <span class="red_txt"><?=number_format($list->total_price);?> VNĐ</span></p>
                                    </td>
                                    <td class="green_txt text-center">
                                        <?=number_format($list->payted);?> VNĐ
                                    </td>
                                    <td class="text-center">
                                        <?php if($list->status == 0) : ?><span class="btn btn-xs btn-default">Chưa duyệt<span><?php endif;?>
                                        <?php if($list->status == 1) : ?><span class="btn btn-xs btn-success">Đã duyệt<span><?php endif;?>
                                        <?php if($list->status == 2) : ?><span class="btn btn-xs btn-success">Đã thanh toán<span><?php endif;?>
                                        <?php if($list->status == 3) : ?><span class="btn btn-xs btn-success">Đã mua<span><?php endif;?>
                                        <?php if($list->status == 4) : ?><span class="btn btn-xs btn-success">Đã tất toán<span><?php endif;?>
                                        <?php if($list->status == 5) : ?><span class="btn btn-xs btn-success">Hàng đã về<span><?php endif;?>
                                        <?php if($list->status == 6) : ?><span class="btn btn-xs btn-success">Đã giao hàng<span><?php endif;?>
                                        <?php if($list->status == 7) : ?><span class="btn btn-xs btn-success">Kết thúc đơn<span><?php endif;?>
                                        <?php if($list->status == 8) : ?><span class="btn btn-xs btn-success">Đã hủy<span><?php endif;?>
                                        <?php if($list->status == 9) : ?><span class="btn btn-xs btn-danger">Hết hàng<span><?php endif;?>
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
</style>
<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');
</script>