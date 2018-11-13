<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="top_list">
        <div class="list_tk">
            <ul>
                <li><a href="<?=base_url('vnadmin/order/search');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_timkiem.png" alt="">Tìm kiếm</a></li>
                <li><a href="<?=base_url('vnadmin/order/orders');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_donhang.png" alt="">Đơn hàng</a> <span>(<?php echo $this->total_order;?>)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giohang_red.png" alt="">Ship hàng</a> <span>(82)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giohang_black.png" alt="">Giao dịch Ship</a> <span>(21)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giaodich.png" alt="">Giao dịch - Thanh toán</a> <span>(8)</span></li>
            </ul>
        </div>
        <div class="name_page">Tìm kiếm</div>
    </div>
    <div class="clearfix-15"></div>

    <div class="content_page_timkiem">
        <div class="col_adtimkiem clearfix" style="padding-bottom: 0px !important;">
            <form action="" class="form-mail" method="get">
                <div class="input-group">
                    <input type="text"  class="input-sm form-control input-timdon" id="">
                    <div class="input-group-addon btn btn-sm btn-search-timdon">
                        <button class="">Tìm kiếm</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="clearfix-10"></div>
        <table class="table table_search">
            <tr>
                <th style="width: 3%;">STT</th>
                <th style="width: 9%;"></th>
                <th style="width:18%">Mã hóa đơn</th>
                <th style="width:14% ">Tên khách</th>
                <th style="width: 15%">Kho hàng</th>
                <th style="width: 16%">Thông tin sản phẩm</th>
                <th style="width: 13%">Đã thanh toán</th>
                <th style="width: ">Trạng thái</th>
            </tr>
            <tr>
                <td>1</td>
                <td><img src="<?=base_url();?>assets/css/img/img_search_ad_donhang.png" class="w_100" alt=""></td>
                <td>
                    <p class="blue_txt">HAN2410-29-05-2018-1</p>
                    <p>11:10 29/05/2018</p>
                </td>
                <td>
                    <p>Nguễn Ngọc Hàn</p>
                    <p class="blue_txt">Han2401</p>
                </td>
                <td>
                    <span class="kho_cl">kho Tp.Hồ Chí Minh</span>
                </td>
                <td>
                    <p>Tổng số SP: <span class="red_txt">2</span></p>
                    <p>Tổng tiền: <span class="red_txt">263,861 VNĐ</span></p>
                </td>
                <td>
                    <p class="green_txt">0 VNĐ</p>
                </td>
                <td>
                    <p class="thanhtoan_color">Đã thanh toán</p>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td><img src="<?=base_url();?>assets/css/img/img_search_ad_donhang.png" class="w_100" alt=""></td>
                <td>
                    <p class="blue_txt">HAN2410-29-05-2018-1</p>
                    <p>11:10 29/05/2018</p>
                </td>
                <td>
                    <p>Nguễn Ngọc Hàn</p>
                    <p class="blue_txt">Han2401</p>
                </td>
                <td>
                    <span class="kho_cl">kho Tp.Hồ Chí Minh</span>
                </td>
                <td>
                    <p>Tổng số SP: <span class="red_txt">2</span></p>
                    <p>Tổng tiền: <span class="red_txt">263,861 VNĐ</span></p>
                </td>
                <td>
                    <p class="green_txt">0 VNĐ</p>
                </td>
                <td>
                    <p class="muahang_color">Đã mua hàng</p>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td><img src="<?=base_url();?>assets/css/img/img_search_ad_donhang.png" class="w_100" alt=""></td>
                <td>
                    <p class="blue_txt">HAN2410-29-05-2018-1</p>
                    <p>11:10 29/05/2018</p>
                </td>
                <td>
                    <p>Nguễn Ngọc Hàn</p>
                    <p class="blue_txt">Han2401</p>
                </td>
                <td>
                    <span class="kho_cl">kho Tp.Hồ Chí Minh</span>
                </td>
                <td>
                    <p>Tổng số SP: <span class="red_txt">2</span></p>
                    <p>Tổng tiền: <span class="red_txt">263,861 VNĐ</span></p>
                </td>
                <td>
                    <p class="green_txt">0 VNĐ</p>
                </td>
                <td>
                    <p class="thanhtoan_color">Đã thanh toán</p>
                </td>
            </tr>
        </table>




        <div class="clearfix-5"></div>
        <div style=" font-family: Roboto_Regular;font-size: 12px;background: #f0f3f5;color: #9d9c9c; padding: 17px 0px 11px 0px">Copyright © 2017-2018 dathang247.com. All rights reserved.</div>
    </div>
</div>