<?php
function is_fullname($fullName) {
    $parttern = "/^[A-Za-z]{6,32}$/";
    if (preg_match($parttern, $fullName))
        return true;
    return false;
}
function is_username($userName) {
    $parttern = "/^[A-Za-z0-9_\.]{6,32}$/";
    if (preg_match($parttern, $userName))
        return true;
    return false;
}
function is_password($passWord) {
    $parttern = "/^([A-Z]){1}([\w_\.!@#$%^&*()]+){5,31}$/";
    if (preg_match($parttern, $passWord))
        return true;
    return false;
}
function is_email($mail) {
    $parttern =
        "/^[A-Za-z0-9_.]{6,32}@([a-zA-Z0-9]{2,12})(.[a-zA-Z]{2,12})+$/";
    if (preg_match($parttern, $mail))
        return true;
    return false;
}
function form_error($label_field) {
    global $error;
    if (isset($error[$label_field])) {
        echo "<p class='error' style='color: red'>{$error[$label_field]}</p>";
    }
}
function set_value($label_field) {
    global $info;
    if (isset($info[$label_field]))
        return $info[$label_field];
}
?>