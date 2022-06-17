<?php
$size = $_POST['size'];
$id = $_POST['id'];
$item = get_product_by_id($id, $size);
$result = array(
    'price' => currency_format($item['price']),
    'old_price'=> currency_format($item['old_price'])
);
echo json_encode($result);