<?php
if (isset($_POST['btn_signup']))
{
    $info = array();
    $error = array();
    //check username
    if (empty($_POST['fullname']))
        $error['fullname'] = "Fullname không được để trống";
    else $info['fullname'] = $_POST['fullname'];
    if (empty($_POST['username']))
        $error['username'] = "Username không được để trống";
    else if ((strlen($_POST['username']) < 6) || (strlen($_POST['username']) > 32))
        $error['username'] = "Username phải có độ dài từ 6-32 ký tự";
    else {
        if (is_username($_POST['username']))
            if (username_exist($_POST['username']))
                $error['username'] = "Username đã tồn tại";
            else $info['username'] = $_POST['username'];
        else $error['username'] = "Username chỉ cho phép ký tự thuộc A-Z,a-z,0-9, ._";
    }
    //check gender
    if (empty($_POST['gender']))
        $error['gender'] = "Vui lòng chọn giới tính";
    else $info['gender'] = $_POST['gender'];
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
    //check_comfirm_pw
    if (empty($_POST['comfirm_pw']) && !empty($info['password']))
        $error['comfirm_pw'] = "Vui lòng nhập lại mật khẩu";
    elseif (!empty($info['password']))
        if ($info['password']!=md5($_POST['comfirm_pw']))
            $error['comfirm_pw'] = "Password nhập lại không chính xác";
    //check_email
    if (empty($_POST['email']))
        $error['email'] = "Email không được để trống";
    else {
        if (is_email($_POST['email']))
            if (email_exist($_POST['email']))
                $error['email'] = "E-mail đã tồn tại";
            else $info['email'] = $_POST['email'];
        else $error['email'] = "E-mail không đúng định dạng";
    }
    //check error
    if(empty($error))
    {
        $message_mail_success = array(
            'subject'=>"[ĐĂNG KÝ TÀI KHOẢN THÀNH CÔNG!]",
            'body'=>"
                       <p>Xin chào <strong>{$info['fullname']}</strong></p>

                        <p>Chúc mừng bạn trở thành thành viên Vietsoz - Tích điểm ngay nhận quà liền tay.
                          Bạn có thể đăng nhập dễ dàng vào tài khoản Vietsoz để cập nhập các chương trình ưu đãi đặc biệt dành riêng cho bạn</p>
                          
                            <p><strong>Username: </strong>{$info['username']}</p>
    "
        );
        $info['avatar'] = 'public/images/avatar.jpg';
        db_insert("tb_users", $info);
        $_SESSION['is_signup'] = true;
        send_mail($info['email'],$info['fullname'],$message_mail_success['subject'],$message_mail_success['body']);
        redirect("?mod=user&act=login");

    }
}
?>