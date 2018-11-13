<?php
#****************************************## * @Author: Tran Manh                   ## * @Email: dangtranmanh051187@gmail.com ## * @Website: http://qts.com             ## * @Copyright: 2017 - 2018              ##****************************************#?>
<section class="content-header">
    <h1> Danh sách thành viên
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin') ?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/users/listAll') ?>">Danh sách thành viên</a></li>
        <li><a onclick="history.back()" style="cursor: pointer"><i class="fa fa-reply"></i></a></li>
    </ol>
</section>
<section class="content">    <!-- Page Heading -->
    <div class="box">
        <div class="box-header"><a href="<?= base_url('vnadmin/users/add') ?>" class="hidden btn btn-success btn-sm"> <i
                    class="fa fa-plus"></i> Thêm mới </a> <a onclick="ActionDelete('formbk')"
                                                             class="btn btn-danger btn-sm"> <i class="fa fa-times"></i>
                Xóa </a>
            <button type="button" onclick="export_exel()" class="btn btn-primary btn-sm"><i
                    class="fa fa-file-excel-o"></i> Xuất Exel
            </button>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="col-sm-12"><input type="hidden" id="autocomplete1" value="<?= $auto_fullname ?>"> <input
                    type="hidden" id="autocomplete2" value="<?= $auto_email ?>"> <input type="hidden" id="autocomplete3"
                                                                                        value="<?= $auto_phone ?>">

                <form action="" method="get">
                    <div class="form-group row">
                        <div class="col-sm-2">
                            <input name="code" value="<?=@$this->input->get('code');?>" class="form-control input-sm" id="code" type="text" placeholder="Mã khách hàng..." />
                        </div>
                        <div class="col-sm-2">

                            <input name="fullname" type="search" id="getautocomplete1"
                                                     value="<?= $this->input->get('fullname'); ?>"
                                                     placeholder="tên thành viên ..." class="form-control input-sm">
                        </div>
                        <div class="col-sm-2"><input name="email" type="search" id="getautocomplete2"
                                                     value="<?= $this->input->get('email'); ?>" placeholder="email..."
                                                     class="form-control input-sm"></div>
                        <div class="col-sm-2"><input name="phone" type="search" id="getautocomplete3"
                                                     value="<?= $this->input->get('phone'); ?>"
                                                     placeholder="Số điện thoại..." class="form-control input-sm"></div>
                        <div class="col-sm-2"><select name="view" id="view" class="input-sm form-control">
                                <option value="">trạng thái</option>
                                <option class=""
                                        value="1" <?= $this->input->get('view') == 'active' ? 'selected' : ''; ?> >kích
                                    hoạt
                                </option>
                            </select></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-sm btn-default"><i class="fa fa-search"></i> Tìm kiếm
                            </button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
            <form name="formbk" method="post" action="<?= base_url('vnadmin/users/deletes') ?>">
                <div class="table-responsive">
                <table id="example" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th width="2%" class="no-sort">
                            <input type="checkbox" name="checkall" id="checkall" value="0" onclick="DoCheck(this.checked,'formbk',0)"/>
                        </th>
                        <th width="2%" class="no-sort">STT</th>
                        <th width="7%" class="no-sort text-center">Mã</th>
                        <th width="30%">Tên thành viên</th>
                        <th width="20%">Tên nhân viên phụ trách</th>
                        <th width="12%">Email</th>
                        <th width="7%" class="no-sort">Điện thoại</th>
                        <th width="5%" class="text-center no-sort">Phí</th>
                        <th width="7%">Kho</th>
                        <th width="5%" class="no-sort text-center">active</th>
                        <th width="15%" class="no-sort text-center">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php if (isset($list)) {
                        $stt = 1;
                        foreach ($list as $v) { ?>
                            <tr>
                                <td><input type="checkbox" name="checkone[]" id="checkone"
                                           value="<?php echo $v->id; ?>"></td>
                                <td><?= $stt++; ?></td>
                                <td class="text-center">
                                    kh<?=$v->id;?>
                                </td>
                                <td class="todo-list"><a style="color:#13a1e4;font-weight: bold"
                                                         href="<?= base_url('vnadmin/users/editUser?id=' . base64_encode($v->id)); ?>">                                    <?= @$v->fullname ?>                                </a>
                                </td>
                                <td>
                                    <select class="id_admin form-control" data-id="<?= $v->id ?>">
                                        <option value="0">Chọn nhân viên
                                        </option> <?php if (count($users_admin)): ?><?php foreach ($users_admin as $key => $v2): ?>
                                            <option <?php if ($v->id_admin == $v2->id): ?> selected <?php endif ?>
                                                value="<?= $v2->id ?>"><?= $v2->fullname ?></option>                                        <?php endforeach ?><?php endif ?>
                                    </select>
                                </td>
                                <td><?= @$v->email ?></td>
                                <td><?= @$v->phone ?></td>
                                <td class="text-center">                                <?= @$v->fee; ?> %</td>
                                <td>                                <?php foreach ($this->depots as $depot) : ?><?php if ($depot->id == $v->depot) {
                                        echo $depot->name;
                                    } ?><?php endforeach; ?>                            </td>
                                <td class="text-center"><label class="view_color view_active"
                                                               data-value="<?= $v->id; ?>" data-placement="users"
                                                               data-view="active"> <input
                                            type="checkbox" <?= $v->active == 1 ? 'checked' : '' ?> data-toggle="toggle"
                                            id="toggle" data-size="mini" data-on="Yes" data-off="No"> </label></td>
                                <td class="text-center"><a
                                        href="<?= base_url('vnadmin/users/rechangeHistory?id=' . $v->id); ?>"
                                        class="btn btn-sm btn-info"> <i class="fa fa-money"></i> Tài khoản tài chính
                                    </a>
                                    <!--<a href="<? /*=base_url('vnadmin/users/rechangeHistory?id='.$v->id);*/ ?>" class="btn btn-xs btn-default"></a>-->
                                    <!--<a class="btn btn-xs btn-danger"								   href="<? /*= base_url('vnadmin/users/delete/' . $v->id) */ ?>" title="Xóa"								   onclick="return confirm('Bạn có chắc chắn muốn xóa?')"><i class="fa fa-times"></i> </a>-->
                                </td>
                            </tr>                        <?php }
                    } ?>                    </tbody>
                </table>
                </div>
                    <?php echo $this->pagination->create_links(); // tạo link phân trang				?>
                <script type="text/javascript">                    $(".id_admin").change(function () {
                        $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: base_url() + 'vnadmin/users/update_user_idadmin',
                            data: {id: $(this).val(), id_edit: $(this).attr('data-id')},
                            success: function (result) {
                            }
                        });
                    })                </script>
            </form>
        </div>
    </div>
