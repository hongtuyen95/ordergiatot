<?php if(count($doitacs)) : ?>
<section class="sc_slider_web">
        <h2 class="title_web">Danh sách <span>website uy tín trung quốc</span></h2>
        <div class="container">
            <div class="row_pc">
                <div class="owl-carousel slider_web">
                    <?php foreach($doitacs as $doitac) : ?>
                        <div class="item">
                            <a href="<?=$doitac->url;?>"><img class="w_100" src="<?=base_url($doitac->image);?>" alt="<?=$doitac->title;?>"/></a>
                        </div>
                    <?php endforeach;?>
                </div>
            </div>
        </div>

    </section>
    <div class="clearfix-40"></div>
<?php endif;?>    