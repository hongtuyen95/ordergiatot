<?php
#****************************************#
# * @Author: Tran Manh                   #
# * @Email: dangtranmanh051187@gmail.com #
# * @Website: http://qts.com             #
# * @Copyright: 2017 - 2018              #
#****************************************#
?>

<section class="content-header">
    <h1>
       Danh sách video
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/video/categories')?>">Danh mục video</a></li>
        <li > <a onclick="history.back()" style="cursor: pointer"><i class="fa fa-reply"></i></a></li>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="box">
        <div class="box-header">
            <a href="<?= base_url('vnadmin/video/add')?>" class="btn btn-success btn-sm">
            <i class="fa fa-plus"></i> Thêm mới
            </a>
            <a onclick="ActionDelete('formbk')" class="btn btn-danger btn-sm">
            <i class="fa fa-times"></i> Xóa
            </a>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
			<div class="col-sm-12" >
				<input type="hidden" id="autocomplete2" value="<?= $auto_name?>">
				<form action="" method="get">
					<div class="form-group row">
						<div class="col-sm-3">
							<input name="name" type="search" id="getautocomplete2" value="<?=$this->input->get('name');?>"
								   placeholder="Tên video..."
								   class="form-control input-sm">
						</div>
						<div class="col-sm-3">
							<select name="cate" class="input-sm form-control">
								<option value="">Danh mục</option>
								<?php show_cate($cate,0,'',@$this->input->get('cate'));?>
							</select>
						</div>
						<div class="col-sm-2">
							<select name="view" class="input-sm form-control" >
								<option value="">Hiển thị</option>
								<option class="" value="home" <?=$this->input->get('view')=='home'?'selected':'';?> ><?=_title_product_home;?></option>
							</select>

						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-sm btn-default">
								<i class="fa fa-search"></i>  Tìm kiếm
							</button>
						</div>
						<div class="clearfix"></div>
					</div>
				</form>
			</div>
			<form name="formbk" method="post" action="<?=base_url('vnadmin/video/deletes')?>">
                <table id="example" class="table table-bordered table-striped">
					<thead>
                        <tr>
							<th width="1%"class="no-sort"><input type="checkbox" name="checkall" id="checkall" value="0" onclick="DoCheck(this.checked,'formbk',0)" /></th>
							<th width="7%" class="no-sort text-center">Sắp xếp</th>
							<th width="7%" class="no-sort">Ảnh</th>
							<th >Tên video</th>
							<th width="20%">Danh mục</th>
							<th width="7%" class="no-sort">Hiển thị</th>
							<th width="8%" class="no-sort text-center">active</th>
							<th width="10%" class="no-sort text-center">Action</th>
                        </tr>
                    </thead>
					<tbody>
						 <?php if (isset($list)) {
                            $stt=1;
                            foreach ($list as $v) {
                                ?>
						<tr>
							<td><input type="checkbox" name="checkone[]" id="checkone" value="<?php echo $v->id; ?>" ></td>
							<td>
							<input type="number" onchange="update_sort($(this))" value="<?= @$v->sort ?>"
								data-placement='video'	   data-item='<?= @$v->id; ?>' style="width: 55px">
							</td>
							<td><?php if (file_exists(@$v->image)) { ?>
									<img src="<?= base_url(@$v->image) ?>" style="height: 35px">
								<?php } else echo "<img src='".base_url('img/noimage.jpg')."' style='max-width: 35px; max-height: 35px'>" ?>
							</td>
							<td class="todo-list"><a href="<?= base_url('vnadmin/video/edit/' . $v->id) ?>" title="Sửa sản phẩm">
                                <?= @$v->name ?>
                                </a>
								<div class="tools">
									<a href="<?=base_url('video-detail/'.$v->alias.'.html')?>" target="_blank">Xem trước</a>
									<a href="<?= base_url('vnadmin/video/edit/' . $v->id) ?>">Chỉnh sửa</a>
									<a href="<?= base_url('vnadmin/video/delete/' . $v->id) ?>" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
								</div>
							</td>
							<td><?= @$v->cat_name->name ?></td>
							<td>
                                <div data-toggle="tooltip" data-placement="video" title="<?=@$show_home->name ?>"
                                    data-value="<?= $v->id; ?>" data-view="<?= @$show_home->field ?>"
                                    class='view_color <?php if(@$show_home->active ==0){ echo'hidden';} ?>'
                                    style="border: 1px solid #<?= @$show_home->color ?>;<?php if($v->home == 1){ echo'background-color:#'.$show_home->color.''; }else{ echo''; } ?>"></div>
                                <div data-toggle="tooltip" data-placement="video" title="<?=@$show_hot->name ?>"
                                    data-value="<?= $v->id; ?>" data-view="<?= @$show_hot->field ?>"
                                    class='view_color <?php if(@$show_hot->active ==0){ echo'hidden';} ?>'
                                    style="border: 1px solid #<?= @$show_hot->color ?>;<?php if($v->hot == 1){ echo'background-color:#'.$show_hot->color.''; }else{ echo''; } ?>"></div>
                                <div data-toggle="tooltip" data-placement="video" title="<?=@$show_focus->name ?>"
                                    data-value="<?= $v->id; ?>" data-view="<?= @$show_focus->field ?>"
                                    class='view_color <?php if(@$show_focus->active ==0){ echo'hidden';} ?>'
                                    style="border: 1px solid #<?= @$show_focus->color ?>;<?php if($v->focus == 1){ echo'background-color:#'.$show_focus->color.''; }else{ echo''; } ?>"></div>
							</td>
							<td class="text-center">
								<label class="view_color view_active" data-value="<?=$v->id;?>" data-placement="video" data-view="active">
									<input type="checkbox" <?=$v->active==1?'checked':''?> data-toggle="toggle"  id="toggle" data-size="mini"
										   data-on="Yes" data-off="No">
								</label>
							</td>
							<td class="text-center">
								<a class="btn btn-xs btn-default"
								   href="<?= base_url('vnadmin/video/edit/' . $v->id) ?>"><i
										class="fa fa-pencil"></i> </a>
								<a class="btn btn-xs btn-danger"
								   href="<?= base_url('vnadmin/video/delete/' . $v->id) ?>" title="Xóa"
								   onclick="return confirm('Bạn có chắc chắn muốn xóa?')"><i
										class="fa fa-times"></i> </a>

							</td>
						</tr>
						<?php }  } ?>
					</tbody>
				</table>
				<?php
				echo $this->pagination->create_links(); // tạo link phân trang
				?>				
			</form>	      
		</div>
	</div>
