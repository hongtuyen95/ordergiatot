<!DOCTYPE html>

<html>

<head>

  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta property="og:title" content="<?= @$Pagetitle; ?>" />

<meta property="og:type" content="<?=@$facebook['type'];?>" />

<meta property="og:image" content="<?=@$facebook['image'];?>" />

<meta property="og:url" content="<?=@$facebook['url'];?>" />

<meta property="og:description" content="<?= @$Description ?>" />

  <title><?= @$headerTitle?></title>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/bootstrap.min.css')?>">

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/ionicons.min.css')?>">

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/font-awesome.min.css')?>">

  <!-- Theme style -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/AdminQTS.min.css')?>">

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/_all-skins.min.css')?>">



 <!-- iCheck -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/iCheck/flat/blue.css')?>">

  <!-- Morris chart -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/morris/morris.css')?>">

  <!-- jvectormap -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/jvectormap/jquery-jvectormap-1.2.2.css')?>">

  <!-- Date Picker -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datepicker/datepicker3.css')?>">

  <!-- Daterange picker -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/daterangepicker/daterangepicker.css')?>">

  <!-- bootstrap wysihtml5 - text editor -->

  <link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')?>">



<script src="<?= base_url('assets/css_admin/back_end/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?= base_url('assets/js_admin/bootstrap.min.js')?>"></script>


</head>



<body class="hold-transition skin-blue sidebar-mini">
  <input type="hidden" value="<?= base_url()?>" id="base_url" name="">
<div class="wrapper">

	<?php $admin = $this->session->userdata('adminfull'); ?>

  <header class="main-header">
  <?php if(@$admin->kho_hang ==2 || @$admin->kho_hang == 1) : ?>
    <a  href="" class="logo">
      <span class="logo-mini"><img src="<?= base_url($this->option->site_logo); ?>" title="<?= $this->option->site_name; ?>" alt="<?= $this->option->site_name; ?>"                              class="w_100" width="40" ></span>
      <span class="logo-lg"><img src="<?= base_url($this->option->site_logo); ?>" width="60" title="<?= $this->option->site_name; ?>" alt="<?= $this->option->site_name; ?>"                              class="w_100"></span>
    </a>
  <?php else : ?>

    <a  href="<?= base_url('')?>vnadmin" class="logo">
      <span class="logo-mini"><img src="<?= base_url($this->option->site_logo); ?>" title="<?= $this->option->site_name; ?>" alt="<?= $this->option->site_name; ?>"                              class="w_100" width="40" ></span>
      <span class="logo-lg"><img src="<?= base_url($this->option->site_logo); ?>" width="60" title="<?= $this->option->site_name; ?>" alt="<?= $this->option->site_name; ?>"                              class="w_100"></span>
    </a>
  <?php endif; ?>
    <nav class="navbar navbar-static-top">

      <a href="<?= base_url('vnadmin')?>" class="sidebar-toggle" data-toggle="offcanvas" role="button">

        <span class="sr-only">Toggle navigation</span>

      </a>



      <div class="navbar-custom-menu">

        <ul class="nav navbar-nav">

          <li class="dropdown tasks-menu hidden-xs">

            <a href="<?= base_url('vnadmin/news/newslist')?>" class="dropdown-toggle" data-toggle="dropdown">

              <i class="fa fa-fw fa-newspaper-o"></i>

              <span class="label label-warning"><?=@$item_news;?></span>

            </a>

          </li>

          <li class="dropdown messages-menu hidden-xs">

            <a href="<?= base_url('vnadmin/email/emails')?>" class="dropdown-toggle">

              <i class="fa fa-envelope-o"></i>

              <span class="label label-success"><?=@$item_email;?></span>

            </a>

          </li>

          <li class=" messages-menu hidden-xs">

            <a href="<?= base_url('vnadmin/users/listusers')?>" class="dropdown-toggle">

              <i class="fa fa-users"></i>

              <span class="label label-danger"><?=@$item_member;?></span>

            </a>

          </li>

          <li class=" messages-menu">

            <a href="<?= base_url('vnadmin/order/orders')?>" class="dropdown-toggle">

              <i class="fa fa-shopping-cart"></i>

              <span class="label label-success"><?=@$item_order;?></span>

            </a>

          </li>

          <!-- Notifications: style can be found in dropdown.less -->

          <li class="dropdown notifications-menu">

            <a href="<?= base_url('vnadmin/contact/contacts')?>" class="dropdown-toggle" >

              <i class="fa fa-bell-o"></i>

              <span class="label label-warning"><?=@$item_contact;?></span>

            </a>

          </li>

          <!-- Tasks: style can be found in dropdown.less -->

          <li class="dropdown tasks-menu hidden-xs">

            <a href="<?= base_url('vnadmin/product/products')?>" class="dropdown-toggle" data-toggle="dropdown">

              <i class="fa fa-flag-o"></i>

              <span class="label label-danger"><?=@$item_pro;?></span>

            </a>

          </li>

		  <li class="dropdown hidden">

            <a href="#" class="dropdown-toggle" data-toggle="dropdown">

              <i class="fa fa-language"></i>

             <span class="hidden-xs">Ngôn ngữ</span>

            </a>

            <ul class="dropdown-menu">
              <?php foreach ($config_language as $language) { ?>
              <li><a href="<?= base_url('admin/admin/lang/'.$language->lang) ?>"><img src="<?= base_url($language->icon_language) ?>" width="25" alt="<?=$language->name_language?>"> &nbsp; <?=$language->name_language?></a></li>

            <?php } ?>
            </ul>

          </li>

          <!-- User Account: style can be found in dropdown.less -->

          <li class="dropdown user user-menu">

            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				Xin chào:
			  <span class="hidden-xs"><?= $admin->fullname;?></span>

            </a>

            <ul class="dropdown-menu">

              <!-- User image -->

              <li class="user-header">

               Xin chào
                <p>

                  <?= $admin->fullname;?>
                </p>

              </li>

              <!-- Menu Body -->

              <!-- Menu Footer-->

              <li class="user-footer">

                <div class="col-lg-5">

                  <a href="<?= base_url('vnadmin/users')?>" class="btn btn-default btn-flat">Tài khoản</a>

                </div>

				 <div class="col-lg-7">

                  <a href="<?= base_url('vnadmin/doi-mat-khau')?>" class="btn btn-default btn-flat">Thay đổi mật khẩu</a>

                </div>

              </li>

            </ul>

          </li>
		    <li class="dropdown">

            <a href="<?= base_url('vnadmin/logout/index')?>" class="dropdown-toggle" >
             <span class="">Thoát</span>

            </a>
          </li>

          <!-- Control Sidebar Toggle Button -->

          <li class="dropdown">

             <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gears"></i></a>

			<ul class="dropdown-menu">
                <?php /*echo "<pre>";print_r($admin);die; */?>
              <?php if(@$admin->kho_hang == 2 || @$admin->kho_hang ==1) : ?>

              <?php else : ?>
                  <?php if($admin->lever == 2) : ?>
                      <li>
                          <a href="<?= base_url('vnadmin/users/listuser_admin')?>"><i class="fa fa-fw fa-users"></i>
                              Thành viên
                          </a>
                      </li>
                  <?php endif;?>
              <?php endif ;?>
			  <?php if($this->session->userdata('sessionGroupAdmin')>=3){?>
				<li>

					<a href="<?= base_url('vnadmin/group/listGroup')?>"><i class="fa fa-fw fa-refresh"></i> Quản lý  module</a>

				</li>

        <li>

          <a href="<?= base_url('vnadmin/admin/listDoc')?>"><i class="fa fa-fw fa-refresh"></i> Quản lý hướng dẫn</a>

        </li>

        <?php } ?>

			</ul>

          </li>

        </ul>

      </div>

    </nav>

  </header>

  <aside class="main-sidebar">

    <section class="sidebar">

      <div class="user-panel" style="border-bottom:1px solid #ccc">





      </div>

      <ul class="sidebar-menu">


