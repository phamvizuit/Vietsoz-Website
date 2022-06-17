<?php
function add_cart($id, $size = 'S')
{
    $qty = 1;
    $item = get_product_by_id($id, $size);
    if (isset($_SESSION['cart']['buy'][$id]) && array_key_exists($size,$_SESSION['cart']['buy'][$id]))
    {
        $qty = $_SESSION['cart']['buy'][$id][$size]['qty']+1;
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
}
function get_list_buy_cart()
{
    if (isset($_SESSION['cart']['buy']))
    {
        foreach ($_SESSION['cart']['buy'] as &$item)
        {
            foreach ($item as &$value) {
                $value['url_del_cart'] = "?mod=cart&act=delete&id={$value['product_id']}&size={$value['product_size']}";
                $value['url_upd_cart'] = "?mod=cart&act=update&id={$value['product_id']}&size={$value['product_size']}";
            }
            unset($value);
        }
        unset($item);
        return $_SESSION['cart']['buy'];
    }
}
function update_info_cart()
{
    $num_order = 0;
    $total = 0;
    foreach ($_SESSION['cart']['buy'] as $item)
    {
        foreach ($item as $value) {
            $num_order += $value['qty'];
            $total += $value['sub_total'];
        }
        unset($value);
    }
    unset($item);
    $_SESSION['cart']['info'] = array(
        'num_order'=>$num_order,
        'total'=>$total
    );
}
function update_cart($qty)
{
    foreach ($qty as $id=>$value)
    {
        foreach ($value as $size=>$new_qty)
        {
            $_SESSION['cart']['buy'][$id][$size]['qty'] = (int)$new_qty;
            $_SESSION['cart']['buy'][$id][$size]['sub_total'] = (int)$new_qty*$_SESSION['cart']['buy'][$id][$size]['price'];
        }
        unset($new_qty);
    }
    unset($value);
    update_info_cart();
}
function delete_cart($id = NULL, $size = NULL)
{
    if (isset($_SESSION['cart']['buy']))
    {
        if (isset($_SESSION['cart']['buy'][$id]))
        {
            if(isset($size))
                unset($_SESSION['cart']['buy'][$id][$size]);
            update_info_cart();
        }
        else unset($_SESSION['cart']['buy']);
        update_info_cart();
    }
}
function get_num_order_cart()
{
    if (isset($_SESSION['cart']['info']['num_order']))
        return $_SESSION['cart']['info']['num_order'];
    else return 0;

}
function get_total_cart()
{
    if (isset($_SESSION['cart']['info']['total']))
        return $_SESSION['cart']['info']['total'];
    else return 0;
}
function set_url_add_cart(&$item)
{
    $item['url_add_cart'] = "?mod=cart&act=buy_now&product_id={$item['product_id']}";
}