</section>
<link href="<?= base_url('assets/css_admin/back_end/bootstrap-toggle.min.css') ?>" rel="stylesheet">
<script src="<?= base_url('assets/js_admin/bootstrap-toggle.min.js') ?>"></script>
<script src="<?= base_url('assets/js_admin/general_list.js') ?>"></script>
<script>    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });</script>
<link href="<?= base_url('assets/css_admin/back_end/css_autocomplete.css') ?>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<?= base_url('assets/js_admin/jquery.autocomplete.min.js') ?>"></script>
<script type="text/javascript">    var url = '<?=base_url();?>';
    $(function () {         // cài đặt autocomplete với ô code        var codefor  = $('#autocomplete1').val() ;        var codefor = codefor.split(",");        $('#getautocomplete1').autocomplete({           lookup: codefor,        });		var namefor  = $('#autocomplete2').val() ;		var namefor = namefor.split(",");		$('#getautocomplete2').autocomplete({           lookup: namefor,        });    });	function export_exel(){		var name = $('input[name="fullname"]').val();		var email = $('#getautocomplete2').val();		var phone = $('#getautocomplete3').val();		var view = $('#view option:selected').val();		window.location.href = url + 'vnadmin/users/exportExel?name='+name+'&email='+email+'&phone='+phone+'&view='+view;	}	</script>
<style>    .todo-list .tools {
        position: relative;
        width: 100%;
        float: right;
        color: #dd4b39;
        z-index: -1;
    }

    .todo-list:hover .tools {
        z-index: 100;
        width: 100%;
        top: 3px;
        text-align: right;
    }

    .todo-list:hover .tools a {
        padding-right: 10px;
    }
    .table-responsive{
        overflow-x: inherit;
    }
</style>