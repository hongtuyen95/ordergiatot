<article id="body_home">
    <div class="sc_info">
        <img src="<?=base_url();?>assets/css/img/img1.png" class="w_100" alt="">
        <div class="sub_info text-center">
            <h4>ĐẶT HÀNG CHINA 24/7</h4>
            <h5>Vận chuyển, đặt hàng Trung Quốc</h5>
            <h6>“HỢP TÁC CHẶT CHẼ,CHIA SẺ THÀNH CÔNG”</h6>
        </div>
    </div>

    <div class="sc_setup">
        <ul class="txt_setup">
            <li>Cài đặt công cụ</li>
            <li>Đặt hàng</li>
            <li>Cho trình duyệt</li>
        </ul>
        <ul class="list_browser">
            <li>
                <a target="_blank" href="https://chrome.google.com/webstore/detail/dathangchina247/aajpideeegdlhomoajliiocgjniiniee"><img src="<?=base_url();?>assets/css/img/cc.png" alt=""><span>Cốc cốc</span></a>
            </li>
            <li>
                <a target="_blank" href="https://chrome.google.com/webstore/detail/dathangchina247/aajpideeegdlhomoajliiocgjniiniee"><img src="<?=base_url();?>assets/css/img/chorme.png" alt=""><span>Chorme</span></a>
            </li>
            <li>
                <a target="_blank" href="https://chrome.google.com/webstore/detail/dathangchina247/aajpideeegdlhomoajliiocgjniiniee"><img src="<?=base_url();?>assets/css/img/fr.png" alt=""><span>Firefox</span></a>
            </li>
        </ul>
    </div>
    <div class="clearfix-10"></div>
    <div class="text-center">
        <p style="text-transform: uppercase;font-weight: bold;font-size: 21px;color:#09b7de">Tải file đặt hàng mẫu</p>
        <a download href="<?=base_url('upload/download/dathangchina247_form_dơn_hang.xlsx');?>" class="btn btn-info"><i class="fa fa-download"></i> Download File</a>
        <p style="font-size: 16px;font-weight: bold;padding:5px;">Số lượt tải : 4698</p>
        <p style="font-size: 16px;padding:5px;color:#33b512">Mẫu order dùng để điền thông tin sản phẩm và upload lên đơn hàng</p>
    </div>
    <div class="clearfix-10"></div>
    <div class="clearfix-35 hidden"></div>

    <?php echo $this->load->widget('page');?>

    <?php echo $this->load->widget('content');?>

    <?=$this->load->widget('menu_top');?>

    <?=$this->load->widget('doitac');?>

    <?=$this->load->widget('menu_right');?>

    <div class="sc_banggia">
        <div class="container">
            <div class="row_pc">
                <h2 class="title_home_3"><span>Bảng giá dịch vụ </span></h2>
                <div class="des_title">Bảng giá được công bố rõ ràng công khai và nhất quán với hệ thống phần mềm.
                    Tuyệt đối không có giá ảo, chi phí phát sinh...
                </div>
                <div class="clearfix-35"></div>
                <div class="border">
                    <div class="dp-flex-pc ai-center jc-space-between">
                        <div class="baogia-btn">
                            <span class="num">1</span>
                            <span>Tiền hàng</span>
                        </div>
                        <div class="baogia-btn">
                            <span class="num">2</span>
                            <span>Ship Trung Quốc</span>
                        </div>
                        <div class="baogia-btn">
                            <span class="num">3</span>
                            <span>Phí Giao Dịch</span>
                        </div>
                        <div class="baogia-btn">
                            <span class="num">4</span>
                            <span>Phí Vận Chuyển</span>
                        </div>
                    </div>
                    <div class="clearfix-35"></div>
                    <div class="row">
                        <div class="col-md-7">
                            <img src="<?=base_url();?>assets/css/img/price1.png" class="w_100">
                        </div>
                        <div class="col-md-5">
                            <img src="<?=base_url();?>assets/css/img/price2.png" class="w_100">
                            <form action="" class="form-baogia">
                                <div class="pin"></div>
                                <h3>Ước lượng chi phí vận chuyển</h3>
                                <select>
                                    <option>Cân nặng</option>
                                </select>
                                <input id="weight" type="text" placeholder="Nhập số">
                                <select >
                                    <?php foreach($this->depots as $depot) : ?>
                                        <option value="<?php echo $depot->name;?>"><?php echo $depot->name;?></option>
                                    <?php endforeach;?>
                                </select>
                                <button onclick="baogia()" type="button" class="submit"></button>
                                <div class="pull-right chiphi text-center">
                                    Tổng chi phí ước tính
                                    <div class="num" id="total_price_w">0 VND</div>
                                </div>
                                <div class="pin"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix-40"></div>

    <?php echo $this->load->widget("ykienkhachhang");?>
     <?=$this->load->widget('menu_bottom');?>

    <div class="sc_news_home">
        <div class="container">
            <div class="row_pc">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <?=$this->load->widget('news_nb');?>
                    </div>
                    <div class="col-md-6 col-xs-12">
                         <?=$this->load->widget('news_home');?>
                    </div>
                </div>
            </div>
        </div>
    </div>

</article>

<script type="text/javascript">
    function baogia(){
        var weight = $('#weight').val();
        var price = 0;
        if(weight == null){
            alert("Bạn chưa nhập cân nặng !");
        }else{
            weight = parseFloat(weight);
            if(weight < 10){
                price = weight * 28000;
            }
            if(weight >= 10 && weight <= 30){
                price = weight * 23000;
            }
            if(weight >  30){
                price = weight * 18000;
            }
        }
        //console.log(weight);
        $('#total_price_w').text(number_format(price)+ ' VNĐ');
    }

    function number_format(nStr)
    {
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2;
    }
</script>