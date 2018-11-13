<?php if(count($ykcustomer)) : ?>
<div class="sc_feedback">
        <div class="container">
            <div class="row_pc">
                <div class="owl-carousel slider_feedback">
                    <?php foreach($ykcustomer as $yk) : ?>
                        <div class="item inner_fb">
                            <div class="txt_fb">
                                <?php echo $yk->description;?>
                            </div>
                            <div class="name_us">
                                <h3><?php echo $yk->name;?></h3>
                                <p><?php echo $yk->title;?></p>
                            </div>
                        </div>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix-40"></div>
<?php endif;?>