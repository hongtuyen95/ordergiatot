<?php $dem = 0;?>
<div class="clearfix-20"></div>
<div class="row">
    <div class="col-sm-7">
        <div style="font-weight: bold;margin-bottom: 3px"><?=@$this->option->domain;?></div>
        <div style="font-weight: bold;margin-bottom: 3px">Điện thoại: <?=@$this->option->hotline1;?></div>
        <div style="font-weight: bold;margin-bottom: 3px">Địa chỉ: <?=@$this->option->address;?></div>
    </div>
    <div class="col-sm-5">
        <p class="clearfix"><span class="pull-right">Số : ......................</span></p>
        <p class="clearfix"><span class="pull-right"><i>Ngày <?=date('d');?> tháng <?=date('m');?> năm <?=date('Y');?></i></span></p>
    </div>
</div>
<div class="clearfix"></div>
<div class="text-center">
    <h3>PHIẾU GIAO HÀNG</h3>
</div>
<div style="font-weight: bold;margin: 10px 0">
    <p class="col-xs-offset-3">Hà Nội :</p>
    <p class="col-xs-offset-3">TP.HCM :</p>
</div>
<div style="margin: 15px 0">
    <p><strong>Khách hàng : <?=@$order->fullname;?> </strong></p>
    <p><strong>Điện thoại : <?=@$order->phone;?></strong></p>
    <p><strong>Địa chỉ : <?=@$order->address;?></strong></p>
</div>
<div class="clearfix table-responsive">
    <table  class="table table-bordered">
        <?php if(count($bills)) : ?>
        <tr>
            <?php foreach($bills as $bill) : ?>
                <?php $dem += 1; ?>
                <td width="25%"><?=$bill;?></td>
                <?php if($dem % 4 == 0) : ?></tr><tr><?php endif;?>
            <?php endforeach;?>
            <?php for($i=1;$i<=$plus;$i++) : ?><td width="25%"></td><?php endfor;?>
        </tr>
        <?php else : ?>
            <tr>
                <td></td>
            </tr>
        <?php endif;?>
    </table>
</div>
<div class="row ">
    <div class="col-sm-4 text-center">
        <p><strong>Người giao hàng</strong></p>
        <p>(Ký, ghi rõ họ tên)</p>
    </div>
    <div class="col-sm-4 text-center">
        <p><strong>Người nhận hàng</strong></p>
        <p>(Ký, ghi rõ họ tên)</p>
    </div>
    <div class="col-sm-4 text-center">
        <p><strong>Kế toán kho</strong></p>
        <p>(Ký, ghi rõ họ tên)</p>
    </div>
</div>
<div class="clearfix-45"></div>
<div class="p_info">
    <p>Quý khách vui lòng kiểm tra kỹ hàng hóa trước khi ra khỏi kho. Hàng đã xuất kho Công Ty không chịu trách nhiệm giải quyết các khiếu nại liên quan đến vấn đề thiếu hàng, mất hàng, vỡ và sai hàng.</p>
</div>

<style>
    @media print{
        .col-xs-offset-3{margin-left: 25%}
        .text-center{text-align: center}
        .table{
            display: table;
            width: 100%;
            border-spacing: 0;
            border-collapse: collapse;
        }
        .table td{
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            border: 1px solid #a2a4a7;
        }
        }
        .title-info {
            font-size: 18px;
            margin-top: 35px;
            margin-bottom: 25px;
        }
        .col-sm-4 {
            float: left;
            width: 33.33333333%;
        }
        .col-sm-7{width:58.33333333%;float: left;}
        .col-sm-5{width:41.66666667%;float: left;}
        .p_info {
            margin-top: 65px;
            font-style: italic;
        }
        .col-sm-6 {
            width: 50%;
            float: left;
        }
        .pull-right {
            float: right!important;
        }
        .clearfix {
            clear: both;
        }
        .clearfix-45{
            clear: both;
            margin-bottom: 45px;
        }
    }

</style>