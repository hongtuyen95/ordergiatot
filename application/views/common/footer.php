<div class="clearfix"></div>
<footer id="footer">

    <section class="qts_footer_top">
        <div class="container">
            <div class="row_pc">
                <div class="col-lg-3 col-md-6 col-xs-12 col-480-12">
                    <div class="icon_ft">
                        <a href="<?=@$this->option->site_fanpage;?>" target="_blank" class="fa fa-facebook"></a>
                        <a href="<?=@$this->option->link_gg;?>" target="_blank" class="fa fa-google-plus"></a>
                        <a href="<?=@$this->option->link_youtube;?>" target="_blank" class="fa fa-youtube"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-xs-12 col-480-12">
                    <div class="login_ft">
                        <a href=""><i class="fa fa-envelope-o"></i></a>
                         <span class="txt_login_ft">
                             <h4 class="tit_login_ft">Đăng ký nhận tin tức</h4>
                             <a href="">Đăng ký nhận tin mới nhất về sản phẩm khuyến mại</a>
                         </span>

                    </div>
                </div>
                <div class="col-lg-5 col-xs-12 col-480-12">
                    <form name="form-addmail" id="form-addmail" method="post" action="<?=base_url('contact/add_email');?>" class="form_ft">
                        <div class="input-group">
                            <input type="text" name="email" class="form-control validate[required,custom[email]]" placeholder="Email của bạn">
                             <span class="input-group-btn">
                                <button class="btn btn-default" id="btn-addmail" type="button">Đăng ký</button>
                             </span>
                        </div><!-- /input-group -->
                    </form>
                </div>


            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="qts_footer_mid">
        <div class="container">
            <div class="row_pc">
                <div class="col-md-2 col-xs-6 col-480-12">
                    <h1 class="logo_ft">
                        <a href="<?=base_url();?>">
                            <img style="max-width: 100%" src="<?=base_url(@$this->option->site_logo);?>" title="Logo footer" alt="Logo footer">
                        </a>
                    </h1>
                    <div style="margin-top: 25px">
                        <span style="color:#f12c2c;font-weight: bold">Ordergiatot.vn</span> cung cấp dịch vụ đặt hàng, vận chuyển hàng, mua hộ, thanh toán hộ alipay - wechat từ Trung Quốc về Việt Nam
                    </div>
                </div>
                <?php if(count($mrights)) : ?>
                    <?php foreach($mrights as $mright) : ?>
                        <div class="col-md-3 col-xs-6 col-480-12">
                            <h4 class="tit_ft_mid"><?=@$mright->name;?></h4>
                            <div class="clearfix"></div>
                            <?php $subs = $mright->subs; ?>
                            <ul>
                                <?php foreach($subs as $sub) : ?>
                                    <li><a href="<?=base_url(@$sub->url);?>"><?=@$sub->name;?></a></li>
                                <?php endforeach;?>
                            </ul>
                        </div>
                    <?php endforeach;?>
                <?php endif;?>
                <div class="col-md-4 col-xs-6 col-480-12">
                    <h4 class="tit_ft_mid">thông tin liên hệ</h4>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="contact_ft">
                                <span class="txt_contact"><?=@$this->option->site_name;?></span> <br>
                                <i class="fa fa-map-marker"></i><?=@$this->option->address;?> <br>
                                <i class="fa fa-mobile"></i><?=@$this->option->hotline2;?><br>
                                <i class="fa fa-phone"></i><?=@$this->option->site_email;?><br>
                                <i class="fa fa-facebook"></i><?=@$this->option->site_fanpage;?><br>
                                <i class="fa fa-globe"></i> <a href="" style="color: black"><?=@$this->option->domain;?><br></a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

    <div class="clearfix"></div>
    <section class="qts_footer_bot">
        <div class="container">
            <div class="row_pc text-center">
                <ul>
                    <li><a href="<?=base_url();?>">Trang chủ</a></li>
                    <?php if(count($mbs)) : ?>
                        <?php foreach($mbs as $mb) : ?>
                            <li><a href="<?=base_url(@$mb->url);?>"><?=@$mb->name;?> </a></li>
                        <?php endforeach;?>
                    <?php endif;?>
                </ul>
            </div>
        </div>
    </section>


    <a href="#top" id="go_top"><i class="fa fa-angle-up"></i></a>

    <script type="text/javascript">
        $(function() {
            $(".slider_main").owlCarousel({
                items: 1,
                responsive: {
                    1200: { item: 1, },// breakpoint from 1200 up
                    982: { items: 1, },
                    768: { items: 1, },
                    480: { items: 1, },
                    0: { items: 1, }
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
                navText: ['', ''],
                // navSpeed: 250, //slide speed when click button

                autoWidth: false,
                margin: 10,

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

        $(function () {
            $(".slider_counter").owlCarousel({
                items: 4,
                responsive: {
                    1200: {item: 4,},// breakpoint from 1200 up
                    982: {items: 4,},
                    768: {items: 3,},
                    480: {items: 3,},
                    0: {items: 2,}
                },
                rewind: false,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                smartSpeed: 2500, //slide speed smooth


                dots: false,
                dotsEach: false,
                loop: false,
                nav: true,
                navText: ['', ''],
                // navSpeed: 250, //slide speed when click button

                autoWidth: false,
                margin: 10,

                lazyContent: false,
                lazyLoad: false,

                animateIn: '',
                animateOut: '',

                center: false,
                URLhashListener: false,

                video: false,
                videoHeight: false,
                videoWidth: false,
            });
        });

        $("a[href='#top']").click(function() {
            $("html, body").animate({ scrollTop: 0 }, "slow");
            return false;
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() >=200) {
                $('#go_top').show();
            }
            else {
                $('#go_top').hide();
            }
        });
    </script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/owl.carousel2.min.js"></script>
    <script src="<?=base_url()?>assets/js/front_end/classie.js"></script>
    <script src="<?=base_url()?>assets/js/front_end/uisearch.js"></script>
    <script>
        new UISearch( document.getElementById( 'sb-search' ) );
    </script>
    <!--counter up-->
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/waypoints.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/jquery.counterup.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $('.number_ct').counterUp({
                delay: 20,
                time: 10000
            });
        });

        $('#btn-addmail').click(function(){
            var check = $('#form-addmail').validationEngine('validate');
            if(check){
                $('#form-addmail').submit();
            }
        });
    </script>
    <!--end counter up-->
    <link rel="stylesheet" href="<?= base_url('assets/plugin/ValidationEngine/css/validationEngine.jquery.css') ?>">
    <script src="<?= base_url('assets/plugin/ValidationEngine/js/jquery.validationEngine-vi.js') ?>" charset="utf-8"></script>
    <script src="<?= base_url('assets/plugin/ValidationEngine/js/jquery.validationEngine.js') ?>"></script>



</footer>
<?php echo $this->load->widget('chatfacebook');?>


<div id="show_success_mss" style="position: fixed; top: 40px; right: 20px;z-index:9999;">

    <?php if($this->session->flashdata('mess')): ?>

        <div class="alert alert-success alert-dismissible" role="alert">

            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>

            <i class="icon fa fa-success"></i><?=$this->session->flashdata('mess'); ?>

        </div>

    <?php endif; ?>

</div>

<script>
    setTimeout(function(){
        $('#show_success_mss').fadeOut().empty();
    }, 9000);
</script>
</body>
</html>
