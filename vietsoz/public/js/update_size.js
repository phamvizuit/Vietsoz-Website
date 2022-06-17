$(document).ready(function ()
{
    $("#product_size").change(function (){
        var size = $(this).val();
        var id = $(this).attr('data-id');
        var data = {size: size, id: id};
        $.ajax({
            url: '?mod=product&act=update_size_ajax',
            method: 'POST',
            data: data,
            datatype: 'json',
            success: function (data)
            {
                data = JSON.parse(data);
                console.log(data);
                $(".price-product").text(data.price);
                $(".old-price-product").text(data.old_price);
            },
            error: function (xhr, ajaxOptions, thrownError)
            {
                alert(xhr.status);
                alert(thrownError);
            }
        });
    });
});