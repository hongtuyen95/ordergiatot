<div class="clearfix-10"></div>
<div class="col-sm-12">
    <div class="">
        <div class="col-md-2 col-left col-xs-12">
            <div class="content_left" id="sidebar">
                <?php echo $this->load->widget('danhmuc');?>
            </div>
        </div>
        <div class="col-md-10 col-xs-12 ">
            <div class="content_mid">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Lịch sử giao dịch
                        </h3>
                    </div>
                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="<?=base_url('lich-su-giao-dich');?>">Tất cả (<?=@$countAll;?>)</a></li>
                            <li><a  href="<?=base_url('lich-su-giao-dich?status=1');?>">Chưa duyệt (<?=@$status1;?>)</a></li>
                            <li><a  href="<?=base_url('lich-su-giao-dich?status=2');?>">Đã duyệt (<?=@$status2;?>)</a></li>
                            <li><a  href="<?=base_url('lich-su-giao-dich?status=3');?>">Hủy (<?=@$status3;?>)</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <div class="clearfix-5"></div>
                                <table class="table datatable">
                                    <?php if(count($lists)) : $stt = 0; ?>
                                    <thead>
                                        <tr>
                                            <th class="text-center" width="5%">STT</th>
                                            <th>Thông tin giao dịch</th>
                                            <th width="15%" class="text-center">Số tiền thanh toán</th>
                                            <th width="20%" class="text-left">Thời gian</th>
                                            <th width="15%" class="text-center">Trạng thái</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach($lists as $list) : $stt +=1; ?>
                                            <tr>
                                                <td class="text-center" width="5%"><?=$stt;?></td>
                                                <td>
                                                    <p><strong>Thanh toán đơn hàng : <span style="color:#26c24b"><?=$list->code;?></span></strong></p>
                                                    <p>
                                                        <?php if(!empty($list->note)) : ?>
                                                            <i class="fa fa-comment" style="color:#f0ad4e"></i> : <span style="font-style: italic;border-bottom: 1px dashed #ddd "><?=$list->note;?></span>
                                                        <?php endif;?>
                                                    </p>
                                                </td>
                                                <td class="text-center">
                                                    <span style="font-weight: bold;color:#f94877"><?=number_format($list->price);?> VNĐ<span>
                                                </td>
                                                <td>
                                                    <strong><?=date('H:i d/m/Y',$list->time);?></strong>
                                                </td>
                                                <td class="text-center">
                                                    <?php if($list->status == 1)  : ?><button class="btn btn-warning btn-xs">Chưa duyệt</button><?php endif;?>
                                                    <?php if($list->status == 2)  : ?><button class="btn btn-success btn-xs">Đã duyệt</button><?php endif;?>
                                                    <?php if($list->status == 3)  : ?><button class="btn btn-danger btn-xs">Hủy</button><?php endif;?>
                                                </td>
                                            </tr>
                                        <?php endforeach;?>

                                    </tbody>
                                    <?php else : ?>
                                        <tr><td>Không có dữ liệu</td></tr>
                                    <?php endif;?>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    #DataTables_Table_0_length{display: none !important;}
</style>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
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
            }
        } );
    });
</script>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();

    var url = window.location.href;
    $('.nav-tabs > li >  a').parent().removeClass('active');
    $('.nav-tabs  a[href="' + url + '"]').parent().addClass('active');
</script>