<link href="<?=base_url()?>assets/css/front_end/order.css" rel="stylesheet"/>
<div class="col_right_body">
    <div class="top_list">
        <div class="list_tk">
            <ul>
                <li><a href="<?=base_url('vnadmin/order/search');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_timkiem.png" alt="">Tìm kiếm</a></li>
                <li><a href="<?=base_url('vnadmin/order/orders');?>" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_donhang.png" alt="">Đơn hàng</a> <span>(108)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giohang_red.png" alt="">Ship hàng</a> <span>(82)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giohang_black.png" alt="">Giao dịch Ship</a> <span>(21)</span></li>
                <li><a href="#" title="" rel=""><img src="<?=base_url();?>assets/css/img/i_giaodich.png" alt="">Giao dịch - Thanh toán</a> <span>(8)</span></li>
            </ul>
        </div>
        <div class="name_page">Đơn hàng</div>
    </div>
    <div class="clearfix-15"></div>
    <div class="content_page_donhang">
        <div class="tab_info_admin">
            <ul class="nav nav-tabs">
                <li><a href="<?=base_url('vnadmin/order/orders')?>">Tất cả <span>(36572)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=0')?>">Chưa duyệt <span>(107)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=1')?>">Đã duyệt <span>(184)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=2')?>">Đã thanh toán <span>(39)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=3')?>">Đã mua hàng <span>(920)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=4')?>">Đã tất toán <span>(920)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=5')?>">Đã giao hàng <span>(712)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=6')?>">Kết thúc đơn <span>(125436)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=7')?>">Hết hàng <span>(7113)</span></a></li>
                <li><a href="<?=base_url('vnadmin/order/orders?status=8')?>">Đã hủy <span>(7113)</span></a></li>
            </ul>

            <div class="tab-content">
                <div id="Home" class="tab-pane fade in active">
                    <div class="bo_loc">
                        <ul class="list_btn_kind">
                            <li>
                                <button type="" class="btn">Đơn hàng không mã VĐ</button>
                            </li>
                            <li>
                                <button type="" class="btn">Đơn hàng chờ giao hàng</button>
                            </li>
                            <li>
                                <button type="" class="btn">Đơn hàng khiếu nại</button>
                            </li>
                            <li>
                                <button type="" class="btn">Đơn hàng về chậm</button>
                            </li>
                        </ul>

                        <div class="search_kind">
                            <form action="" class="form-mail ">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="" placeholder="Từ khóa">
                                    <select class="form-control">
                                        <option value="">Tất cả kho</option>
                                        <?php foreach($this->depots as $depot) : ?>
                                            <option  value="<?php echo $depot->id;?>"><?php echo $depot->name;?></option>
                                        <?php endforeach;?>
                                    </select>
                                    <div class="input-group-addon btn btn-search-top">
                                        <button class="">Tìm kiếm</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <table class="table table_search">
                        <tr class="active">
                            <th class="text-center" style="width: 3%;">STT</th>
                            <th style="width: 9%;"></th>
                            <th style="width:18%">Mã hóa đơn</th>
                            <th style="width:14% ">Tên khách</th>
                            <th style="width: 12%">Kho hàng</th>
                            <th>Thông tin sản phẩm</th>
                            <th style="width: 13%">Đã thanh toán</th>
                            <th style="width: 10%">Trạng thái</th>
                        </tr>
                        <?php if(count($lists)) : $stt = 0; ?>
                            <?php foreach($lists as $list) : $stt +=1; ?>
                                <tr>
                                    <td class="text-center"><?=@$stt;?></td>
                                    <td class="text-center">
                                        <a href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>">
                                            <img src="<?=base_url();?>img/no_image.jpg" class="w_100" alt="">
                                        </a>
                                    </td>
                                    <td>
                                        <p class="blue_txt"><a href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>" style="color:#1caeda;font-weight: bold"><?=@$list->code;?></a></p>
                                        <p><?=date('H:i d/m/Y',$list->time);?></p>
                                    </td>
                                    <td>
                                        <p><a style="color:#1caeda;font-weight: bold" href="<?=base_url('vnadmin/order/detail?id='.base64_encode($list->id));?>"><?=@$list->fullname;?></a></p>
                                        <p class="blue_txt">#KH<?=@$list->uid;?></p>
                                    </td>
                                    <td>
                                        <?php foreach($this->depots as $depot) : ?>
                                            <?php if($depot->id == $list->ma_kho) : ?>
                                                <span class="kho_cl">kho <?php echo $depot->name;?></span>
                                            <?php endif;?>
                                        <?php endforeach;?>
                                    </td>
                                    <td>
                                        <p>Tổng số SP: <span class="red_txt"><?=@$list->total_item;?></span></p>
                                        <p>Tổng tiền: <span class="red_txt"><?=number_format($list->total_price);?> VNĐ</span></p>
                                    </td>
                                    <td>
                                        <p class="green_txt"><?=number_format($list->payted);?> VNĐ</p>
                                    </td>
                                    <td>
                                        <p class="thanhtoan_color">Đã thanh toán</p>
                                    </td>
                                </tr>
                            <?php endforeach;?>
                        <?php endif;?>
                    </table>


                </div>
                <div id="menu2" class="tab-pane fade">
                    <h3>Menu 2</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <h3>Menu 3</h3>
                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <div id="menu4" class="tab-pane fade">
                    <h3>Menu 4</h3>
                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <div id="menu5" class="tab-pane fade">
                    <h3>Menu 5</h3>
                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <div id="menu6" class="tab-pane fade">
                    <h3>Menu 6</h3>
                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <div id="menu7" class="tab-pane fade">
                    <h3>Menu 7</h3>
                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <div id="menu8" class="tab-pane fade">
                    <h3>Menu 8</h3>
                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
            </div>
        </div>




        <div class="clearfix-5"></div>

    </div>
</div>

<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');
</script>