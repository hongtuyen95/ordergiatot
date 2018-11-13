	<?php if(count($menu_bottom)) : ?>
	<?php $i=0; foreach ($menu_bottom as $key_r => $mr) :  $i++;?>	
	<?php if($i==1){ ?>
	<div class="sc_khacbiet">
        <div class="container">
            <div class="row_pc">
                <div class="row">
                    <h2 class="title_home4"><?=$mr->name;?> <img src="<?=base_url($mr->image);?>" alt=""></h2>
                    <div class="des_title"><?=$mr->description;?>
                    </div>
                    <div class="clearfix-40"></div>
                    <?php if(!empty($mr->menu_sub)): ?>
                    <ul class="list_camket">
                    	 <?php $i=0; foreach($mr->menu_sub as $menu_sub) : $i++; ?>
                        <li><a href="<?=base_url($menu_sub->url);?>">
                            <img src="<?=base_url($menu_sub->image);?>" alt="<?=@$menu_sub->name;?>">
                            <span><?=@$menu_sub->name;?></span>
                            </a>
                        </li>
                        <?php endforeach;?>
                    </ul>
                     <?php endif;?>
                    <div class="btn_login">
                        <button disabled><a href="<?=base_url('lien-he');?>" style="color:#fff">Đăng ký ngay</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="clearfix-40"></div>
	<?php  } endforeach;?>
	<?php endif;?>



