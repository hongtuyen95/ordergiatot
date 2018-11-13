<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
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
        <div class="name_page" style="font-size: 16px"><i class="fa fa-money"></i> Thanh toán đơn hàng</div>
    </div>
    <div class="content_page_donhang">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-file-text-o"></i> <strong style="color:#23c54d">Đơn hàng : <?=@$order->code;?></strong>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="">
                    <input type="hidden" id="total_pay"  value="<?=$order->total_price;?>">
                    <input type="hidden" id="prepay" name="prepay" value="<?=$order->total_price;?>">
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
                                <p><input type="radio"  class="clickme" name="deposit-radio" value="50">&nbsp;50%<input type="radio" class="clickme" name="deposit-radio" value="30">&nbsp;30%</p>

                            </div>
                            <div class="col-sm-7">
                                <p>
                                    <span id="deposit-value" style="color:#ff0055;font-weight: bold"><?=number_format($order->total_price);?></span> <span style="color:#ff0055;font-weight: bold">VNĐ<span>
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
                                <button class="btn btn-sm btn-info" id="pay_debt" type="button">Thanh toán</button>
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
                                <button class="btn btn-sm btn-info" id="deposit" type="button">Đồng ý đặt cọc</button>
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
</div>
<script type="text/javascript">
    var url = '<?=base_url();?>';
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
        var prepay = $('#prepay').val();
        var oid = $('#oid').val();
        var note = $('#comment').val();
        $.ajax({
            url : url + 'vnadmin/exchange/prepay',
            data: {oid:oid,prepay:prepay,note:note},
            dataType: "json",
            type: "POST",
            success : function(res){
                if(res.check == true){
                    window.location.href = url + 'vnadmin/exchange/index';
                }else{
                    alert(res.mess);
                }
            }
        });
    });

    $('#pay_debt').click(function(){
        var paydebt = $('#paydebt').val();
        var oid = $('#oid').val();
        var note = $('#comment').val();
        $.ajax({
            url : url + 'vnadmin/exchange/updatePay',
            data: {oid:oid,paydebt:paydebt,note:note},
            dataType: "json",
            type: "POST",
            success : function(res){
                if(res.check == true){
                    window.location.href = url + 'vnadmin/exchange/index';
                }else{
                    alert(res.mess);
                }
            }
        });
    });
</script>