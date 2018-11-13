<div class="container">
    <div class="row">
        <section id="title"><!-- TITLE -->
            <div class="container">
                <div class="row">
                    <h1><?= $store->title;?></h1>
                </div>
                <div class="clearfix-15"></div>
                <div class="row">
                    <?= $store->content;?>
                </div>
            </div>
        </section>
    </div>
</div>
<div class="clearfix-15"></div>
<?php echo $store->map;?>
<div class="clearfix-15"></div>
<div class="container">
    <div class="row">
        <div class="row form_contact ">
            <form action="<?=base_url('contact/addContact')?>" id="form-info" name="" method="post">
                <div class="col-md-6 col-xs-12">
                    <div class="form-group">
                        <label for="text">Họ tên  *</label>
                        <input type="text" name="name" class="form-control validate[required]" id="name">
                    </div>
                    <div class="form-group">
                        <label for="">Email*</label>
                        <input type="text" name="email" class="form-control validate[required,custom[email]]" id="email">
                    </div>
                </div>
                <div class="col-md-6 col-xs-12">
                    <div class="form-group">
                        <label for="email">Điện thoại *</label>
                        <input type="text" class="form-control validate[required]" name="phone" id="phone" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="text">Địa chỉ</label>
                        <input type="text" class="form-control" name="address" id="address" placeholder="">
                    </div>

                </div>
                <div class="col-md-12 col-xs-12">
                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="comment" placeholder=""></textarea>
                    </div>
                </div>
                <div class="col-md-9 col-xs-6">
                    <div class="checkbox">
                                <span>
                                    <input class="checkbox_btn validate[required]" value="1" name="agree" type="checkbox">
                                Tôi đống ý với việc xử lý dữ liệu cá nhân của tôi để gửi,bằng sms và/ hoặc email thông tin và truyền thông tin quảng cáo,cũng như bản tin của Chủ sở hữu liên quan đến các sáng kiến và /hoặc chi nhanh của riêng mình                              </span>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <button type="button" id="comfirm" class="btn btn-primary btn-block button_xacnhan">Xác nhận</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="clearfix-15"></div>
<div class="clearfix-15"></div>
<style>
    iframe{width: 100% !important;}
    p{margin: 10px 0}
    h1, h2, h3, h4{margin: 10px 0}
    address{line-height: 24px}
</style>
<script type="text/javascript">
    $('#comfirm').click(function(){
        var check = $("#form-info").validationEngine('validate');
        if(check){
            $("#form-info").submit();
        }
    });
</script>