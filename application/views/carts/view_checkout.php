<form method="post" class="form-horizontal validate" id="form-checkout" action="<?=base_url('cart/createOrder')?>">
<div class="col-sm-12">
    <div class="clearfix-10"></div>
    <div class="col-md-2 col-left col-xs-12">
        <div class="content_left" id="sidebar">
            <?php echo $this->load->widget('danhmuc');?>
        </div>
    </div>
    <div class="col-md-10 col-xs-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Thông tin người mua
                </h3>
            </div>
        </div>
        
            <div class="form-group">
                <label class="col-sm-3 control-label" for="code">Họ và tên</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control validate[required] input-sm" placeholder="" name="fullname" id="fullname" value="<?=@$user->fullname;?>">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label" for="code">Địa chỉ</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control validate[required] input-sm" placeholder="" name="address" id="address" value="<?=$user->address;?>">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label" for="code">Email</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control validate[required,custom[email]] input-sm" placeholder="" name="email" id="email" value="<?=$user->email;?>">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label" for="code">Điện thoại</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control input-sm validate[required,custom[phone]]" placeholder="" name="phone" id="phone" value="<?=@$user->phone;?>">
                </div>
            </div>
            <div class="form-group">
                
                <label class="col-sm-3 control-label" for="code">Lời nhắn</label>
                <div class="col-sm-6">
                    <textarea class="form-control" name="note" id="note"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="">Kho hàng</label>
                <div class="col-sm-6">
                    <?php if(count($this->depots)) : ?>
                        <select name="depot" id="depot" class="form-control">
                            <?php foreach($this->depots as $depot) : ?>
                                <option <?php if(@$user->depot == $depot->id) : ?>selected<?php endif;?> value="<?=$depot->id;?>"><?=$depot->name;?></option>
                            <?php endforeach;?>
                        </select>
                    <?php endif;?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label" for="code">

                </label>
                <div class="col-sm-9">
                    <button type="button" id="btn_checkout" class="btn btn-primary btn-md">Gửi đơn hàng</button>
                </div>
            </div>
        
        <div class="clearfix-10"></div>
        <div class="table-responsive">
            <table class="table table-bordered table-cart">
                <tr class="active">
                    <th width="10%"></th>
                    <th width="45%">Sản phẩm</th>
                    <th class="text-center" width="10%">Đơn giá</th>
                    <th class="text-center" width="10%">Số lượng</th>
                    <th class="text-center" width="10%">Thành tiền</th>
                    <th class="text-center" width="10%">Phí mua hàng</th>
                </tr>
                <?php $total = 0;$total_item =0 ;?>
                <?php if(count($carts)) : ?>
                    <?php if (count($shop)): ?>
                        <?php foreach ($shop as $key => $s): ?>
                                <tr>
                                    <td class="info" colspan="4">
                                        <strong>Người bán : <?=@$s;?></strong>
                                    </td>
                                    <td colspan="2">
                                        <input type="checkbox" <?php if ($check_phi_kiem_hang[$key] !=''): ?> checked <?php endif ?> name="phi_kiem_hang[]"> <strong> <span >Phí kiểm hàng</span></strong>
                                    </td>
                                </tr>
                            <?php foreach($carts as $cart) :  ?>
                                <?php
                                $total += ($cart['item_price']*$cart['qty']) + ($cart['item_price']*$cart['qty'] * $cart['fee']);
                                $total_item += $cart['qty'];
                                ?>
                                
                                <?php if ($cart['seller_name'] == $s): ?>
                                    <tr>
                                    <td>
                                        <a href="<?=@$cart['item_link'];?>" class="thumb">
                                            <img width="80" src="<?=@$cart['item_image'];?>">
                                        </a>
                                    </td>
                                    <td>
                                        <div class="info">
                                            <p class="link"><?=@$cart['item_name'];?> <a style="color:#27ab5c;font-weight: bold;font-size: 16px" href="<?=@$cart['item_link'];?>" target="_blank"><i class="fa fa-link"></i></a></p>
                                            <p class="desc">
                                                <?=$cart['color_size'];?>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        <p class="text-center"><?=number_format($cart['item_price'],2);?></p>
                                        <p class="text-center">NDT</p>
                                    </td>
                                    <td class="pro-qty text-center">
                                        <?=@$cart['qty'];?>
                                    </td>
                                    <td class="text-center" style="color:#ff0055">
                                        <p class="text-center" id="item_price_<?=$cart['rowid'];?>">
                                            <?=number_format($cart['item_price']*$cart['qty'],2);?>
                                        </p>
                                        <p class="center">
                                            NDT
                                        </p>
                                    </td>
                                    <td class="text-center" style="color: #ff0055">
                                        <input type="hidden" name="fee[]" value="<?=@$cart['fee'] *100;?>" />
                                        <input type="hidden" name="phi_kiem-hang[]" value="<?=@$cart['phi_kiem_hang'];?>" />
                                        <p>
                                            <?=number_format($cart['item_price']*$cart['qty']* $cart['fee'],2);?>
                                        </p>
                                        <p>NDT</p>
                                    </td>
                                </tr>
                                <?php endif ?>
                                
                                
                                
                            <?php endforeach;?>
                        <?php endforeach ?>
                    <?php endif ?>
                <?php else : ?>
                    <div class="col-sm-12"><p>Chưa có đơn hàng nào trong giỏ</p></div>
                <?php endif;?>
            </table>
        </div>
    </div>


</div>

<style>
    .form-control{border-radius: 0px;}
</style>

<link rel="stylesheet" href="<?= base_url('assets/plugin/ValidationEngine/css/validationEngine.jquery.css'); ?>">
<script src="<?= base_url('assets/plugin/ValidationEngine/js/jquery.validationEngine-vi.js');?>" charset="utf-8"></script>
<script src="<?= base_url('assets/plugin/ValidationEngine/js/jquery.validationEngine.js');?>"></script>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();

    $("#btn_checkout").click(function(){
        var check = $('#form-checkout').validationEngine('validate');
        if(check){
            $('#form-checkout').submit();
        }
    });
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
</form>