<?php if($this->session->userdata('phanquyen')) {

            $stt=1; foreach ($this->session->userdata('phanquyen') as $v) { ?>

    <li class="treeview <?php if($v->active ==0){ echo'hidden'; }?> <?php if (check_phanquyen($u_access,$v->resource)==false){ echo 'hidden';} ?>">

      <?php if(!empty($v->cat_sub)): ?>

          <a href="#">

           <i class="fa <?php if(!empty($v->icon)){ echo($v->icon); }else{ echo'fa-book';} ?>"></i>

            <span><?=@$v->name;?></span>

            <span class="pull-right-container">

              <i class="fa fa-angle-left pull-right"></i>

            </span>

          </a>

      <ul class="treeview-menu">

        <?php  $stt=1; foreach ($v->cat_sub as $sub){ ?>

        <li class=" <?php  if(check_phanquyen($u_access, $v->resource, $sub->resource)==false){echo'hidden';}  ?>">

          <a href="<?= base_url(@$sub->alias)?>">

          <i class="fa <?php if(!empty($sub->icon)){?> <?=$sub->icon;?><?php }else{ ?> fa-book <?php } ?>"></i>

          <span><?=@$sub->name;  ?></span>

          <span class="pull-right-container hidden">

            <span class="label label-primary pull-right">4</span>

          </span>

          </a>

        </li>

        <?php } ?>

      </ul>

      <?php else: ?>

      <a href="<?= base_url(@$v->alias)?>">

        <i class="fa <?php if(!empty($v->icon)){ echo($v->icon); }else{ echo'fa-book';} ?>"></i>

        <span><?=@$v->name;  ?></span>

       </a>

      <?php endif; ?>

    </li>

    <?php } } ?>
    <?php if(@$admin->kho_hang !=2) : ?>
      <li class="hidden"><a href="<?= base_url('vnadmin/admin/documentation')?>"><i class="fa fa-book"></i> <span>Hướng dẫn quản trị</span></a></li>
    <?php endif;?>
<!-- chi hien thị trên may noi bo khi xuat ra se k co -->
		<!-- <li><a href="<?= base_url('vnadmin/admin/setup_wiget')?>"><i class="fa fa-book"></i> <span>Cấu hình wiget</span></a></li> -->
<!-- DONG KHOI -->

      </ul>

    </section>

  </aside>

  <style>.an{display:none;}.hienthi{display:block;}.content-wrapper{min-height:1110px !important}</style>

  <div class="content-wrapper">