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
    <link href="<?=base_url()?>assets/css/front_end/search.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/menu-2.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/style.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/style00.css" rel="stylesheet"/>
    <link href="<?=base_url()?>assets/css/front_end/setmedia.css" rel="stylesheet"/>

    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/menu-2.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/style-img.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/front_end/wow.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/init.js"></script>
    <script>
        new WOW().init();
    </script>
    <input type="hidden" value="<?= base_url()?>" id="base_url" name="">

    <script type="text/JavaScript">
        function killCopy(e){
            return false
        }
        function reEnable(){
            return true
        }
        document.onselectstart=new Function ("return false")
            if (window.sidebar){
            document.onmousedown=killCopy
            document.onclick=reEnable
        }
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
}(document, 'script', 'facebook-jssdk'));
</script>

<header id="header">
    <div class="menu_mb butt_mobile visible-xs visible-sm clearfix">
        <button class="nav-toggle">
            <div class="icon-menu">
                <span class="line line-1"></span>
                <span class="line line-2"></span>
                <span class="line line-3"></span>
            </div>
        </button>
        <div class="text-center">
            <a href=""><img class="img_logo_mb" src="<?=base_url();?>assets/css/img/logo.png" alt=""/></a>
        </div>
    </div><!-- /menu_mb -->
    <div class="clearfix clearfix-60 visible-sm visible-xs"></div>
    <section class="qts_head_top">
        <div class="container">
            <div class="row_pc">
                <div class="header_left pull-left ">
                    <?php if(count($this->depots)) : ?>
                        <select  name="depot" id="depot"  class="hidden-sm hidden-xs">
                            <?php foreach($this->depots as $depot) : ?>
                                <option <?php if($this->session->userdata('depot') == $depot->id) : ?>selected<?php endif;?> value="home/depot/<?php echo $depot->id;?>"><?php echo $depot->name;?></option>
                            <?php endforeach;?>
                        </select>
                    <?php endif;?>
                    <ul class="contact_hd_top hidden-sm hidden-xs">
                        <li>
                            <a href=""><img src="<?=base_url();?>assets/css/img/phone.png" alt="<?=@$this->option->hotline1;?>"><?=@$this->option->hotline1;?> </a>
                        </li>
                        <li>
                            <a href=""><img src="<?=base_url();?>assets/css/img/mail.png" alt="<?=@$this->option->site_email;?>"><?=@$this->option->site_email;?></a>
                        </li>
                        <li>
                            <a href=""><img src="<?=base_url();?>assets/css/img/tygia.png" alt="<?=number_format($this->option->exchange);?>"> <?=number_format($this->option->exchange);?> Đ/NDT</a>
                        </li>
                    </ul>
                </div>
                <div class="header_right pull-right">
                    <ul>
                        <?php if (count($this->session->userdata('userData'))): $user = $this->session->userdata('userData'); ?>
                            <li><span>|</span> <a href="<?= base_url('dang-xuat')?>"> <i class="fa fa-power-off" aria-hidden="true"></i> Đăng xuất</a></li>
                            <li><a href="<?= base_url('thong-tin-tai-khoan')?>"> <i class="fa fa-user" aria-hidden="true"></i> <?= $user['fullname']?></a></li>

                        <?php else: ?>
                            <li><a onclick="registerModal()" href="javascript:void(0)"><img src="<?=base_url();?>assets/css/img/dk.png" alt="Đăng ký" title="Đăng ký">Đăng ký</a></li>
                            <li><span>|</span></li>
                            <li><a onclick="loginModal()" href="javascript:void(0)"><img src="<?=base_url();?>assets/css/img/dn.png" alt="Đăng nhập" title="Đăng nhập">Đăng nhập</a></li>
                            <li class="hidden-xs hidden-sm"><span>|</span></li>
                        <?php endif;?>

                        <li style="margin-right: 25px">
                            <a href="<?=base_url('cart/displayPayM');?>"><i class="fa fa-shopping-cart"></i>  Giỏ hàng (<?=@$this->count_cart;?>)</a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="qts_head_mid">
        <div class="container">
            <div class="row_pc">
                <div class="sc_header_menu">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="logo_pc hidden-xs hidden-sm">
                                <a href="<?=base_url();?>">
                                    <img src="<?=base_url(@$this->option->site_logo);?>" title="Logo <?=@$this->option->site_name;?>" alt="Logo <?=@$this->option->site_name;?>">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <?php if (!$this->session->userdata('userData')) : ?>
                                <div class="bt_dangkynhanh">
                                    <a style="cursor: pointer" onclick="registerModal()">đăng ký ngay</a>
                                </div>
                            <?php endif;?>
                            <div class="menu_main">
                                <nav class="nav is-fixed" role="navigation">
                                    <div class="wrapper wrapper-flush">
                                        <div class="nav-container">
                                            <ul class="nav-menu menu clearfix">
                                                <li class="menu-item">
                                                    <a href="<?=base_url();?>" class="menu-link" title="home">Trang chủ</a>
                                                </li>
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
                                                                            <a  href="<?=base_url($sub->url);?>" class="menu-link"><?=$sub->name;?></a>
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
    </section>
    <div class="clearfix"></div>
</header>
<!-- end header-->
<div class="clearix"></div>


