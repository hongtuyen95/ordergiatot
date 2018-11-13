<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="top_list">
        <div class="list_tk">
            <ul>
                <li><a href="<?=base_url('vnadmin/order/search');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_timkiem.png" alt="">Tìm kiếm</a></li>
                <li><a href="<?=base_url('vnadmin/order/orders');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_donhang.png" alt="">Đơn hàng</a> <span>(108)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giohang_red.png" alt="">Ship hàng</a> <span>(82)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giohang_black.png" alt="">Giao dịch Ship</a> <span>(21)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giaodich.png" alt="">Giao dịch - Thanh toán</a> <span>(8)</span></li>
            </ul>
        </div>
    </div>
    <div class="clearfix-15"></div>
    <div class="content_page_donhang" style="background-color: #fff">
        <div class="content_mid">
            <div class="panel panel-info">
                <div class="panel-heading" style="margin: 5px 0">
                    <h5 style="margin: 0px"><strong>Đơn hàng : <?=$order->code;?></strong></h5>
                </div>
                <div class="panel-body">
                    <div class="col-sm-6 box-info">
                        <p>Mã hóa đơn : <span style="color: #ff0055;font-weight: bold"><?=$order->code;?></span></p>
                        <p>Khách hàng : <strong><?=$order->fullname;?></strong></p>
                        <p>Địa chỉ khách hàng : <strong><?=$order->address;?></strong></p>
                        <p>Điện thoại khách hàng : <strong><?=$order->phone;?></strong></p>
                        <p>Emai khách hàng : <a href="mailto:<?=$order->email;?>"><strong><?=$order->email;?></strong></a></p>
                        <p>
                            Kho hàng :<strong>
                            <?php foreach($this->depots as $depot) : ?>
                                <?php if($depot->id == $order->ma_kho){echo $depot->name;}?>
                            <?php endforeach;?></strong>
                        </p>
                        <p>Ghi chú : <?=$order->note;?></p>
                        <input type="hidden" id="oid" name="oid" value="<?=$order->id;?>" />
                    </div>
                    <div class="col-sm-6 box-info">
                        <p>Tổng giá trị hóa đơn là : <span style="color:#de7070;font-weight: bold"><?=number_format($order->total_price);?> VNĐ</span></p>
                        <p>Số tiền đã thanh toán : <span style="color: #4fcc26;font-weight: bold"><?=number_format($order->payted)?> VNĐ</span></p>
                        <p>Số tiền còn thiếu : <span style="color:#de7070;font-weight: bold"><?=number_format($order->total_price - $order->payted);?> VNĐ</span></p>
                        <p>Tỷ giá : <?=number_format($this->option->exchange);?> VNĐ/<i class="fa fa-jpy" ></i></p>

                        <p>
                            Trạng thái :
                            <?php if($order->status == 0) : ?>
                                <button class="btn btn-xs btn-danger">Chưa duyệt</button>
                            <?php endif;?>
                            <?php if($order->status == 1) : ?>
                            <span class="btn btn-xs btn-success">Đã duyệt<span>
                                                    <?php endif;?>
                                    <?php if($order->status == 2) : ?>
                                    <span class="btn btn-xs btn-success">Đã thanh toán<span>
                                                    <?php endif;?>
                                            <?php if($order->status == 3) : ?>
                                            <span class="btn btn-xs btn-success">Đã mua<span>
                                                    <?php endif;?>
                                                    <?php if($order->status == 4) : ?>
                                                    <span class="btn btn-xs btn-success">Đã tất toán<span>
                                                    <?php endif;?>
                                                            <?php if($order->status == 5) : ?>
                                                            <span class="btn btn-xs btn-success">Đã giao hàng<span>
                                                    <?php endif;?>
                                                                    <?php if($order->status == 6) : ?>
                                                                    <span class="btn btn-xs btn-success">Kết thúc đơn<span>
                                                    <?php endif;?>
                                                                            <?php if($order->status == 7) : ?>
                                                                            <span class="btn btn-xs btn-success">Hết hàng<span>
                                                    <?php endif;?>
                                                                                    <?php if($order->status == 8) : ?>
                                                                                    <span class="btn btn-xs btn-success">Đã hủy<span>
                                                    <?php endif;?>
                        </p>
                    </div>
                    <div class="clearfix-10"></div>
                    <div>
                        <div class="col-sm-6">
                            <div class="row">
                                <h5 class="col-sm-12"><strong>Nhân viên mua hàng : </strong></h5>
                                <p>
                            <span class="col-sm-8 col-xs-8">
                                 <select id="buyer" class="form-control input-sm">
                                     <?php if(count($employes)) : ?>
                                         <option value="">Lựa chọn nhân viên</option>
                                         <?php foreach($employes as $employ) : ?>
                                            <option <?php if($employ->id == $order->id_buyer) : ?>selected<?php endif;?> value="<?=@$employ->id;?>"><?=@$employ->fullname;?></option>
                                         <?php endforeach;?>
                                     <?php endif;?>
                                 </select>
                            </span>
                                    <button type="button" onclick="updateBuyer()" class="btn btn-sm btn-success">Cập nhật</button>
                                </p>
                            </div>
                            <div class="clearfix-10"></div>
                            <div class="row">
                                <h5 class="col-sm-12">Ghi chú đơn hàng :(Ghi chú nội bộ) </h5>
                                <div class="col-sm-12">
                                    <textarea name="admin_note" id="admin_note" class="form-control"><?=@$order->admin_note;?></textarea>
                                </div>
                                <div class="col-sm-12">
                                    <button onclick="updateAdminNote()" class="btn btn-sm btn-primary">Lưu</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <span class="col-sm-5">
                                    <select id="status" name="status" class="form-control input-sm">
                                        <option <?php if($order->status == 0) : ?>selected<?php endif;?> value="0">Chưa duyệt</option>
                                        <option <?php if($order->status == 1) : ?>selected<?php endif;?> value="1">Đã duyệt</option>
                                        <option <?php if($order->status == 2) : ?>selected<?php endif;?> value="2">Đã thanh toán</option>
                                        <option <?php if($order->status == 3) : ?>selected<?php endif;?> value="3">Đã mua</option>
                                        <option <?php if($order->status == 4) : ?>selected<?php endif;?> value="4">Đã tất toán</option>
                                        <option <?php if($order->status == 5) : ?>selected<?php endif;?> value="5">Đã giao hàng</option>
                                        <option <?php if($order->status == 6) : ?>selected<?php endif;?> value="6">Kết thúc đơn</option>
                                        <option <?php if($order->status == 7) : ?>selected<?php endif;?> value="7">Hết hàng</option>
                                        <option <?php if($order->status == 8) : ?>selected<?php endif;?> value="8">Đã hủy</option>
                                    </select>
                                </span>
                                <button onclick="updateS()"  class="btn btn-sm btn-success">Cập nhật</button>
                            </div>
                            <div class="form-group">
                                <p class="col-sm-12">Tỷ giá cân nặng (vnđ/kg)</p>
                                <span class="col-sm-5">
                                    <input type="text" name="weight_rate" value="<?=$order->weight_rate;?>" id="weight_rate" class="form-control input-sm">
                                </span>
                                <button type="button" onclick="updateWeightRate()" class="btn btn-sm btn-success">Cập nhật</button>
                            </div>
                            <div class="form-group">
                                <p class="col-sm-12">Phí mua hàng (%)</p>
                                <span class="col-sm-5">
                                    <input  type="text" name="fee" id="fee" value="<?=@$order->fee;?>" class="form-control input-sm">
                                </span>
                                <button type="button" onclick="updatePurchaseFee()" class="btn btn-sm btn-success">Cập nhật</button>
                            </div>
                            <div class="form-group">
                                <p class="col-sm-12">Tỷ giá (Tệ = Vnđ)</p>
                                <span class="col-sm-5">
                                    <input type="text" name="rate" id="rate" value="<?=@$order->rate;?>" class="form-control input-sm">
                                </span>
                                <button type="button" onclick="updateRate()" class="btn btn-sm btn-success">Cập nhật</button>
                            </div>
                        </div>

                    </div>
                    <div class="clearfix-10"></div>
                    <a href="<?=base_url('thanh-toan?id='.base64_encode($order->id))?>" class="btn btn-success btn-sm">Thanh toán</a>
                    <a href="<?=base_url('huy-don-hang?id='.base64_encode($order->id))?>" class="hidden btn btn-danger btn-sm">Hủy</a>

                    <div class="clearfix-10"></div>
                    <table class="table table-bordered table-cart">
                        <tr class="active">
                            <th width="5%">STT</th>
                            <th width="10%">Hình ảnh</th>
                            <th>Thông tin sản phẩm</th>
                            <th class="text-center" width="10%">Số lượng</th>
                            <th class="text-center" width="12%">Giá + Phí mua hàng</th>
                            <th class="text-center" width="12%">Thành tiền</th>
                            <th width="25%">Mã đơn vận</th>
                        </tr>
                        <?php if(count($stores)) : ?>
                            <?php foreach($stores as $shop) : ?>
                                <?php $sp = 0;$tm = 0;$th=0; ?>
                                <tr class="info">
                                    <td colspan="8">
                                        <strong>Người bán :</strong> <strong style="color:#2eb316"><?=$shop->seller_name;?></strong>
                                    </td>
                                </tr>
                                <?php $carts = $shop->items; if(count($carts)) : $colspan = count($carts); $stt = 0; ?>
                                    <?php foreach($carts as $cat) : $stt +=1; ?>
                                        <?php $sp +=1;$tm += $cat->quantity;$th += ($cat->price * $cat->quantity) + ($cat->price * $cat->quantity * $fee);?>
                                        <tr>
                                            <td width="5%" class="text-center"><?=$stt;?></td>
                                            <td width="6%" class="text-center">
                                                <img style="max-width: 65px" src="<?=$cat->item_image;?>" />
                                            </td>
                                            <td>
                                                <p style="color:#1999d6;font-weight: bold"><?=$cat->item_name;?></p>
                                                <p><?=$cat->item_size;?></p>
                                                <p><a target="_blank" style="color: #f36907" href="<?=$cat->item_link;?>"><i class="fa fa-link"></i> Link sản phẩm</a></p>
                                                <p>
                                                    <textarea id="<?=$cat->id;?>" data-id="<?=$cat->id;?>" onchange="updateNoteItem($(this))" class="form-control" placeholder="Ghi chú"><?=$cat->admin_note;?></textarea>
                                                </p>
                                            </td>
                                            <td class="text-center" style="color:#0fb0c2;font-weight: bold" >
                                                <input type="number" min="0" data-id="<?=$cat->id;?>" onchange="updateQty($(this))" id="quantity_<?=$cat->id;?>" value="<?=$cat->quantity;?>" class="form-control input-sm" />
                                            </td>
                                            <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                                                <p>
                                                    <input data-id="<?=$cat->id;?>"  type="text"  onchange="updateItemPrice($(this))" value="<?=number_format($cat->price);?>" class="form-control input-sm" />
                                                </p>
                                                Phí mua hàng: <?=number_format($cat->price * $cat->quantity * $fee,2);?> NDT
                                            </td>
                                            <td style="font-weight: bold;color:#e85959" class="text-center" width="12%">
                                                <?=number_format($cat->price * $cat->quantity,2);?> NDT
                                                <p>
                                                    <a class="btn btn-xs btn-warning" href="<?= base_url('vnadmin/khieunai/add?id='.$cat->id)?>"><i class="fa fa-exclamation-triangle"></i> Khiếu nại shop</a>
                                                </p>
                                            </td>
                                            <?php if($sp == 1) : ?>
                                                <?php $traking = $shop->tracking; $messages = array(); if($traking){$messages = json_decode($traking->message);} ?>
                                                <td width="25%" rowspan="<?=@$colspan;?>">
                                                    <div class="form-group">
                                                        <label>Phí nội địa :</label>
                                                        <span><input type="text" value="<?=number_format(@$traking->phi_noi_dia);?>" class="form-control input-sm input-c" id="phi_noi_dia_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateDomestic($(this))" class="btn btn-success btn-c btn-sm"><i class="fa fa-floppy-o"></i></button></span>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <p class="form-group"><strong>Cân nặng : <?=@$traking->weight;?> Kg</strong></p>
                                                    <p><strong>Thêm cân nặng : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-c" value="" id="weight_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateWeight($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <p><strong>Phí cân năng : </strong><span style="color:#ec85cd;font-weight: bold"><?=number_format($traking->weight * $order->weight_rate);?> VNĐ</span></p>
                                                    <p><strong>Phí ngoài (<i class="fa fa-jpy"></i>): </strong> <span><input id="phi_ngoai_cn_<?=@$traking->id;?>" value="<?=@$traking->phi_ngoai_cn;?>" class="form-control input-sm input-x" /> <button type="button" data-id="<?=@$traking->id;?>" onclick="updatePhingoai($(this),'cn');"  class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <p><strong>Phí ngoài (vnđ): </strong><span><input value="<?=@$traking->phi_ngoai_vn;?>" id="phi_ngoai_vn_<?=@$traking->id;?>" class="form-control input-sm input-x" /> <button type="button" data-id="<?=@$traking->id;?>" onclick="updatePhingoai($(this),'vn');" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <?php if(!empty($tracking->shop_sku)) : ?>
                                                        <p><strong>Mã shop :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã Shop" data-content="<p><span class='input-group'><input class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã shop <i  class="fa fa-pencil-square-o"></i></a></p>
                                                    <?php else : ?>
                                                        <p><strong>Mã shop :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã Shop" data-content="<p><span class='input-group'><input value='<?=@$traking->shop_sku;?>' class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"><?=@$traking->shop_sku;?></a></p>
                                                    <?php endif;?>
                                                    <?php if(!empty($tracking->tracking_id)) : ?>
                                                        <p><strong>Mã đơn vận :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã đơn vận" data-content="<p><span class='input-group'><input class='input-sm form-control' id='tracking_id_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateTracking($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã đơn vận <i  class="fa fa-pencil-square-o"></i> </a></p>
                                                    <?php else : ?>
                                                        <p><strong>Mã đơn vận :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã đơn vận" data-content="<p><span class='input-group'><input class='input-sm form-control' value='<?=$traking->tracking_id;?>' id='tracking_id_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateTracking($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> <?=$traking->tracking_id;?>  </a></p>
                                                    <?php endif;?>
                                                    <p><strong>Trạng thái : <span style="color:#ec85cd;font-weight: bold">Khởi tạo</span></strong></p>
                                                    <label>Lời nhắn</label>
                                                    <p style="margin-bottom: 3px">
                                                        <textarea id="<?=$traking->id;?>" name="message[]" rows="2" class="form-control"></textarea>
                                                    </p>
                                                    <p>
                                                        <button type="button" data-tracking="<?=$traking->id;?>" data-orderid="<?=$order->id;?>" data-sellerid="<?=$shop->seller_id;?>"  onclick="sendMessage($(this))" class="btn btn-xs btn-info"><i class="fa fa-check"></i> Lưu</button>
                                                    </p>
                                                    <div class="mess-content" id="mess_<?=$traking->id;?>">
                                                        <?php if($messages) : ?>
                                                            <?php foreach($messages as $ms) : ?>
                                                                <p><strong><i style="cursor: pointer" class="fa fa-clock-o" title="<?=date('d/m/Y H:i',$ms->time);?>"></i> <?=@$ms->user;?> :</strong> <?=$ms->content;?></p>
                                                            <?php endforeach;?>
                                                        <?php endif;?>
                                                    </div>
                                                </td>
                                            <?php endif;?>
                                        </tr>
                                    <?php endforeach;?>
                                <?php endif;?>

                                <tr style="background-color: #f1c5ddb3;color:#827575">
                                    <td colspan="8">
                                        <strong>Tổng số : <span style="color:#e85959;"><?=$sp;?></span> Sản phẩm (Thực mua: <span style="color:#13b727"><?=$tm;?></span>) - Số tiền : <span style="color: #e85959"><?=number_format($th,2);?> NDT</span> (Tiền hàng thực mua: <span style="color:#13b727"><?=number_format($th * $this->option->exchange);?> VNĐ</span>)</strong>
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
    p{margin-bottom: 5px !important;}
    .box-info p{border-bottom: 1px solid #f7f7f7;padding:2px 0}
    .input-c{max-width: 85px;height: 25px;display: inherit}
    .input-x{max-width: 120px;height: 25px;display: inherit}
    .btn-c{height: 25px;line-height: 15px}
    textarea{font-size: 12px !important;}
</style>
<script type="text/javascript" src="<?=base_url()?>assets/js_admin/order.js"></script>
<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');




    /*$('body').on('click', function(e) {
        $('.popover').each( function() {
            if( $(e.target).get(0) !== $(this).prev().get(0) ) {
                $(this).popover('hide');
            }
        });
    });*/
    /*$('[data-toggle="popover"]').popover({
        html: 'true',
    });*/

    $('[data-toggle="popover"]').click(function (e) {
        e.preventDefault();
        $('[data-toggle="popover"]').not(this).popover('hide');
        $(this).popover({
            html:'true',
            toggle: 'true'
        });
    });

    function closePopover(){
        $('[data-toggle="popover"]').popover('hide');
    }

    /*$('body').click(function(){
        $('[data-toggle="popover"]').popover('hide');
    });*/
</script>