<h2 class="title_news"><span>Tin tức</span></h2>
    <div class="owl-carousel slider_news imgRow">
         <?php foreach ($news as $n) : ?>
        <div class="item inner_news">
            <a href="<?= base_url('new/' . $n->alias . '.html') ?>" class="img_news reRenderImg"><img src="<?= base_url($n->image) ?>" alt="<?= $n->title ?>"></a>
            <div class="sub_news">
                <h3><a  href="<?= base_url('new/' . $n->alias . '.html') ?>"><?= $n->title ?></a></h3>
                <div class="des_news"><?= LimitString(strip_tags($n->description), 100, '...'); ?>
                </div>
                <a href="<?= base_url('new/' . $n->alias . '.html') ?>" class="view_more">Xem thêm...</a>
            </div>
        </div>
    <?php endforeach; ?>
    </div>