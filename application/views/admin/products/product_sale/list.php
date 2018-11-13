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
       Danh sách Mã giảm giá
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/order/listSale')?>">Mã giảm giá</a></li>
        <li > <a onclick="history.back()" style="cursor: pointer"><i class="fa fa-reply"></i></a></li>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="box">
        <div class="box-header">
            <a href="<?= base_url('vnadmin/order/addSale')?>" class="btn btn-success btn-sm">
            <i class="fa fa-plus"></i> Thêm mới
            </a>
            <a onclick="ActionDelete('formbk')" class="btn btn-danger btn-sm">
            <i class="fa fa-times"></i> Xóa
            </a>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
			<form name="formbk" method="post" action="<?=base_url('vnadmin/order/deletes_list')?>">
                <table id="example" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th width="2%" class="no-sort"><input type="checkbox" name="checkall" id="checkall" value="0" onclick="DoCheck(this.checked,'formbk',0)" /></th>
							<th width="25%">Tên chương trình khuyến mại</th>
							<th width="7%" class="no-sort">Mã giảm giá </th>
							<th width="7%" class="no-sort">Chiết khấu (%)</th>
                            <th width="7%" class="no-sort text-center">Chức năng</th>

                        </tr>
                    </thead>
					<tbody>
						<?php if (isset($list)) {
						$stt = 1;
						foreach ($list as $v) {
							?>
						<tr>
							<td><input type="checkbox" name="checkone[]" id="checkone" value="<?php echo $v->id; ?>" ></td>
							<td><?= @$v->name?></td>
							<td><?=$v->code;?></td>
							<td><?= @$v->price?></td>
							<td class="text-center">
								<a class="btn btn-xs btn-default"
								   href="<?= base_url('vnadmin/order/editsale/' . $v->id) ?>"><i
										class="fa fa-pencil"></i> </a>
								<a class="btn btn-xs btn-danger"
								   href="<?= base_url('vnadmin/order/deletesale/' . $v->id) ?>" title="Xóa"
								   onclick="return confirm('Bạn có chắc chắn muốn xóa?')"><i
										class="fa fa-times"></i> </a>
							</td>
						</tr>
						<?php
						} } ?>
					 </tbody>
				</table>
			</form>
		</div>
	</div>
</section>
<script>
	$(document).ready(function() {
		$('#example').DataTable( {
			"columnDefs": [ {
					"targets": 'no-sort',
					"orderable": false,
					  } ],
			//"order": [[ 2, "desc" ]],
			//"iDisplayLength": 20
		} );
	} );
</script>
<!-- DataTables -->
<link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.css')?>">
<script src="<?=base_url('assets/js_admin/general_list.js')?>"></script>
<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>
