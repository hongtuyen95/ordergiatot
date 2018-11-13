<article id="body_home">
    <div class="list_danhmuc">
        <div class="container">
            <div class="row">
                <ul class="back_link">
                    <li><a href="<?=base_url();?>">Trang trủ</a></li>
                    <?=creat_break_crum($cate,$cate_current->id);?>
                </ul>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <section class="qts_mid_chitiet">
        <div class="container">
            <div class="row_pc">
                <div class="box_blue clearfix">
                    <div class="pull-left">
                        <h3><?php echo $item->name;?></h3>
                        <p>bảo vệ và làm sống lại xáp</p>
                    </div>
                    <div class="pull-right">
                        <a href="<?=site_url('danh-muc/'.$cate_current->alias);?>"><?=@$cate_current->name;?></a>
                    </div>
                </div>
                <div class="clearfix clearfix-40"></div>
                <div class="chitiet_product clearfix">

                    <div class="col-md-6">
                        <div class="row">
                            <div class="img_product img_chitiet">
                                <a href="" >
                                    <img class="w_100" src="<?=base_url('upload/img/products/'.$item->pro_dir.'/'.$item->image);?>" alt="<?php echo $item->name;?>">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="tinhnang_product ">
                                <h3>Tính năng</h3>
                                <ul>
                                    <li>Lực thâm nhập cao</li>
                                    <li>Tác vụ kéo dài theo thời gian</li>
                                    <li>Đọc tính chất thấm nước dầu</li>
                                </ul>
                            </div>
                            <div class="img_tinhnang">
                                <img src="<?=base_url();?>assets/css/img/quality1.png" alt="">
                                <span>Căn cứ dung môi</span>
                                <img src="<?=base_url();?>assets/css/img/quality2.png" alt="">
                                <span>Sáng</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix clearfix-40"></div>
                <div class="row">
                    <div class="col-md-10 col-xs-12">
                        <div class="mieuta title_chitiet">
                            <h3>Miêu tả</h3>
                            <p>Sáp bảo vệ và làm lại bằng sáp ong để tăng màu sắc và độ sáng của vật liệu</p>
                        </div>
                    </div>
                    <div class="col-md-10 col-xs-12">
                        <div class="tinhnang_kythuat title_chitiet">
                            <h3>Tinh năng kỹ thuật</h3>
                            <ul>
                                <li>Vật liệu: đá cẩm thạch, đá granit và đá đánh bóng</li>
                                <li> Xuất hiện: Chất lỏng đục</li>
                            </ul>
                            <p>Sử dụng chuyên nghiệp</p>
                            <p>Đối với dòng tự động</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="form_contact">
        <div class="container">
            <div class="row_pc">
                <div><h4 class="title_form_contact"><?=lang('text_head_form');?></h4></div>
                <div class="row">
                    <form action="<?=base_url('contact/addContact')?>" id="form-info" name="" method="post">
                    <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <label for="text"><?=lang('name');?> *</label>
                                <input type="text" name="name" class="form-control validate[required]" id="name">
                            </div>
                            <div class="form-group">
                                <label for="">Email*</label>
                                <input type="text" name="email" class="form-control validate[required,custom[email]]" id="email" >
                            </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <label for="email"><?=lang('phone');?> *</label>
                            <input type="text" class="form-control validate[required]" name="phone" id="phone" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="text"><?=lang('address');?></label>
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
                                <?=lang('agree');?>
                              </span>
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6">
                        <button type="button" id="comfirm" class="btn btn-primary btn-block button_xacnhan"><?=lang('confirmmation');?></button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </section>
    <?php if(count($lists)) : ?>
    <div class="clearfix clearfix-35"></div>
    <section class="sp_lienquan">
        <div class="container">
            <div class="row_pc">
                <div class="title_splienquan"><h3>sản phẩm liên quan</h3></div>
                <div class="row imgRow">
                    <?php foreach($lists as $list) : ?>
                        <div class="col-md-3 col-xs-6 col-480-12">
                            <div class="box_product">
                                <a href="" class="img_product reRenderImg">
                                    <img class="w_100" src="<?=base_url('upload/img/products/'.$list->pro_dir.'/thumbnail_2_'.$list->image);?>" alt="<?php echo $list->name;?>">
                                </a>
                                <h3>
                                    <a class="name_product"href="<?=site_url('san-pham/'.$list->alias);?>">
                                        <?php echo $list->name;?>
                                    </a>
                                </h3>
                                <p><?=LimitString(strip_tags($list->description),120,'...');?></p>
                                <a href="<?=site_url('danh-muc/'.$list->alias);?>" class="dtn"><?=@$list->cate_alias;?></a>
                                <a href="<?=site_url('san-pham/'.$list->alias);?>" class="go_product"><?=lang('goto_product');?></a>
                            </div>
                        </div>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
    </section>
    <?php endif;?>
</article>

<script type="text/javascript">
    $('#comfirm').click(function(){
       var check = $("#form-info").validationEngine('validate');
        if(check){
            $("#form-info").submit();
        }
    });
</script>