<section class="content-header">
    <h1>
        Cập nhật
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnadmin/config/phimuahang')?>"> Phí mua hàng</a></li>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="row">
        <form class="validate form-horizontal" role="form" id="form-bk" method="POST" action=""
              enctype="multipart/form-data">
            <input type="hidden" name="edit" id="id_edit" value="<?= @$edit->id; ?>">
            <input type="hidden" name="addnews" value="1">
            <input type="hidden" id="catcheck" value="page">
            <div class="col-md-12" style="font-size: 12px">
                <div class="panel panel-default">
                    <div class="alert alert-dismissible" style="display:none;"></div>
                    <div class="panel-heading">
                        <h3 class="panel-title pull-left">Tổng quan</h3>
                        <div class="pull-right">
                            <button type="button" <?php if (isset ($edit)) { ?> onclick="editDepot()" <?php }else{ ?> onclick="createDepot()" <?php } ?> class="btn btn-success btn-xs" name="add_news"><i
                                    class="fa fa-check"></i> Cập nhật
                            </button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label  class="col-sm-12">Tổng tiền đơn từ :</label>
                                <div class="col-sm-12">
                                    <input type="text" data-v-max="9999999999999" data-v-min="0" id="from" class="form-control input-sm validate[required]" name="from" value="<?=@$edit->from;?>" placeholder=""/>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label  class="col-sm-12">Đến : </label>
                                <div class="col-sm-12">
                                    <input type="text" data-v-max="9999999999999" data-v-min="0" id="to" class="form-control input-sm validate[required]" name="to" value="<?=@$edit->to;?>" placeholder=""/>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label  class="col-sm-12">Phí mua hàng (%) :</label>
                                <div class="col-sm-12">
                                    <input type="text"  class="form-control input-sm validate[required]" name="price"
                                           value="<?=@$edit->price;?>" placeholder=""/>
                                </div>
                            </div>
                        </div>

                        <div class="text-right" style="padding-bottom: 15px">
                            <input type="hidden" name="addnews" value="1">
                            <button type="button" <?php if (isset ($edit)) { ?> onclick="editDepot()" <?php }else{ ?> onclick="createDepot()" <?php } ?> class="btn btn-success btn-xs" name="add_news"><i
                                    class="fa fa-check"></i> Cập nhật
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</section>

<!-- /.container-fluid -->
<script src="<?= base_url('assets/plugin/autonumber/autoNumeric.js') ?>"></script>
<script src="<?= base_url('assets/plugin/autonumber/jquery.number.js') ?>"></script>

<script type="text/javascript">
    $('#from,#to').autoNumeric(0);
    function createDepot(){
        var check  = $('#form-bk').validationEngine('validate');
        if(check){
            $('#form-bk').submit();
        }
    }
    function editDepot(){
        var check  = $('#form-bk').validationEngine('validate');
        if(check){
            $('#form-bk').submit();
        }
    }
</script>

