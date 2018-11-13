<?php if(count($menu_root)) : ?>
    <section class="sc_why">
        <div class="container">
            <div class="row_pc">
                <h2 class="title_web"><?php echo $menu_root->name;?></h2>
                <?php if(count($subs)) : ?>
                <ul class="list_why">
                    <?php foreach($subs as $sub) : ?>
                        <li>
                            <img src="<?=base_url($sub->image);?>" title="<?php echo $sub->title;?>" alt="<?php echo $sub->title;?>">
                            <div class="sub_why">
                                <h3 class="tit_why"><?php echo $sub->title;?></h3>
                                <div class="txt_why">
                                    <?php echo $sub->description;?>
                                </div>
                            </div>
                        </li>
                    <?php endforeach;?>
                </ul>
            <?php endif;?>
            </div>
        </div>
        <img class="img_why hidden-sm hidden-xs" src="<?=base_url();?>assets/css/img/trai.png" alt="">
    </section>
<?php endif;?>