<?php if(count($pages)) : ?>
<div class="sc_counter">
        <div class="container">
            <div class="row_pc">
                <div class="row_10">
                    <?php foreach($pages as $page) : ?>
                        <div class="col-md-3 col-xs-6 col-480-12 pdd_10">
                            <div class="txt_counter">
                                <h3><a><?php echo $page->name;?></a></h3>
                                <p>
                                    <?=strip_tags($page->description);?>
                                </p>
                            </div>
                        </div>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
<?php endif;?>    
    <div class="sc_slider_counter">
        <div class="container">
            <div class="row_pc">
                <div class="owl-carousel slider_counter">
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct1.png" alt=""></span>
                            <span class="number_ct">785</span>
                            <p>Đơn hàng đang đặt</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct2.png" alt=""></span>
                            <span class="number_ct">328</span>
                            <p>Đơn hàng đang vận chuyển</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct3.png" alt=""></span>
                            <span class="number_ct">578</span>
                            <p>Đơn chuẩn bị giao</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct4.png" alt=""></span>
                            <span class="number_ct">578</span>
                            <p>Đơn đã hoàn thành</p>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="clearfix-60"></div>