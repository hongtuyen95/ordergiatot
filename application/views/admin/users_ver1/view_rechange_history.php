<section class="content-header">
    <h1>
        Lịch sử giao dịch : <?php echo @$user->fullname;?> - <?php echo $user->email;?>
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/users/listAll')?>">Lịch sử giao dịch</a></li>
    </ol>
</section>

<section class="content">
    <!-- Page Heading -->
    <div class="box">
        <div class="box-header">
            <a data-toggle="modal" data-target="#myModal" class="btn btn-success btn-sm">
                <i class="fa fa-plus"></i> Thêm mới
            </a>
            <strong style="color:red">Số dư hiện tại : <?=number_format(@$user->wallet);?> vnđ</strong>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table class="table table-bordered table-hover">
                <tr class="active">
                    <th width="7%">STT</th>
                    <th>Loại</th>
                    <th>Hình thức nạp</th>
                    <th class="text-right">Giá trị (Vnđ)</th>
                    <th class="text-center">Ghi chú</th>
                    <th width="7%">Action</th>
                </tr>
                <?php if(count($lists)) : $stt = 0; ?>

                    <?php foreach($lists as $k => $list) : ?>
                        <?php $stt +=1;?>
                        <tr>
                            <td width="7%"><?=$stt;?></td>
                            <td>
                                <?php if($list->type == 0) : ?>Nạp tiền<?php endif;?>
                                <?php if($list->type == 1) : ?>Trừ tiền<?php endif;?>
                            </td>
                            <td><?=$list->form;?></td>
                            <td class="text-right"><?=number_format($list->price);?></td>
                            <td class="text-center"><?=$list->note;?></td>
                            <td width="5%">
                                <a onclick="editRechange(<?=@$list->id;?>)" class="btn btn-xs btn-default" title="Sửa"><i class="fa fa-pencil"></i></a>
                                <a href="<?=base_url();?>vnadmin/users/deleteRechange/<?=@$list->id;?>" onclick="return confirm('Bạn có chắc chắn muốn xóa?')" class="btn btn-xs btn-danger" title="Xóa" style="color: #fff"><i class="fa fa-times"></i> </a>
                            </td>
                        </tr>
                    <?php endforeach;?>
                <?php endif;?>
            </table>
        </div>
    </div>

</section>

<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <form id="form-add" method="post" action="<?=base_url('vnadmin/users/addRechange');?>" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Nạp tiền</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Loại :</label>
                        <div class="col-sm-8">
                            <select name="loai" class="form-control input-sm">
                                <option value="0">Nạp tiền mới</option>
                                <option value="1">Giảm trừ</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Giá trị :</label>
                        <div class="col-sm-8">
                            <input type="text" data-v-min="0" data-v-max="99999999999" name="price" class="form-control validate[required] input-sm" id="price" placeholder="">
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Hình thức nạp :</label>
                        <div class="col-sm-8">
                            <select name="type" class="form-control input-sm">
                                <option value="Chuyển khoản">Chuyển khoản</option>
                                <option value="Khác">Khác</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Ghi chú :</label>
                        <div class="col-sm-8">
                            <textarea class="form-control" name="note" id="note"></textarea>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <input type="hidden" value="<?=@$id;?>" name="user_id" />
                    <button type="button" id="add_rechange" class="btn btn-primary">Lưu</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
                </div>
            </form>
        </div>

    </div>
</div>

<link href="<?=base_url('assets/css_admin/back_end/bootstrap-toggle.min.css')?>" rel="stylesheet">
<script src="<?=base_url('assets/js_admin/bootstrap-toggle.min.js')?>"></script>
<script src="<?=base_url('assets/js_admin/general_list.js')?>"></script>

<link href="<?= base_url('assets/css_admin/back_end/css_autocomplete.css')?>" rel="stylesheet" type="text/css">

<script type="text/javascript" src="<?= base_url('assets/js_admin/jquery.autocomplete.min.js') ?>"></script>

<script type="text/javascript">


</script>
<script src="<?= base_url('assets/plugin/autonumber/autoNumeric.js') ?>"></script>
<script src="<?= base_url('assets/plugin/autonumber/jquery.number.js') ?>"></script>
<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
    $('#price').autoNumeric(0);

    $("#add_rechange").click(function(){
        var check = $('#form-add').validationEngine('validate');
        if(check){
            $('#form-add').submit();
        }
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