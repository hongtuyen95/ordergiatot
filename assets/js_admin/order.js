function updateS(){
    var status = $('#status option:selected').val();
    var oid = $('#oid').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/update_order_status',
        type: "POST",
        dataType: "json",
        data: {oid:oid,status:status},
        success : function(res){
            window.location.reload();
        }
    });
}
function updateWeightRate(obj){
    var tracking_id = $(obj).data('id');
    var rate = $('#weight_rate_'+ tracking_id).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/update_weight_rate',
        type: "POST",
        dataType: "json",
        data: {tracking_id:tracking_id,rate:rate},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
function updatePurchaseFee(){
    var oid = $('#oid').val();
    var fee = $('#fee').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updatePucharseFee',
        type: "POST",
        dataType: "json",
        data: {oid:oid,fee:fee},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
function updateRate(){
    var oid = $('#oid').val();
    var rate = $('#rate').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateRate',
        type: "POST",
        dataType: "json",
        data: {oid:oid,rate:rate},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
//Update Buyer
function updateBuyer(){
    var buyer = $('#buyer option:selected').val();
    var oid = $('#oid').val();

    $.ajax({
        url: base_url() + 'vnadmin/order/updateBuyer',
        type: "POST",
        dataType: "json",
        data: {oid:oid,buyer:buyer},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
//admin note
function updateAdminNote(){
    var note = $('#admin_note').val();
    var oid = $('#oid').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateAdminNote',
        type: "POST",
        dataType: "json",
        data: {oid:oid,note:note},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
//Update Note Item
function updateNoteItem(obj){
    var note = $(obj).val();
    var id_item = $(obj).data('id');
    $.ajax({
        url: base_url() + 'vnadmin/order/updateNoteItem',
        type: "POST",
        dataType: "json",
        data: {oid:id_item,note:note},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
//Update quantity
function updateQty(obj){
    var id = $(obj).data('id');
    var qty = parseInt($(obj).val());
    if(qty < 0){
        qty = -qty;
    }
    $.ajax({
        url: base_url() + 'vnadmin/order/updateQuantity',
        type: "POST",
        dataType: "json",
        data: {id:id,qty:qty},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}
//updateItemPrice
function updateItemPrice(obj){
    var id = $(obj).data('id');
    var price = $(obj).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateItemPrice',
        type: "POST",
        dataType: "json",
        data: {id:id,price:price},
        success : function(res){
            if(res.check == true){
                window.location.reload();
            }
        }
    });
}

function sendMessage(obj){
    var tracking = $(obj).data('tracking');
    var note = $('#'+tracking).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/saveNote',
        type: "POST",
        dataType: "json",
        data: {tracking:tracking,note:note},
        success : function(res){
            $('#'+tracking).val('');
            $('#mess_'+tracking).html(res.text);
        }
    });
}
//update Domestic
function updateDomestic(obj){
    var tracking = $(obj).data('id');
    var phi_noi_dia = $('#phi_noi_dia_'+tracking).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateDomestic',
        type: "POST",
        dataType: "json",
        data: {tracking:tracking,phi_noi_dia:phi_noi_dia},
        success : function(res){
            window.location.reload();
        }
    });
}
//Update weight
function updateWeight(obj){
    var tracking = $(obj).data('id');
    var weight = $('#weight_'+tracking).val();
    var oid = $('#oid').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateWeight',
        type: "POST",
        dataType: "json",
        data: {oid:oid,tracking:tracking,weight:weight},
        success : function(res){
            window.location.reload();
        }
    });
}
function updatephikiemhang(obj){
    var tracking = $(obj).data('id');
    var kiemhang = $('#kiemhang_'+tracking).val();
    var oid = $('#oid').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updatephikiemhang',
        type: "POST",
        dataType: "json",
        data: {oid:oid,tracking:tracking,kiemhang:kiemhang},
        success : function(res){
            //window.location.reload();
        }
    });
}
function updatephidichvu(obj){
    var tracking = $(obj).data('id');
    var kiemhang = $('#dichvu_'+tracking).val();
    var oid = $('#oid').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updatephidichvu',
        type: "POST",
        dataType: "json",
        data: {oid:oid,tracking:tracking,kiemhang:kiemhang},
        success : function(res){
            //window.location.reload();
        }
    });
}
//Update phi ngoai
function updatePhingoai(obj,local){
    var tracking = $(obj).data('id');
    var price = $('#phi_ngoai_'+local+'_'+tracking).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updatePhingoai',
        type: "POST",
        dataType: "json",
        data: {tracking:tracking,price:price,local:local},
        success : function(res){
            window.location.reload();
        }
    });
}
//Update shop sku
function updateShopSku(obj){
    var tracking = $(obj).data('id');
    var sku = $('#shop_sku_'+tracking).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateSkuShop',
        type: "POST",
        dataType: "json",
        data: {tracking:tracking,sku:sku},
        success : function(res){
            window.location.reload();
        }
    });
}
//update Tracking
function updateTracking(obj){
    var tracking = $(obj).data('id');
    var tracking_id = $('#tracking_id_'+tracking).val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updateTracking',
        type: "POST",
        dataType: "json",
        data: {tracking:tracking,tracking_id:tracking_id},
        success : function(res){
            window.location.reload();
        }
    });
}

function updatePay(obj){
    var tracking = $(obj).data('id');
    var price = $('#pay_'+tracking).val();
    console.log(price);
    $.ajax({
        url: base_url() + 'vnadmin/order/updatePay',
        type: "POST",
        dataType: "json",
        data: {tracking:tracking,price:price},
        success : function(res){
            window.location.reload();
        }
    });
}

function changPrice(id){
    var stct = $('#orderstct').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/updatSTCT',
        type: "POST",
        dataType: "json",
        data: {id:id,price:stct},
        success : function(res){
            window.location.reload();
        }
    });
}

function changTotalPrice(id){
    var stct = $('#ordertotalprice').val();
    $.ajax({
        url: base_url() + 'vnadmin/order/changTotalPrice',
        type: "POST",
        dataType: "json",
        data: {id:id,price:stct},
        success : function(res){
            window.location.reload();
        }
    });
}

function Comma1(Num){
    Num += '';
    Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');

    x = Num.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{4})/;
    while (rgx.test(x1))
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    return x1 + x2;
}

