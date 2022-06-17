$(document).ready(function ()
{
    $(".add-rows").click(function (){
        var size = $("#product_size").val();
        var id = $("#product_size").attr('data-id');
        var qty = $("#qty").val();
        var data = {size: size, id: id, qty: qty};
        $.ajax({
            url: '?mod=cart&act=add_now',
            method: 'POST',
            data: data,
            datatype: 'text',
            success: function (data)
            {
                $("#num").text(data);
            },
            error: function (xhr, ajaxOptions, thrownError)
            {
                alert(xhr.status);
                alert(thrownError);
            }
        });
    });
});