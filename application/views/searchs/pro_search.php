<article>
  <div class="clearfix"></div>
    <!-- begin left_content --> <!-- end left_content --><!-- begin mid_content -->
                    <div class="root_content">
                        <div class="qts_content_home">
                            <div class="clearfix-20"></div>
                            <h2 class="title_home"><a href="javascript:void(0)">Kết quả tìm kiếm</a></h2>
                        <div class="clearfix-15"></div>
                        <?php if (count($lists)) { foreach ($lists as $key => $pro) { ?>
                        <!-- begin content_search -->
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-6 col-480-12">
                        <div class="row_8">
                            <!-- begin sub temp pro -->
                            <!-- end sub temp pro -->
                        </div>
                    </div>
                    <!-- end content_search -->
                    <?php }}?>
                    </div>
                        <div class="phantrang_prod">
                            <?php echo $this->pagination->create_links();?>
                        </div>
                    </div>
                 <!-- end mid_content --><!-- begin right_content --> <!-- end right_content -->
<div class="clearfix"></div>
</article>