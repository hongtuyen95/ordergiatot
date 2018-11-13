<!-- begin prod slider -->
<?php if (count($pros)) : ?>
<div class="row_pc">
    <h2 class="title_home"><a href="">Sản phẩm nổi bật</a></h2>
    <div class="clearfix-70"></div>

    <div class="owl-carousel slider_prod imgRow">
        <?php $i=0; foreach ($pros as $pro) : $i++; ?>
        <div class="item box_prod">
            <a href="<?= base_url('san-pham/' . $pro->alias . '.html') ?>" class="reRenderImg"><img class="w_100" src="<?= base_url('upload/img/products/' . $pro->pro_dir . '/thumbnail_2_' . @$pro->image) ?>" alt="<?= $pro->name ?>"/></a>
            <h3 class="name_prod"><a href="<?= base_url('san-pham/' . $pro->alias . '.html') ?>"><?= $pro->name ?></a></h3>
            <?= strip_tags(LimitString($pro->description,150,'...'),'<p>');?>
        </div>
        <?php endforeach ?>

    </div>
</div>
<?php endif; ?>
        <script type="text/javascript">
        	 $(function () {
            $(".slider_prod").owlCarousel({
                items: 4,
                responsive: {
                    1200: {item: 4,},// breakpoint from 1200 up
                    982: {items: 4,},
                    768: {items: 3,},
                    480: {items: 2,},
                    0: {items: 1,}
                },
                rewind: false,
                autoplay: true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                smartSpeed: 500, //slide speed smooth

                dots: false,
                dotsEach: false,
                loop: true,
                nav: true,
                navText: ['<i class="fa fa-angle-left icon_slider"></i>', '<i class="fa fa-angle-right icon_slider"></i>'],
                // navSpeed: 250, //slide speed when click button

                autoWidth: false,
                margin: 30,

                lazyContent: false,
                lazyLoad: false,

                animateIn: false,
                animateOut: false,

                center: false,
                URLhashListener: false,

                video: false,
                videoHeight: false,
                videoWidth: false,
            });
        });
        </script>
<!-- end prod slider -->