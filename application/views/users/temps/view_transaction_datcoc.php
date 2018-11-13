<div class="col-sm-12">
    <div class="">
        <div class="col-md-2 col-left col-xs-12">
            <div class="content_left" id="sidebar">
                <?php echo $this->load->widget('danhmuc');?>
            </div>
        </div>

        <div class="col-md-10 col-xs-12 ">
            <div class="content_mid">
                <div class="clearfix-10"></div>
                <div class="panel panel-info">
                    <div class="panel-heading" style="margin: 5px 0">
                        <h5 style="margin: 0px"><strong>Thực hiện thanh toán cho đơn hàng : <?=$order->code;?></strong></h5>
                    </div>
                    <div class="panel-body">
                        <form id="form-deposit" class="form-horizontal" action="">
                            <input type="hidden" id="total_pay"  value="<?=$order->total_price;?>">
                            <input type="hidden" id="prepay" name="prepay" value="<?=$order->total_price;?>">
                            <input type="hidden" id="oid" name="oid" value="<?=$order->id;?>" />
                            <div class="form-group">
                                <div style="font-weight: bold" class="text-right col-sm-5" for="email">Tổng giá trị đơn hàng :</div>
                                <div class="col-sm-7">
                                        <span style="color:#ff0055;font-weight: bold"><?=number_format($order->total_price);?> VNĐ<span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div style="font-weight: bold" class="text-right col-sm-5" for="email">Số tiền đã thanh toán :</div>
                                <div class="col-sm-7">
                                    <span style="color:#23c54d;font-weight: bold"><?=number_format($order->payted);?> VNĐ</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div style="font-weight: bold" class="text-right col-sm-5" for="email">Số tiền còn thiếu :</div>
                                <div class="col-sm-7">
                                    <span style="color:#ff0055;font-weight: bold"><?=number_format($order->total_price - $order->payted);?> VNĐ</span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-5 text-right">
                                    <strong>Số tiền :</strong>
                                </div>
                                <div class="col-sm-5">
                                    <input id="product_price" data-v-max="9999999999999" data-v-min="0" name="price" class="form-control input-sm validate[required]" value="">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-5 text-right">
                                    <strong>Mã đơn hàng :</strong>
                                </div>
                                <div class="col-sm-7">
                                    <strong><?=@$order->code;?></strong>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-5 text-right">
                                    <strong>Loại giao dịch :</strong>
                                </div>
                                <div class="col-sm-7">
                                    <strong>Đơn đặt hàng</strong>
                                </div>
                            </div>

                            <div class="form-group">
                                <div style="font-weight: bold" class="text-right col-sm-5" for="email">Lời nhắn :</div>
                                <div class="col-sm-7">
                                    <textarea class="form-control" name="comment"></textarea>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <?php if($order->payted != null && $order->payted <  $order->total_price) : ?>
                                <div class="form-group">
                                    <div style="font-weight: bold" class="text-right col-sm-5" for="email">
                                        <input type="hidden" id="paydebt" value="<?=$order->total_price - $order->payted;?>" />
                                        <button class="btn btn-sm btn-info" id="pay_debt" type="button">Hoàn tất thanh toán</button>
                                    </div>
                                </div>
                            <?php else : ?>
                                <div class="form-group">
                                    <div style="font-weight: bold" class="text-right col-sm-5" for="email">
                                        <button class="btn btn-md btn-success" id="deposit" type="button">Cập nhật</button>
                                    </div>
                                </div>
                            <?php endif ;?>
                        </form>
                    </div>
                </div>
                <div class="clearfix-25"></div>
                <div class="panel panel-info">
                    <div class="panel-heading text-center" style="padding:5px 0">
                        <h3 style="margin: 5px 0">Nạp tiền vào tài khoản</h3>
                    </div>
                    <div class="panel-body">
                        <p>
                            Nhằm tiết kiếm thời gian cho khách hàng. Qúy khách hàng nên nộp tiền tiền tại văn phòng hoặc chuyển khoản qua ngân hàng và gọi điện cho Dathangchina247.<br>
                            Chúng rôi sẽ xác nhận và chuyển tiền vào tài khoản Qúy khách trên hệ thống trong thời gian sớm nhất. Sau khi nạp vào tài khoản trên hệ thống chúng tôi<br>
                            sẽ thông báo luôn cho Qúy khách hàng để quý khách hàng có thể tiếp tục đặt hàng.&nbsp;<br>
                            &nbsp;<br>
                            Điện thoại: <?=@$this->option->hotline1;?><br>
                            Địa chỉ:&nbsp; <?=@$this->option->address;?><br>
                            &nbsp;<br>
                            <strong>TÀI KHOẢN NGÂN HÀNG </strong><br>
                            <?=@$this->option->shipping;?>
                            Có 2&nbsp;hình thức thanh toán bạn có thể chọn:
                        <ul>
                            <li><strong>Nộp tiền mặt tại văn phòng.</strong></li>
                            <li><strong>Chuyển khoản qua ngân hàng.</strong></li>
                        </ul>
                        <strong><em>Lưu ý:&nbsp;</em></strong><br>
                        <em>Số tiền mà bạn&nbsp;nạp vào tài khoản cho&nbsp;chúng tôi được hiểu như một quỹ tiền riêng của bạn trên dathangChina247. Mỗi lần bạn&nbsp;mua hàng thì hệ thống của chúng tôi sẽ tự động trừ tiền&nbsp;tương ứng với món hàng đó.&nbsp;Số tiền nạp phải bằng hoặc lớn hơn giá trị đơn hàng.</em>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix-10"></div>

    </div>
