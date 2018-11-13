<article id="body_home">
    <div class="cate_control">
        <div class="container">
            <div class="row_pc">
                <h2 class="title_cate">Giao dịch</h2>
            </div>
        </div>
    </div>
    <div class="clearfix-20"></div>
    <div class="container">
        <div class="row_pc">
            <div class="col-md-2 col-left col-xs-12">
                <div class="content_left" id="sidebar">
                    <?php echo $this->load->widget('danhmuc');?>
                </div>
            </div>
            <div class="col-md-10 col-xs-12">
                <div class="content_mid">
                    <div class="clearfix-10"></div>
                    <div class="panel panel-info">
                        <div class="panel-heading" style="margin: 5px 0">
                            <h5 style="margin: 0px"><strong>Thực hiện thanh toán cho đơn hàng : <?=$order->code;?></strong></h5>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="">
                                <input type="hidden" id="total_pay"  value="<?=$order->total_bill;?>">
                                <input type="hidden" id="prepay" name="prepay" value="<?=$order->total_bill;?>">
                                <input type="hidden" id="oid" name="oid" value="<?=$order->id;?>" />
                                <div class="form-group">
                                    <div style="font-weight: bold" class="text-right col-sm-5" for="email">Tổng giá trị đơn hàng :</div>
                                    <div class="col-sm-7">
                                        <span style="color:#ff0055;font-weight: bold"><?=number_format($order->total_bill);?> VNĐ<span>
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
                                        <span style="color:#ff0055;font-weight: bold"><?=number_format($order->total_bill - $order->payted);?> VNĐ</span>
                                    </div>
                                </div>
                                <?php if(empty($order->payted)) : ?>
                                    <div class="form-group">
                                        <div style="font-weight: bold" class="text-right col-sm-5" for="email">
                                           <p>Đặt cọc <input type="radio" checked="checked" class="clickme" name="deposit-radio" value="100">&nbsp;100%<input type="radio" class="clickme" name="deposit-radio" value="70">&nbsp;70%</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p>
                                                <span id="deposit-value" style="color:#ff0055;font-weight: bold"><?=number_format($order->total_bill);?></span> <span style="color:#ff0055;font-weight: bold">VNĐ<span>
                                            </p>
                                        </div>
                                    </div>
                                <?php endif;?>
                                <?php if(!empty($order->payted) && $order->payted <  $order->total_bill) : ?>
                                    <div class="form-group">
                                        <div style="font-weight: bold" class="text-right col-sm-5" for="email">Lời nhắn :</div>
                                        <div class="col-sm-7">
                                            <textarea class="form-control" id="comment" name="comment"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div style="font-weight: bold" class="text-right col-sm-5" for="email">
                                            <input type="hidden" id="paydebt" value="<?=$order->total_bill - $order->payted;?>" />
                                            <button class="btn btn-sm btn-info" id="pay_debt" type="button">Hoàn tất thanh toán</button>
                                        </div>
                                    </div>

                                <?php endif;?>
                                <?php if(empty($order->payted)) : ?>
                                    <div class="form-group">
                                        <div style="font-weight: bold" class="text-right col-sm-5" for="email">Lời nhắn :</div>
                                        <div class="col-sm-7">
                                            <textarea class="form-control" id="comment" name="comment"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div style="font-weight: bold" class="text-right col-sm-5" for="email">
                                            <button class="btn btn-sm btn-info"  id="deposit" type="button">Đồng ý đặt cọc</button>
                                        </div>

                                    </div>
                                <?php endif ;?>
                                <?php if($order->payted  ==  $order->total_bill) : ?>
                                    <div class="form-group">
                                        <div style="font-weight: bold" class="text-right col-sm-5">
                                            <button class="btn btn-sm btn-success"  type="button">Đã hoàn tất thanh toán</button>
                                        </div>
                                    </div>
                                <?php endif ;?>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="clearfix-10"></div>
                <div class="panel panel-info">
                    <div class="panel-heading text-center" style="padding:5px 0">
                        <h3 style="margin: 5px 0">Nạp tiền vào tài khoản</h3>
                    </div>
                    <div class="panel-body">
                        <p>
                            Nhằm tiết kiếm thời gian cho khách hàng. Qúy khách hàng nên nộp tiền tiền tại văn phòng hoặc chuyển khoản qua ngân hàng và gọi điện cho Ordergiatot.vn.<br>
                            Chúng rôi sẽ xác nhận và chuyển tiền vào tài khoản Qúy khách trên hệ thống trong thời gian sớm nhất. Sau khi nạp vào tài khoản trên hệ thống chúng tôi<br>
                            sẽ thông báo luôn cho Qúy khách hàng để quý khách hàng có thể tiếp tục đặt hàng.&nbsp;<br>
                            &nbsp;<br>
                            Điện thoại: <?=@$this->option->hotline1;?><br>
                            Địa chỉ:&nbsp; <?=@$this->option->address;?><br>
                            &nbsp;<br>
                            <strong>TÀI KHOẢN NGÂN HÀNG </strong><br>
                            <div>
                                <p style="font-weight: bold">1. Chủ tài khoản : <span style="color: #f12c2c">Phạm Thùy Linh</span></p>
                                <p style="padding-left: 15px;color:#35ad20;font-weight: bold">19021517238889 - Techcombank Ba Đình</p>
                            </div>
                            <div>
                                <p style="font-weight: bold">2. Chủ tài khoản : <span style="color: #f12c2c">Nguyễn Hoàng Hải</span></p>
                                <p style="padding-left: 15px;color:#35ad20;font-weight: bold">0611001753719 - VietCombank Ba Đình</p>
                                <p style="padding-left: 15px;color:#35ad20;font-weight: bold">42710000429696 - BIDV Quang Minh</p>
                                <p style="padding-left: 15px;color:#35ad20;font-weight: bold">1507205568166 - Agribank Cầu Giấy</p>
                            </div>

                            Có 2&nbsp;hình thức thanh toán bạn có thể chọn:
                        <ul>
                            <li><strong>Nộp tiền mặt tại văn phòng.</strong></li>
                            <li><strong>Chuyển khoản qua ngân hàng.</strong></li>
                        </ul>
                        <strong><em>Lưu ý:&nbsp;</em></strong><br>
                        <em>Số tiền mà bạn&nbsp;nạp vào tài khoản cho&nbsp;chúng tôi được hiểu như một quỹ tiền riêng của bạn trên ordergiatot.vn. Mỗi lần bạn&nbsp;mua hàng thì hệ thống của chúng tôi sẽ tự động trừ tiền&nbsp;tương ứng với món hàng đó.&nbsp;Số tiền nạp phải bằng hoặc lớn hơn giá trị đơn hàng.</em>
                        </p>
                    </div>
                </div>
            </div>


        </div>
    </div>

