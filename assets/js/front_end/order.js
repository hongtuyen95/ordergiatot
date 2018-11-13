/**
 * Created by Administrator on 9/14/2018.
 */
function DoCheck(status,FormName,from_)
{
    var alen=eval('document.'+FormName+'.elements.length');
    alen=(alen>1)?eval('document.'+FormName+'.rowid.length'):0;
    if (alen>0)
    {
        for(var i=0;i<alen;i++)
            eval('document.'+FormName+'.rowid[i].checked=status');
    }
    else
    {
        eval('document.'+FormName+'.rowid.checked=status');
    }
    eval('document.'+FormName+'.checkall.checked=status');

    countTotalCart();
}
function DoCheckOne(FormName)
{
    var alen=eval('document.'+FormName+'.elements.length');
    var isChecked=true;
    alen=(alen>1)?eval('document.'+FormName+'.rowid.length'):0;
    if (alen>0)
    {
        for(var i=0;i<alen;i++)
            if(eval('document.'+FormName+'.rowid[i].checked==false'))
                isChecked=false;
    }
    else
    {
        if(eval('document.'+FormName+'.rowid.checked==false'))
            isChecked=false;
    }
    countTotalCart();
    eval('document.'+FormName+'.checkall.checked=isChecked');
    //button check
}
function format_price(nStr)
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

function booking(){
    var pr = '';
    if ($('.cartid:checked').length == 0) {
        alert("Bạn chưa chọn sản phẩm");
    } else {
        $('.cartid:checked').each(function (i, elm) {
            pr += '&cartid=' + $(this).val();
        }).promise().done(function () {
            var link = url + 'cart/checkOut' + '?' + pr;
            window.location = link;
        });
    }
}

function countTotalCart(){
    var ids = [];
    $('.cartid:checked').each(function (i, elm) {
        ids.push($(this).val());
    });

    $.ajax({
        url: base_url() + 'cart/updateTotalCountCart',
        data: {ids:ids},
        dataType: "json",
        type: "POST",
        success : function(res){
            $('.total_links').html(res.total_links);
            $('.total_items').html(res.total_items);
            $('.total_shop').html(res.total_shops);
            $('.total_prices').html(format_price(res.total_prices));
            $('.total_prices_2').html(format_price(res.total_prices_2));
        }
    });
}

function bookinginthesun(){
    var pr = '';
    if ($('.cartid:checked').length == 0) {
        alert("Bạn chưa chọn sản phẩm");
    } else {
        $('#form-confirm').submit();
    }
}
function delete_item() {
    if ($('.cartid:checked').length == 0) {
        alert("Bạn chưa chọn sản phẩm");
        return false;
    }
    var array_rowid = [];
    $(".cartid:checked").each(function(){
        array_rowid.push($(this).val());
    });
    $.ajax({
        url: base_url() + 'cart/delete_item',
        data: {array_rowid:array_rowid},
        dataType: "json",
        type: "POST",
        success : function(res){
            location.reload();
        }
    });
}


