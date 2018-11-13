<!-- begin sp -->
    <div class="support_onl">
        <div class="content_right">
            <h2 class="title">hỗ trợ trực tuyến</h2>
        </div>
        <div class="box_support">
            <div class="img_tt_supp"><img src="<?= base_url('img/img_sup.png')?>" class="w_100" title="" alt=""></div>
            <p class="text-center phone_sup">Hotline: <a href="#" title="" class=""><?= $this->option->hotline1;?></a></p>
            <div class="info_connect clearfix">
                <?php if (count($supports)) {
                foreach ($supports as $key => $support) { ?>
                    <div class="line_1 clearfix">
                        <a href="" class="btn_sup pull-left" title=""><img src="<?= base_url('img/i_skype.png')?>" title="" class="w_100" alt=""></a>
                        <a href="" class="btn_sup pull-left" title=""><img src="<?= base_url('img/i_zalo.png')?>" title="" class="w_100" alt=""></a>
                        <div class="support_num pull-left">
                            <span><?= $support->name;?></span>
                            <p>SĐT:<a href="#" class="" title=""><?= $support->phone;?></a></p>
                        </div>
                    </div>
                <?php    }
                } ?>
            </div>
        </div>
    </div>


<!-- end sp -->

