<article id="body_home">
   <div class="clearfix-10"></div>
   <div class="col-sm-12">
      <div class="row_pc">
         <div class="col-md-2 col-left col-xs-12">
            <div class="content_left" id="sidebar">
               <!--<ul>                        <li><a href="<?/*=base_url('don-hang')*/?>">Danh sách đơn hàng</a></li>                        <li><a href="<?/*=base_url('cart/displayPayM')*/?>">Giỏ hàng</a></li>                    </ul>-->                    <?php echo $this->load->widget('danhmuc');?>                
            </div>
         </div>
         <div class="col-md-10 col-xs-12">
            <div class="content_mid">
               <div class="panel panel-info">
                  <div class="panel-heading" style="margin: 5px 0">
                     <h5 style="margin: 0px"><strong>Đơn hàng : <?=$order->code;?></strong></h5>
                  </div>
                  <div class="panel-body">
                     <div class="col-sm-6">
                        <p>Mã hóa đơn : <span style="color: #ff0055"><?=$order->code;?></span></p>
                        <p>Khách hàng : <?=$order->fullname;?></p>
                        <p>Địa chỉ khách hàng : <?=$order->address;?></p>
                        <p>Điện thoại khách hàng : <?=$order->phone;?></p>
                        <p>Emai khách hàng : <a href="mailto:<?=$order->email;?>"><?=$order->email;?></a></p>
                        <p>                                    Kho hàng :                                    <?php foreach($this->depots as $depot) : ?>                                        <?php if($depot->id == $order->ma_kho){echo $depot->name;}?>                                    <?php endforeach;?>                                </p>
                     </div>
                     <div class="col-sm-6">
                        <p>Tổng giá trị hóa đơn là : <span style="color:#e80707"><?=number_format($order->total_bill);?></span></p>
                        <p>Số tiền đã thanh toán : <span style="color: #4fcc26"><?=number_format($order->payted)?> VNĐ</span></p>
                        <p>Số tiền còn thiếu : <span style="color:#e80707"><?=number_format($order->total_bill - $order->payted);?> VNĐ</span></p>
                        <p>Tỷ giá : <?=number_format($this->option->exchange);?></p>
                        <p>Trạng thái :<?php if($order->status == 1) : ?>
                              <button class="btn btn-xs btn-danger">Khởi tạo</button>
                           <?php endif;?>
                           <?php if($order->status == 2) : ?>
                              <span class="btn btn-xs btn-success">Đã duyệt<span>
                           <?php endif;?>
                           <?php if($order->status == 3) : ?>
                              <span class="btn btn-xs btn-success">Đã đặt cọc<span>
                           <?php endif;?>
                           <?php if($order->status == 4) : ?>
                              <span class="btn btn-xs btn-success">Đã đặt hàng<span>
                           <?php endif;?>
                           <?php if($order->status == 5) : ?><span class="btn btn-xs btn-success">Đã tất toán<span><?php endif;?>                                                            <?php if($order->status == 6) : ?><span class="btn btn-xs btn-success">Hoàn thành<span><?php endif;?>                                                                    <?php if($order->status == 7) : ?><span class="btn btn-xs btn-success">Đã hủy<span><?php endif;?>                                                                            <?php if($order->status == 8) : ?><span class="btn btn-xs btn-success">Hết hàng<span><?php endif;?>                                </p>
                     </div>
                     <div class="clearfix-10"></div>
                     <a href="<?=base_url('thanh-toan?id='.base64_encode($order->id))?>" class="btn btn-success btn-sm">Thanh toán</a>                            
                     <div class="clearfix-10"></div>
                     <table class="table table-bordered table-cart">
                        <tr class="active">
                           <th width="5%">STT</th>
                           <th width="10%">Hình ảnh</th>
                           <th width="20%">Thông tin sản phẩm</th>
                           <th class="text-center" width="10%">Đơn giá</th>
                           <th class="text-center" width="5%">SL</th>
                           <th class="text-center" width="10%">Thành tiền</th>
                           <th class="text-center" width="10%">Phí</th>
                           <th width="30%">Mã vận đơn</th>
                        </tr>
                        <?php if(count($stores)) :$phi_kiem_hang = 0;
                                $tong_phi_kiem_hang = 0; ?>

                           <?php foreach($stores as $shop) : ?> 
                              <?php $sp = 0;$tm = 0;$th=0;$pnd = 0;$pn_cn = 0;$pn_vn = 0; $pcn = 0;$chitiet_phikiemhang = 0;$phi_kiem_hang=0; ?>                                        
                        <tr class="info">
                           <td colspan="6"> 
                              <strong>Người bán :</strong> 
                              <strong style="color:#2eb316"><?=$shop->seller_name;?></strong>                                            </td>
                           <td colspan="2"> 
                            <?php foreach ($shops as $key => $s): ?>
                                <?php if ($s == $shop->seller_name): break; endif ?>
                            <?php endforeach ?>
                            <input <?php if($order->status == 3) : ?> disabled <?php endif;?> class="squaredFour" id="fruit<?=$key?>"  type="checkbox" <?php if ($check_phi_kiem_hang[$key] !=''): ?> checked <?php endif ?> name="phi_kiem_hang[]" data-shop="<?= $shop->seller_name?>" data-order="<?=$order->id;?>">
                            <label for="fruit<?=$key?>">Phí kiểm hàng</label>
                              <style type="text/css">
                                 input[type=checkbox] + label {
                                   display: block;
                                   margin: 0.2em;
                                   cursor: pointer;
                                   padding: 0.2em;
                                 }

                                 input[type=checkbox] {
                                   display: none;
                                 }

                                 input[type=checkbox] + label:before {
                                   content: "\2714";
                                   border: 0.1em solid #000;
                                   border-radius: 0.2em;
                                   display: inline-block;
                                    width: 17px;
                                   height: 17px;
                                   padding-left: 0.2em;
                                   padding-bottom: 0.3em;
                                   margin-right: 0.2em;
                                   vertical-align: bottom;
                                   color: transparent;
                                   transition: .2s;
                                 }

                                 input[type=checkbox] + label:active:before {
                                   transform: scale(0);
                                 }

                                 input[type=checkbox]:checked + label:before {
                                   background-color: MediumSeaGreen;
                                   border-color: MediumSeaGreen;
                                   color: #fff;
                                 }

                                 input[type=checkbox]:disabled + label:before {
                                   transform: scale(1);
                                   border-color: #aaa;
                                 }

                                 input[type=checkbox]:checked:disabled + label:before {
                                   transform: scale(1);
                                   background-color: #bfb;
                                   border-color: #bfb;
                                 }
                              </style>
                           </td>
                        </tr>

                        <?php $carts = $shop->items; if(count($carts)) : $colspan = count($carts); $stt = 0; $slsp = 0;  $chitiet_phikiemhang = 0;?>
                        <?php if ($stt == 0): ?>
                          <?php foreach($carts as $cat) :  $slsp += $cat->qty_buy;?>
                            
                          <?php endforeach; ?>
                        <?php endif ?>
                        

                                                                    <?php foreach($carts as $cat) : $stt +=1; ?>
                        <?php $sp += $cat->quantity;$tm += $cat->qty_buy;$th += ($cat->price * $cat->qty_buy) + ($cat->price * $cat->qty_buy * $cat->fee)/100; 
                       ?>                                                
                        <tr>
                           <td width="5%" class="text-center"><?=$stt;?> <?= $chitiet_phikiemhang?></td>
                           <td width="7%" class="text-center">                                                        <a target="_blank" href="<?=$cat->item_link;?>">                                                            <img style="max-width: 65px" src="<?=$cat->item_image;?>" />                                                        </a>                                                    </td>
                           <td>
                              <p style="color:#1999d6;font-weight: bold">                                                            <a style="color:#03A9F4" target="_blank" href="<?=$cat->item_link;?>"><?=$cat->item_name;?></a></p>
                              <p><?=$cat->item_size;?></p>
                              <div style="max-width: 363px;overflow-x: auto"><strong>Khách hàng : </strong> <?=@$cat->note;?></div>
                              <div id="comment_<?=$cat->id;?>">
                                 <?php $comments = array(); $comments = json_decode($cat->comment);?>                                                            <?php if(count($comments)) : ?>                                                                <?php foreach($comments as $comment) : ?>                                                                    
                                 <p><strong><?=$comment->user;?> :  <?=$comment->content;?></strong></p>
                                 <?php endforeach;?>                                                            <?php endif;?>                                                        
                              </div>
                              <p>                                                            <textarea id="<?=$cat->id;?>" data-id="<?=$cat->id;?>"  class="form-control" rows="3" placeholder="Ghi chú"></textarea>                                                            <button data-item="<?=$cat->id;?>" onclick="save_note($(this))" type="button" class="btn btn-xs btn-primary">Lưu</button>                                                        </p>
                           </td>
                           <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                              <p><?=number_format($cat->price,2);?></p>
                              <p>NDT</p>
                           </td>
                           <td class="text-center" style="color:#0fb0c2;font-weight: bold" width="5%">                                                        <?=$cat->qty_buy;?>                                                    </td>
                           <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                              <?=number_format($cat->price * $cat->qty_buy,2);?>                                                        
                              <p>NDT</p>
                           </td>
                           <td class="text-center" style="color:#0fb0c2;font-weight: bold">
                              <p><?=number_format(($cat->price * $cat->qty_buy * $cat->fee)/100,2);?></p>
                              <p>NDT</p>
                           </td>
                           <?php if($stt == 1) : ?>                                                        <?php  $traking = $shop->tracking; $messages = array();$pcn = $order->weight_rate * $traking->weight;$pnd = $traking->phi_noi_dia;$pn_cn = $traking->phi_ngoai_cn;$pn_vn = $traking->phi_ngoai_vn;$chitiet_phikiemhang = $cat->phi_kiem_hang*$slsp; if($traking){$messages = json_decode($traking->message);} ?>                                                        
                           <td width="30%" rowspan="<?=@$colspan;?>">
                              <p><b>Phí nội địa</b> : <span style="font-weight: bold;color: #f12c2c"><?=number_format($traking->phi_noi_dia,2)?> NDT</span></p>
                              <p><b>Cân nặng</b> : <?=@$traking->weight;?> Kg</p>
                              <p><b>Phí cân nặng</b> : <span style="font-weight: bold;color: #f12c2c"><?=number_format($traking->weight_rate *$traking->weight,2)?> VNĐ</span></p>
                              <p><strong><b>Phí ngoài</b> (<i class="fa fa-jpy"></i>) : <?=number_format(@$traking->phi_ngoai_cn,2);?></strong></p>
                              <?php if ($check_phi_kiem_hang[$key] !=''): ?> 
                              <p><strong>phí kiểm hàng: </strong><?php if($check_phi_kiem_hang[$key]!='on'){ ?><?= number_format($chitiet_phikiemhang) ?> VNĐ <?php } ?> </p>
                              <?php endif ?>
                              <p><strong><b>Phí dịch vụ</b>:</strong>  <?= $fee_order_item[$key]?>%</p>
                              <p><strong><b>Phí ngoài (vnđ)</b> : <?=number_format(@$traking->phi_ngoai_vn);?></strong></p>
                              <p>                                                                <b>Trạng thái</b> : <span style="color:#ec85cd;font-weight: bold">                                                                    <?php if($traking->status == 1) : ?>Khởi tạo<?php endif;?>                                                                    <?php if($traking->status == 2) : ?>Đã duyệt<?php endif;?>                                                                    <?php if($traking->status == 3) : ?>Đã đặt cọc<?php endif;?>                                                                    <?php if($traking->status == 4) : ?>Đã đặt hàng<?php endif;?>                                                                    <?php if($traking->status == 5) : ?>Shop Trung Quốc phát hàng<?php endif;?>                                                                    <?php if($traking->status == 6) : ?>Kho Trung Quốc nhận hàng<?php endif;?>                                                                    <?php if($traking->status == 7) : ?>Kho Việt Nam nhận hàng<?php endif;?>                                                                    <?php if($traking->status == 8) : ?>Giao hàng tại Việt Nam<?php endif;?>                                                                    <?php if($traking->status == 9) : ?>Hoàn thành<?php endif;?>                                                                    <?php if($traking->status == 10) : ?>Đã hủy<?php endif;?>                                                                    <?php if($traking->status == 11) : ?>Hết hàng<?php endif;?>                                                                </span>                                                            </p>
                              <p><b>Mã vận đơn</b> : <?php if(!empty($traking->tracking_id)) : ?><a style="color:#2eb316;font-weight: bold;cursor: pointer;text-decoration: underline"><?=$traking->tracking_id;?><?php else : ?>---<?php endif;?></a></p>
                              <label>Lời nhắn</label>                                                            
                              <p style="margin-bottom: 3px">                                                                <textarea id="<?=$traking->id;?>" name="message[]" rows="2" class="form-control"></textarea>                                                            </p>
                              <p>                                                                <button type="button" data-selername="<?=$traking->id;?>" data-orderid="<?=$order->id;?>" data-sellerid="<?=$shop->seller_id;?>"  onclick="sendMessage($(this))" class="btn btn-xs btn-info"><i class="fa fa-check"></i> Gửi lời nhắn</button>                                                            </p>
                              <div class="mess-content" id="mess_<?=$traking->id;?>">
                                 <?php if($messages) : ?>                                                                    <?php foreach($messages as $ms) : ?>                                                                        
                                 <p><strong><i style="cursor: pointer" class="fa fa-clock-o" title="<?=date('d/m/Y H:i',$ms->time);?>"></i> <?=$ms->user;?> :</strong> <?=strip_tags($ms->content);?></p>
                                 <?php endforeach;?>                                                                <?php endif;?>                                                            
                              </div>
                           </td>
                           <?php endif;?>                                                
                        </tr>
                        <?php endforeach;?>                                        <?php endif;?>                                        
                        <tr style="background-color: #f1c5ddb3;color:#827575">
                           <td colspan="8">                                                <strong>Tổng số : <span style="color:#e85959;"><?=$sp;?></span> Sản phẩm (Thực mua: <span style="color:#13b727"><?=$tm;?></span>) - Số tiền : <span style="color: #e85959"><?=number_format($th + $pnd + $pn_cn,2);?> NDT</span> (Thành tiền : <span style="color:#13b727"><?=number_format((($th + $pnd + $pn_cn) * $this->option->exchange) + $pn_vn + $pcn + $chitiet_phikiemhang) ;?> VNĐ</span>) <?= $chitiet_phikiemhang ?></strong>                                            </td>
                        </tr>
                        <?php endforeach;?>                                <?php endif;?>                            
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</article>
<script src="<?=base_url('assets/plugin/slimscroll/jquery.slimscroll.min.js')?>"></script>
<style>    body{font-family: tahoma }    p{margin-bottom: 10px}    textarea { font-size: 12px; }    .form-control{font-size: 12px;border-radius: 0px;}    .mess-content p{line-height: 16px}    .mess-content i{color:#2eb316}    .mess-content{max-height: 150px;overflow: auto}    .mess-content::-webkit-scrollbar {        width: 3px;        height: 3px;    }    .mess-content::-webkit-scrollbar-thumb {        background: #ccc;    }    .mess-content::-webkit-scrollbar-track {        background: #e6e6e6;    }</style>
<script type="text/javascript">    var url = '<?=base_url();?>';    $("#header").addClass('header_cate');    $('#clear-home').remove();    function sendMessage(obj){        var seller_name = $(obj).data('selername');        var seller_id = $(obj).data('sellerid');        var oid = $(obj).data('orderid');        var mess = $('#'+seller_name).val();        if(mess==''){            alert("Bạn chưa nhập nội dung !");        }else{            $.ajax({                url: url + 'users_frontend/updateMess',                dataType: "json",                type: "POST",                data:{seller_name:seller_name,seller_id:seller_id,oid:oid,mess:mess},                success : function(res){                    $('#mess_' + seller_name).html(res.text);                }            });        }    }    function save_note(obj){        var item_id = $(obj).data('item');        var note = $('#'+item_id).val();        $.ajax({            url: url + 'users_frontend/updateNote',            type: "POST",            dataType: "json",            data: {item_id:item_id,note:note},            success : function(res){                //$('#'+item_id).val('');                //$('#note_'+item_id).html(res.text);                window.location.reload();            }        });    }</script>
<script type="text/javascript">
  $('.squaredFour').click(function() {
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