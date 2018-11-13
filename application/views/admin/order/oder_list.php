<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="name_page">Đơn hàng</div>
    <div class="content_page_donhang">
        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/order/orders')?>">Tất cả <span>(<?=@$countAll;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 1) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=1')?>">Khởi tạo <span>(<?=$status1;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 2) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=2')?>">Đã duyệt <span>(<?=$status2;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 3) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=3')?>">Đã đặt cọc <span>(<?=$status3;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 4) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=4')?>">Đã đặt hàng <span>(<?=$status4;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 5) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=5')?>">Đã quyết toán <span>(<?=$status5;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 6) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=6')?>">Hoàn thành <span>(<?=$status6;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 7) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=7')?>">Đã hủy <span>(<?=$status7;?>)</span></a></li>
                <li <?php if($this->input->get('status') == 8) : ?>active<?php endif;?>><a href="<?=base_url('vnadmin/order/orders?status=8')?>">Hết hàng <span>(<?=$status8;?>)</span></a></li>
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
                    <div class="table-responsive">
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
                            <th width="8%"></th>
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
                                        <p><a style="color:#1caeda;font-weight: bold" href="<?=base_url('vnadmin/users/editUser?id='.base64_encode($list->user_id));?>"><?=@$list->fullname;?></a></p>
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
                                        <p>Tổng tiền: <span class="red_txt"><?=number_format($list->total_bill);?> VNĐ</span></p>
                                    </td>
                                    <td class="green_txt text-center">
                                        <?=number_format($list->payted);?> VNĐ
                                    </td>
                                    <td class="text-center">
                                        <p>
                                        <?php if($list->status == 1) : ?><span class="btn btn-xs btn-default"><i class="fa fa-info-circle"></i> Khởi tạo</span><?php endif;?>
                                        <?php if($list->status == 2) : ?><span class="btn btn-xs btn-primary"><i class="fa fa-tags" ></i> Đã duyệt</span><?php endif;?>
                                        <?php if($list->status == 3) : ?><span class="btn btn-xs" style="background-color: #e2cf54;border-color:#e2cf54;color:#fff"><i class="fa fa-money"></i> Đã đặt cọc</span><?php endif;?>
                                        <?php if($list->status == 4) : ?><span class="btn btn-xs" style="background-color: #093ddc;border-color:#093ddc;color:#fff"><i class="fa fa-money"></i> Đã đặt hàng</span><?php endif;?>
                                        <?php if($list->status == 5) : ?><span class="btn btn-xs btn-success"><i class="fa fa-shopping-cart" ></i> Đã quyết toán</span><?php endif;?>
                                        <?php if($list->status == 6) : ?><span class="btn btn-xs" style="background-color: #5bda81;border-color:#5bda81;color:#fff">Hoàn thành</span><?php endif;?>
                                        <?php if($list->status == 7) : ?><span class="btn btn-xs" style="background-color: #b950c7;border-color:#b950c7;color:#fff">Đã hủy</span><?php endif;?>
                                        <?php if($list->status == 8) : ?><span class="btn btn-xs" style="background-color: #dd4b39;border-color:#dd4b39;color:#fff"><i class="fa fa-plane"></i>Hết hàng</span><?php endif;?>
                                        </p>
                                    </td>
                                    <td>
                                        <a title="Cập nhật" href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>" class="btn btn-xs btn-primary"><i class="fa fa-pencil-square-o"></i></a>
                                        <a title="Xóa" onclick="confirm('Bạn có chắc muốn xóa đơn hàng này không ?')" href="<?=base_url('vnadmin/order/delete_once_orders/'.$list->id);?>" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                            <?php endforeach;?>
                        <?php endif;?>
                    </table>

                        <div class="text-right">
                            <?php echo $this->pagination->create_links();?>
                        </div>
                    </div>
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