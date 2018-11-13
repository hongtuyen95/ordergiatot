<section class="content-header">    <h1>        Tỷ giá cân nặng        <small></small>    </h1>    <ol class="breadcrumb">        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>        <li class="active"><a href="<?= base_url('vnadmin/config/phimuahang')?>">cấu hình</a></li>    </ol></section><section class="content">    <!-- Page Heading -->    <div class="box">        <div class="box-header">            <a href="<?= base_url('vnadmin/config/add_tygiacannang')?>" class="btn btn-success btn-sm">                <i class="fa fa-plus"></i> Thêm mới            </a>        </div>        <!-- /.box-header -->        <div class="box-body">            <form name="formbk" method="post" action="">                <div class="table-responsive">                <table id="myTable2" class="table table-bordered table-striped">                    <thead>                    <tr>                        <th width="2%" class="no-sort"><input type="checkbox" name="checkall" id="checkall" value="0" onclick="DoCheck(this.checked,'formbk',0)" /></th>                        <th width="3%" class="text-center">STT</th>                        <th>Cân nặng</th>                        <th>Phí mua hàng</th>                        <th>Ngày tạo</th>                        <th width="10%" class="no-sort text-center">Action</th>                    </tr>                    </thead>                    <tbody>                    <?php if(isset($lists)){                        $i=1;                        foreach($lists as $v){?>                            <tr>                                <td><input type="checkbox" name="checkone[]" id="checkone" value="<?php echo $v->id; ?>" ></td>                                <td class="text-center"><?= $i++;?></td>                                <td>                                    <strong style="color:#e65535"><?=number_format(@$v->from);?>Kg - <?=number_format(@$v->to);?>Kg</strong>                                </td>                                <td><strong><?=number_format($v->price);?>vnđ</strong></td>                                <td><?=date('d/m/Y H:i',$v->time);?></td>                                <td class="text-center">                                    <a href="<?= base_url('vnadmin/config/edit_tygiacannang?id='.base64_encode($v->id));?>" class="btn btn-xs btn-default">                                        <i class="fa fa-pencil"></i>                                    </a>                                    <a href="<?= base_url('vnadmin/config/delete_tygiacannang?id='.base64_encode($v->id));?>" class="btn btn-xs btn-danger">                                        <i class="fa fa-times"></i>                                    </a>                                </td>                            </tr>                        <?php } } ?>                    </tbody>                    <tfoot>                    </tfoot>                </table>                </div>            </form>        </div>        <!-- /.box-body -->        <!-- /.box -->    </div></section><!-- /.content-wrapper --><style>    .view_color{width: 10px; height: 10px;margin-top: 5px;cursor: pointer; float: left;margin-right: 5px }</style><script>    $(document).ready(function() {        $('#myTable2').DataTable( {            "columnDefs": [ {                "targets": 'no-sort',                "orderable": false,            } ],            "order": [[ 1, "asc" ]],            "initComplete": function () {                this.api().columns().every( function () {                    var column = this;                    var select = $('<select><option value=""></option></select>')                        .appendTo( $(column.footer()).empty() )                        .on( 'change', function () {                            var val = $.fn.dataTable.util.escapeRegex(                                $(this).val()                            );                            column                                .search( val ? '^'+val+'$' : '', true, false )                                .draw();                        } );                    column.data().unique().sort().each( function ( d, j ) {                        select.append( '<option value="'+d+'">'+d+'</option>' )                    } );                } );            }        } );    } );</script><!-- DataTables --><link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.css')?>"><script src="<?=base_url('assets/js_admin/general_list.js')?>"></script><script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/jquery.dataTables.min.js')?>"></script><script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>