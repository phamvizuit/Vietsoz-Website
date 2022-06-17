<?php
if (isset($_POST['btn_login']))
{
    $info = array();
    $error = array();
    //check username
    if (empty($_POST['username']))
        $error['username'] = "Username không được để trống";
    else if ((strlen($_POST['username']) < 6) || (strlen($_POST['username']) > 32))
        $error['username'] = "Username phải có độ dài từ 6-32 ký tự";
    else {
        if (is_username($_POST['username']))
            $info['username'] = $_POST['username'];
        else $error['username'] = "Username chỉ cho phép ký tự thuộc A-Z,a-z,0-9, ._";
    }
    //check password
    if (empty($_POST['password']))
        $error['password'] = "Password không được để trống";
    else if ((strlen($_POST['password']) < 6) || (strlen($_POST['password']) > 32))
        $error['password'] = "Password phải có độ dài từ 6-32 ký tự";
    else {
        if (is_password($_POST['password']))
            $info['password'] = md5($_POST['password']);
        else $error['password'] = "Password phải viết hoa ký tự đầu và các ký tự còn lại thuộc A-Z,a-z,0-9, ._!@#$%^&*()";
    }
    //check error
    if(empty($error))
    {
        if (!username_exist($info['username']))
            $error['username'] = 'Tài khoản chưa được đăng ký';
        elseif (user_exist($info['username'],$info['password']))
        {
            $_SESSION['is_login'] = true;
            $_SESSION['username'] = $info['username'];
            if (isset($_SESSION['is_signup']))
                unset($_SESSION['is_signup']);
            redirect("?");
        }
        else $error['password'] = 'Sai mật khẩu rồi bạn ơi!';
    }
//    $info['username'] = $_POST['username'];
//    $info['password'] = $_POST['password'];
//    if (user_exist($info['username'],$info['password']))
//    {
//        $_SESSION['is_login'] = true;
//        $_SESSION['username'] = $info['username'];
//        redirect("?");
//    }
}