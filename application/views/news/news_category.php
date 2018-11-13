<section class="qts_head_bot">
    <div class="text-center" style="height: 40px; background: #0a736e; color: #FFFFFF;line-height: 40px; font-size: 25px">
        <?php echo $cate_current->name;?>
    </div>
</section>
<article id="body_home">
    <div class="clearfix-30"></div>
    <div class="container">
        <div class="row_pc">
            <ul class="list_sevice imgRow">
                <?php if(count($lists)) : ?>
                    <?php foreach($lists as $list) : ?>
                        <li class="inner_news clearfix">
                            <a href="<?=site_url('new/'.$list->alias);?>" class="img_news reRenderImg">
                                <img src="<?=base_url($list->image);?>" alt="<?=$list->title;?>">
                            </a>
                            <div class="sub_news">
                                <h3><a href="<?=site_url('new/'.$list->alias);?>"><?=$list->title;?></a></h3>
                                <div class="des_news">
                                    <?=LimitString(strip_tags($list->description),450,'...');?>
                                </div>
                                <a href="<?=site_url('new/'.$list->alias);?>" class="view_more">Xem thêm...</a>
                            </div>
                        </li>
                    <?php endforeach;?>
                <?php endif;?>
            </ul>
        </div>

        <div class="col-sm-12 text-center">
            <?php echo $this->pagination->create_links();?>
        </div>    
    </div>

</article>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>