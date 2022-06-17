<?php
function get_user_id($username){
    $id = db_fetch_row("SELECT `user_id` FROM `tb_users` WHERE `username`='{$username}'");
    return $id['user_id'];
}
function get_avatar($user_id){
    $avatar = db_fetch_row("SELECT `avatar` FROM `tb_users` WHERE `user_id`='{$user_id}'");
    return $avatar['avatar'];
}
function show_gender($gender)
{
    $list_genders = array(
        'male'=>'Nam',
        'female'=>'Nữ'
    );
    if (array_key_exists($gender,$list_genders))
        return $list_genders[$gender];
    return false;
}