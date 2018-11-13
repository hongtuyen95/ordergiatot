<?php echo $this->load->widget("slide");?>

<article id="body_home">
    <section class="sc_setup">
        <div class="container">
            <div class="row_pc">
                <div class="txt_setup">
                    Cài đặt công cụ đặt hàng <a href="">ordergiatot.vn</a> cho trình duyệt
                </div>
                <ul class="list_browser">
                    <li>
                        <a href="https://chrome.google.com/webstore/detail/ordergiatot/afcjffcjfbcnhjpdlfhcnblhfphjdnbe?hl=vi"><img src="<?=base_url();?>assets/css/img/cc.png" title="Cốc cốc" alt="Cốc cốc"><span>Cốc cốc</span></a>
                    </li>
                    <li>
                        <a href="https://chrome.google.com/webstore/detail/ordergiatot/afcjffcjfbcnhjpdlfhcnblhfphjdnbe?hl=vi"><img src="<?=base_url();?>assets/css/img/chomre.png" title="Chorme" alt="Chorme"><span>Chorme</span></a>
                    </li>
                    <li>
                        <a href=""><img src="<?=base_url();?>assets/css/img/fire.png" title="Firefox" alt="Firefox"><span>Firefox</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <div class="clearix clearfix-70"></div>
    <?=$this->load->widget('menu_top');?>

    <div class="clearfix clearfix-60"></div>
    <section class="sc_slider_counter">
        <div class="container">
            <div class="row_pc">
                <div class="owl-carousel slider_counter">
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct1.png" title="Đơn hàng đang đặt" alt="Đơn hàng đang đặt"></span>
                            <span class="number_ct">578</span>
                            <p>Đơn hàng đang đặt</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct2.png" alt="Đang vận chuyển" title="Đang vận chuyển"></span>
                            <span class="number_ct">327</span>
                            <p>Đơn hàng đang vận chuyển</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct3.png" alt="Chuẩn bị giao" title="Chuẩn bị giao"></span>
                            <span class="number_ct">684</span>
                            <p>Đơn chuẩn bị giao</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box_counter">
                            <span class="img_ct"><img src="<?=base_url();?>assets/css/img/ct4.png" alt="Hoàn thành" title="Hoàn thành"></span>
                            <span class="number_ct">2783</span>
                            <p>Đơn đã hoàn thành</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="clearfix"></div>
    <div class="clearfix clearfix-45"></div>

    <?php echo $this->load->widget('news_home');?>

    <div class="clearix clearfix-60"></div>

    <?php echo $this->load->widget('menu_right');?>

    <div class="clearfix clearfix-50"></div>
    <section class="sc_banggia">
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
                            <span>Phí giao dịch</span>
                        </div>
                        <div class="baogia-btn">
                            <span class="num">4</span>
                            <span>Phí vận chuyển</span>
                        </div>
                    </div>
                    <div class="clearfix-35"></div>
                    <div class="row">
                        <?php if(count($banner_gia)) : ?>
                            <div class="col-md-7">
                                <img src="<?=base_url($banner_gia->image);?>" alt="Báo giá dịch vụ" title="Báo giá dịch vụ" class="w_100">
                            </div>
                        <?php endif;?>
                        <div class="col-md-5">
                            <div class="baogia_dichvukhac">
                                <h3>Báo giá dịch vụ khác</h3>
                                <ul>
                                    <li><a>Vận chuyển hàng Trung Quốc về Việt Nam</a></li>
                                    <li><a>Thông quan hàng Trung Quốc</a></li>
                                    <li><a>Chuyển tiền Trung Quốc, nạp tiền vào tài khoản Alipay</a></li>
                                    <li><a>Đặt hàng Trung Quốc trên Taobao, 1688, Tmall</a></li>
                                </ul>
                            </div>
                            <div class="clearfix clearfix-45"></div>
                            <div class="contact_baogia">
                                Mọi thắc mắc xin liên hệ <br>
                                <span><?=@$this->option->hotline1;?></span> <br>
                                Để được giải đáp!
                            </div>
                            <div class="clearfix clearfix-15"></div>
                            <form action="" class="form-baogia">

                                <h3>Ước lượng chi phí vận chuyển</h3>
                                <select>
                                    <option>Cân nặng</option>
                                </select>
                                <input id="weight" type="text" placeholder="Nhập số">
                                <select>
                                    <?php foreach($this->depots as $depot) : ?>
                                        <option value="<?php echo $depot->name;?>"><?php echo $depot->name;?></option>
                                    <?php endforeach;?>
                                </select>
                                <button type="button" onclick="baogia()" class="submit">xem báo giá</button>
                                <div class="pull-right chiphi text-center">
                                    Tổng chi phí ước tính
                                    <div class="num"  id="total_price_w">0 VND</div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearix clearfix-60"></div>
    <?php echo $this->load->widget("mapimg");?>
</article>
<?php if(count($popup)) : ?>
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" style="color:#f12c2c;text-align: center">Thông báo</h4>
            </div>
            <div class="modal-body">
                <div style="background-color:#0a736e;color:#fff;border-radius: 5px;padding:10px;line-height: 26px">
                    <?=@$popup->content;?>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Thoát</button>
            </div>
        </div>

    </div>
</div>
<?php endif;?>

<script type="text/javascript">
    function baogia(){
        var weight = $('#weight').val();
        var price = 0;
        if(weight == null){
            alert("Bạn chưa nhập cân nặng !");
        }else{
            weight = parseFloat(weight);
            if(weight < 30){
                price = weight * 20000;
            }
            if(weight >= 30 && weight < 300){
                price = weight * 17000;
            }
            if(weight >=300){
                price = weight * 15000;
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

    function modalShow(){
        $('#myModal').modal('show');
    }

    window.onload = function() {
        if (document.body.clientWidth > 960) {
            setTimeout(modalShow, 1000);
        }
    }

</script>

<style>
    @media (min-width:1200px){
        .qts_head_mid{position: absolute;}
        .qts_head_mid{background: none !important;}
    }
</style>