<?php
$product_id = $_POST['pro_id'];
$user_id = get_user_id($_POST['username']);
$text = $_POST['text'];
if (!empty($text))
{
    $data = array();
    $data['product_id'] = $product_id;
    $data['cmt_content'] = $text;
    $data['user_id'] = $user_id;
    //new DateTime('now');
    //date_default_timezone_set('Asia/ho_chi_minh');
    $data['time'] = date("F j, Y, g:i a");
    db_insert('tb_comments',$data);
    $cmt = set_cmt($_POST['username'],get_avatar($user_id), $text, $data['time']);
    echo $cmt;
}
?>
