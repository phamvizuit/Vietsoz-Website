<?php
function set_cmt($username, $avatar, $cmt_content, $time)
{
    $str="<div class='be-comment'><div class='be-img-comment'><img src='{$avatar}'  class='be-ava-comment'>
    </div><div class='be-comment-content'><span class='be-comment-name'><p><strong>{$username}</strong></p>
	</span><span class='be-comment-time'><i class='fa fa-clock-o'></i>{$time}</span><p class='be-comment-text'>{$cmt_content}
    </p></div></div>";
    return $str;
}
function get_cmt_by_product_id($id)
{
    $list_cmt = db_fetch_array("SELECT `tb_users`.`username`,`tb_users`.`avatar`,`tb_comments`.`time`,`tb_comments`.`cmt_content` FROM `tb_users` JOIN `tb_comments` ON `tb_users`.`user_id`=`tb_comments`.`user_id` WHERE `product_id`= {$id}");
    return $list_cmt;
}
?>
