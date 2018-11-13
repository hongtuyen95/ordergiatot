<div id="modalEdit" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <form id="form-edit" method="post" action="<?=base_url('vnadmin/users/editRechange');?>" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Nạp tiền</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Loại :</label>
                        <div class="col-sm-8">
                            <select name="loai" class="form-control input-sm">
                                <option <?php if($edit->type == 0) : ?>selected<?php endif;?> value="0">Nạp tiền mới</option>
                                <option <?php if($edit->type == 1) : ?>selected<?php endif;?> value="1">Giảm trừ</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Giá trị :</label>
                        <div class="col-sm-8">
                            <input type="text" value="<?=@$edit->price;?>" data-v-min="0" data-v-max="99999999999" name="price" class="form-control validate[required] input-sm" id="price" placeholder="">
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Hình thức nạp :</label>
                        <div class="col-sm-8">
                            <select name="type" class="form-control input-sm">
                                <option <?php if($edit->form == 'Chuyển khoản') : ?>selected<?php endif;?> value="Chuyển khoản">Chuyển khoản</option>
                                <option <?php if($edit->form == 'Khác') : ?>selected<?php endif;?> value="Khác">Khác</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Ghi chú :</label>
                        <div class="col-sm-8">
                            <textarea class="form-control" name="note" id="note"><?=@$edit->note;?></textarea>
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-sm-4">Ảnh :</label>
                        <div class="col-sm-8">
                            <input type="file" name="userfile">
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <input type="hidden" value="<?=@$edit->id;?>" name="id_edit" />
                    <input type="hidden" value="<?=@$edit->id_user;?>" name="user_id" />
                    <input type="hidden" value="<?=@$edit->price;?>" name="old_price">
                    <button type="button" id="edit_rechange" class="btn btn-primary">Lưu</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
                </div>
            </form>
        </div>

    </div>
</div>

<script type="text/javascript">
    $('#edit_rechange').click(function(){
        var check = $('#form-edit').validationEngine('validate');
        if(check){
            $('#form-edit').submit();
        }
    });
</script>