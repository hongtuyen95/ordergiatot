<article id="body_home">
    <div class="list_danhmuc">
        <div class="container">
            <div class="row">
                <ul class="back_link">
                    <li><a href="<?=base_url();?>"><?=lang('home');?></a></li>
                    <?=creat_break_crum($cate,$cate_curent->id);?>
                </ul>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="title_danhmuc">
        <div class="container">
            <div class="row">
                <h3><?php echo $cate_curent->name;?></h3>
            </div>
        </div>
    </div>
    <div class="clearfix clearfix-40"></div>
    <section class="main_danhmuc">
        <div class="container">
            <div class="row_pc">
                <div class="row">
                    <div class="col-md-3 col-xs-12">
                        <div class="bar_danhmuc">
                            <div class="xemtatca">
                                <a href="" class="btn btn-block ">
                                    xem tất cả các danh mục
                                </a>
                            </div>
                            <div class="box_xemtatca panel panel-default">
                                <div class="panel-heading panel_top">tìm kiếm theo tài liệu</div>
                                <div class="panel-body panel_bottom">
                                    <a href="" class="btn btn-block product_1">đá tự nhiện</a>
                                    <a href="" class="btn btn-block product_2">đá tự nhiện</a>
                                    <a href="" class="btn btn-block product_3">đá tự nhiện</a>
                                </div>
                            </div>
                            <div class="box_xemtatca panel panel-default">
                                <div class="panel-heading panel_top">tìm kiếm theo tên</div>
                                <div class="panel-body panel_bottom">
                                    <input type="text" class="form-control" placeholder="Nhập tên sản phẩm">
                                    <p>Nhập tên vào ô tìm kiếm và nhấn Enter</p>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-9 col-xs-12">
                        <div class="huong_dan">
                            <?php echo $cate_curent->description;?>
                            <div class="toggle_huong_dan"><span><i class="fa fa-chevron-up"></i></span>
                                <script>
                                    $(document).ready(function(){
                                        $(".toggle_huong_dan span").click(function(){
                                            $(".huong_dan").toggleClass("active");
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="clearfix clearfix-20"></div>
                        <div class="list_product">
                            <div class="row imgRow">
                                <?php if(count($lists)) : ?>
                                    <?php foreach($lists as $list) : ?>
                                        <div class="col-md-4 col-xs-4 col-480-12">
                                            <div class="box_product">
                                                <a href="<?=site_url('san-pham/'.$list->alias);?>" class="img_product reRenderImg">
                                                    <img class="w_100" src="<?=base_url('upload/img/products/'.$list->pro_dir.'/thumbnail_2_'.$list->image);?>" alt="<?=@$list->name;?>">
                                                </a>
                                                <h3><a class="name_product" href="<?=site_url('san-pham/'.$list->alias);?>"><?=@$list->name;?></a></h3>
                                                <p><?=LimitString(strip_tags($list->description),120,'...')?></p>
                                                <a href="<?=site_url('san-pham/'.$list->alias);?>" class="dtn"><?=@$list->cat_name;?></a>
                                                <a href="<?=site_url('san-pham/'.$list->alias);?>" class="go_product">đi đến sản phẩm</a>
                                            </div>
                                        </div>
                                    <?php endforeach;?>
                                <?php endif;?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="pagination">
                            <?php echo $this->pagination->create_links();?>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</article>