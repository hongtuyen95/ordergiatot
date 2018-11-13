<article id="body_home">
    <div class="cate_control">
        <div class="container">
            <div class="row_pc">

            </div>
        </div>
    </div>
    <div class="clearfix-10"></div>
    <div class="clearfix-5"></div>
    <div class="col-sm-12">
        <div class="row_pc">
            <div class="col-md-2 col-left col-xs-12">
                <div class="content_left" id="sidebar">
                    <?php echo $this->load->widget('danhmuc');?>
                </div>
            </div>
            <div class="col-md-10 col-xs-12">
                <div class="content_mid">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Tài chính - Tài khoản : <?=@$user->fullname;?></h3>
                        </div>
                        <div class="panel-body">
                               <h3>Số dư hiện tại : <span style="color:#ff0055;font-weight: bold"><?=number_format($user->wallet);?> VNĐ</span></h3>

                            <div class="table-responsive">
                                <table class="table">
                                    <tr class="active">
                                        <th>STT</th>
                                        <th>Loại</th>
                                        <th>Hình thức thanh toán</th>
                                        <th>Giá trị (Vnđ)</th>
                                        <th>Ảnh</th>
                                        <th>Ghi chú</th>
                                    </tr>
                                    <?php if(count($lists)) : $stt = 0; ?>
                                        <?php foreach($lists as $list) : $stt +=1; ?>
                                            <tr>
                                                <td><?=$stt;?></td>
                                                <td>
                                                    <?php if($list->type == 0) : ?>Nạp tiền<?php endif;?>
                                                    <?php if($list->type == 1) : ?>Thanh toán đơn hàng<?php endif;?>
                                                </td>
                                                <td>
                                                    <?=$list->form;?>
                                                </td>
                                                <td>
                                                    <?=number_format($list->price);?>
                                                </td>
                                                <td>
                                                    <?php if(!empty($list->image)) : ?>
                                                        <a href="<?=base_url($list->image);?>" target="_blank"><img width="65px" src="<?=base_url($list->image);?>"></a>
                                                    <?php endif;?>
                                                </td>
                                                <td>
                                                    <?=$list->note;?>
                                                </td>
                                            </tr>
                                        <?php endforeach;?>
                                    <?php endif;?>
                                </table>
                            </div>
                        </div>
                    </div>
    <form enctype="multipart/form-data"

                </div>
            </div>
        </div>
    </div>
</article>


<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>