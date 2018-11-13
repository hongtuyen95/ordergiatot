<article id="body_home">
    <div class="cate_control">
        <div class="container">
            <div class="row_pc">
                <h2 class="title_cate"><?=lang('yourdetail');?></h2>
            </div>
        </div>
    </div>
    <div class="clearfix-30"></div>
    <div class="menu_control">
        <div class="container">
            <div class="row_pc">
                <ul class="menu_control_lv">
                    <li><a href="<?= base_url('')?>">Trang chủ</a></li>
                    <li class="active"><a href="<?= base_url('thong-tin-tai-khoan')?>"><?=lang('yourdetail');?></a></li>
                    <li><a href="<?=base_url('hang-that-lac')?>">Hàng thất lạc</a></li>
                    <li ><a href="<?=base_url('don-hang')?>">Đơn hàng</a></li>
                    <li><a href="<?=base_url('tracking')?>">Tracking</a></li>
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
                        <li class="active"><a href=""><?=lang('yourdetail');?></a></li>
                        <li><a href="<?= base_url('doi-mat-khau')?>">Đổi mật khẩu</a></li>
                        <li><a href="<?=base_url('tai-chinh')?>">Tài chính đơn hàng</a></li>
                        <li><a href="<?=base_url('nap-tien')?>">Nạp tiền</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10 col-xs-12">
                 <div class="clearfix-20"></div>
                <div class="content_mid">
                    <h3>Thông tin cá nhân <?=lang('yourdetail');?></h3>
                    <form action="<?= base_url('thong-tin-tai-khoan')?>" method="post" class="validate form-horizontal fom_cust" enctype="multipart/form-data" role="form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Tài khoản:</label>
                            <div class="col-sm-10">
                                <span class="name" style="color: red;font-weight: bold;"><?=@$user_item->email;?></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Họ và tên(*)</label>
                            <div class="col-sm-10">
                                <input type="text" class="validate[required] form-control input-sm " name="fullname"
                                                           value="<?=@$user_item->fullname;?>" placeholder=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Ngày sinh(*)</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="birthday" id="datepicker" value="<?=@$user_item->birthday;?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Giới tính</label>
                            <div class="col-sm-10">
                                <select name="sex" class="form-control" id="">
                                    <option value="1" <?php if(@$user_item->sex==1){ ?> selected <?php } ?>>Nam</option>
                                    <option value="0" <?php if(@$user_item->sex==0){ ?> selected <?php } ?>>Nữ</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Điện thoại(*)</label>
                            <div class="col-sm-10">
                                <input type="text" class="validate[required] form-control input-sm " name="phone"
                                                           value="<?= @$user_item->phone; ?>" placeholder=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Mã khách hàng(*)</label>
                            <div class="col-sm-10">
                                <span class="btn btn-danger">kh<?=@$user_item->id;?></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Địa chỉ</label>
                            <div class="col-sm-10">
                                <input type="text" name="address" class="validate[required] form-control" value="<?=@$user_item->address;?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Kho hàng</label>
                            <div class="col-sm-10">
                                <?php if(count($this->depots)) : ?>
                                    <select name="depot" id="depot" class="form-control">
                                        <?php foreach($this->depots as $depot) : ?>
                                            <option <?php if(@$user_item->depot == $depot->id) : ?>selected<?php endif;?> value="<?=$depot->id;?>"><?=$depot->name;?></option>
                                        <?php endforeach;?>
                                    </select>
                                <?php endif;?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button name="update_profiler"  type="submit" class="btn btn-primary">LƯU LẠI</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</article>

<link href="<?=base_url()?>assets/plugin/datetimepicker/jquery.datetimepicker.css" rel="stylesheet"/>
<script type="text/javascript" src="<?=base_url()?>assets/plugin/datetimepicker/jquery.datetimepicker.js"></script>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();

    $('#datepicker').datetimepicker({
        timepicker:false,
        format:'d/m/Y',
    });
</script>
<script type="text/javascript">
    $(function(){
        $('#update_pass').click(function(){
            var check_form = $('#form_change_pass').validationEngine('validate');
            if(check_form){
                $('#form_change_pass').submit();
            }
        });
    });
    $(document).ready(function(){
         $(".validate").validationEngine();
        $('#province').change(function(){
            var provinceid = $(this).val();
            var baseurl = '<?php echo base_url();?>';
            
            $.ajax({
                type: "POST",
                dataType: "html",
                url: baseurl + 'ajax/ajax/district',
                data: {id:provinceid},
                success: function (res){
                    $('#district').html(res);
                }
            });
        });
    });

</script>