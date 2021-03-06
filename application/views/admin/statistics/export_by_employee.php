<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>

<table class="table table-bordered table_search">
    <tr>
        <td colspan="7" style="text-align: center;font-weight: bold;text-transform: uppercase">
            Nhân viên : <?=@$customer->fullname;?> - Phone : <?=@$customer->phone;?>
        </td>
    </tr>
    <tr class="active">
        <th class="text-center" width="10%">STT</th>
        <th style="width:18%">Mã hóa đơn</th>
        <th style="width: 15%">Thời gian</th>
        <th style="width: 16%">Tổng tiền</th>
        <th style="width: 13%">Đã thanh toán</th>
        <th>Còn lại</th>
        <th class="text-center" style="width: ">Trạng thái đơn hàng</th>
    </tr>
    <?php if(count($lists)) : $stt = 0; $tong = 0;$thanhtoan = 0;$conlai = 0; ?>
        <?php foreach($lists as $list) : $stt +=1;?>
            <?php
            $tong += $list->total_price;
            $thanhtoan += $list->payted;
            $conlai += $list->total_price - $list->payted;
            ?>
            <tr>
                <td class="text-center"><?=$stt;?></td>
                <td>
                    <p class="blue_txt"><?=$list->code;?></p>
                </td>
                <td>
                    <?=date('d/m/Y',$list->time);?>
                </td>
                <td>
                    <span class="red_txt"><?=number_format($list->total_price);?> VNĐ</span>
                </td>
                <td class="green_txt">
                    <?=number_format($list->payted);?> VNĐ
                </td>
                <td>
                    <span class="red_txt"><?=number_format($list->total_price - $list->payted);?> VNĐ</span>
                </td>
                <td class="text-center">
                    <?php if($list->status == 0) : ?><span class="btn btn-xs btn-default">Chưa duyệt<span><?php endif;?>
                            <?php if($list->status == 1) : ?><span class="btn btn-xs btn-success">Đã duyệt<span><?php endif;?>
                                    <?php if($list->status == 2) : ?><span class="btn btn-xs btn-success">Đã thanh toán<span><?php endif;?>
                                            <?php if($list->status == 3) : ?><span class="btn btn-xs btn-success">Đã mua<span><?php endif;?>
                                                    <?php if($list->status == 4) : ?><span class="btn btn-xs btn-success">Đã tất toán<span><?php endif;?>
                                                            <?php if($list->status == 5) : ?><span class="btn btn-xs btn-success">Hàng đã về<span><?php endif;?>
                                                                    <?php if($list->status == 6) : ?><span class="btn btn-xs btn-success">Đã giao hàng<span><?php endif;?>
                                                                            <?php if($list->status == 7) : ?><span class="btn btn-xs btn-success">Kết thúc đơn<span><?php endif;?>
                                                                                    <?php if($list->status == 8) : ?><span class="btn btn-xs btn-success">Đã hủy<span><?php endif;?>
                                                                                            <?php if($list->status == 9) : ?><span class="btn btn-xs btn-danger">Hết hàng<span><?php endif;?>
                </td>
            </tr>
        <?php endforeach;?>
        <tfoot>
        <tr>
            <td colspan="3" class="text-right" style="text-align: right">
                <strong>Tổng</strong>
            </td>
            <td><strong class="blue_txt"><?=number_format($tong);?> VNĐ</strong></td>
            <td><strong class="blue_txt"><?=number_format($thanhtoan);?> VNĐ</strong></td>
            <td><strong class="blue_txt"><?=number_format($conlai);?> VNĐ</strong></td>
            <td></td>
        </tr>
        </tfoot>
    <?php endif;?>

</table>