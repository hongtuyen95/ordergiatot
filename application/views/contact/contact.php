<section class="qts_head_bot">
    <div class="text-center" style="height: 40px; background: #0a736e; color: #FFFFFF;line-height: 40px; font-size: 25px">
        Liên hệ
    </div>
</section>
<div class="clearfix-15"></div>
<div class="map">
    <?php
    $map_title = '';
    $map_phone = '';
    $map_adrdress = '';
    if($this->option->map_title !=''){
        $map_title = '<div class="map_title"><b>'.$this->option->map_title.'</b></div>';
    }
    if($this->option->map_adrdress !=''){
        $map_adrdress = '<div><b>Địa chỉ: </b>'.$this->option->map_adrdress.'</div>';
    }

    if($this->option->map_phone !=''){
        $map_phone = '<div><b>Điện thoại: </b>'.$this->option->map_phone.'</div>';
    }
    $hien_map = "'".$map_title.''.$map_adrdress.''.$map_phone."'";
    ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTBzuYtRXJjYa2KYxcpEaR2BAesBlKOao&language=vi"></script>
    <script type="text/javascript">
        var map;
        var infowindow;
        var marker = new Array();
        var old_id = 0;
        var infoWindowArray = new Array();
        var infowindow_array = new Array();

        function initialize() {
            var defaultLatLng = new google.maps.LatLng<?=$this->option->hdfMap;?>;
            var myOptions = {zoom: 15, center: defaultLatLng, scrollwheel: false, mapTypeId: google.maps.MapTypeId.ROADMAP };
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            map.setCenter(defaultLatLng);
            var arrLatLng = new google.maps.LatLng<?=$this->option->hdfMap;?>;
            infoWindowArray[10349] =<?=$hien_map;?>;
            loadMarker(arrLatLng, infoWindowArray[10349], 10349);
            moveToMaker(10349);
        }
        function loadMarker(myLocation, myInfoWindow, id) {
            marker[id] = new google.maps.Marker({position: myLocation, map: map, visible: true});
            var popup = myInfoWindow;
            infowindow_array[id] = new google.maps.InfoWindow({ content: popup});
            google.maps.event.addListener(marker[id], 'mouseover', function () {
                if (id == old_id) return;
                if (old_id > 0) infowindow_array[old_id].close();
                infowindow_array[id].open(map, marker[id]);
                old_id = id;
            });
            google.maps.event.addListener(infowindow_array[id], 'closeclick', function () {
                old_id = 0;
            });
        }
        function moveToMaker(id) {
            var location = marker[id].position;
            map.setCenter(location);
            if (old_id > 0) infowindow_array[old_id].close();
            infowindow_array[id].open(map, marker[id]);
            old_id = id;
        }
    </script>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }
    </style>
    <body onLoad="initialize()" onUnload="GUnload()">
    <div id="map_canvas" style="width:100%; height: 500px"></div>
    </body>
</div>
<div class="clearfix"></div>
<div class="clearfix-20"></div>
<div class="container">
    <div class="row form_contact ">
        <form action="<?=base_url('contact/addContact')?>" id="form-info" name="" method="post">
            <div class="col-md-6 col-xs-12">
                <div class="form-group">
                    <label for="text">Họ tên  *</label>
                    <input type="text" name="name" class="form-control validate[required]" id="name">
                </div>
                <div class="form-group">
                    <label for="">Email*</label>
                    <input type="text" name="email" class="form-control validate[required,custom[email]]" id="email">
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="form-group">
                    <label for="email">Điện thoại *</label>
                    <input type="text" class="form-control validate[required]" name="phone" id="phone" placeholder="">
                </div>
                <div class="form-group">
                    <label for="text">Địa chỉ</label>
                    <input type="text" class="form-control" name="address" id="address" placeholder="">
                </div>

            </div>
            <div class="col-md-12 col-xs-12">
                <div class="form-group">
                    <textarea class="form-control" rows="5" id="comment" placeholder="Nhập nội dung ..."></textarea>
                </div>
            </div>
            <div class="col-md-9 col-xs-6">
                <div class="checkbox">
                                <span>
                                    <input class="checkbox_btn validate[required]" value="1" name="agree" type="checkbox">
                                Tôi đống ý với việc xử lý dữ liệu cá nhân của tôi để gửi,bằng sms và/ hoặc email thông tin và truyền thông tin quảng cáo,cũng như bản tin của Chủ sở hữu liên quan đến các sáng kiến và /hoặc chi nhanh của riêng mình                              </span>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <button type="button" id="comfirm" class="btn btn-primary btn-block button_xacnhan">Xác nhận</button>
            </div>
        </form>
    </div>
</div>
<div class="clearfix-20"></div>
<div class="clearfix-20"></div>
<div class="clearfix"></div>
<script type="text/javascript">
    $('#comfirm').click(function(){
        var check = $("#form-info").validationEngine('validate');
        if(check){
            $("#form-info").submit();
        }
    });
</script>

<script type="text/javascript">
    $("#header").addClass('header_cate');
    $('#clear-home').remove();
</script>