</div>
<style>

    body{font-size: 14px !important;}
    .content_mid .form-group span{margin: 0px !important;}
    .content_mid .form-group .form-control{width: 100% !important;max-width: 100% !important;}
    .panel-body p{
        margin: 10px 0;
        line-height: 24px !important;
    }
    .panel-body ul li h6 {
        text-transform: uppercase;
        color: #38b70f;
        font-weight: bold;
    }
    .panel-body ul li {
        line-height: 20px;
        padding-left: 10px;
        position: relative;
        margin-bottom: 5px;
    }
    .panel-body ul li p{margin: 5px !important;color: #ff0055;font-weight: bold}
</style>
<script src="<?= base_url('assets/plugin/autonumber/autoNumeric.js') ?>"></script>
<script src="<?= base_url('assets/plugin/autonumber/jquery.number.js') ?>"></script>

<script type="text/javascript">
    var url = '<?=base_url();?>';
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
    $('#product_price').autoNumeric(0);
    function number_format(nStr)
    {
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2;
    }
    $('input[name=deposit-radio]').click(function(){
        var prepay = parseInt($(this).val());
        var total_pay = parseInt($('#total_pay').val());
        var deposit = (prepay * total_pay) / 100;
        $('#deposit-value').text(number_format(deposit));
        $('#prepay').val(deposit);
    });

    $("#deposit").click(function(){
        var price = $('#product_price').val();
        var comment = $('textarea[name="comment"]').val();
        var oid = $('#oid').val();
        var payment = $('#payment').val();
        var check = $('#form-deposit').validationEngine('validate');
        if(check){
            $.ajax({
                url : url + 'prepay',
                data: {oid:oid,price:price,comment:comment,payment:payment},
                dataType: "json",
                type: "POST",
                success : function(res){
                    if(res.check == true){
                        window.location.href = url + 'lich-su-giao-dich';
                    }else{
                        alert(res.mess);
                    }
                }
            });
        }
    });

    $('#pay_debt').click(function(){
        var paydebt = $('#paydebt').val();
        var oid = $('#oid').val();
        $.ajax({
            url : url + 'paydbt',
            data: {oid:oid,paydebt:paydebt},
            dataType: "json",
            type: "POST",
            success : function(res){
                if(res.check == true){
                    window.location.href = url + 'don-hang';
                }else{
                    alert(res.mess);
                }
            }
        });
    });
</script>