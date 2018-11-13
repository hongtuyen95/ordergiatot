<div class="clearfix-10"></div>
<div class="col-sm-12">
    <div class="col-md-2 col-left col-xs-12">
        <div class="content_left" id="sidebar">
            <?php echo $this->load->widget('danhmuc');?>
        </div>
    </div>
    <div class="col-sm-10">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Hàng thất lạc
                </h3>
            </div>
        </div>
        <div class="clearfix">
            <table class="table table-striped datatable">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã số</th>
                    <th>Sản phẩm</th>
                    <th width="10%"></th>
                </tr>
                </thead>
                <tbody>
                <?php if(count($lists)) : $stt = 0;?>
                    <?php foreach($lists as $list) : $stt +=1;?>
                        <tr>
                            <td><?=@$stt;?></td>
                            <td><?php echo $list->code;?></td>
                            <td><strong class="text-primary"><?php echo $list->name;?></strong></td>
                            <td class="text-center">
                                <a><img style="max-width: 100px" src="<?=base_url('upload/img/products/'.$list->pro_dir.'/thumbnail_2_'.$list->image);?>"></a>
                            </td>
                        </tr>
                    <?php endforeach;?>
                <?php endif;?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>

<link rel="stylesheet" href="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.css')?>">
<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script src="<?= base_url('assets/css_admin/back_end/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.datatable').DataTable( {
            "columnDefs": [ {
                "targets": 'no-sort',
                "orderable": false,
            } ],
            "order": [[ 0, "asc" ]],
            "iDisplayLength": 10,
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Vietnamese.json"
            },
            initComplete: function () {
                this.api().columns(1).every( function () {
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
                this.api().columns(2).every( function () {
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
    });
</script>

