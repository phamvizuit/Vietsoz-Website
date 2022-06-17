<?php
$id = $_POST['id'];
$size = $_POST['size'];
$qty = $_POST['qty'];
$item = get_product_by_id($id, $size);
if (isset($_SESSION['cart']['buy']) && array_key_exists($size,$_SESSION['cart']['buy'][$id]))
{
    $_SESSION['cart']['buy'][$id][$size]['qty'] = $qty;
    $sub_total = $qty*$item['price'];
    $_SESSION['cart']['buy'][$id][$size]['sub_total'] = $sub_total;
    update_info_cart();
    $total = get_total_cart();
    $num_order = get_num_order_cart();
    $result = array(
        'sub_total'=>currency_format($sub_total),
        'total'=>currency_format($total),
        'num_order'=>$num_order
    );
    echo json_encode($result);
}