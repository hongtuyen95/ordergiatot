<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>

<div class="col_right_body">
    <div class="name_page">Danh sách khiếu nại</div>
    <div class="clearfix"></div>

    <div class="content_page_donhang">

        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai')?>">Tất cả <span>(<?= $count_all?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=1')?>">Đang khiếu nại <span>(<?= $count_1?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=2')?>">Xin trả tiền <span>(<?= $count_2?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=3')?>">Đổi trả hàng <span>(<?= $count_3?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=4')?>">Duyệt khiến nại <span>(<?= $count_4?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=5')?>">Quản lý duyệt <span>(<?= $count_5?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=6')?>">Khiến nại thành  <span>(<?= $count_6?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=7')?>">Khiếu nại thất bại <span>(<?= $count_7?>)</span></a></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai?status=8')?>">Đã hủy <span>(<?= $count_8?>)</span></a></li>
            </ul>

            <div class="tab-content">
                <div id="Home" class="tab-pane fade in active">
                    <div class="table-responsive">
                    <table class="table table-bordered table-cart">
                        <tr class="active">
                            <th class="text-center" width="5%">STT</th>
                            <th width="15%">Ngày tạo đơn hàng</th>
                            <th width="7%">Hình ảnh</th>
                            <th>Thông tin sản phẩm</th>
                            <th class="text-center" width="10%">Giá / Số lượng</th>
                            <th class="text-center" width="20%">Ghi chú</th>
                            <th class="text-center" width="12%">Trạng thái</th>
                            <th width="10%">Chỉnh sửa</th>
                        </tr>
                        <?php  if(count($carts)) : $stt = 0; ?>
                            <?php foreach($carts as $cat) : $stt +=1; ?>
                                <tr>
                                    <td width="5%" class="text-center"><?=$stt;?></td>
                                    <td width="15%">
                                        <a style="color:#00BCD4;font-weight: bold"><?= $cat->order->code?></a>
                                        <br>
                                        <?= date('H:i d/m/Y',$cat->order->time)?>
                                        <br>
                                        Mã shop : <?= $cat->tracking->shop_id?>
                                        <br>
                                        Mã VĐ: <?= $cat->tracking->tracking_id?>
                                        <br>
                                        Người tạo: <?= @$cat->buyer->fullname?>
                                    </td>
                                    <td width="6%" class="text-center">
                                        <img style="max-width: 45px" src="<?=$cat->item_image;?>" />
                                    </td>
                                    <td>
                                        <p style="color:#1999d6;font-weight: bold"><?=$cat->item_name;?></p>
                                        <p><?=$cat->item_size;?></p>
                                        <p><a target="_blank" style="color: #f36907" href="<?=$cat->item_link;?>"><i class="fa fa-link"></i> Link sản phẩm</a></p>
                                    </td>
                                    <td>
                                        <p>Giá : <span style="color:#e64c11;font-weight: bold"><?= $cat->price?> NDT</span></p>
                                        <p>Số lượng : <?=@$cat->quantity;?></p>
                                        <p>Thực mua : <span style="color:#27b30d;font-weight: bold"><?=@$cat->qty_buy;?></span></p>
                                    </td>
                                    <td>
                                        <form action="<?= base_url('vnadmin/khieunai/comment')?>" method="post" enctype="multipart/form-data">
                                            <p>Lời nhắn</p>
                                            <p>
                                                <textarea class="form-control" name="comment" rows="2"></textarea>
                                            </p>
                                            <p><input type="file" name="userfile"></p>
                                            <input type="hidden" name="id_cart" value="<?= $cat->id?>">
                                            <input type="hidden" name="post_comment" value="1">
                                            <p><button type="submit" class="btn btn-xs btn-success"><i class="fa fa-check"></i> Lưu</button></p>
                                        </form>
                                        <?php if ($cat->comment_khieunai!='') {
                                                $comment_khieunai = json_decode($cat->comment_khieunai);
                                                foreach ($comment_khieunai as $key => $value) {
                                                    echo $value->name_admin.': '.$value->comment.'</br>'.'<a href="'.base_url($value->link_file).'">'.$value->link_file.'</a>';
                                                }
                                        } ?>
                                    </td>
                                    <td class="text-center">
                                        <?php switch ($cat->khieunai) {
                                            case 1:
                                                echo '<span class="kho_cl">Đang khiếu nại</span>';
                                                break;
                                            case 2:
                                                echo '<span class="kho_cl">Xin trả tiền</span>';
                                                break;
                                            case 3:
                                                echo '<span class="kho_cl">Đổi trả hàng</span>';
                                                break;
                                            case 4:
                                                echo '<span class="kho_cl">Duyệt khiếu nại</span>';
                                                break;
                                            case 5:
                                                echo '<span class="kho_cl">Quản lý duyệt</span>';
                                                break;
                                            case 6:
                                                echo '<span class="kho_cl">Khiếu nại thành công</span>';
                                                break;
                                            case 7:
                                                echo '<span class="kho_cl">Khiếu nại thất bại</span>';
                                                break;
                                            case 8:
                                                echo '<span class="kho_cl">Đã huỷ </span>';
                                                break;
                                        } ?>
                                        
                                    </td>
                                    <td>
                                        <div class="dropdown khieunai">
                                            <button class="btn btn-primary btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
                                                Chỉnh sửa
                                                <span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=1&id='.$cat->id)?>">Đang khiếu nại</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=2&id='.$cat->id)?>">Xin trả tiền</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=3&id='.$cat->id)?>">Đổi trả hàng</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=4&id='.$cat->id)?>">Duyệt khiếu nại</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=5&id='.$cat->id)?>">Quản lý duyệt</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=6&id='.$cat->id)?>">Khiếu nại thành công</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=7&id='.$cat->id)?>">Khiếu nại thất bại</a></li>
                                                <li><a href="<?=base_url('vnadmin/khieunai/update_khieunai?status=8&id='.$cat->id)?>">Đã hủy</a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach;?>
                        <?php endif;?>
                    </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix-5"></div>
    </div>
</div>
<style>
    textarea{font-size: 11px !important;}
    .khieunai{font-size: 11px}
    .khieunai ul li{font-size: 12px}
    .khieunai ul button{font-size: 11px}
    .khieunai ul{
        left:-85px !important;
    }
</style>
<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');
</script>