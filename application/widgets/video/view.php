 
<div class="clearfix"></div>
<h2 class="title_home_new"><a href="">Video</a></h2>
<div class="clearfix-30"></div>
<div class="row_10">
    <?php foreach ($videos as $value) : ?>
    <div class="col-md-4 col-sm-6 col-xs-6 col-480-12">
        <div class="row_5">
            <div class="box_video">
                <iframe width="100%" height="241" src="https://www.youtube.com/embed/<?= $value->link;?>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen=""></iframe>
                <h3 class="name_video"><a href="<?= base_url('media-detail/'.$value->alias.'.html')?>"><?= $value->name;?></a></h3>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
</div> 
        
     
 