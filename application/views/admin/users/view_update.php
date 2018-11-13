<section class="content-header">
    <h1>
        Cập nhật tài khoản
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/users/listusers')?>">Danh sách tài khoản</a></li>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="history.back()" style="cursor: pointer" title="Quay lại trang trước" ><i class="fa fa-reply"></i></a>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="row">
        <form class="validate form-horizontal" role="form" id="form-bk" name="frmAddUser" method="POST" action=""
              enctype="multipart/form-data">
            <input type="hidden" name="edit" id="id_edit" value="<?= @$edit->id; ?>">
            <div class="col-md-12" style="font-size: 12px">
                <div class="panel panel-default">
                    <div class="alert alert-dismissible" style="display:none;"></div>
                    <div class="panel-heading">
                        <h3 class="panel-title pull-left">Tổng quan</h3>
                        <div class="pull-right">
                            <button onclick="updateUser()" type="button" class="btn btn-success btn-xs" name="adduser"><i
                                    class="fa fa-check"></i> Cập nhật
                            </button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label  class="col-sm-2 text-right">Tài khoản</label>
                            <div class="col-sm-6">
                                <strong style="color:#ff0055"><?php echo $user->email;?></strong>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Họ và tên</label>
                            <div class="col-sm-6">
                                <input type="text" value="<?=@$user->fullname?>" name="fullname" id="fullname" maxlength="50" class="form-control validate[required] input-sm"  />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Điện thoại</label>
                            <div class="col-sm-6">
                                <input type="text" value="<?=@$user->phone?>" name="phone" id="phone" maxlength="35" class="form-control input-sm validate[required,custom[phone]]" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Địa chỉ</label>
                            <div class="col-sm-6">
                                <input type="text" value="<?=@$user->address?>" name="address" id="address" maxlength="35" class="form-control input-sm" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Giới tính</label>
                            <div class="col-sm-2">
                                <select name="sex_user" id="sex_user" class="form-control input-sm select-sm">
                                    <option value="1" <?php if(@$user->sex == '1'){echo 'selected="selected"';} ?>>Nam</option>
                                    <option value="0" <?php if(@$user->sex == '0'){echo 'selected="selected"';} ?>>Nữ</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Kho hàng</label>
                            <div class="col-sm-2">
                                <select name="depot" id="depot" class="form-control input-sm select-sm">
                                    <?php foreach($this->depots as $depot) : ?>
                                        <option value="<?=@$depot->id;?>" <?php if(@$depot->id == $user->depot){echo 'selected="selected"';} ?>><?=@$depot->name;?></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Phí mua hàng :</label>
                            <div class="col-sm-2">
                                <input type="text" name="fee" class="form-control validate[required] input-sm" id="fee" value="<?=@$user->fee;?>" />
                            </div>
                            <div class="col-sm-2"><span style="font-size: 18px">%</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 text-right">Tỷ giá cân nặng :</label>
                            <div class="col-sm-2">
                                <input type="text" name="weight_exchange" class="form-control validate[required] input-sm" id="fee" value="<?=@$user->weight_exchange;?>" />
                            </div>
                            <div class="col-sm-2"><span style="font-size: 18px">VNĐ / KG</span></div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 text-right">
                                <button onclick="updateUser()" type="button" class="btn btn-success btn-xs" name="adduser"><i class="fa fa-check"></i> Cập nhật
                                </button>
                            </label>
                            <div class="col-sm-2">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
<script>
    function updateUser(){
        var check = $('#form-bk').validationEngine('validate');
        if(check){
            $('#form-bk').submit();
        }
    }
</script>