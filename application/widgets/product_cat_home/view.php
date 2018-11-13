<section class="qts_content_home ">
<?php if(count($cate_home)):
            foreach($cate_home as $cate):?>
    <h2 class="title_home"><a href="<?= base_url('danh-muc/'.$cate->alias.'.html')?>"><?= $cate->name?></a></h2>

    <div class="clearfix"></div>

    <div class="row_2">
         <?php if(count($cate->pro)):
                foreach($cate->pro as $pro):?>
                <!-- begin tem pro home -->
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                    <div class="row_13">
                        <!-- begin sub temp pro -->
                        <div class="full_box_sp">
                            <div class="img_box_sp h_7488">
                                <a href="<?= base_url('san-pham/'.$pro->alias.'.html')?>"><img
                                        src="<?=base_url('upload/img/products/'.$pro->pro_dir.'/thumbnail_1_'.@$pro->image)?>"
                                        class="w_100" alt="<?= $pro->name ?>"/></a>
                            </div>
                            <div class="text_box_sp">
                                <h3 class="name_sp">
                                    <a href="<?= base_url('san-pham/'.$pro->alias.'.html')?>"><?= $pro->name ?></a>
                                </h3>
                                <p><strong><?= number_format($pro->price_sale)?></strong><span>đ</span></p>

                                <a title="" href="<?= base_url('san-pham/'.$pro->alias.'.html')?>" class="btn buy-prod" >Mua hàng</a>
                            </div>
                        </div>
                        <!-- end sub temp pro -->
                    </div>
                </div>
                <!-- end tem pro home -->
               
             <?php endforeach;endif;?>
              <div class="clearfix"></div>
    </div>
    
    
     <?php endforeach;endif;?>
    
</section>
 <div class="clearfix"></div>