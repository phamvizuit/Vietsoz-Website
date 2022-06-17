<?php
require 'lib/validation_login.php';
function is_signup()
{
    if (isset($_SESSION['is_signup']))
        echo  "<p style='color: red'>Đăng ký thành công</p>";
}
?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/css/reset.css" type="text/css">
    <link rel="stylesheet" href="public/css/style_login_signup.css" type="text/css">
    <title>Login</title>
</head>
<body class="align">

<div class="login">

    <header class="login__header">
        <h1>Vietsoz</h1>
        <h2>Log In</h2>
        <?php is_signup(); ?>
    </header>

    <form action="" class="login__form" method="POST">

        <div>
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="username" value="<?php echo set_value('username');?>">
            <?php form_error('username'); ?>
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="*****************">
            <?php form_error('password'); ?>
        </div>
        <div>
            <input class="button" type="submit" name="btn_login" value="Log In">
        </div>

    </form>

</div>
</body>
</html>