</article>

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


    .layload{
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 1050;
        overflow: hidden;
        -webkit-overflow-scrolling: touch;
        outline: 0;
        background: rgba(0,0,0,0.3);
    }
    .loader {
        border: 16px solid #77e26d;
        border-top: 16px solid #3498db;
        border-radius: 50%;
        width: 80px;
        height: 80px;
        animation: spin 2s linear infinite;
        margin: 0 auto;
        z-index: 9999999;
        position: absolute;
        top:45%;
        left:45%;
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }
</style>


<script type="text/javascript">
    var url = '<?=base_url();?>';
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
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

    function thanhtoan(obj){
        /*var prepay = $('#prepay').val();
        var oid = $('#oid').val();
        var note = $('#comment').val();
        $.ajax({
            url : url + 'prepay',
            data: {oid:oid,prepay:prepay,note:note},
            dataType: "json",
            type: "POST",
            beforeSend: function() {
                $('body').append('<div class="layload"><div class="loader"></div></div>');
                $(obj).attr("disabled", true);
            },
            success : function(res){
                if(res.check == true){
                    window.location.href = url + 'lich-su-giao-dich';
                }else{
                    alert(res.mess);
                }
            },
            complete: function() {
                $('.layload').remove();
                $(obj).attr("disabled", false);
            }
        });*/
    }

    $("#deposit").click(function(){
        $("#deposit").attr("disabled", true);
        $("#deposit").remove();
        var prepay = $('#prepay').val();
        var oid = $('#oid').val();
        var note = $('#comment').val();
        $.ajax({
            url : url + 'prepay',
            data: {oid:oid,prepay:prepay,note:note},
            dataType: "json",
            type: "POST",
            beforeSend: function() {
                $('body').append('<div class="layload"><div class="loader"></div></div>');

            },
            success : function(res){
                if(res.check == true){
                    window.location.href = url + 'lich-su-giao-dich';
                }else{
                    alert(res.mess);
                }
            },
            complete: function() {
                $('.layload').remove();
                $("#deposit").attr("disabled", false);
            }
        });
    });

    $('#pay_debt').click(function(){
        $("#pay_debt").attr("disabled", true);
        $("#pay_debt").remove();
        var paydebt = $('#paydebt').val();
        var oid = $('#oid').val();
        var note = $('#comment').val();
        $.ajax({
            url : url + 'paydbt',
            data: {oid:oid,paydebt:paydebt,note:note},
            dataType: "json",
            type: "POST",
            beforeSend: function() {
                $('body').append('<div class="layload"><div class="loader"></div></div>');

            },
            success : function(res){
                if(res.check == true){
                    window.location.href = url + 'lich-su-giao-dich';
                }else{
                    alert(res.mess);
                }
            },
            complete: function() {
                $('.layload').remove();
                $("#pay_debt").attr("disabled", false);
            }
        });
    });
</script>