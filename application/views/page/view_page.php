<section class="qts_head_bot">
    <div class="text-center" style="height: 40px; background: #0a736e; color: #FFFFFF;line-height: 40px; font-size: 25px">
        <?= $page->name?>
    </div>
</section>
<div class="container">
    <div class="clearfix"></div>
        <!-- begin left_content --> <!-- end left_content --><!-- begin mid_content -->
        <div class="root_content qts_content_home">
            <div class="clearfix-15"></div>
            <div class="content">
                <?= $page->content?>
            </div>

    </div>
    <!-- end mid_content --><!-- begin right_content --> <!-- end right_content -->
    <div class="clearfix"></div>
</div>
<div class="clearfix-15"></div>
<div class="clearfix-15"></div>
<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>

<style>
    .content img{
        max-width: 100% !important;
        height: auto !important;
    }
</style>