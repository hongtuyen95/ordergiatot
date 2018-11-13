<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
<table class="table table-bordered" style="border: 1px solid #ddd;">
    <tr>
        <td colspan="7" style="font-weight: bold;text-align: center">CÔNG NỢ KHÁCH HÀNG</td>
    </tr>
    <tr class="active">
        <th width="10%" class="text-center">STT</th>
        <th>Tên khách hàng</th>
        <th>Số điện thoại</th>
        <th>Email</th>
        <th style="width: 16%">Tổng tiền hàng</th>
        <th class="text-left" style="width: 13%">Đã thanh toán</th>
        <th class="text-left" style="width: 13%">Còn thiếu</th>
    </tr>
    <?php if(count($lists)) : $stt = 0;$tienhang = 0;$thanhtoan = 0;$conthieu = 0; ?>
        <?php foreach($lists as $list) : $stt +=1;?>
            <?php
            $conthieu += $list->total - $list->payted;
            $tienhang += $list->total;
            $thanhtoan += $list->payted;
            ?>
            <tr>
                <td class="text-center"><?=$stt;?></td>
                <td>
                    <a style="color:#26c24b;font-weight: bold" href="<?=base_url('vnadmin/statistic/debtCustomer?id='.base64_encode($list->uid));?>">
                        <?=@$list->fullname;?>
                    </a>
                </td>
                <td>
                    <?=@$list->phone;?>
                </td>
                <td>
                    <?=@$list->email;?>
                </td>
                <td>
                    <strong style="color:#ff0055"><?=number_format($list->total);?> VNĐ</strong>
                </td>
                <td>
                    <strong style="color:#26c24b"><?=number_format($list->payted);?> VNĐ</strong>
                </td>
                <td class="text-left">
                    <strong style="color:#ff0055"><?=number_format($list->total - $list->payted);?> VNĐ</strong>
                </td>
            </tr>
        <?php endforeach;?>
        <tfoot>
        <tr class="active">
            <td></td>
            <td></td>
            <td></td>
            <td class="text-right"><strong>Tổng : </strong></td>
            <td colspan="">
                <strong style="color:red"><?=number_format($tienhang);?> VNĐ</strong>
            </td>
            <td colspan="">
                <strong style="color:#00a65a"><?=number_format($thanhtoan);?> VNĐ</strong>
            </td>
            <td colspan="">
                <strong style="color:red"><?=number_format($conthieu);?> VNĐ</strong>
            </td>
        </tr>
        </tfoot>
    <?php endif;?>

</table>