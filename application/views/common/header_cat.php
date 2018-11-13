<!DOCTYPE html>
<html xmlns:fb='http://www.facebook.com/2008/fbml'>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    <title><?= isset($seo['title']) && $seo['title'] != '' ? $seo['title'] : @$this->option->site_name; ?></title>
    <link rel="shortcut icon" href="<?= base_url(@$this->option->favicon ) ?>"/>
    <meta name='description'
          content='<?= isset($seo['description']) ? $seo['description'] : @$this->option->site_description; ?>'/>
    <meta name='keywords'
          content='<?= isset($seo['keyword']) && $seo['keyword'] != '' ? $seo['keyword'] : $this->option->site_keyword; ?>'/>
    <meta name='robots' content='index,follow'/>
    <meta name='revisit-after' content='1 days'/>
    <meta http-equiv='content-language' content='vi'/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="fb:app_id" content="126821687974504" />
    <meta property="fb:admins" content="100006472503973"/>

    <link rel="canonical" href="<?=current_url();?>" />
    <!--    for facebook-->
    <meta property="og:title"
          content="<?= isset($seo['title']) && $seo['title'] != '' ? $seo['title'] : @$this->option->site_name; ?>"/>
    <meta property="og:site_name" content="<?= @$this->option->site_name; ?>"/>
    <meta property="og:url" content="<?= current_url(); ?>"/>
    <meta property="og:description"
          content="<?= isset($seo['description']) && $seo['description'] != '' ? $seo['description'] : @$this->option->site_description; ?>"/>
    <meta property="og:type" content="<?= @$seo['type']; ?>"/>
    <meta property="og:image" content="<?= isset($seo['image']) && @$seo['image'] != '' ? base_url(@$seo['image']) : @$this->option->site_logo ; ?>"/>

    <meta property="og:locale" content="vi_VN"/>

    <!-- for Twitter -->
    <meta name="twitter:card"
          content="<?= isset($seo['description']) && $seo['description'] != '' ? $seo['description'] : @$this->option->site_description; ?>"/>
    <meta name="twitter:title"
          content="<?= isset($seo['title']) && $seo['title'] != '' ? $seo['title'] : @$this->option->site_name; ?>"/>
    <meta name="twitter:description"
          content="<?= isset($seo['description']) && $seo['description'] != '' ? $seo['description'] : @$this->option->site_description; ?>"/>
    <meta name="twitter:image"
          content="<?= isset($seo['image']) && $seo['image'] != '' ? base_url($seo['image']) : base_url(@$this->option->site_logo); ?>"/>

    <link href="<?=base_url()?>assets/css/front_end/bootstrap.min.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/font-awesome.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/owl.carousel2.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/owl.theme2.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/animate.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/menu-2.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/style.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/style00.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/setmedia.css" rel="stylesheet"/>

    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/menu-2.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
</head>

<body id="homepage">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&appId=126821687974504";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<header id="header" >
    <div class="menu_mb butt_mobile visible-xs visible-sm clearfix">
        <button class="nav-toggle">
            <div class="icon-menu">
                <span class="line line-1"></span>
                <span class="line line-2"></span>
                <span class="line line-3"></span>
            </div>
        </button>
        <div class="text-center">
            <a href="<?=base_url()?>">
                <img class="img_logo_mb" src="<?=base_url(@$this->option->site_logo);?>" alt="Logo <?=@$this->option->site_name;?>"/>
            </a>
        </div>
    </div><!-- /menu_mb -->
    <div class="clearfix clearfix-60 visible-sm visible-xs"></div>
    <section class="qts_head_top">
        <div class="container">
            <div class="row_pc">
                <div class="header_left pull-left hidden-sm hidden-xs">
                    <select name="" id="">
                        <option value="">Hà nội</option>
                        <option value="">Tp.HCM</option>
                    </select>
                    <ul class="contact_hd_top">
                        <li>
                            <a href=""><img src="<?=base_url();?>assets/css/img/phone.png" alt="<?=@$this->option->hotline1;?>"><?=@$this->option->hotline1;?></a>
                        </li>
                        <li>
                            <a href="maito:<?=@$this->option->site_email;?>"><img src="<?=base_url();?>assets/css/img/mail.png" alt="<?=@$this->option->site_email;?>">   <?=@$this->option->site_email;?>
                            </a>
                        </li>
                        <li>
                            <a href=""><img src="<?=base_url();?>assets/css/img/tygia.png" alt=""> Tỷ giá: 3,630 Đ/NDT</a>
                        </li>

                    </ul>
                </div>
                <div class="header_right pull-right">
                    <a href=""><img src="<?=base_url();?>assets/css/img/dn.png" alt="">Đăng nhập</a>
                    <span>|</span>
                    <a href=""><img src="<?=base_url();?>assets/css/img/dk.png" alt="">Đăng ký</a>
                </div>

            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="qts_head_mid">
        <div class="sc_header_menu clearfix sticky-header">
            <div class="container">
                <div class="row_pc">
                    <div class="boder_bot clearfix">
                        <div class="col-md-2 hidden-xs hidden-sm">
                            <div class="row">
                                <h1 class="logo_pc">
                                    <a href="<?=base_url();?>">
                                        <img src="<?=base_url(@$this->option->site_logo);?>" alt="Logo <?=@$this->option->site_name;?>">
                                    </a>
                                </h1>
                            </div>

                        </div>
                        <div class="col-md-10 colxs-12">
                            <div class="row">
                                <div class="menu_main">
                                    <nav class="nav is-fixed" role="navigation">
                                        <div class="wrapper wrapper-flush">
                                            <div class="nav-container">
                                                <ul class="nav-menu menu clearfix">
                                                    <li class="menu-item"><a href="<?=base_url();?>" class="menu-link">Trang chủ</a></li>
                                                    <?php if(count($menu_main_root)) : ?>
                                                        <?php foreach($menu_main_root as $mr) : ?>
                                                            <?php $subs = $mr->menu_sub;?>
                                                            <li class="menu-item <?php if(count($subs)) : ?>has-dropdown<?php endif;?>">
                                                                <a href="<?=base_url($mr->url);?>" class="menu-link ">
                                                                    <?=$mr->name;?>
                                                                </a>
                                                                <?php if(count($subs)) : ?>
                                                                    <ul class="nav-dropdown menu">
                                                                        <?php foreach($subs as $sub) : ?>
                                                                            <?php $childs = $sub->childs; ?>
                                                                            <li class="menu-item <?php if(count($childs)) : ?>has-dropdown<?php endif;?>">
                                                                                <a href="<?=base_url($sub->url);?>" class="menu-link"><?=$sub->name;?></a>
                                                                                <?php if(count($childs)) : ?>
                                                                                    <ul class="nav-dropdown menu">
                                                                                        <?php foreach($childs as $child) : ?>
                                                                                            <li class="menu-item">
                                                                                                <a href="<?=base_url($child->url);?>" class="menu-link">
                                                                                                    <?php echo $child->name;?>
                                                                                                </a>
                                                                                            </li>
                                                                                        <?php endforeach;?>
                                                                                    </ul>
                                                                                <?php endif;?>
                                                                            </li>
                                                                        <?php endforeach;?>
                                                                    </ul>
                                                                <?php endif;?>
                                                            </li>
                                                        <?php endforeach;?>
                                                    <?php endif;?>
                                                </ul>
                                            </div>
                                        </div>
                                    </nav>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <?=@$slide;?>

    </section>
    <div class="clearfix"></div>
</header>
<!-- end header-->

<div class="clearfix-40"></div>

