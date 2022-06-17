$(document).ready(function ()
{
    $(".num-order").change(function (){
        var id = $(this).attr('data-id');
        var size = $(this).attr('data-size');
        var qty = $(this).val();
        var data = {id: id, qty: qty, size: size};
        $.ajax({
            url: '?mod=cart&act=update_ajax',
            method: 'POST',
            data: data,
            datatype: 'json',
            success: function (data)
            {
                data = JSON.parse(data);
                //console.log(data);
                $("#sub-total-"+id+size).text(data.sub_total);
                $("#total-price span").text(data.total);
                $("#num").text(data.num_order);
            },
            error: function (xhr, ajaxOptions, thrownError)
            {
                alert(xhr.status);
                alert(thrownError);
            }
        });
    });
});