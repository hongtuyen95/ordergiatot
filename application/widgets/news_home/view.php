<?php if(count($cats)) : ?>
    <section class="process_buy">
        <div class="container">
            <div class="row_pc">
                <div class="row row_10">
                    <?php foreach($cats as $k => $cat) : ?>
                        <?php $items = $cat->items;?>
                        <?php if($k == 0) : ?>
                            <div class="col-md-6">
                                <h3 class="tit_process">
                                    <a href=""><?php echo $cat->name;?></a>
                                </h3>
                                <ul class="list_process_buy">
                                    <?php foreach($items as $item) : ?>
                                        <li class="clearfix">
                                            <div class="img_process_buy">
                                                <img src="<?=base_url($item->image);?>" title="<?=$item->title;?>" alt="<?=$item->title;?>">
                                            </div>
                                            <div class="sub_process_buy">
                                                <h3><a href="<?=site_url('new/'.$item->alias);?>"><?=$item->title;?></a></h3>
                                                <a href="<?=site_url('new/'.$item->alias);?>" class="huongdan">Hướng dẫn</a>
                                            </div>
                                        </li>
                                        <div class="clearfix"></div>
                                    <?php endforeach;?>
                                </ul>
                            </div>
                        <?php else : ?>
                            <div class="col-md-6">
                                <h3 class="tit_process tit_process_right">
                                    <a href=""><?php echo $cat->name;?></a>
                                </h3>
                                <ul class="list_process_buy list_process_buy_right">
                                    <?php foreach($items as $item) : ?>
                                        <li class="clearfix">
                                            <div class="img_process_buy">
                                                <img src="<?=base_url($item->image);?>" title="<?=$item->title;?>" alt="<?=$item->title;?>">
                                            </div>
                                            <div class="sub_process_buy">
                                                <h3><a href="<?=site_url('new/'.$item->alias);?>"><?=$item->title;?></a></h3>
                                                <a href="<?=site_url('new/'.$item->alias);?>" class="huongdan">Hướng dẫn</a>
                                            </div>
                                        </li>
                                        <div class="clearfix"></div>
                                    <?php endforeach;?>
                                </ul>
                            </div>
                        <?php endif;?>
                    <?php endforeach;?>

                </div>
            </div>
        </div>
    </section>
<?php endif;?>