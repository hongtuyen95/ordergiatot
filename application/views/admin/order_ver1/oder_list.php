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

       Danh sách đơn hàng

        <small></small>

    </h1>

    <ol class="breadcrumb">

        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>

        <li class="active"><a href="<?= base_url('vnadmin/order/orders')?>"> Danh sách đơn hàng</a></li>

        <li > <a onclick="history.back()" style="cursor: pointer"><i class="fa fa-reply"></i></a></li>

    </ol>

</section>

<section class="content">

    <!-- Page Heading -->

    <div class="box">

        <div class="box-header">

            <a href="<?= base_url('vnadmin/order/add')?>" class="hidden btn btn-success btn-sm">

            <i class="fa fa-plus"></i> Thêm mới

            </a>

            <a onclick="ActionDelete('formbk')" class="btn btn-danger btn-sm">

            <i class="fa fa-times"></i> Xóa

            </a>

        </div>

        <!-- /.box-header -->

        <div class="box-body">

			<div class="col-sm-12" >

				<div class="form-group row">

					<div class="col-sm-3" data-column="2">

						<input type="search" id="col2_filter" placeholder="Mã đơn hàng ..." class="column_filter form-control input-sm">

					</div>

					<div class="col-sm-3" data-column="3">

						<input type="search" id="col3_filter" placeholder="Tên khách hàng ..." class="column_filter form-control input-sm">

					</div>

					<div class="col-sm-3" data-column="4">

						<input type="search" id="col4_filter" placeholder="Email ..." class="column_filter form-control input-sm">

					</div>

					<div class="col-sm-3" data-column="5">

						<input type="search" id="col5_filter" placeholder="Điện thoại ..." class="column_filter form-control input-sm">

					</div>

					<div class="clearfix"></div>

				</div>

			</div>

			<div class="alert alert-dismissible" style="display:none;"></div>

			<form name="formbk" method="post" action="<?=base_url('vnadmin/order/deletes')?>">

                <table id="example" class="table table-bordered table-striped">

					<thead>

                        <tr>

                            <th width="1%" class="no-sort"><input type="checkbox" name="checkall" id="checkall" value="0" onclick="DoCheck(this.checked,'formbk',0)" /></th>

                            <th width="3%" class="text-center">STT</th>

                            <th width="2%" class="no-sort">Mã ĐH</th>

							<th width="10%">Họ tên khách hàng</th>

							<th width="5%">Điện thoại</th>

							<th width="5%">Email</th>

							<th width="5%" class="no-sort">Ngày đặt</th>

							<th width="5%" class="no-sort">Trạng thái</th>

                            <th width="5%" class="no-sort text-center">Action</th>

                        </tr>

                    </thead>

					 <tbody>

					<?php if (isset($list)) {

						$stt = 1;

						foreach ($list as $v) {

							$j=$stt++;

							$id_tr='id_tr'.$j;

							?>

						<tr>

							<td><input type="checkbox" name="checkone[]" id="checkone" value="<?php echo $v->id; ?>" ></td>

							<td><?= $stt++; ?></td>

							<td><?= @$v->code?></td>

							<td><?= @$v->fullname ?></td>

							<td><?= @$v->phone;?></td>

							<td><?= @$v->email; ?></td>

							<td><?= date('d-m-Y H:i',@$v->time) ?></td>

							<td>

								<div class="dropdown" id="status_<?= $v->id; ?>">

									<?php $status = array(

										'1' => array('Hoàn thành', 'success'),

										'2' => array('Đã hủy', 'danger'),

										'0' => array('Chờ duyệt', 'primary'),

									);

									if ($v->status == 0) {

										foreach ($status as $k => $val) {

											if ($v->status == $k) {

												?>

												<a class=" dropdown-toggle" data-toggle="dropdown">

												<span class="label label-<?= $val[1]; ?>">

													<?= $val[0]; ?>

													<span class="fa fa-caret-down"></span>

												</span>

												</a>

											<?php

											}

										}

									} else {

										?>

										<span class="label label-<?= $status[$v->status][1]; ?>">

											<?= $status[$v->status][0]; ?>

										</span>

									<?php

									}

									?>

									<ul class="dropdown-menu" style="min-width: 50px; padding: 5px 5px">

										<li>

											<span  class="label label-success" data-value='1' data-item="<?=$v->id;?>" data-id="status_<?=$v->id;?>"

											   onclick="update_order_status($(this))"

												>Hoàn thành</span>

										</li>

										<li>

											<span  class="label label-danger"    data-value='2' data-item="<?=$v->id;?>" data-id="status_<?=$v->id;?>"

												onclick="update_order_status($(this))"

												>Hủy</span>

										</li>

									</ul>

								</div>

							</td>

							<td class="text-center">

								<div onclick="getModal(<?=$v->id;?>)" class="btn btn-xs btn-default" data-toggle="modal" title="Xem nội dung đơn hàng">

                                <i class="fa fa-eye" style=""></i></div>

								<a class="btn btn-xs btn-danger"

								   href="<?= base_url('vnadmin/order/delete/' . $v->id) ?>" title="Xóa"

								   onclick="return confirm('Bạn có chắc chắn muốn xóa?')"><i class="fa fa-times"></i> </a>



							</td>

						</tr>

                        <?php } } ?>

                    </tbody>

				</table>

			</form>

		</div>

	</div>

</section>

<input id="baseurl" type="hidden" value="<?= base_url();?>">

<script>

	$(document).ready(function() {

		$('#example').DataTable( {

			"columnDefs": [ {

					"targets": 'no-sort',

					"orderable": false,

					  } ],

			"order": [[ 0, "desc" ]],

			"iDisplayLength": 20

		} );

		// tim kiem theo ten

		$('input.column_filter').on( 'keyup click', function () {

			filterColumn( $(this).parents('').attr('data-column') );

		} );

	} );

	function filterColumn ( i ) {

		$('#example').DataTable().column( i ).search(

			$('#col'+i+'_filter').val()

		).draw();

	}

	function update_order_status(sender){

		var baseurl=$('#baseurl').val();

		if(sender.attr('data-value')==1){

			var action='Xác nhận hoàn thành đơn hàng?';

		}

		if(sender.attr('data-value')==2){

			var action='Bạn có chắc chắn muốn hủy đơn hàng?';

		}

		var check=confirm(action);

		if(check==true){

			$.ajax({

				type: "POST",

				dataType: "json",

				url: baseurl + 'admin/order/update_order_status',

				data: {item:sender.attr('data-item'),value:sender.attr('data-value')},

				success: function (rs) {



					if(rs.check==true){
						var str=' <span class="label label-'+rs.color+'">'+rs.status+'</span>';
						$("#"+sender.attr('data-id')).html(str);
					}

				}

			})

		}

	}

	function getModal(id) {

		var baseurl = $('#baseurl').val();

		$('.modal').remove();

		$.ajax({

			type: "GET",

			dataType:"html",

			url: baseurl + 'admin/order/popupdata',

			data: "id=" + id,

			success: function (ketqua) {

				$('body').append(ketqua);

				$("#myModal").modal();

			}

		})

	}

</script>

<!-- DataTables -->

<link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.css')?>">

<script src="<?=base_url('assets/js_admin/general_list.js')?>"></script>

<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/jquery.dataTables.min.js')?>"></script>

<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>

<style>

.no-hidden select{display:none;}

table.dataTable thead th, table.dataTable thead td, table.dataTable tfoot th, table.dataTable tfoot td{padding:5px;}

</style>