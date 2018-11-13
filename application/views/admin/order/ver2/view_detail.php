<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
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
                            <?php if($order->status == 1) : ?><button class="btn btn-xs btn-danger">Chưa duyệt</button><?php endif;?>
                            <?php if($order->status == 2) : ?><span class="btn btn-xs btn-success">Đã duyệt<span><?php endif;?>
                            <?php if($order->status == 3) : ?><span class="btn btn-xs btn-success">Đã thanh toán<span><?php endif;?>
                            <?php if($order->status == 4) : ?><span class="btn btn-xs btn-success">Đã mua<span><?php endif;?>
                            <?php if($order->status == 5) : ?><span class="btn btn-xs btn-success">Đã tất toán<span><?php endif;?>
                            <?php if($order->status == 6) : ?><span class="btn btn-xs btn-success">Hàng đã về<span><?php endif;?>
                            <?php if($order->status == 7) : ?><span class="btn btn-xs btn-success">Đã giao hàng<span><?php endif;?>
                            <?php if($order->status == 8) : ?><span class="btn btn-xs btn-success">Kết thúc đơn<span><?php endif;?>
                            <?php if($order->status == 9) : ?><span class="btn btn-xs btn-success">Đã hủy<span><?php endif;?>
                            <?php if($order->status == 10) : ?><span class="btn btn-xs btn-success">Hết hàng<span><?php endif;?>
                        </p>
                    </div>
                    <div class="clearfix-10"></div>
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
                                <?php if($order->status < 4) : ?>
                                    <div class="input-group">
                                        <select id="status" name="status" class="form-control input-sm">
                                            <option <?php if($order->status == 3) : ?>selected<?php endif;?> value="3">Đã thanh toán</option>
                                            <option <?php if($order->status == 4) : ?>selected<?php endif;?> value="4">Đã mua hàng</option>
                                        </select>
                                        <div class="input-group-btn">
                                            <button onclick="updateS()"  class="btn btn-sm btn-success">Cập nhật</button>
                                        </div>
                                    </div>
                                <?php else : ?>
                                    <?php if($order->status == 4) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Đã mua hàng</button>
                                        </div>
                                    <?php endif;?>
                                    <?php if($order->status == 5) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Đã tất toán</button>
                                        </div>
                                    <?php endif;?>
                                    <?php if($order->status == 6) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Hàng đã về</button>
                                        </div>
                                    <?php endif;?>
                                    <?php if($order->status == 7) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Đã giao hàng</button>
                                        </div>
                                    <?php endif;?>
                                    <?php if($order->status == 8) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Kết thúc đơn</button>
                                        </div>
                                    <?php endif;?>
                                    <?php if($order->status == 9) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Đã hủy</button>
                                        </div>
                                    <?php endif;?>
                                    <?php if($order->status == 10) : ?>
                                        <div class="input-group-btn">
                                            <button type="button"  class="btn btn-sm btn-success">Hết hàng</button>
                                        </div>
                                    <?php endif;?>
                                <?php endif;?>
                            <?php endif;?>
                            <?php if($admin->group == 1) : ?>
                                <div class="form-group">
                                    <span class="col-sm-5">
                                        <select id="status" name="status" class="form-control input-sm">
                                            <option <?php if($order->status == 1) : ?>selected<?php endif;?> value="1">Chưa duyệt</option>
                                            <option <?php if($order->status == 2) : ?>selected<?php endif;?> value="2">Đã duyệt</option>
                                            <option <?php if($order->status == 3) : ?>selected<?php endif;?> value="3">Đã thanh toán</option>
                                            <option <?php if($order->status == 4) : ?>selected<?php endif;?> value="4">Đã mua</option>
                                            <option <?php if($order->status == 5) : ?>selected<?php endif;?> value="5">Đã tất toán</option>
                                            <option <?php if($order->status == 6) : ?>selected<?php endif;?> value="6">Hàng đã về</option>
                                            <option <?php if($order->status == 7) : ?>selected<?php endif;?> value="7">Đã giao hàng</option>
                                            <option <?php if($order->status == 8) : ?>selected<?php endif;?> value="8">Kết thúc đơn</option>
                                            <option <?php if($order->status == 9) : ?>selected<?php endif;?> value="9">Đã hủy</option>
                                            <option <?php if($order->status == 10) : ?>selected<?php endif;?> value="10">Hết hàng</option>
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

                            <?php endif;?>
                        </div>

                    </div>
                    <div class="clearfix-10"></div>
                    <a href="<?=base_url('vnadmin/exchange/pay?id='.base64_encode($order->id))?>" class="btn btn-success btn-sm">Thanh toán</a>
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
                            <?php
                                $stt = 0; $tong_sp = 0;$tong_tien_hang = 0;$tong_tien_cong = 0;$tong_phi_noi_dia = 0;
                                $tong_tien_ca_don= 0;$tong_tien_thuc_mua = 0;$tong_tien_mac_ca = 0;
                            ?>
                            <?php foreach($stores as $shop) : ?>
                                <?php $sp = 0;$tm = 0;$th=0; $phi_dich_vu = 0;?>
                                <tr class="info">
                                    <td colspan="8">
                                        <strong>Người bán :</strong> <strong style="color:#2eb316"><?=$shop->seller_name;?></strong>
                                    </td>
                                </tr>
                                <?php $carts = $shop->items; if(count($carts)) : $colspan = count($carts);  ?>
                                    <?php $dem=0; foreach($carts as $cat) : $stt +=1;$dem +=1; ?>
                                        <?php
                                            $sp +=$cat->quantity;$tm += $cat->qty_buy;$th += $cat->price * $cat->quantity;
                                            $phi_dich_vu += ($cat->price * $cat->qty_buy * $fee);
                                            $tong_sp += $cat->qty_buy;
                                            $tong_tien_hang += $cat->price * $cat->quantity;
                                            $tong_tien_cong += $cat->price * $cat->qty_buy * $fee;
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
                                                <p>
                                                    <textarea id="<?=$cat->id;?>" data-id="<?=$cat->id;?>" onchange="updateNoteItem($(this))" class="form-control" placeholder="Ghi chú"><?=$cat->comment;?></textarea>
                                                </p>
                                            </td>
                                            <td class="text-center" style="color:#0fb0c2;font-weight: bold" >
                                                <input type="number" min="0" data-id="<?=$cat->id;?>" onchange="updateQty($(this))" id="quantity_<?=$cat->id;?>" value="<?=$cat->qty_buy;?>" class="form-control input-sm" />
                                            </td>
                                            <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                                                <p>
                                                    <input data-id="<?=$cat->id;?>"  type="text"  onchange="updateItemPrice($(this))" value="<?=number_format($cat->price);?>" class="form-control input-sm" />
                                                </p>
                                                Phí mua hàng: <?=number_format($cat->price * $cat->qty_buy * $fee,2);?> NDT
                                            </td>
                                            <td style="font-weight: bold;color:#e85959" class="text-center" width="12%">
                                                <?=number_format($cat->price * $cat->qty_buy,2);?> NDT
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
                                            </td>
                                            <?php if($dem == 1) : ?>
                                                <?php $traking = $shop->tracking; $messages = array(); if($traking){$messages = json_decode($traking->message);} ?>
                                                <?php
                                                    $tong_phi_noi_dia += $traking->phi_noi_dia;
                                                    $tong_tien_thuc_mua += $traking->thanh_toan_thuc;
                                                ?>
                                                <td width="25%" rowspan="<?=@$colspan;?>">
                                                    <div class="form-group">
                                                        <label>Phí nội địa :</label>
                                                        <span><input type="text" value="<?=number_format(@$traking->phi_noi_dia,2);?>" class="form-control input-sm input-c" id="phi_noi_dia_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateDomestic($(this))" class="btn btn-success btn-c btn-sm"><i class="fa fa-floppy-o"></i></button></span>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <p class="form-group"><strong>Cân nặng : <?=@$traking->weight;?> Kg</strong></p>
                                                    <p><strong>Thêm cân nặng : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-c" value="" id="weight_<?=@$traking->id;?>" /><button type="button" data-id="<?=@$traking->id;?>" onclick="updateWeight($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <p><strong>Phí cân năng : </strong><span style="color:#ec85cd;font-weight: bold"><?=number_format($traking->weight * $order->weight_rate);?> VNĐ</span></p>
                                                    <p><strong>Phí ngoài (<i class="fa fa-jpy"></i>): </strong> <span><input id="phi_ngoai_cn_<?=@$traking->id;?>" value="<?=number_format(@$traking->phi_ngoai_cn,2);?>" class="form-control input-sm input-x" /> <button type="button" data-id="<?=@$traking->id;?>" onclick="updatePhingoai($(this),'cn');"  class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <p><strong>Phí ngoài (vnđ): </strong><span><input value="<?=number_format(@$traking->phi_ngoai_vn);?>" id="phi_ngoai_vn_<?=@$traking->id;?>" class="form-control input-sm input-x" /> <button type="button" data-id="<?=@$traking->id;?>" onclick="updatePhingoai($(this),'vn');" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    <?php if(empty($traking->shop_sku)) : ?>
                                                        <p><strong>Mã shop :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252" data-placement="top" data-toggle="popover" title="Nhập mã Shop" data-content="<p><span class='input-group'><input class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"> Chưa nhập mã shop <i  class="fa fa-pencil-square-o"></i></a></p>
                                                    <?php else : ?>
                                                        <p><strong>Mã shop  :</strong> <a style="font-weight: bold;cursor: pointer;color:#e25252;border-bottom: dashed 1px #08c" data-placement="top" data-toggle="popover" title="Nhập mã Shop" data-content="<p><span class='input-group'><input value='<?=@$traking->shop_sku;?>' class='input-sm form-control' id='shop_sku_<?=@$traking->id;?>' ><span class='input-group-btn'><button type='button' data-id='<?=@$traking->id;?>' onclick='updateShopSku($(this))' class='btn btn-sm btn-info'><i class='fa fa-check'></i></button><button onclick='closePopover()' class='btn btn-sm pop-over btn-danger'><i class='fa fa-times'></i></button></span></span></p>"><?=@$traking->shop_sku;?></a></p>
                                                    <?php endif;?>
                                                    <?php if(empty($traking->tracking_id)) : ?>
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
                                                    <div>
                                                        <p><strong>Thanh toán thực : </strong><span style="font-weight: bold;color: #f12c2c"><input class="form-control input-sm input-x" value="<?=number_format($traking->thanh_toan_thuc,2);?>" id="pay_<?=@$traking->id;?>" /><button style="padding:5px 6px" type="button" data-id="<?=@$traking->id;?>" onclick="updatePay($(this));" class="btn btn-c btn-success btn-sm"><i class="fa fa-floppy-o"></i></button></span></p>
                                                    </div>
                                                </td>
                                            <?php endif;?>
                                        </tr>
                                    <?php endforeach;?>
                                <?php endif;?>

                                <tr style="background-color: #f1c5ddb3;color:#827575">
                                    <td colspan="8">
                                        <p>SP : <span style="color:#e85959;"><strong><?=$sp;?></strong></span> - Thực mua: <span style="color:#13b727"><strong><?=$tm;?></strong></span> - Tiền hàng : <span style="color: #e85959"><strong><?=number_format($th,2);?> NDT</strong></span> - Ship NĐ : <strong style="color:#13b727"><?=number_format($traking->phi_noi_dia,2);?> NDT</strong> - Phí DV : <span style="color:#13b727"><strong><?=number_format($phi_dich_vu,2);?> NDT</strong></span> - Phí ngoài tệ : <span style="color:#13b727"><strong><?=number_format($traking->phi_ngoai_cn,2);?> NDT</strong></span> - Phí ngoài vnđ : <span style="color:#13b727"><strong><?=number_format($traking->phi_ngoai_vn,1);?> VNĐ</strong></span></p>
                                        <p>Tổng : <span style="color:#e85959;"><strong><?=number_format($th + $traking->phi_noi_dia + $phi_dich_vu + $traking->phi_ngoai_cn,2);?> NDT</strong></span><span style="color:#13b727"><strong>(<?=number_format((($th + $traking->phi_noi_dia + $phi_dich_vu + $traking->phi_ngoai_cn) * $order->rate) + $traking->phi_ngoai_vn);?> VNĐ)</strong></span> - Thực mua : <span style="color:#e85959;"><strong><?=number_format($traking->thanh_toan_thuc,2);?> NDT</strong></span> - Lợi nhuận: <span style="color:#13b727"><strong><?=number_format(($th + $traking->phi_noi_dia + $phi_dich_vu - $traking->thanh_toan_thuc) * $order->rate);?> VNĐ</strong></span></p>
                                    </td>
                                </tr>
                                <?php
                                    $tong_tien_ca_don += $th + $traking->phi_noi_dia + $phi_dich_vu + $traking->phi_ngoai_cn;
                                ?>
                            <?php endforeach;?>
                        <?php endif;?>
                    </table>
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
                                <td class="text-right text-bold">Tổng tiền cả đơn :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_tien_ca_don,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền đơn hàng (VNĐ) :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><span id="total_bill"><?=number_format($order->rate * $tong_tien_ca_don);?></span> VNĐ</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền thực mua : </td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_tien_thuc_mua,2)?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Tổng tiền mặc cả :</td>
                                <td class="text-right"><span style="color:#e85959;font-weight: bold"><?=number_format($tong_tien_ca_don - $tong_tien_cong - $tong_tien_thuc_mua,2);?> NDT</span></td>
                            </tr>
                            <tr>
                                <td class="text-right text-bold">Lợi nhuận</td>
                                <td class="text-right"><span style="color:#00a65a;font-weight: bold"><?=number_format(($tong_tien_hang + $tong_tien_cong + $tong_phi_noi_dia - $tong_tien_thuc_mua) * $order->rate);?> VNĐ</span></td>
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
</script>