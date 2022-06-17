<?php
require 'lib/validation_signup.php';
?>
<?php
$gender = '';
if (isset($_POST['gender']))
    $gender .= $_POST['gender'];
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/css/reset.css">
    <link rel="stylesheet" href="public/css/style_login_signup.css">
    <title>Sign up</title>
</head>
<body class="align">

<div class="login">

    <header class="login__header">
        <h1>UIT STORE</h1>
        <h2>Sign Up</h2>
    </header>

    <form action="" class="login__form" method="POST">

        <div>
            <label for="fullname">Fullname</label>
            <input type="text" id="fullname" name="fullname" placeholder="fullname" value="<?php echo htmlentities(set_value('fullname'));?>">
            <?php form_error('fullname'); ?>
        </div>
        <div>
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="username" value="<?php echo htmlentities(set_value('username'));?>">
            <?php form_error('username'); ?>
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="*****************">
            <?php form_error('password'); ?>
        </div>
        <div>
            <label for="comfirm_pw">Comfirm password</label>
            <input type="password" id="comfirm_pw" name="comfirm_pw" placeholder="*****************">
            <?php form_error('comfirm_pw'); ?>
        </div>
        <div>
            <select name="gender" id="gender">
                <option value="">--Chọn giới tính--</option>
                <option value="male" <?php if (!empty($gender) && $gender == 'male') echo "selected='selected'"; ?>>Nam</option>
                <option value="female" <?php if (!empty($gender) && $gender == 'female') echo "selected='selected'"; ?>>Nữ</option>
            </select>
            <?php form_error('gender'); ?>
        </div>
        <div>
            <label for="email">E-mail</label>
            <input type="text" id="email" name="email" placeholder="email" value="<?php echo htmlentities(set_value('email'));?>">
            <?php form_error('email'); ?>
        </div>
        <div>
            <input class="button" type="submit" name="btn_signup" value="Sign Up">
        </div>

    </form>

</div>
</body>
</html>

