<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<script src="<?= base_url('assets/plugin/autonumber/autoNumeric.js') ?>"></script>
<script src="<?= base_url('assets/plugin/autonumber/jquery.number.js') ?>"></script>
<?php
    $tong_tien_hang = 0;
    $tong_tien_cong = 0;
    $tong_phi_noi_dia = 0;
    $tong_phi_ngoai = 0;
    $tongphingoai_vn = 0;
    $tong_tien_ca_don= 0;
    $tong_phi_can_nang=0;
    $tong_tien_thuc_mua = 0;
?>
<div class="col_right_body" ng-app="ordergiatot">
    <div class="clearfix-15"></div>
    <div class="content_page_donhang" ng-controller="ctrOrder" style="background-color: #fff">
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
                        <p>Tổng giá trị hóa đơn là : <span style="color:#de7070;font-weight: bold"><?=number_format($order->total_bill);?> VNĐ</span> <a class="btn btn-primary btn-xs" data-placement="bottom" data-toggle="popover" title="Sửa tổng giá trị hóa đơn" data-content="<p><span class='input-group'><input type='text' data-v-max='9999999999999' data-v-min='0'  id='ordertotalprice' class='input-sm auto form-control'><span class='input-group-btn'><button type='button' data-id='changprice' onclick='changTotalPrice(<?=@$order->id;?>)' class='btn btn-sm btn-primary'><i class='fa fa-floppy-o'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>">  <i  class="fa fa-pencil-square-o"></i> </a></p>
                        <p>Số tiền đã thanh toán : <span style="color: #4fcc26;font-weight: bold"><?=number_format($order->payted)?> VNĐ</span> <a class="btn btn-primary btn-xs" data-placement="bottom" data-toggle="popover" title="Sửa" data-content="<p><span class='input-group'><input type='text' data-v-max='9999999999999' data-v-min='0'  id='orderstct' class='input-sm form-control auto'><span class='input-group-btn'><button type='button' data-id='changprice' onclick='changPrice(<?=@$order->id;?>)' class='btn btn-sm btn-primary'><i class='fa fa-floppy-o'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>">  <i  class="fa fa-pencil-square-o"></i> </a></p>
                        <p>Số tiền còn thiếu : <span style="color:#de7070;font-weight: bold"><?=number_format($order->total_bill - $order->payted);?> VNĐ</span> </p>
                        <p>Tỷ giá : <?=number_format($this->option->exchange);?> VNĐ/<i class="fa fa-jpy" ></i></p>

                        <p>
                            Trạng thái :
                            <?php if($order->status == 1) : ?><button class="btn btn-xs btn-danger">Khởi tạo</button><?php endif;?>
                            <?php if($order->status == 2) : ?><span class="btn btn-xs btn-success">Đã duyệt<span><?php endif;?>
                            <?php if($order->status == 3) : ?><span class="btn btn-xs btn-success">Đã đặt cọc<span><?php endif;?>
                            <?php if($order->status == 4) : ?><span class="btn btn-xs btn-success">Đã đặt hàng<span><?php endif;?>
                            <?php if($order->status == 5) : ?><span class="btn btn-xs btn-success">Đã quyết toán<span><?php endif;?>
                            <?php if($order->status == 6) : ?><span class="btn btn-xs btn-success">Hoàn thành<span><?php endif;?>
                            <?php if($order->status == 7) : ?><span class="btn btn-xs btn-success">Đã hủy<span><?php endif;?>
                            <?php if($order->status == 8) : ?><span class="btn btn-xs btn-success">Hết hàng<span><?php endif;?>
                        </p>
                    </div>
                    <div class="clearfix-10"></div>
                    <?php if($khohang != 1) : ?>
                    <div>
                        <div class="col-sm-6">
                            <?php if($admin->lever == 2) : ?>
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
                            <?php endif;?>
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
                            <?php if($admin->lever == 1 ) : ?>
                                <?php if($order->status == 1) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Khởi tạo</button>
                                    </div>
                                <?php endif ;?>
                                <?php if($order->status == 2) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Đã duyệt</button>
                                    </div>
                                <?php endif ;?>
                                <?php if($order->status == 3) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Đã đặt cọc</button>
                                    </div>
                                <?php endif ;?>
                                <?php if($order->status == 4) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Đã đặt hàng</button>
                                    </div>
                                <?php endif;?>
                                <?php if($order->status == 5) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Đã quyết toán</button>
                                    </div>
                                <?php endif;?>
                                <?php if($order->status == 6) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Hoàn thành</button>
                                    </div>
                                <?php endif;?>
                                <?php if($order->status == 7) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Đã hủy</button>
                                    </div>
                                <?php endif;?>
                                <?php if($order->status == 8) : ?>
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-sm btn-success">Hết hàng</button>
                                    </div>
                                <?php endif;?>
                            <?php endif;?>
                            <?php if($admin->group == 1) : ?>
                                <div class="form-group">
                                    <span class="col-sm-5">
                                        <select id="status" name="status" class="form-control input-sm">
                                            <option <?php if($order->status == 1) : ?>selected<?php endif;?> value="1">Khởi tạo</option>
                                            <option <?php if($order->status == 2) : ?>selected<?php endif;?> value="2">Đã duyệt</option>
                                            <option <?php if($order->status == 3) : ?>selected<?php endif;?> value="3">Đã đặt cọc</option>
                                            <option <?php if($order->status == 4) : ?>selected<?php endif;?> value="4">Đã đặt hàng</option>
                                            <option <?php if($order->status == 5) : ?>selected<?php endif;?> value="5">Đã quyết toán</option>
                                            <option <?php if($order->status == 6) : ?>selected<?php endif;?> value="6">Hoàn thành</option>
                                            <option <?php if($order->status == 7) : ?>selected<?php endif;?> value="7">Đã hủy</option>
                                            <option <?php if($order->status == 8) : ?>selected<?php endif;?> value="8">Hết hàng</option>
                                        </select>
                                    </span>
                                    <button onclick="updateS()"  class="btn btn-sm btn-success">Cập nhật</button>
                                </div>
                                <!--<div class="form-group">
                                    <p class="col-sm-12">Tỷ giá cân nặng (vnđ/kg)</p>
                                    <span class="col-sm-5">
                                        <input type="text" name="weight_rate" value="<?/*=$order->weight_rate;*/?>" id="weight_rate" class="form-control input-sm">
                                    </span>
                                    <button type="button" onclick="updateWeightRate()" class="btn btn-sm btn-success">Cập nhật</button>
                                </div>-->
                                <!-- <div class="form-group">
                                    <p class="col-sm-12">Phí mua hàng (%)</p>
                                    <span class="col-sm-5">
                                        <input  type="text" name="fee" id="fee" value="<?=@$order->fee;?>" class="form-control input-sm">
                                    </span>
                                    <button type="button" onclick="updatePurchaseFee()" class="btn btn-sm btn-success">Cập nhật</button>
                                </div> -->
                                <div class="form-group">
                                    <p class="col-sm-12">Tỷ giá (Tệ = Vnđ)</p>
                                    <span class="col-sm-5">
                                        <input type="text" name="rate" id="rate" value="<?=@$order->rate;?>" class="form-control input-sm">
                                    </span>
                                    <button type="button" onclick="updateRate()" class="btn btn-sm btn-success">Cập nhật</button>
                                </div>

                            <?php endif;?>
                        </div>

                    </div>
                    <div class="clearfix-10"></div>
                    <?php endif;?>
                    <a href="<?=base_url('vnadmin/exchange/pay?id='.base64_encode($order->id))?>" class="btn btn-success btn-sm">Thanh toán</a>
                    <a href="<?=base_url('huy-don-hang?id='.base64_encode($order->id))?>" class="hidden btn btn-danger btn-sm">Hủy</a>

                    <div class="clearfix-10"></div>
                    <div class="table-responsive">
                    <table class="table table-bordered table-cart">
                        <tr class="active">
                            <th width="5%">STT</th>
                            <th width="10%">Hình ảnh</th>
                            <th>Thông tin sản phẩm</th>
                            <th class="text-center" width="10%">Số lượng</th>
                            <th class="text-center" width="12%">Giá + Phí mua hàng</th>
                            <th class="text-center" width="12%">Thành tiền</th>
                            <th width="25%">Mã vận đơn</th>
                        </tr>
                        <?php if(count($stores)) : ?>
                            <?php
                                $stt = 0;
                                $tong_sp = 0;

                                $tong_tien_thuc_mua = 0;$tong_tien_mac_ca = 0;
                                $tien_thuc_mua = 0;
                                $phingoai_vn = 0;
                                $phicannang = 0;
                                $phi_kiem_hang = 0;
                                $tong_phi_kiem_hang = 0;

                            ?>
                            <?php foreach($stores as $key => $shop) : ?>
                                <?php $sp = 0;$tm = 0;$th=0; $phi_dich_vu = 0;$chitiet_phikiemhang = 0;$phi_kiem_hang=0;?>
                                <tr class="info">
                                    <td colspan="6">
                                        <strong>Người bán :</strong> <strong style="color:#2eb316"><?=$shop->seller_name;?> </strong>
                                    </td>
                                    <?php foreach ($shops as $key => $s): ?>
                                                            <?php if ($s == $shop->seller_name): break; endif ?>
                                                        <?php endforeach ?>
                                    <td colspan="2"> <input  type="checkbox" <?php if ($check_phi_kiem_hang[$key] !=''): ?> checked <?php endif ?> name="phi_kiem_hang[]" data-shop="<?=$shop->seller_name;?>" data-order="<?= $order->id?>"> <strong> <span >Phí kiểm hàng</span></strong>
                                    </td>

                                </tr>
                                <?php  $carts = $shop->items; if(count($carts)) : foreach($carts as $cat) : ?>
                                    <?php $sp +=$cat->qty_buy; $chitiet_phikiemhang = $cat->phi_kiem_hang*$sp;   ?>
                                <?php endforeach; $tong_phi_kiem_hang += $chitiet_phikiemhang;endif; ?>
                                <?php $carts = $shop->items; if(count($carts)) : $colspan = count($carts);  ?>
                                    <?php $dem=0; foreach($carts as $cat) : $stt +=1;$dem +=1;  ?>
                                        <?php
                                            $sp +=$cat->quantity;$tm += $cat->qty_buy;
                                            $th += $cat->price * $cat->qty_buy;
                                            $phi_dich_vu += ($cat->price * $cat->qty_buy * ($cat->fee/100));
                                            $tong_sp += $cat->qty_buy;
                                            $tong_tien_hang += $cat->price * $cat->qty_buy;
                                            $tong_tien_cong += $cat->price * $cat->qty_buy * ($cat->fee/100);


                                        ?>
                                        <tr>
                                            <td width="5%" class="text-center"><?=$stt;?></td>
                                            <td width="6%" class="text-center">
                                                <a target="_blank" href="<?=$cat->item_link;?>"><img style="max-width: 65px" src="<?=$cat->item_image;?>" /></a>
                                            </td>
                                            <td>
                                                <p style="color:#1999d6;font-weight: bold"><a style="color: #03A9F4" target="_blank" href="<?=$cat->item_link;?>"><?=$cat->item_name;?></a></p>
                                                <p><?=$cat->item_size;?></p>
                                                <p><a target="_blank" style="color: #f36907" href="<?=$cat->item_link;?>"><i class="fa fa-link"></i> Link sản phẩm</a></p>
                                                <div style="max-width: 363px;overflow-x: auto"><strong>Khách hàng : </strong> <?=@$cat->note;?></div>
                                                <div id="comment_<?=$cat->id;?>">
                                                    <?php $comments = array(); $comments = json_decode($cat->comment);?>
                                                    <?php if(count($comments)) : ?>
                                                        <?php foreach($comments as $comment) : ?>
                                                            <p <?php if($comment->user == 'khách hàng') : ?>style="color:#d89b13" <?php endif;?>><strong><?=$comment->user;?> :  <?=$comment->content;?></strong></p>
                                                        <?php endforeach;?>
                                                    <?php endif;?>
                                                </div>
                                                <p>
                                                    <textarea id="<?=$cat->id;?>" data-id="<?=$cat->id;?>"  class="form-control" placeholder="Ghi chú"></textarea>
                                                    <button data-item="<?=$cat->id;?>" onclick="save_comment($(this))" type="button" class="btn btn-xs btn-primary">Lưu</button>
                                                </p>
                                            </td>
                                            <td class="text-center" style="color:#0fb0c2;font-weight: bold" >
                                                <?php if($khohang == 1) : ?>
                                                    <?=$cat->qty_buy;?>
                                                <?php else : ?>
                                                    <input type="number" min="0" data-id="<?=$cat->id;?>" onchange="updateQty($(this))" id="quantity_<?=$cat->id;?>" value="<?=$cat->qty_buy;?>" class="form-control input-sm" />
                                                <?php endif;?>
                                            </td>
                                            <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                                                <p>
                                                    <?php if($khohang == 1) : ?>
                                                        <?=number_format($cat->price,2);?>
                                                    <?php else : ?>
                                                    <input data-id="<?=$cat->id;?>"  type="text"  onchange="updateItemPrice($(this))" value="<?=number_format($cat->price,2);?>" class="form-control input-sm" />
                                                    <?php endif ;?>
                                                </p>
                                                Phí mua hàng: <?=number_format($cat->price * $cat->qty_buy * ($cat->fee/100),2);?> NDT
                                            </td>
                                            <td style="font-weight: bold;color:#e85959" class="text-center" width="12%">
                                                <?=number_format($cat->price * $cat->qty_buy,2);?> NDT
                                                <?php if($khohang != 1) : ?>
                                                <p>
                                                    
                                                    <?php switch ($cat->khieunai) {
                                                        case 0:
                                                            echo '<a class="btn btn-xs btn-warning" href="'. base_url('vnadmin/khieunai/add?id='.$cat->id).'"><i class="fa fa-exclamation-triangle"></i> Khiếu nại shop</a>';
                                                            break;
                                                        case 1:
                                                            echo '<span class="kho_cl">Đang khiếu nại</span>';
                                                            break;
                                                        case 2:
                                                            echo '<span class="kho_cl">Xin trả tiền</span>';
                                                            break;
                                                        case 3:
                                                            echo '<span class="kho_cl">Đổi trả hàng</span>';
                                                            break;
                                                        case 4:
                                                            echo '<span class="kho_cl">Duyệt khiếu nại</span>';
                                                            break;
                                                        case 5:
                                                            echo '<span class="kho_cl">Quản lý duyệt</span>';
                                                            break;
                                                        case 6:
                                                            echo '<span class="kho_cl">Khiếu nại thành công</span>';
                                                            break;
                                                        case 7:
                                                            echo '<span class="kho_cl">Khiếu nại thất bại</span>';
                                                            break;
                                                        case 8:
                                                            echo '<span class="kho_cl">Đã huỷ </span>';
                                                            break;
                                                    } ?>
                                                </p>
                                                <?php endif;?>
                                            </td>
                                            <?php if($dem == 1) : ?>
                                                <?php $traking = $shop->tracking; $messages = array(); if($traking){$messages = json_decode($traking->message);} ?>
                                                <?php
                                                    $tong_phi_noi_dia += $traking->phi_noi_dia;
                                                    $tong_tien_thuc_mua += $traking->thanh_toan_thuc;
                                                    $tong_phi_ngoai += $traking->phi_ngoai_cn;
                                                    $tong_phi_can_nang += $traking->weight * $traking->weight_rate;
                                                    $phicannang = $traking->weight * $order->weight_rate;
                                                    $tien_thuc_mua = $traking->thanh_toan_thuc;
                                                    $phingoai_vn = $traking->phi_ngoai_vn;
                                                    $tongphingoai_vn += $traking->phi_ngoai_vn;
                                                ?>
                                                <?php if($khohang == 1) : ?>
                                                    <td>
                                                        <p class="form-group"><strong>Cân nặng : <?=@$traking->weight;?> Kg</strong></p>

                                                        <?php /*if($traking->weight == null || $admin->lever == 2 ) : */?><!--
                                                            <p><strong>Thêm cân nặng : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-c" value="" id="weight_<?/*=@$traking->id;*/?>" /><button type="button" data-id="<?/*=@$traking->id;*/?>" onclick="updateWeight($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                        --><?php /*endif ;*/?>

                                                        <?php if ($check_phi_kiem_hang[$key] !=''): ?>
                                                            <p><strong>Chi phí kiểm hàng : </strong><span style="color:#ec85cd;font-weight: bold"><?=number_format($chitiet_phikiemhang);?> VNĐ</span></p>
                                                        
                                                    <?php endif; ?>
                                                     
                                                            <p><strong>Phí dịch vụ : </strong><span style="color:#ec85cd;font-weight: bold"><?=$cat->fee;?> %</span></p>
                                                        <p><strong>Thêm cân nặng : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-c" value="" id="weight_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateWeight($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                        <p><strong>Phí cân nặng : </strong><span style="color:#ec85cd;font-weight: bold"><?=number_format($traking->weight * $order->weight_rate);?> VNĐ</span></p>
                                                        <?php if(empty($traking->shop_sku)) : ?>
                                                            <p><strong>Mã đơn hàng :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã đơn hàng" data-content="<p><span class='input-group'><input class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã shop <i  class="fa fa-pencil-square-o"></i></a></p>
                                                        <?php else : ?>
                                                            <p><strong>Mã đơn hàng  :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã đơn hàng" data-content="<p><span class='input-group'><input value='<?=@$traking->shop_sku;?>' class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"><?=@$traking->shop_sku;?></a></p>
                                                        <?php endif;?>
                                                        <?php if(empty($traking->tracking_id)) : ?>
                                                            <p><strong>Mã vận đơn :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã đơn vận" data-content="<p><span class='input-group'><input class='input-sm form-control' id='tracking_id_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateTracking($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã vận đơn <i  class="fa fa-pencil-square-o"></i> </a></p>
                                                        <?php else : ?>
                                                            <p><strong>Mã vận đơn :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã đơn vận" data-content="<p><span class='input-group'><input class='input-sm form-control' value='<?=$traking->tracking_id;?>' id='tracking_id_<?=@$traking->id;?>' ><span class='input-group-btn'><button data-item='<?=@$cat->id;?>' type='button' data-id='<?=@$traking->id;?>' onclick='updateTracking($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> <?=$traking->tracking_id;?>  </a></p>
                                                        <?php endif;?>


                                                        <div class="form-group">
                                                        <span class="col-sm-7">
                                                            <select id="status_shops_<?=@$traking->id;?>" name="status_shop" class="form-control input-sm">
                                                                <option <?php if($traking->status == 1) : ?>selected<?php endif;?> value="1">Khởi tạo</option>
                                                                <option <?php if($traking->status == 2) : ?>selected<?php endif;?> value="2">Đã duyệt</option>
                                                                <option <?php if($traking->status == 3) : ?>selected<?php endif;?> value="3">Đã đặt cọc</option>
                                                                <option <?php if($traking->status == 4) : ?>selected<?php endif;?> value="4">Đã đặt hàng</option>
                                                                <option <?php if($traking->status == 5) : ?>selected<?php endif;?> value="5">Shop Trung Quốc phát hàng</option>
                                                                <option <?php if($traking->status == 6) : ?>selected<?php endif;?> value="6">Kho Trung Quốc nhận hàng</option>
                                                                <option <?php if($traking->status == 7) : ?>selected<?php endif;?> value="7">Kho Việt Nam nhận hàng</option>
                                                                <option <?php if($traking->status == 8) : ?>selected<?php endif;?> value="8">Giao hàng tại Việt Nam</option>
                                                                <option <?php if($traking->status == 9) : ?>selected<?php endif;?> value="9">Hoàn thành</option>
                                                                <option <?php if($traking->status == 10) : ?>selected<?php endif;?> value="10">Đã hủy</option>
                                                                <option <?php if($traking->status == 11) : ?>selected<?php endif;?> value="11">Hết hàng</option>
                                                            </select>
                                                        </span>
                                                            <button onclick="update_status_shop($(this))" data-id="<?=@$traking->id;?>"  class="btn btn-sm btn-success">Cập nhật</button>
                                                        </div>

                                                        <p>
                                                            <strong>Trạng thái :
                                                            <span style="color:#ec85cd;font-weight: bold">

                                                                <?php if($traking->status == 1 || $traking->status == 0) : ?>Khởi tạo <?php endif;?>
                                                                <?php if($traking->status == 2) : ?>Đã duyệt<?php endif;?>
                                                                <?php if($traking->status == 3) : ?>Đã đặt cọc<?php endif;?>
                                                                <?php if($traking->status == 4) : ?>Đã đặt hàng<?php endif;?>
                                                                <?php if($traking->status == 5) : ?>Shop Trung Quốc phát hàng<?php endif;?>
                                                                <?php if($traking->status == 6) : ?>Kho Trung Quốc nhận hàng<?php endif;?>
                                                                <?php if($traking->status == 7) : ?>Kho Việt Nam nhận hàng<?php endif;?>
                                                                <?php if($traking->status == 8) : ?>Giao hàng tại Việt Nam<?php endif;?>
                                                                <?php if($traking->status == 9) : ?>Hoàn thành<?php endif;?>
                                                                <?php if($traking->status == 10) : ?>Đã hủy<?php endif;?>
                                                                <?php if($traking->status == 11) : ?>Hết hàng<?php endif;?>
                                                            </span>
                                                            </strong>
                                                        </p>
                                                    </td>
                                                <?php else : ?>
                                                <td width="25%" rowspan="<?=@$colspan;?>">
                                                    <div class="form-group">
                                                        <label>Phí nội địa :</label>
                                                        <span><input type="text" value="<?=number_format(@$traking->phi_noi_dia,2);?>" class="form-control input-sm input-c" id="phi_noi_dia_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateDomestic($(this))" class="btn btn-success btn-c btn-sm"><i class="fa fa-floppy-o"></i></button></span>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <?php if ($check_phi_kiem_hang[$key] !=''): ?>
                                                    <p><strong>Phí kiểm hàng : </strong>
                                                        <span style="font-weight: bold;color: #f12c2c">
                                                            <input class="form-control input-sm input-c" value="<?=$cat->phi_kiem_hang;?>" id="kiemhang_<?=@$cat->id;?>" />
                                                            <button type="button" data-id="<?=@$cat->id;?>" onclick="updatephikiemhang($(this));" class="btn btn-c btn-success btn-sm" ><i class="fa fa-floppy-o"></i></button>
                                                        </span>
                                                        <p><strong>Chi phí kiểm hàng : </strong><span style="color:#ec85cd;font-weight: bold"><?=number_format($chitiet_phikiemhang);?> VNĐ</span></p>
                                                    </p>

                                                <?php endif; ?>
                                                <p><strong>Phí dịch vụ : </strong>
                                                            <span style="font-weight: bold;color: #f12c2c">
                                                                <input class="form-control input-sm input-c" value="<?=$cat->fee;?>" id="dichvu_<?=@$cat->id;?>" />
                                                                <button type="button" data-id="<?=$cat->id?>" onclick="updatephidichvu($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button>
                                                            </span>
                                                            <p><strong>Phí dịch vụ : </strong><span style="color:#ec85cd;font-weight: bold"><?=$cat->fee;?> %</span></p>
                                                        </p>
                                                    <p class="form-group"><strong>Cân nặng : <?=@$traking->weight;?> Kg</strong> <a href="javascript:void(0)" data-toggle="modal" data-target="#myModal_<?= $cat->id?>"><i class="fa fa-history" aria-hidden="true"></i></a></p> 
                                                    <!-- Trigger the modal with a button -->
                                                        <!-- Modal -->
                                                        <div id="myModal_<?= $cat->id?>" class="modal fade" role="dialog">
                                                          <div class="modal-dialog modal-sm">

                                                            <!-- Modal content-->
                                                            <div class="modal-content">
                                                              <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Lịch sử thay đổi cân nặng</h4>
                                                              </div>
                                                              <div class="modal-body">
                                                                <?php foreach ($list_kg as $key => $v): ?>
                                                                    <?php if ($v['id_tracking'] == $traking->id): ?>
                                                                        <p><?= date('d/m/Y H:i:s', $v['time'])?> - <?=$v['weight']?>Kg</p>
                                                                    <?php endif ?>
                                                                <?php endforeach ?>
                                                              </div>
                                                              <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                              </div>
                                                            </div>
                                                          </div>
                                                        </div>

                                                    <?php if($traking->weight == null || $admin->lever == 2 ) : ?>
                                                        <p><strong>Thêm cân nặng : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-c" value="" id="weight_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateWeight($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>

                                                        <p><strong style="color:#f12c2c">Tỉ giá cân nặng : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-c" value="<?=number_format(@$traking->weight_rate);?>" id="weight_rate_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateWeightRate($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <?php endif ;?>

                                                    <p><strong>Phí cân năng : </strong><span style="color:#ec85cd;font-weight: bold"><?=number_format($traking->weight * $traking->weight_rate);?> VNĐ</span></p>

                                                    <?php if($traking->phi_ngoai_cn == null || $admin->lever == 2) : ?>
                                                        <p><strong>Phí ngoài (<i class="fa fa-jpy"></i>): </strong> <span><input id="phi_ngoai_cn_<?=@$traking->id;?>" value="<?=number_format(@$traking->phi_ngoai_cn,2);?>" class="form-control input-sm input-x" /> <button type="button" data-id="<?=@$traking->id;?>" onclick="updatePhingoai($(this),'cn');"  class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <?php else : ?>
                                                        <p><strong>Phí ngoài (<i class="fa fa-jpy"></i>): <?=number_format(@$traking->phi_ngoai_cn,2);?> NDT</p>
                                                    <?php endif ;?>

                                                    <?php if($traking->phi_ngoai_vn == null || $admin->lever == 2) : ?>
                                                        <p><strong>Phí ngoài (vnđ): </strong><span><input value="<?=number_format(@$traking->phi_ngoai_vn);?>" id="phi_ngoai_vn_<?=@$traking->id;?>" class="form-control input-sm input-x" /> <button type="button" data-id="<?=@$traking->id;?>" onclick="updatePhingoai($(this),'vn');" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                        <?php else : ?>
                                                        <p><strong>Phí ngoài (vnđ): <?=number_format($traking->phi_ngoai_vn);?></strong></p>
                                                    <?php endif ;?>

                                                    <?php if(empty($traking->shop_sku)) : ?>
                                                        <p><strong>Mã đơn hàng :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã đơn hàng" data-content="<p><span class='input-group'><input class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã shop <i  class="fa fa-pencil-square-o"></i></a></p>
                                                    <?php else : ?>
                                                        <p><strong>Mã đơn hàng  :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã đơn hàng" data-content="<p><span class='input-group'><input value='<?=@$traking->shop_sku;?>' class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"><?=@$traking->shop_sku;?></a></p>
                                                    <?php endif;?>
                                                    <?php if(empty($traking->tracking_id)) : ?>
                                                        <p><strong>Mã vận đơn :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã vận đơn" data-content="<p><span class='input-group'><input class='input-sm form-control' id='tracking_id_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateTracking($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã vận đơn <i  class="fa fa-pencil-square-o"></i> </a></p>
                                                    <?php else : ?>
                                                        <p><strong>Mã vận đơn :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã vận đơn" data-content="<p><span class='input-group'><input class='input-sm form-control' value='<?=$traking->tracking_id;?>' id='tracking_id_<?=@$traking->id;?>' ><span class='input-group-btn'><button data-item='<?=@$cat->id;?>' type='button' data-id='<?=@$traking->id;?>' onclick='updateTracking($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> <?=$traking->tracking_id;?>  </a></p>
                                                    <?php endif;?>

                                                    <div class="form-group">
                                                        <span class="col-sm-7">
                                                            <select id="status_shops_<?=@$traking->id;?>" name="status_shop" class="form-control input-sm">
                                                                <option <?php if($traking->status == 1) : ?>selected<?php endif;?> value="1">Khởi tạo</option>
                                                                <option <?php if($traking->status == 2) : ?>selected<?php endif;?> value="2">Đã duyệt</option>
                                                                <option <?php if($traking->status == 3) : ?>selected<?php endif;?> value="3">Đã đặt cọc</option>
                                                                <option <?php if($traking->status == 4) : ?>selected<?php endif;?> value="4">Đã đặt hàng</option>
                                                                <option <?php if($traking->status == 5) : ?>selected<?php endif;?> value="5">Shop Trung Quốc phát hàng</option>
                                                                <option <?php if($traking->status == 6) : ?>selected<?php endif;?> value="6">Kho Trung Quốc nhận hàng</option>
                                                                <option <?php if($traking->status == 7) : ?>selected<?php endif;?> value="7">Kho Việt Nam nhận hàng</option>
                                                                <option <?php if($traking->status == 8) : ?>selected<?php endif;?> value="8">Giao hàng tại Việt Nam</option>
                                                                <option <?php if($traking->status == 9) : ?>selected<?php endif;?> value="9">Hoàn thành</option>
                                                                <option <?php if($traking->status == 10) : ?>selected<?php endif;?> value="10">Đã hủy</option>
                                                                <option <?php if($traking->status == 11) : ?>selected<?php endif;?> value="11">Hết hàng</option>
                                                            </select>
                                                        </span>
                                                        <button onclick="update_status_shop($(this))" data-id="<?=@$traking->id;?>"  class="btn btn-sm btn-success">Cập nhật</button>
                                                    </div>

                                                    <p>
                                                        <strong>Trạng thái :
                                                            <span style="color:#ec85cd;font-weight: bold">
                                                                <?php if($traking->status == 1 || $traking->status == 0 ) : ?>Khởi tạo<?php endif;?>
                                                                <?php if($traking->status == 2) : ?>Đã duyệt<?php endif;?>
                                                                <?php if($traking->status == 3) : ?>Đã đặt cọc<?php endif;?>
                                                                <?php if($traking->status == 4) : ?>Đã đặt hàng<?php endif;?>
                                                                <?php if($traking->status == 5) : ?>Shop Trung Quốc phát hàng<?php endif;?>
                                                                <?php if($traking->status == 6) : ?>Kho Trung Quốc nhận hàng<?php endif;?>
                                                                <?php if($traking->status == 7) : ?>Kho Việt Nam nhận hàng<?php endif;?>
                                                                <?php if($traking->status == 8) : ?>Giao hàng tại Việt Nam<?php endif;?>
                                                                <?php if($traking->status == 9) : ?>Hoàn thành<?php endif;?>
                                                                <?php if($traking->status == 10) : ?>Đã hủy<?php endif;?>
                                                                <?php if($traking->status == 11) : ?>Hết hàng<?php endif;?>
                                                            </span>
                                                        </strong>
                                                    </p>
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
                                                                <p <?php if($ms->user == 'Khách hàng') : ?>style="color:#d89b13" <?php endif;?>><strong><i style="cursor: pointer" class="fa fa-clock-o" title="<?=date('d/m/Y H:i',$ms->time);?>"></i> <?=@$ms->user;?> :</strong> <strong><?=$ms->content;?></strong></p>
                                                            <?php endforeach;?>
                                                        <?php endif;?>
                                                    </div>
                                                    <div>
                                                        <p><strong>Thanh toán thực : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-x" value="<?=number_format($traking->thanh_toan_thuc,2);?>" id="pay_<?=@$traking->id;?>" /><button style="padding:5px 6px" type="button" data-id="<?=@$traking->id;?>" onclick="updatePay($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    </div>
                                                </td>
                                                <?php endif;?>
                                            <?php endif;?>
                                        </tr>
                                    <?php  endforeach;  ?>
                                <?php endif;?>

                                <tr style="background-color: #f1c5ddb3;color:#827575">
                                    <td colspan="8">
                                        <p>SP : 
                                            <span style="color:#e85959;">
                                                <strong><?=$sp;?></strong>
                                            </span> 
                                            - Thực mua: <span style="color:#13b727">
                                                <strong><?=$tm;?></strong>
                                            </span> 

                                            - Tiền hàng : <span style="color: #13b727">
                                                <strong><?=number_format($th,2);?> NDT</strong>
                                            </span> 
                                            - Ship NĐ : 
                                            <strong style="color:#13b727"><?=number_format($traking->phi_noi_dia,2);?> NDT</strong> 
                                            - Phí kiểm hàng : 
                                            <strong style="color:#13b727"><?=number_format($chitiet_phikiemhang);?> VNĐ </strong> 
                                            - Phí DV : <span style="color:#13b727"><strong><?=number_format($phi_dich_vu,2);?> NDT</strong></span> - Phí ngoài tệ : <span style="color:#13b727"><strong><?=number_format($traking->phi_ngoai_cn,2);?> NDT</strong></span> - Phí ngoài vnđ : <span style="color:#13b727"><strong><?=number_format($traking->phi_ngoai_vn,1);?> VNĐ</strong></span> - Thực mua : <span style="color:#13b727;"><strong> <?=number_format($traking->thanh_toan_thuc,2);?> NDT</strong></span></p>
                                        <p>Tổng Tệ : <span style="color:#13b727;">
                                                <strong><?=number_format($th + $traking->phi_noi_dia + $traking->phi_kiem_hang + $phi_dich_vu + $traking->phi_ngoai_cn,2);?> NDT</strong></span>
                                                <span >
                                                      - Lợi nhuận: <span style="color:#13b727">
                                                        <strong>
                                                            <?php if($tien_thuc_mua > 0) : ?>
                                                                <?=number_format(($th + $phi_dich_vu + $traking->phi_kiem_hang - $tien_thuc_mua) * $order->rate);?> VNĐ
                                                            <?php else : ?>
                                                                <?=number_format(($phi_dich_vu + $traking->phi_kiem_hang) * $order->rate);?> VNĐ
                                                            <?php endif;?>
                                                        </strong>
                                                    <strong> <span style="color: #f12c2c">- Tổng tiền hàng : </span><?=number_format((($th + $traking->phi_noi_dia + $traking->phi_kiem_hang + $phi_dich_vu + $traking->phi_ngoai_cn) * $order->rate) + $phicannang + $phingoai_vn + $chitiet_phikiemhang);?> VNĐ </strong>
                                                </span>

                                            </span>
                                        </p>
                                    </td>
                                </tr>

                            <?php endforeach;?>
                            <?php

                                $tong_tien_ca_don += $tong_tien_hang + $tong_phi_noi_dia + $tong_tien_cong + $tong_phi_ngoai;
                            ?>
                        <?php endif;?>
                    </table>
                    </div>
                    <div class="col-sm-offset-6 col-sm-6">
                        <table class="table table-bordered">
                            <tr>
                                <td width="50%" class="text-right text-bold">Tổng sản phẩm :</td>
                                <td class="text-right"><span style="color: #1999d6;font-weight: bold"><?=@$tong_sp;?> sản phẩm</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền hàng :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_tien_hang,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền công :</td>
                                <td class="text-right"><span style="color:#00a65a;font-weight: bold"><?=number_format($tong_tien_cong,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng phí nội địa :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_phi_noi_dia,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng phí ngoài (<i class="fa fa-jpy"></i>) :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_phi_ngoai,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng phí ngoài (vnđ) :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tongphingoai_vn);?> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền cả đơn :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_tien_ca_don,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng phí kiểm hàng :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_phi_kiem_hang);?> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng phí cân nặng :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_phi_can_nang);?> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền đơn hàng (VNĐ) :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><span id="total_bill"><?=number_format(($order->rate * $tong_tien_ca_don) + $tong_phi_can_nang + $tongphingoai_vn +$tong_phi_kiem_hang);?></span> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền thực mua : </td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_tien_thuc_mua,2)?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền mặc cả :</td>
                                <td class="text-right">
                                    <span style="color:#e85959;font-weight: bold">
                                        <?php if($tong_tien_thuc_mua > 0) : ?>
                                            <?=number_format($tong_tien_hang - $tong_tien_thuc_mua,2);?> NDT
                                        <?php else : ?>
                                            0 NDT
                                        <?php endif;?>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Lợi nhuận</td>
                                <td class="text-right">
                                    <span style="color:#00a65a;font-weight: bold">
                                        <?php if($tong_tien_thuc_mua > 0) : ?>
                                            <?=number_format(($tong_tien_cong + ($tong_tien_hang - $tong_tien_thuc_mua)) * $order->rate);?> VNĐ
                                        <?php else : ?>
                                            <?=number_format($tong_tien_cong * $order->rate);?> VNĐ
                                        <?php endif;?>
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix-5"></div>
    </div>
</div>
<style>
    p{margin-bottom: 5px !important;}
    .box-info p{border-bottom: 1px solid #f7f7f7;padding:2px 0}
    .input-c{max-width: 115px;height: 25px;display: inherit}
    .input-x{max-width: 120px;height: 25px;display: inherit}
    .btn-c{height: 25px;line-height: 15px}
    textarea{font-size: 12px !important;}
</style>

<script type="text/javascript" src="<?=base_url()?>assets/js_admin/order.js"></script>

<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');

   $(function(){
       $('#orderstct').autoNumeric(0);
   })

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

    $(function(){
        var base_url = '<?=base_url();?>';
        var total_bill = $('#total_bill').text();
        var oid = $('#oid').val();
        $.ajax({
            url: base_url + 'vnadmin/exchange/updateTotalBill',
            dataType: "json",
            type: "POST",
            data: {oid:oid,total_bill:total_bill},
            success : function(res){
                console.log('1');
            }
        });
    });


    function update_status_shop(obj){
        var url = '<?=base_url();?>';
        var tracking_id = $(obj).data('id');
        var shop_status = $('#status_shops_'+tracking_id+' option:selected').val();
        $.ajax({
            url: url + 'vnadmin/exchange/updateOrderStatusByShop',
            dataType: "json",
            type: "POST",
            data: {tracking_id:tracking_id,shop_status:shop_status},
            success : function(res){
                window.location.reload();
            }
        });
    }
    //save comment
    function save_comment(obj){
        var url = '<?=base_url();?>';
        var item_id = $(obj).data('item');
        var note = $('#'+item_id).val();
        $.ajax({
            url: url + 'vnadmin/order/saveNoteItemOrder',
            type: "POST",
            dataType: "json",
            data: {item_id:item_id,note:note},
            success : function(res){
                $('#'+item_id).val('');
                $('#comment_'+item_id).html(res.text);
                //window.location.reload();
            }
        });
    }
</script>
<style type="text/css">
    /**checkbox**/

    input[type="checkbox"], .checkbox input[type="checkbox"], .checkbox-inline input[type="checkbox"] {

        position: relative;

        border: none;

        margin-bottom: -4px;

        -webkit-appearance: none;

        appearance: none;

        cursor: pointer;

    }

    input[type="radio"], input[type="checkbox"] {

        margin: 4px 0 0;

        margin-top: 1px \9;

        line-height: normal;

    }

    input[type="checkbox"], input[type="radio"] {

        -webkit-box-sizing: border-box;

        -moz-box-sizing: border-box;

        box-sizing: border-box;

        padding: 0;

    }

    input[type="checkbox"], input[type="radio"] {

        box-sizing: border-box;

        padding: 0;

    }

    input[type="checkbox"]:after, .checkbox input[type="checkbox"]:after, .checkbox-inline input[type="checkbox"]:after {

        content: "";

        display: block;

        width: 18px;

        height: 18px;

        margin-top: -2px;

        margin-right: 5px;

        border: 2px solid #666;

        border-radius: 2px;

        -webkit-transition: 240ms;

        -o-transition: 240ms;

        transition: 240ms;

    }

    input[type="checkbox"]:checked:after, .checkbox input[type="checkbox"]:checked:after, .checkbox-inline input[type="checkbox"]:checked:after {

        background-color: #2196f3;

        border-color: #2196f3;

    }

    input[type="checkbox"]:checked:before, .checkbox input[type="checkbox"]:checked:before, .checkbox-inline input[type="checkbox"]:checked:before {

        content: "";

        position: absolute;

        top: 0;

        left: 6px;

        display: table;

        width: 6px;

        height: 12px;

        border: 2px solid #fff;

        border-top-width: 0;

        border-left-width: 0;

        -webkit-transform: rotate(45deg);

        -ms-transform: rotate(45deg);

        -o-transform: rotate(45deg);

        transform: rotate(45deg);

    }

    input[type="checkbox"]:focus, .checkbox input[type="checkbox"]:focus, .checkbox-inline input[type="checkbox"]:focus {

        outline: none;

    }
</style>
<script type="text/javascript">
    
  $('input[name="phi_kiem_hang[]"]').click(function() {
   $.ajax({
        url: base_url() + 'cart/update_check_kiemhang',
        data: {shop:$(this).attr('data-shop'),order:$(this).attr('data-order')},
        dataType: "json",
        type: "POST",
        success : function(res){
            location.reload();
        }
    });
})

</script>