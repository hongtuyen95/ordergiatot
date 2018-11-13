<article id="body_home">
    <div class="cate_control">
        <div class="container">
            <div class="row_pc">
                <h2 class="title_cate">Đơn hàng</h2>
            </div>
        </div>
    </div>
    <div class="clearfix-30"></div>
    <div class="menu_control">
        <div class="container">
            <div class="row_pc">
                <ul class="menu_control_lv">
                    <li><a href="<?=base_url()?>">Trang chủ</a></li>
                    <li><a href="<?=base_url('thong-tin-tai-khoan')?>">Thông tin cá nhân</a></li>
                    <li><a href="<?=base_url('hang-that-lac')?>">Hàng thất lạc</a></li>
                    <li class="active"><a href="<?=base_url('don-hang')?>">Đơn hàng</a></li>
                    <li><a href="<?=base_url('tai-chinh')?>">Tài chính</a></li>
                    <li><a href="<?=base_url('dang-xuat')?>">Thoát</a></li>
                </ul>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row_pc">
            <div class="col-md-2 col-xs-12">
                <div class="content_left">
                    <ul>
                        <li><a href="<?=base_url('don-hang')?>">Danh sách đơn hàng</a></li>
                        <li><a href="<?=base_url('cart/displayPayM')?>">Giỏ hàng</a></li>
                    </ul>
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
                                <p>
                                    Kho hàng :
                                    <?php foreach($this->depots as $depot) : ?>
                                        <?php if($depot->id == $order->ma_kho){echo $depot->name;}?>
                                    <?php endforeach;?>
                                </p>
                            </div>
                            <div class="col-sm-6">
                                <p>Tổng giá trị hóa đơn là : <span style="color:#e80707"><?=number_format($order->total_price);?></span></p>
                                <p>Số tiền đã thanh toán : <span style="color: #4fcc26"><?=number_format($order->payted)?> VNĐ</span></p>
                                <p>Số tiền còn thiếu : <span style="color:#e80707"><?=number_format($order->total_price - $order->payted);?> VNĐ</span></p>
                                <p>Tỷ giá : <?=number_format($this->option->exchange);?></p>
                                <p>Phí : <?=$user->fee;?> %</p>
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
                            <a href="<?=base_url('thanh-toan?id='.base64_encode($order->id))?>" class="btn btn-success btn-sm">Thanh toán</a>
                            <a href="<?=base_url('huy-don-hang?id='.base64_encode($order->id))?>" class="btn btn-danger btn-sm">Hủy</a>
                            <div class="clearfix-10"></div>
                            <table class="table table-bordered table-cart">
                                <tr class="active">
                                    <th width="5%">STT</th>
                                    <th width="10%">Hình ảnh</th>
                                    <th>Thông tin sản phẩm</th>
                                    <th class="text-center" width="10%">Đơn giá</th>
                                    <th class="text-center" width="5%">SL</th>
                                    <th class="text-center" width="10%">Thành tiền</th>
                                    <th class="text-center" width="10%">Phí</th>
                                    <th width="30%">Mã đơn vận</th>
                                </tr>
                                <?php if(count($shops)) : ?>
                                    <?php foreach($shops as $shop) : ?>
                                        <?php $sp = 0;$tm = 0;$th=0; ?>
                                        <tr class="info">
                                            <td colspan="8">
                                                <strong>Người bán :</strong> <strong style="color:#2eb316"><?=$shop;?></strong>
                                            </td>
                                        </tr>

                                        <?php if(count($carts)) : $stt = 0; ?>
                                            <?php foreach($carts as $cat) : $stt +=1; ?>
                                                <?php if($cat->seller_name == $shop) : ?>
                                                    <?php $sp +=1;$tm += $cat->quantity;$th += ($cat->price * $cat->quantity) + ($cat->price * $cat->quantity * $fee);?>
                                                    <tr>
                                                        <td width="5%" class="text-center"><?=$stt;?></td>
                                                        <td width="7%" class="text-center">
                                                            <img style="max-width: 65px" src="<?=$cat->item_image;?>" />
                                                        </td>
                                                        <td>
                                                            <p style="color:#1999d6;font-weight: bold"><?=$cat->item_name;?></p>
                                                            <p><?=$cat->item_size;?></p>
                                                        </td>
                                                        <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                                                            <p><?=number_format($cat->price);?></p>
                                                            <p>NDT</p>
                                                        </td>
                                                        <td class="text-center" style="color:#0fb0c2;font-weight: bold" width="5%">
                                                            <?=$cat->quantity;?>
                                                        </td>
                                                        <td style="font-weight: bold;color:#e85959" class="text-center" width="10%">
                                                            <?=number_format($cat->price * $cat->quantity,2);?>
                                                            <p>NDT</p>
                                                        </td>
                                                        <td class="text-center" style="color:#0fb0c2;font-weight: bold">
                                                            <p><?=number_format($cat->price * $cat->quantity * $fee,2);?></p>
                                                            <p>NDT</p>
                                                        </td>
                                                        <td width="30%">
                                                            <p>Phí nội địa : <span style="font-weight: bold;color: #f12c2c">0,00 NDT</span></p>
                                                            <p>Cân nặng : 0 Kg</p>
                                                            <p>Phí cân nặng : <span style="font-weight: bold;color: #f12c2c">0 VNĐ</span></p>
                                                            <p>Trạng thái : <span style="color:#ec85cd;font-weight: bold">Khởi tạo</span></p>
                                                            <label>Lời nhắn</label>
                                                            <p style="margin-bottom: 3px">
                                                                <textarea name="message[]" rows="1" class="form-control"></textarea>
                                                            </p>
                                                            <p>
                                                                <button class="btn btn-xs btn-info"><i class="fa fa-check"></i> Gửi lời nhắn</button>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                <?php endif;?>
                                            <?php endforeach;?>
                                        <?php endif;?>

                                        <tr style="background-color: #f1c5ddb3;color:#827575">
                                            <td colspan="8">
                                                <strong>Tổng số : <span style="color:#e85959;"><?=$sp;?></span> Sản phẩm (Thực mua: <span style="color:#13b727"><?=$sp;?></span>) - Số tiền : <span style="color: #e85959"><?=number_format($th,2);?> NDT</span> (Tiền hàng thực mua: <span style="color:#13b727"><?=number_format($th * $this->option->exchange);?> VNĐ</span>)</strong>
                                            </td>
                                        </tr>
                                    <?php endforeach;?>
                                <?php endif;?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</article>

<style>
    body{font-family: tahoma  !important;}
    p{margin-bottom: 10px}
</style>
<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>