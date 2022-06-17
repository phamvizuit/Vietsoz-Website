<?php
$id = (int)$_GET['id'];
$size = $_GET['size'];
delete_cart($id,$size);
redirect("?mod=cart&act=show");