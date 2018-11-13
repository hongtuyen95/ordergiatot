 <!-- begin info  -->
 <?php if (count($one_page_home)) : ?>
 <div class="row_pc">
    <div class="row">
        <div class="col-md-6 col-xs-12">
            <div class="txt_info">
                <h2><?=$one_page_home->name?></h2>
                <?= $one_page_home->description ?>
                <a href="<?=base_url('page/'.$one_page_home->alias.'.html')?>" class="view_info pull-right">Xem chi tiết >></a>
            </div>
        </div>
        <div class="col-md-6 col-xs-12">
            <img src="<?=base_url($one_page_home->image)?>" class="w_100" alt="<?=$one_page_home->name?>">
        </div>
    </div>
</div>
<?php endif; ?>
  <!-- end info  -->