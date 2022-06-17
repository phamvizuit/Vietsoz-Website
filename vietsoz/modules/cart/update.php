<?php
if (isset($_POST['btn_update_cart']))
    update_cart($_POST['qty']);
redirect("?mod=cart&act=show");