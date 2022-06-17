$(document).ready(function ()
{
    $("button.btn-primary").click(function (){
        var pro_id = $("#product_size").attr('data-id');
        var username = $("#username").val();
        var text = document.getElementById("cmt_text").value;
        var data = {pro_id: pro_id, username: username, text: text};
        $.ajax({
            url: '?mod=product&act=comment_ajax',
            method: 'POST',
            data: data,
            datatype: 'text',
            success: function (data)
            {
                $(data).insertAfter(".comments-title");
                let num_cmt = Number($(".comments-title span").text())+1;
                $(".comments-title span").text(num_cmt);
            },
            error: function (xhr, ajaxOptions, thrownError)
            {
                alert(xhr.status);
                alert(thrownError);
            }
        });
    });
});