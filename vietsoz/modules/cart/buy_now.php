<?php
$id = (int)$_GET['product_id'];
add_cart($id);
redirect("?mod=cart&act=show");
