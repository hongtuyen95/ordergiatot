<article id="body_home">
    <div class="list_danhmuc">
        <div class="container">

            <div class="row">
                <ul class="back_link">
                    <li><a href="<?=base_url();?>"><?=lang("home");?></a></li>
                    <?=creat_break_crum($cate,$cat->id);?>
                </ul>
            </div>

        </div>
    </div>
    <div class="clearfix"></div>
    <div class="title_danhmuc">
        <div class="container">
            <div class="row">
                <h3><?php echo $cat->name;?></h3>
            </div>
        </div>
    </div>
    <div class="clearfix clearfix-40"></div>
    <section class="main_industry">
        <div class="container">
            <div class="row_pc">
                <div class="row">
                    <div class="col-md-8">
                        <div class="img_industry ">
                            <img class="w_100" src="<?=base_url($cat->image);?>" alt="<?php echo $cat->name;?>">
                        </div>
                        <div class="text_industry">
                            <?php echo $cat->description;?>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box_download">
                            <h3>download</h3>
                            <p>Download catalog Tenax, to learn about the range of products able to respond to your needs</p>
                            <ul class="list_download">
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                                <li><a href=""><span><i class="fa fa-download"></i></span>Flyer Tenax Total Quality</a></li>
                            </ul>
                        </div>
                        <div class="video">
                            <iframe width="100%" height="205" src="https://www.youtube.com/embed/<?=@$cat->video;?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <div class="clearfix clearfix-30"></div>
    <?php if(count($lists)) : ?>
    <section class="sp_lienquan">
        <div class="container">
            <div class="row_pc">
                <div class="title_splienquan"><h3><?=lang('product');?></h3></div>
                <div class="row imgRow">
                    <?php foreach($lists as $list) : ?>
                        <div class="col-md-3 col-xs-6 col-480-12">
                            <div class="box_product">
                                <a href="<?=site_url('san-pham/'.$list->alias);?>" class="img_product reRenderImg"  >
                                    <img class="w_100" src="<?=base_url('upload/img/products/'.$list->pro_dir.'/thumbnail_2_'.$list->image);?>" alt="<?=@$list->name;?>">
                                </a>
                                <h3><a class="name_product"href="<?=site_url('san-pham/'.$list->alias);?>"><?=@$list->name;?></a></h3>
                                <p><?=LimitString(strip_tags($list->description),120,'...');?></p>
                                <a href="#" class="dtn"><?=@$list->cat_name;?></a>
                                <a href="<?=site_url('san-pham/'.$list->alias);?>" class="go_product"><?=lang('detail');?></a>
                            </div>
                        </div>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
    </section>
    <?php endif;?>
    <div class="clearfix clearfix-30"></div>
    <div class="all_product">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center" >
                    <a href="<?=site_url('danh-muc/'.$cat->alias);?>" class="btn btn-default">all product <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix clearfix-30"></div>
</article>