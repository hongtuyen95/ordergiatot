<div class="clearfix-10"></div>
<div class="col-sm-12">
    <div class="col-md-2 col-left col-xs-12">
        <div class="content_left" id="sidebar">
            <?php echo $this->load->widget('danhmuc');?>
        </div>
    </div>
    <div class="col-md-10 col-xs-12">
        <div class="clearfix">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Giỏ hàng</h3>
                </div>
            </div>
            <div class="clearfix-5"></div>
            <?php if(count($shops)) : ?>
                <form id="form-confirm" name="formorder" method="post" action="<?=base_url('gui-thong-tin-don-hang');?>">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-2">
                                    <input name="checkall" id="checkall" onclick="DoCheck(this.checked,'formorder',0)" class="cartid" value="" type="checkbox"> <strong>Chọn tất cả</strong>
                                </div>
                                <div class="col-sm-8 text-center" style="font-size: 14px">
                                    <strong>Tổng số shop : <span class="total_shop"><?=count($shops);?></span> Tổng số link : <span class="total_links">0</span> Tổng số sản phẩm : <span class="total_items">0</span> Tổng tiền : <span class="total_prices">0</span> đ</strong>

                                </div>
                                <div class="col-sm-2 text-center">
                                    <button onclick="bookinginthesun()" type="button" class="btn btn-success btn-lg">Đặt hàng</button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-cart">
                            <tr class="active">
                                <th width="3%"></th>
                                <th width="">Sản phẩm</th>
                                <th class="text-center" width="10%">Số lượng</th>
                                <th class="text-center" width="15%">Đơn giá</th>
                                <th class="text-center" width="15%">Thành tiền</th>
                                <th class="text-center" width="10%">Phí mua hàng</th>
                                <th width="10%" class="text-center">Thao tác</th>
                            </tr>
                            <?php foreach($shops as $shop) : ?>
                                <tr class="info">
                                    <td></td>
                                    <td colspan="6">
                                        <strong>Người bán : <span style="color:#27ab5c ;"><?=$shop;?></span></strong>
                                    </td>
                                </tr>
                                <?php $total = 0;$total_item =0 ;?>
                                <?php if(count($carts)) : ?>
                                    <?php foreach($carts as $cart) :  ?>
                                        <?php
                                        $total += ($cart['item_price'] * $cart['qty']) + ($cart['item_price']*$cart['qty'] * $fee);
                                        $total_item += $cart['qty'];
                                        ?>
                                        <?php if($cart['seller_name'] == $shop) : ?>
                                            <tr>
                                                <td class="text-center">
                                                    <input name="rowid[]" onclick="DoCheckOne('formorder')" id="rowid" class="cartid" value="<?=$cart['rowid'];?>" type="checkbox">
                                                </td>
                                                <td>
                                                    <div class="cart-img">
                                                        <a target="_blank" href="<?=@$cart['item_link'];?>" class="thumb">
                                                            <img width="80" src="<?=@$cart['item_image'];?>">
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        <p class="link"><a href="<?=@$cart['item_link'];?>" target="_blank" style="color:#197cd4;font-weight: bold"><?=@$cart['item_name'];?> </a></p>
                                                        <p class="desc">
                                                            <?=$cart['color_size'];?>
                                                        </p>
                                                        <div>
                                                            <input type="text" value="<?=@$cart['comment'];?>" data-id="<?=$cart['rowid'];?>" onchange="saveNote($(this))" placeholder="Ghi chú cho sản phẩm" class="form-control note" style="border: none;box-shadow: none;color:#ff0055;border-bottom: 1px dashed #ddd;">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="pro-qty text-center">
                                                    <input type="number" min="1" value="<?=@$cart['qty'];?>"  data-id="<?=$cart['rowid'];?>" onchange="updateQtyItemCart($(this))" id="quantity<?=$cart['rowid'];?>" name="qty[]" class="input-sm form-control text-center quantity-input">
                                                </td>
                                                <td class="text-center">
                                                    <p class="text-center"  style="color:#ff0055"><?=number_format(@$cart['item_price'] * $this->option->exchange);?> VNĐ</p>
                                                    <p class="text-center">¥ <?=number_format(@$cart['item_price'],2);?></p>
                                                </td>
                                                <td class="text-center">
                                                    <p class="text-center"  style="color:#ff0055">
                                                        <?=number_format($cart['item_price'] * $cart['qty'] * $this->option->exchange);?> VNĐ
                                                    </p>
                                                    <p class="text-center" id="item_price_<?=$cart['rowid'];?>">
                                                        ¥ <?=number_format($cart['item_price']*$cart['qty'],2);?>
                                                    </p>
                                                </td>
                                                <td class="text-center">
                                                    <p style="color: #ff0055">
                                                        <?=number_format($cart['item_price'] * $cart['qty'] * $fee * $this->option->exchange);?> VNĐ
                                                    </p>
                                                    <p>
                                                        <?php $pmh = $cart['item_price']*$cart['qty']* $fee; ?>
                                                        ¥ <?=number_format($pmh,2);?>
                                                    </p>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?=base_url('cart/deleteItemCart?id='.$cart['rowid']);?>" class="btn btn-xs btn-warning"><i class="fa fa-trash"></i> Xóa</a>
                                                </td>
                                            </tr>
                                        <?php endif;?>
                                    <?php endforeach;?>
                                <?php endif;?>
                            <?php endforeach;?>
                        </table>


                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-2">
                                    <input name="checkAll" id="checkall" onclick="DoCheck(this.checked,'formorder',0)" class="cartid" value="" type="checkbox"> <strong>Chọn tất cả</strong>
                                </div>
                                <div class="col-sm-8 text-center" style="font-size: 14px">
                                    <strong>Tổng số shop : <span class="total_shop"><?=count($shops);?></span> Tổng số link : <span class="total_links">0</span> Tổng số sản phẩm : <span class="total_items">0</span> Tổng tiền : <span class="total_prices">0</span> đ</strong>

                                </div>
                                <div class="col-sm-2 text-center">
                                    <button type="button" onclick="bookinginthesun()" class="btn btn-success btn-lg">Đặt hàng</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </form>
            <?php else : ?>
                <h2>Giỏ hàng hiện tại đang trống...</h2>
            <?php endif;?>
        </div>
    </div>