</section>
<link href="<?=base_url('assets/css_admin/back_end/bootstrap-toggle.min.css')?>" rel="stylesheet">
<script src="<?=base_url('assets/js_admin/bootstrap-toggle.min.js')?>"></script>
<script>
	$(document).ready(function () {
		$('[data-toggle="tooltip"]').tooltip();
	});
	// xóa danh mục đã chọn
	function ActionDelete(formName)
	{
		var $check = false;
		jQuery("input[name='checkone[]']").each(function(){
			if($(this).is(':checked')){
				$check = true;
			}
		});
		if($check == false){
			alert('Bạn chưa chọn mục nào để xóa');
		}
		else{
			if(confirm('Bạn có chắc chắn muốn xóa không ?')){
				eval('document.' + formName + '.submit();');
			}
		}
	}
	// click hien thị và không hiện thị
	$('.view_color').click(function(){
		var color = $( this ).css( "border-color" );
		var background = $( this ).css( "background-color" );

		var form_data = {
			id: $( this ).attr('data-value'),view:$( this ).attr('data-view'),table:$( this ).attr('data-placement')
		};
		$.ajax({
			url: base_url() + 'ajax/ajax/update_fill',
			type: 'POST',
			dataType: 'json',
			data: form_data,
			success: function (rs) {

			}
		});
		if(color!=background){
			$( this ).css( "background-color",color ) ;
		}else{
			$( this ).css( "background-color",'#fff' ) ;
		}
	});
	// cap nhat trường sap xep cho table
	function update_sort(s) {
		var form_data = {
			id: s.attr('data-item'), sort: s.val(), table:s.attr('data-placement')
		};
		$.ajax({
			url: base_url() + "ajax/ajax/update_sort",
			type: 'POST',
			dataType: 'json',
			data: form_data,
			success: function (rs) {
			}
		});
	}
</script>
<link href="<?= base_url('assets/css_admin/back_end/css_autocomplete.css')?>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<?= base_url('assets/js_admin/jquery.autocomplete.min.js') ?>"></script>
<script type="text/javascript">
   $(function(){
         // cài đặt autocomplete với ô code
       
		var namefor  = $('#autocomplete2').val() ;
		var namefor = namefor.split(",");
		$('#getautocomplete2').autocomplete({
           lookup: namefor,
        });
   }); 
</script>
<style>
.todo-list .tools {
	position: relative;
	width: 100%;
    float: right;
    color: #dd4b39;
	z-index:-1;
}
.todo-list:hover .tools {
    z-index:100;
    width: 100%;
	top:3px;
    text-align: right;
}
.todo-list:hover .tools a{padding-right:10px;}
</style>