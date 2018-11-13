<div class="clearfix-10"></div>
<div class="col-sm-12">
    <div class="col-md-2 col-left col-xs-12">
        <div class="content_left" id="sidebar">
            <?php echo $this->load->widget('danhmuc');?>
        </div>
    </div>
    <div class="col-md-10 col-sm-10">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"><?=lang('chang-pass');?></h3>
            </div>
        </div>
        <div class="clearfix-10"></div>
        <div class="infor_acount clearfix col-sm-offset-2 col-md-8 col-sm-8">
            <form id="form_change_pass" action="<?=base_url('users_frontend/change_pass')?>" method="post"   class="validate form-horizontal" role="form">
                <div class="123">
                    <div class="form-group">
                        <label class="col-sm-4"><?=lang('old-pass');?></label>
                        <div class="col-sm-8">
                            <div id="show_error_pass2"></div>
                            <input type="password" class="validate[required] form-control" onchange="check_pass($(this).val())"  name="old_pass" placeholder="<?=lang('old-pass');?>">
                            <input id="pass_check" name="pass_check" value="1" type="hidden">
                        </div>
                    </div>
                    <div class="clearfix-5"></div>
                    <div class="form-group">
                        <label class="col-sm-4"><?=lang('new-pass');?></label>
                        <div class="col-sm-8">
                            <input type="password" class=" validate[required,custom[onlyLetterNumber,minSize[6]]] form-control"
                                   id="new_pass" name="new_pass" placeholder="<?=lang('new-pass');?>">
                        </div>
                    </div>
                    <div class="clearfix-5"></div>
                    <div class="form-group">
                        <label class="col-sm-4"><?=lang('re-pass');?></label>
                        <div class="col-sm-8">
                            <input type="password" class="validate[required,equals[new_pass]] form-control"
                                   name="id" name="re_pass" placeholder="<?=lang('re-pass');?>">
                        </div>
                    </div>
                    <div class="clearfix-5"></div>
                    <div class="form-group">
                        <label class="col-sm-4">&nbsp;</label>
                        <div class="col-sm-8">
                            <button type="button" name="update_pass" id="update_pass"  class="btn btn-success btn-sm " >
                                <div class="button-green">
                                    <i class="icons icon-basket-2"></i> Cập nhật
                                </div>
                            </button>
                        </div
                    </div>
                    <div class="clearfix-5"></div>
            </form>
        </div>
    </div>
    </div>
    </div>
</div>

<script type="text/javascript" src="<?= base_url('assets/js/user.js') ?>"></script>
<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
    $(function(){
        $('#update_pass').click(function(){
            var check_form = $('#form_change_pass').validationEngine('validate');
            if(check_form){
                $('#form_change_pass').submit();
            }
        });
    });
</script>