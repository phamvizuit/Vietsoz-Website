<?php
function get_cat($id = NULL)
{
    if (!empty($id))
        $list_cat = db_fetch_row("SELECT * FROM `tb_cats` WHERE `cat_id` = {$id}");
    else $list_cat = db_fetch_array("SELECT * FROM `tb_cats`");
    if (!empty($list_cat))
        return $list_cat;
    return false;
}
function get_list_product_by_cat($cat_id, $start = NULL, $end = NULL)
{
    $query = "SELECT `tb_products`.`product_id`,`tb_products`.`product_title`,`tb_products`.`product_thumb`,`tb_products`.`cat_id`,`tb_product_attr`.`price`,`tb_product_attr`.`old_price` FROM `tb_products` JOIN `tb_product_attr` ON `tb_products`.`product_id` = `tb_product_attr`.`product_id` WHERE `product_size`='S' AND `tb_products`.`cat_id`= {$cat_id}";
    if (isset($start) && isset($end))
        $list_product = db_get_limit($query,$start,$end);
    else $list_product = db_fetch_array($query);
    if (!empty($list_product))
    {
        return $list_product;
    }
    return false;
}
function get_product_by_id($id, $size = 'S')
{
    $query = "SELECT `tb_products`.*,`tb_product_attr`.`price`,`tb_product_attr`.`old_price`,`tb_product_attr`.`qty`,`tb_product_attr`.`product_size` FROM `tb_products` JOIN `tb_product_attr` ON `tb_products`.`product_id` = `tb_product_attr`.`product_id` WHERE `product_size`= '{$size}' AND `tb_products`.`product_id`={$id}";
    $item = db_fetch_row($query);
    if (!empty($item))
    {
        $item['url'] = "?mod=product&act=detail&cat_id={$item['cat_id']}&product_id={$id}";
        return $item;
    }
    return false;
}
function get_list_product_by_search($string)
{
    $query = "SELECT `tb_products`.`product_id`,`tb_products`.`product_title`,`tb_products`.`product_thumb`,`tb_products`.`cat_id`,`tb_product_attr`.`price`,`tb_product_attr`.`old_price` FROM `tb_products` JOIN `tb_product_attr` ON `tb_products`.`product_id` = `tb_product_attr`.`product_id` WHERE `tb_product_attr`.`product_size`='S' AND `tb_products`.`product_title` LIKE '%{$string}%'";
    $list_product = db_fetch_array($query);
    if (!empty($list_product))
    {
        return $list_product;
    }
    return false;
}
function get_list_product($start, $end)
{
    $query = "SELECT `tb_products`.`product_id`,`tb_products`.`product_title`,`tb_products`.`product_thumb`,`tb_products`.`cat_id`,`tb_product_attr`.`price`,`tb_product_attr`.`old_price` FROM `tb_products` JOIN `tb_product_attr` ON `tb_products`.`product_id` = `tb_product_attr`.`product_id` WHERE `product_size`='S' LIMIT {$start},{$end}";
    $list_product = db_fetch_array($query);
    if (!empty($list_product))
        return $list_product;
    require false;
}