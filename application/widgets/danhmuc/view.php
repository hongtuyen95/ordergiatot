<div class="user-info" style="display: table;width: 100%">
    <span style="display: table-cell;padding:8px"><img style="max-width: 65px;float: left" src="<?=base_url('img/no-image.png')?>"></span>
    <span style="color: #000;font-weight: bold;display: table-cell;padding:8px;vertical-align: middle"><?=@$user->fullname;?></span>
</div>
<p style="color:#000;padding:0 10px;font-weight: bold">Mã khách hàng : #KH<?=@$user->id;?></p>
<p style="color:#000;padding:0 10px;font-weight: bold">Tài khoản : <span style="color:#e42222"> <?=number_format(@$user->wallet);?> VNĐ </span></p>
<p style="border-bottom: 1px solid #ddd"></p>
<div class="clearfix"></div>
<ul class="list-menu-user">
    <li class="has-dropdown">
        <a href=""><i class="fa fa-book"></i> Đơn hàng</a>
        <ul class="sub-ul">
            <li><a href="<?=base_url('don-hang');?>"><i class="fa fa-angle-double-right"></i> Tất cả <span class="pull-right">(<?=@$countAll;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=1');?>"><i class="fa fa-angle-double-right"></i> Khởi tạo <span class="pull-right">(<?=@$status1;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=2');?>"><i class="fa fa-angle-double-right"></i> Đã duyệt <span class="pull-right">(<?=@$status2;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=3');?>"><i class="fa fa-angle-double-right"></i> Đã đặt cọc <span class="pull-right">(<?=@$status3;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=4');?>"><i class="fa fa-angle-double-right"></i> Đã đặt hàng <span class="pull-right">(<?=@$status4;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=5');?>"><i class="fa fa-angle-double-right"></i> Đã quyết toán <span class="pull-right">(<?=@$status5;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=6');?>"><i class="fa fa-angle-double-right"></i> Hoàn thành <span class="pull-right">(<?=@$status6;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=7');?>"><i class="fa fa-angle-double-right"></i> Đã hủy <span class="pull-right">(<?=@$status7;?>)</span></a></li>
            <li><a href="<?=base_url('don-hang?status=8');?>"><i class="fa fa-angle-double-right"></i> Hết hàng <span class="pull-right">(<?=@$status8;?>)</span></a></li>
        </ul>
    </li>
    <li> <a href="<?=base_url('cart/displayPayM')?>"> <i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
    <li> <a href="<?=base_url('hang-that-lac')?>"><i class="fa fa-history"></i> Hàng thất lạc </a></li>
    <li class="has-dropdown">
        <a href=""><i class="fa fa-money"></i> Giao dịch</a>
        <ul class="sub-ul">
            <li><a href="<?=base_url('lich-su-giao-dich')?>"><i class="fa fa-angle-double-right"></i> Lịch sử giao dịch</a></li>
            <li><a href="<?=base_url('thong-ke-tai-chinh')?>"><i class="fa fa-angle-double-right"></i> Thống kê tài chính</a></li>
        </ul>
    </li>
    <li class="has-dropdown">
        <a href=""><i class="fa fa-user"></i> Tài khoản</a>
        <ul class="sub-ul">
            <li><a href="<?=base_url('thong-tin-tai-khoan')?>"><i class="fa fa-angle-double-right"></i> Thông tin tài khoản</a></li>
            <li><a href="<?=base_url('doi-mat-khau')?>"><i class="fa fa-angle-double-right"></i> Thay đổi mật khẩu</a></li>
            <li><a href="<?=base_url('dang-xuat')?>"><i class="fa fa-angle-double-right"></i> Thoát</a></li>
        </ul>
    </li>
</ul>

<script type="text/javascript">
    var url = window.location.href;
    $('.menu-item  a').parent().removeClass('active');
    $('.list-menu-user  a[href="' + url + '"]').parent().addClass('active');
</script>