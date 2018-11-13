<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">In hóa đơn</h4>
            </div>
            <div class="modal-body" id="printDiv">

                <div class="row">
                    <div class="col-xs-3 col-4">
                        <div class="logo text-center">
                            <a>
                                <img style="max-width: 148px" src="<?=base_url(@$this->option->site_logo)?>">
                            </a>
                            <p class="text-center">Số : ..................</p>
                            <p class="text-center">Ngày <?=date('d');?> tháng <?=date('m');?> năm <?=date('Y');?></p>
                        </div>
                    </div>
                    <div class="col-xs-9 col-8">
                        <p content="title-p" style="font-weight:bold;font-size: 20px;margin-bottom: 20px" class="text-center">Đặt Hàng China</p>
                        <p style="margin-bottom: 5px"><strong>Địa chỉ : </strong> <?=@$this->option->address;?></p>
                        <p style="margin-bottom: 5px"><strong>Holine : </strong><?=@$this->option->hotline1;?></p>
                        <p style="margin-bottom: 5px"><strong>Website : </strong> https://dathangchina247.com/</p>
                        <p style="margin-bottom: 5px"><strong>Email : </strong><?=@$this->option->site_email;?></p>
                    </div>
                </div>
                <div class="clearfix-20"></div>

                <div class="row">
                    <div class="col-xs-4 col-6">
                        <table class="table" style="margin-bottom: 0px">
                            <tr>
                                <td width="50%"><strong>Mã hóa đơn</strong></td>
                                <td><?=@$exchange->sku;?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-xs-4 col-6">
                        <table class="table" style="margin-bottom: 0px">
                            <tr>
                                <td width="50%"><strong>Khách hàng</strong></td>
                                <td width="50%"><?=@$customer->fullname;?></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-xs-4 col-6">
                        <table class="table" style="margin-bottom: 0px">
                            <tr>
                                <td width="50%"><strong>Số điện thoại</strong></td>
                                <td><?=@$customer->phone;?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-4 col-6">
                        <table class="table" style="margin-bottom: 0px">
                            <tr>
                                <td width="30%"><strong>Địa chỉ</strong></td>
                                <td><?=@$customer->address;?></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-xs-4 col-6">
                        <table class="table" style="margin-bottom: 0px">
                            <tr>
                                <td><strong>Email</strong></td>
                                <td><?=@$customer->email;?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="clearfix"></div>
                <hr/>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-xs-5 col-6">
                        <table class="table">
                            <tr>
                                <td width="50%"><strong>Số tiền thanh toán</strong></td>
                                <td> <?=number_format($exchange->price);?> VNĐ</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-xs-5 col-6">
                        <table class="table">
                            <tr>
                                <td width="50%"><strong>Hình thức thanh toán</strong></td>
                                <td>
                                    <?=@$exchange->payment;?>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-5 col-6">
                        <table class="table">
                            <tr>
                                <td><strong>Ghi chú</strong></td>
                                <td>
                                    Thanh toán đơn hàng : <?=@$order->code;?>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-xs-5 col-6">
                        <table class="table">
                            <tr>
                                <td><strong>Ngày thanh toán</strong></td>
                                <td><?=date('d/m/Y',@$exchange->time);?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="clearfix-10"></div>
                <div class="row">
                    <div class="col-xs-3 col-3 text-center">
                        <p><strong>Người thu tiền</strong></p>
                        <p>(Ký, họ tên)</p>
                    </div>
                    <div class="col-xs-3 col-3 text-center">
                        <p><strong>Khách hàng</strong></p>
                        <p>(Ký, họ tên)</p>
                    </div>
                    <div class="col-xs-3 col-3 text-center">
                        <p><strong>Kế toán</strong></p>
                        <p>(Ký, họ tên)</p>
                    </div>
                    <div class="col-xs-3 col-3 text-center">
                        <p><strong>Quản lý duyệt</strong></p>
                        <p>(Ký, họ tên)</p>
                    </div>
                </div>
                <style>
                    @media print {
                        .col-4{width: 33.33333333%;float: left;}
                        .col-8{width: 66.66666667%;float: left;}
                        .col-3{width: 25%;float: left}
                        .col-9{width: 75%;float: left;}
                        .col-5{width: 41.66666667%;float: left;}
                        .col-5{width: 41.66666667%;float: left;}
                        .col-6{width: 50%;float: left;}
                        .clearfix-20{clear: both;margin-bottom: 20px}
                        .clearfix-45{clear: both;margin-bottom: 45px}
                        .clearfix{clear: both}
                        .table{display: table}
                        .table td{
                            padding: 8px;
                            line-height: 1.42857143;
                            vertical-align: top;
                        }
                        .text-center{text-align: center}
                        .title-p{font-size: 20px}
                        body{font-family: Arial}
                    }
                </style>
            </div>
            <div class="clearfix-45"></div>
            <div class="modal-footer">
                <button type="button" onclick="printElem('printDiv')" class="btn btn-sm btn-success"><i class="fa fa-print"></i> In giao dịch</button>
                <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>

    </div>
</div>

<style>
    .table tr > td{border: none !important;}
    .table{margin-bottom: 0px !important;}
    hr{margin: 10px 0px}
    .name_page{font-size: 20px !important;}

</style>

<script type="text/javascript">
    function printElem(divId) {
        var content = document.getElementById(divId).innerHTML;
        PrintDiv(content);
    }

    function PrintDiv(template,title='') {
        var frame1 = document.createElement('iframe');
        frame1.name = "frame1";
        frame1.style.position = "absolute";
        frame1.style.top = "-1000000px";
        document.body.appendChild(frame1);
        var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
        frameDoc.document.open();
        frameDoc.document.write('<html><head><link rel="stylesheet" href="<?= base_url('assets/css_admin/print.css')?>" media="print"><title>'+title+'</title>');
        frameDoc.document.write('</head><body>');
        frameDoc.document.write(template);
        frameDoc.document.write('</body></html>');
        frameDoc.document.close();
        /*setTimeout(function () {
         window.frames["frame1"].focus();
         window.frames["frame1"].print();
         document.body.removeChild(frame1);
         }, 500);*/
        window.frames["frame1"].focus();
        window.frames["frame1"].print();
        return false;
        //return false;
    }
</script>