<div class="clearfix"></div>
<section class="qts_news">
    <h2 class="title_home">Tin tức nổi bật</h2>
            <div class="full_news">
                <div class="row">
                    <?php foreach ($news as $n) : ?>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 col-480-12">
                        <div class="box_news">
                            <div class="img_news h_5783">
                                <a href="<?= base_url('new/' . $n->alias . '.html') ?>">
                                    <img src="<?= base_url($n->image);?>" class="w_100" alt="<?= $n->title;?>"/>
                                </a>
                            </div>
                            <div class="text_news">
                                <h3 class="name_news">
                                    <a href="<?= base_url('new/' . $n->alias . '.html') ?>"><?= $n->title;?></a>
                                </h3>
                                <p><i class="fa fa-clock-o"></i><?=date('d/m/y',$n->time)?></p>

                                <div class="mota_news">
                                    <?= LimitString($n->description, 320, '...'); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="clearfix"></div>
            
   
</section>