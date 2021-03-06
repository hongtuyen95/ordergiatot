<article id="body_home">
    <div class="cate_control">
        <div class="container">
            <div class="row_pc">

            </div>
        </div>
    </div>
    <div class="clearfix-10"></div>
    <div class="menu_control">
        <div class="container">
            <!--<div class="row_pc">
                <ul class="menu_control_lv">
                    <li><a href="<?/*=base_url()*/?>">Trang chủ</a></li>
                    <li><a href="<?/*=base_url('thong-tin-tai-khoan')*/?>">Thông tin cá nhân</a></li>
                    <li><a href="<?/*=base_url('hang-that-lac')*/?>">Hàng thất lạc</a></li>
                    <li class="active"><a href="<?/*=base_url('don-hang')*/?>">Đơn hàng</a></li>
                    <li><a href="<?/*=base_url('tai-chinh')*/?>">Tài chính</a></li>
                    <li><a href="<?/*=base_url('dang-xuat')*/?>">Thoát</a></li>
                </ul>

            </div>-->
        </div>
    </div>
    <div class="clearfix-5"></div>
    <div class="col-sm-12">
        <div class="row_pc">
            <div class="col-md-2 col-left col-xs-12">
                <div class="content_left" id="sidebar">
                    <!--<ul>
                        <li class="active"><a href="<?/*=base_url('don-hang')*/?>">Danh sách đơn hàng</a></li>
                        <li><a href="<?/*=base_url('cart/displayPayM')*/?>">Giỏ hàng <sup>(0)</sup></a></li>
                    </ul>-->
                    <?php echo $this->load->widget('danhmuc');?>
                </div>
            </div>
            <div class="col-md-10 col-xs-12">
                <div class="content_mid">
                    <div class="search_code_prod clearfix">
                        <form action="" method="get">
                            <div class="col-md-2 col-xs-12">
                                <label for="">Mã đơn hàng</label>
                            </div>
                            <div class="col-md-10 col-xs-12">
                                <div class="input-group">
                                    <input type="text" name="key" class="form-control input-sm" placeholder="Tìm kiếm...">
                                    <span class="input-group-btn">
                                    <button class="btn btn-default btn-sm" type="submit">Tìm kiếm</button>
                                </span>
                                </div><!-- /input-group -->
                            </div>

                        </form>
                    </div>
                    <div class="clearfix-20"></div>
                    <div class="info_admin">
                        <!--<ul class="tab_admin">
                            <li <?php /*if($this->input->get('status') == '') : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang');*/?>">Tất cả <sup>(4)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == '0') : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=0');*/?>">Chưa duyệt<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 1) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=1');*/?>">Đã duyệt<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 2) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=2');*/?>">Đã thanh toán<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 3) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=3');*/?>">Đã mua<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 4) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=4');*/?>">Đã tất toán<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 5) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=5');*/?>">Đã giao hàng<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 6) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=6');*/?>">Kết thúc đơn<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 7) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=7');*/?>">Hết hàng<sup>(0)</sup></a></li>
                            <li <?php /*if($this->input->get('status') == 8) : */?>class="active"<?php /*endif;*/?>><a href="<?/*=base_url('don-hang?status=8');*/?>">Đã hủy<sup>(0)</sup></a></li>
                        </ul>-->
                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <table class="datatable  display">
                                    <thead>
                                        <tr class="odd">
                                            <th class="text-center" width="3%"></th>
                                            <th class="text-center">Ngày tạo</th>
                                            <th class="text-center">Mã đơn hàng</th>
                                            <th width="8%" class="text-center">Số SP</th>
                                            <th class="text-center">Tổng tiền</th>
                                            <th class="text-center">Đã thanh toán</th>
                                            <th class="text-center">Trạng thái</th>
                                            <th class="text-center"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php if(count($lists)) : $stt = 0; ?>
                                        <?php foreach($lists as $list) : $stt +=1;?>
                                            <tr>
                                                <td class="text-center"><?=$stt;?></td>
                                                <td class="text-center"><?=date('d/m/Y H:i',$list->time);?></td>
                                                <td class="text-center">
                                                    <a href="<?=base_url('cart/detail?id='.base64_encode($list->id));?>" style="font-family: Roboto_Bold; color: #4892d3;"><?=$list->code;?></a>
                                                </td>
                                                <td class="text-center"><?=$list->total_item;?></td>
                                                <td class="text-center" style="color: #ff0055">
                                                    <p><strong><?=number_format($list->total_price);?></strong></p>
                                                    <p><strong>VNĐ</strong></p>
                                                </td>
                                                <td class="text-center">
                                                    <p style="color:#65c178;font-weight: bold"><?=number_format($list->payted);?></p>
                                                    <p style="color:#65c178;font-weight: bold">0 VNĐ</p>
                                                </td>
                                                <td class="text-center">
                                                    <?php if($list->status == 0) : ?>
                                                        <span class="btn btn-xs btn-success">Chưa duyệt<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 1) : ?>
                                                        <span class="btn btn-xs btn-success">Đã duyệt<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 2) : ?>
                                                        <span class="btn btn-xs btn-success">Đã thanh toán<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 3) : ?>
                                                        <span class="btn btn-xs btn-success">Đã mua<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 4) : ?>
                                                        <span class="btn btn-xs btn-success">Đã tất toán<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 5) : ?>
                                                        <span class="btn btn-xs btn-success">Đã giao hàng<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 6) : ?>
                                                        <span class="btn btn-xs btn-success">Kết thúc đơn<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 7) : ?>
                                                        <span class="btn btn-xs btn-success">Hết hàng<span>
                                                    <?php endif;?>
                                                    <?php if($list->status == 8) : ?>
                                                        <span class="btn btn-xs btn-success">Đã hủy<span>
                                                    <?php endif;?>
                                                </td>
                                                <td class="text-center">
                                                    <p><a style="color:#4892d3;font-weight: bold"  href="<?=base_url('cart/detail?id='.base64_encode($list->id));?>">Chi tiết</a></p>
                                                    <a href="<?=base_url('thanh-toan?id='.base64_encode($list->id))?>" style="color:#4892d3;font-weight: bold">Thanh toán</a>
                                                </td>
                                            </tr>
                                        <?php endforeach;?>
                                    <?php endif;?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</article>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>
<style>
    #DataTables_Table_0_filter, #DataTables_Table_0_length, .dataTables_info{display: none}
    .dataTables_wrapper .dataTables_paginate .paginate_button{
        padding:0px !important;
    }
    table.dataTable.no-footer{
        border-bottom: none !important;
    }
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