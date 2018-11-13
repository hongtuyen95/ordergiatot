<section class="content-header">
    <h1>
        Thông tin thanht toán
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/pages/pagelist')?>">Thông tin thanh toán</a></li>
        <li > <a onclick="history.back()" style="cursor: pointer"><i class="fa fa-reply"></i></a></li>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="box">
        <div class="box-header">
            <a href="<?= base_url('vnadmin/order/add_banking')?>" class="btn btn-success btn-sm">
                <i class="fa fa-plus"></i> Thêm mới
            </a>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <form name="formbk" method="post" action="<?=base_url('vnadmin/pages/deletes')?>">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th width="3%" class="text-center">STT</th>
                        <th>Chủ tài khoản</th>
                        <th>Chi nhánh</th>
                        <th>Số tài khoản</th>
                        <th width="10%" class="no-sort text-center">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php if(isset($lists)){
                        $i=1;
                        foreach($lists as $v){?>
                            <tr>
                                <td class="text-center"><?= $i++;?></td>
                                <td><a href="<?= base_url('vnadmin/order/add_banking/'.$v->id)?>"><?= @$v->name?></a></td>
                                <td><?=$v->bank;?></td>
                                <td><?=$v->acount;?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('vnadmin/order/add_banking/'.$v->id)?>" class="btn btn-xs btn-default">
                                        <i class="fa fa-pencil"></i>
                                    </a>
                                    <a href="<?= base_url('vnadmin/order/delete_banking/'.$v->id)?>" class="btn btn-xs btn-danger">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </td>
                            </tr>
                        <?php } } ?>
                    </tbody>
                    <tfoot>
                    </tfoot>
                </table>
            </form>
        </div>

        <!-- /.box-body -->

        <!-- /.box -->

    </div>

</section>

<!-- /.content-wrapper -->

<style>

    .view_color{width: 10px; height: 10px;margin-top: 5px;cursor: pointer; float: left;margin-right: 5px }

</style>

<script>

    $(document).ready(function() {

        $('#myTable2').DataTable( {

            "columnDefs": [ {

                "targets": 'no-sort',

                "orderable": false,

            } ],

            "order": [[ 1, "asc" ]],

            "initComplete": function () {

                this.api().columns().every( function () {

                    var column = this;

                    var select = $('<select><option value=""></option></select>')

                        .appendTo( $(column.footer()).empty() )

                        .on( 'change', function () {

                            var val = $.fn.dataTable.util.escapeRegex(

                                $(this).val()

                            );



                            column

                                .search( val ? '^'+val+'$' : '', true, false )

                                .draw();

                        } );



                    column.data().unique().sort().each( function ( d, j ) {

                        select.append( '<option value="'+d+'">'+d+'</option>' )

                    } );

                } );

            }

        } );

    } );

</script>

<!-- DataTables -->

<link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.css')?>">

<script src="<?=base_url('assets/js_admin/general_list.js')?>"></script>

<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/jquery.dataTables.min.js')?>"></script>

<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>