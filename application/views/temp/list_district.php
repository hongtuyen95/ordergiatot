<option value="">Quận/Huyện</option>
<?php if(count($district)) : ?>
    <?php foreach($district as $dist) : ?>
        <option value="<?=@$dist->districtid;?>" rel="<?=@$dist->name;?>"><?=@$dist->name;?></option>
    <?php endforeach;?>
<?php endif;?>