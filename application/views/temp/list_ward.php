<option value="" class="">Phường/Xã</option>
<?php if(count($wards)) : ?>
    <?php foreach($wards as $ward) : ?>
        <option value="<?=@$ward->wardid;?>" rel="<?=@$ward->name;?>"><?=@$ward->name;?></option>
    <?php endforeach;?>
<?php endif;?>