<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="top_list">
        <div class="list_tk">
            <ul>
                <li><a href="<?=base_url('vnadmin/search/index');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_timkiem.png" alt="">Tìm kiếm</a></li>
                <li><a href="<?=base_url('vnadmin/order/orders');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_donhang.png" alt="">Đơn hàng</a> <span>(<?=@$this->total_order;?>)</span></li>
                <li><a href="<?=base_url('vnadmin/exchange/index');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giaodich.png" alt="">Giao dịch - Thanh toán</a> <span>(<?=@$this->total_exchanges;?>)</span></li>
                <li><a href="<?=base_url('vnadmin/khieunai/list_khieunai');?>" title="" rel=""><i class="fa fa-info" aria-hidden="true"></i> Danh sách đơn hàng khiếu nại</a> <!--<span>(<?/*=@$this->total_exchanges;*/?>)</span>--></li>
                <li><a href="<?=base_url('vnadmin/order/giaohang');?>" title="" rel=""><i class="fa fa-bars"></i> Giao hàng</a></li>
            </ul>
        </div>
        <div class="name_page">Giao hàng</div>
    </div>
    <div class="content_page_donhang">
        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/order/giaohang')?>">Giao hàng order </span></a></li>

            </ul>

            <div class="tab-content">
                <div id="Home" class="tab-pane fade in active clearfix">
                    <div class="col-sm-5">
                        <form>
                            <!--<div class="input-group">
                                <input type="text" class="form-control input-sm" placeholder="Tìm theo bill">
                                <div class="input-group-btn">
                                    <button class="btn btn-success btn-sm" type="submit">
                                        Tìm kiếm
                                    </button>
                                </div>
                            </div>-->
                            <div class="clearfix-10"></div>
                            <button type="button" onclick="createBill()" class="btn btn-sm btn-info"><i class="fa fa-plus"></i> Thêm Bill</button>
                            <div class="clearfix-5"></div>
                            <div id="list-bill">
                                <!--<div class="input-group">
                                    <input type="text" name="bill[]" class="form-control input-sm" value="2350432064032" placeholder="">
                                    <div class="input-group-btn">
                                        <button class="btn btn-danger btn-sm" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="clearfix-5"></div>
                                <div class="input-group">
                                    <input type="text" name="bill[]" class="form-control input-sm" value="2350432064032567" placeholder="">
                                    <div class="input-group-btn">
                                        <button class="btn btn-danger btn-sm" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </div>
                                </div>-->
                            </div>

                        </form>
                    </div>
                    <div class="col-sm-7">
                        <div class="btn-group">
                            <button onclick="printElem('data-items')" type="button" class="btn btn-primary btn-sm"><i class="fa fa-print"></i> In phiếu</button>
                        </div>
                        <button class="pull-right btn btn-sm btn-success">Đã giao hàng</button>
                        <div  class="clearfix" id="data-items">

                            <div><p class="title-info">Đơn hàng</p></div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <p>ORDERTRUNGQUOC</p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="clearfix"><span class="pull-right">Số : ......................</span></p>
                                    <p class="clearfix"><span class="pull-right"><i>Ngày <?=date('d')?> tháng <?=date('m');?> năm <?=date('Y');?></i></span></p>
                                </div>
                            </div>
                            <div class="text-center">
                                <h3>PHIẾU GIAO HÀNG</h3>
                            </div>
                            <div style="font-weight: bold;margin: 10px 0">
                                <p class="col-xs-offset-3">Hà Nội :</p>
                                <p class="col-xs-offset-3">TP.HCM :</p>
                            </div>
                            <div style="margin: 15px 0">
                                <p><strong>Khách hàng : </strong></p>
                                <p><strong>ID : </strong></p>
                            </div>
                            <div class="clearfix table-responsive">
                                <table  class="table table-bordered">
                                    <tbody >
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    </tbody>

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
                            <div class="p_info">
                                <p>Quý khách vui lòng kiểm tra kỹ hàng hóa trước khi ra khỏi kho. Hàng đã xuất kho Công Ty không chịu trách nhiệm giải quyết các khiếu nại liên quan đến vấn đề thiếu hàng, mất hàng, vỡ và sai hàng.</p>
                            </div>
                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<style>
    .p_info{margin-top: 65px;font-style: italic}
    table td{text-align: center}
    .table{border: 1px solid #191818}
    .table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td{border: 1px solid #191818}
    .title-info{
        font-size: 18px;
        margin-top: 35px;
        margin-bottom: 25px;
    }
</style>
<script type="text/javascript">
    var url = '<?=base_url();?>';
    var count = 0;
    function createBill(){
        count +=1;
        $('#list-bill').append('<div class="input-group" id="row_'+count+'"><input onchange="addBill($(this))" type="text" name="bill[]" class="form-control input-sm" value="" placeholder=""><div class="input-group-btn"><button onclick="removeGroup('+count+')" class="btn btn-danger btn-sm" type="button"><i class="fa fa-times"></i></button></div><div class="clearfix-5"></div></div>');
    }

    function removeGroup(id){
        $('#row_'+id).remove();
        var bills = $('input[name^=bill]').map(function(idx, elem) {
            return $(elem).val();
        }).get();

        $.ajax({
            url: url + 'vnadmin/exchange/addBill',
            type: "POST",
            dataType:"json",
            data:{bills:bills},
            success : function(res){
                $('#data-items').html(res.view);
            }
        });
    }

    function addBill(obj){
        var bills = $('input[name^=bill]').map(function(idx, elem) {
            return $(elem).val();
        }).get();

        $.ajax({
            url: url + 'vnadmin/exchange/addBill',
            type: "POST",
            dataType:"json",
            data:{bills:bills},
            success : function(res){
                $('#data-items').html(res.view);
            }
        });
    }

</script>

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