</div>
<div class="clearfix"></div>

<style>
    .cart-img{display: inline-block;float:left;margin-right: 10px}
    p{margin-bottom: 5px !important;}

    .note::-webkit-input-placeholder {color: #ea2b2b;}

    .info strong{color: #27ab5c !important;}



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
    $('.quantity-input').change(function(){
        var qty = $(this).val();
        if(qty == ''){
            qty = 1;
        }
        if(qty < 0){
            qty = 0 - qty;
        }
        $(this).val(qty);
    });

    function updateQtyItemCart(obj){
        var id = $(obj).data('id');
        var qty = $(obj).val();
        $.ajax({
            url: url + 'cart/updateQtyItemCart',
            dataType: "json",
            type: "POST",
            data: {id:id,qty:qty},
            success:function(res){
                location.reload();
            }
        });
    }
    function saveNote(obj){
        var id = $(obj).data('id');
        var note = $(obj).val();
        $.ajax({
            url: url + 'cart/updateNoteCartItemById',
            data: {id:id,note:note},
            dataType: "json",
            type: "POST",
            success : function(res){
                $(obj).val(note);
            }
        });
    }

    $("#header").addClass('header_cate');
    $('#clear-home').remove();
    $('#removeitems').click(function () {
        var params = '';
        if ($('.cartid:checked').length == 0) {
            alert("Hãy chọn sản phẩm");
        } else {
            $('.cartid:checked').each(function (i, elm) {
                params += '&cartid=' + $(this).val();
            }).promise().done(function () {
                var url = 'cart/RemoveAll' + '?' + params;
                console.log(url);
                window.location = url;
            });
        }
    });
    $('#sendcheckoutitems').click(function () {
        var pr = '';
        if ($('.cartid:checked').length == 0) {
            alert("Hãy chọn sản phẩm");
        } else {
            $('.cartid:checked').each(function (i, elm) {
                pr += '&cartid=' + $(this).val();
            }).promise().done(function () {
                var link = url + 'cart/checkOut' + '?' + pr;
                window.location = link;
            });
        }
    });
    $('#senditems').click(function(){
        var link = url + 'cart/checkOut';
        window.location = link;
    });
</script>

<script type="text/javascript" src="<?=base_url()?>assets/js/front_end/order.js"></script>