<?php
$id = $_POST['id'];
$size = $_POST['size'];
$qty = $_POST['qty'];
$item = get_product_by_id($id, $size);
if (isset($_SESSION['cart']['buy'][$id]) && array_key_exists($size,$_SESSION['cart']['buy'][$id]))
{
    $qty = $_SESSION['cart']['buy'][$id][$size]['qty']+$qty;
    if ($qty>$item['qty'])
        $qty = $item['qty'];
}
$_SESSION['cart']['buy'][$id][$size] = array(
    'product_id'=>$item['product_id'],
    'product_title'=>$item['product_title'],
    'price'=>$item['price'],
    'product_thumb'=>$item['product_thumb'],
    'product_code'=>$item['product_code'],
    'product_size'=>$item['product_size'],
    'url'=>$item['url'],
    'qty'=>$qty,
    'max_qty'=>$item['qty'],
    'sub_total'=>$item['price']*$qty
);
update_info_cart();
$num_order = get_num_order_cart();
echo $num_order;