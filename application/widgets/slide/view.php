<?php if(count($slides)) : ?>
    <section class="slider_wrap slider_fullwide slider_engine_revo slider_alias_main">

        <div id="rev_slider_wrapper" class="rev_slider_wrapper fullwidthbanner-container">
            <!-- START REVOLUTION SLIDER 4.6.92 fullwidth mode -->
            <div id="rev_slider_1_1" class="rev_slider fullwidthabanner tp-simpleresponsive">
                <ul class="tp-revslider-mainul">
                    <!-- SLIDE  -->
                    <?php foreach($slides as $k => $slide) : ?>
                        <?php if($k == 0) : ?>
                        <li data-transition="fade" data-slotamount="7" data-masterspeed="400" data-saveperformance="off" class="tp-revslider-slidesli">
                            <!-- MAIN IMAGE -->
                            <div class="slotholder" data-bgposition="center top" data-bgfit="cover">
                                <img class="tp-bgimg defaultimg" alt="" src="<?=base_url();?>assets/css/img/slider/slider_bg_main.jpg" data-src="<?=base_url();?>assets/css/img/slider/slider_bg_main.jpg">
                            </div>
                            <!-- LAYERS -->
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption customin fadeout start" data-x="-2115" data-y="-2" data-customin="x:3000;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0.66;transformPerspective:600;transformOrigin:50% 50%;" data-speed="7700"
                                 data-start="0" data-easing="Power0.easeIn" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300" data-endeasing="Quad.easeInOut">
                                <img src="<?=base_url(@$slide->icon);?>" alt="cloud">
                            </div>
                            <!-- LAYER NR. 2 -->
                            <div class="tp-caption trx-big tp-fade fadeout tp-resizeme start" data-x="center" data-hoffset="0" data-y="200" data-speed="500" data-start="600" data-easing="Quad.easeOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                                 data-endspeed="400">
                                <?=@$slide->content;?>
                            </div>
                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption customin ltr start" data-x="center" data-hoffset="-16" data-y="235" data-customin="x:-590;y:-140;z:-70;rotationX:0;rotationY:0;rotationZ:10;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="600" data-start="1200" data-easing="Quad.easeOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="600" data-endeasing="Quad.easeIn">
                                <img src="<?=base_url(@$slide->image);?>" alt="" data-ww="1241.696113074205" data-hh="251">
                            </div>
                        </li>
                        <?php endif;?>
                        <?php if($k == 1) : ?>
                            <li data-transition="fade" data-slotamount="7" data-masterspeed="400" data-saveperformance="off" class="tp-revslider-slidesli">
                                <!-- MAIN IMAGE -->
                                <div class="slotholder" data-bgposition="center top" data-bgfit="cover">
                                    <img class="tp-bgimg defaultimg" alt="" src="<?=base_url();?>assets/css/img/slider/slider_bg_main.jpg" data-src="<?=base_url();?>assets/css/img/slider/slider_bg_main.jpg">
                                    <div class="slot">
                                        <div class="slotslide">
                                            <div></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- LAYERS -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption lfl stl start" data-x="center" data-hoffset="-408" data-y="bottom" data-voffset="1" data-speed="500" data-start="1900" data-easing="Quad.easeOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="400" data-endeasing="Quad.easeIn">
                                    <img src="<?=base_url(@$slide->icon);?>" alt="">
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption sfr ltr start" data-x="center" data-hoffset="146" data-y="bottom" data-voffset="4" data-speed="500" data-start="1400" data-easing="Quad.easeOut" data-elementdelay="0.1" data-endelementdelay="0.5" data-endspeed="700" data-endeasing="Quad.easeIn">
                                    <img src="<?=base_url(@$slide->image);?>" alt="">
                                </div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption trx-big-extra tp-fade fadeout tp-resizeme start" data-x="center" data-hoffset="65" data-y="200" data-speed="500" data-start="600" data-easing="Quad.easeOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                                     data-endspeed="400">
                                    <?=@$slide->content;?>
                                </div>
                            </li>
                        <?php endif;?>
                        <?php if($k == 2) : ?>
                            <li data-transition="fade" data-slotamount="7" data-masterspeed="400" data-saveperformance="off" class="tp-revslider-slidesli">
                                <!-- MAIN IMAGE -->
                                <div class="slotholder" data-bgposition="center top" data-bgfit="cover">
                                    <img class="tp-bgimg defaultimg" alt="" src="<?=base_url();?>assets/css/img/slider/slider_bg_main.jpg" data-src="<?=base_url();?>assets/css/img/slider/slider_bg_main.jpg">
                                </div>
                                <!-- LAYERS -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption trx-big-left sfb fadeout tp-resizeme start" data-x="100" data-y="250" data-speed="500" data-start="1200" data-easing="Quad.easeOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="400">
                                    <?=@$slide->content;?>
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption trx-normal-white sfb fadeout tp-resizeme start" data-x="50" data-y="370" data-speed="500" data-start="1600" data-easing="Quad.easeOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                                     data-endspeed="300">
                                    <?=@$slide->description;?>
                                </div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption trx-no-style sfb fadeout start" data-x="100" data-y="475" data-speed="500" data-start="2000" data-easing="Quad.easeOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="400">
                                    <a href="<?=@$slide->url;?>" class="sc_button sc_button_square sc_button_bg_light">
                                        <span>Xem thêm</span>
                                    </a>
                                </div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption sfb stb start" data-x="right" data-hoffset="-120" data-y="bottom" data-voffset="10" data-speed="600" data-start="800" data-easing="Quad.easeOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="400" data-endeasing="Quad.easeIn">
                                    <img src="<?=base_url(@$slide->image);?>" alt="" data-ww="408.9807692307693" data-hh="459">
                                </div>
                            </li>
                        <?php endif;?>
                    <?php endforeach;?>
                </ul>
            </div>

        </div>
        <!-- END REVOLUTION SLIDER -->
    </section>

<?php endif;?>
<link rel="stylesheet" href="<?=base_url()?>assets/css/front_end/settings.css">
<link rel="stylesheet" href="<?=base_url()?>assets/css/front_end/main_style.css">
<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
<script type="text/javascript" src="<?=base_url()?>assets/js/front_end/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/front_end/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/front_end/shortcodes.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/front_end/_main.js"></script>
