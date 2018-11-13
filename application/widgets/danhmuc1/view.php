<ul class="nav_prod_home">
    <?php if (count($cate_news)) : ?>
        <?php foreach ($cate_news as $key => $all) : ?>
            <li class="<?=count($all->cat_sub)?'has-dropdown':''?>">
                <a href="<?=base_url('danh-muc-tin/'.$all->alias.'.html')?>"><?=$all->name?></a>
                <ul class="nav-dropdown sub_nav_prod_h">
                    <?php if (count($all->cat_sub)) : ?>
                        <?php foreach ($all->cat_sub as $sub) : ?>
                            <li><a href="<?=base_url('danh-muc-tin/'.$sub->alias.'.html')?>"><?=$sub->name?></a></li>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </ul>
            </li>
        <?php endforeach; ?>
    <?php endif; ?>
</ul>