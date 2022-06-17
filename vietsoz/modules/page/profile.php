<?php get_header(); ?>
<?php
$user = get_user($_SESSION['username']);

$token = md5(uniqid());
if (isset($_FILES['image']) && $_SESSION['token'] == $_POST['token'])
{
    $error = array();
    $upload_dir = 'public/images/';
    $upload_image = $upload_dir.basename($_FILES['image']['name']);
    //type
    $type_allow = array('png','jpg','gif','jpeg');
    $type = pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);
    if (!in_array(strtolower($type),$type_allow))
        $error['image_type'] = 'Chỉ được upload file có đuôi png, jpg, gif, jpeg';
    else
    {
        //size
        $image_size = $_FILES['image']['size'];
        if ($image_size>(20*1024*1024))
            $error['image_size'] = 'Chỉ được upload ảnh có dung lượng nhỏ hơn 20MB';
        //trùng tên
        if (file_exists($upload_image))
        {
            $image_name = pathinfo($_FILES['image']['name'],PATHINFO_FILENAME);
            $new_image_name = $image_name." - Copy.";
            $new_upload_image = $upload_dir.$new_image_name.$type;
            for ($k = 1;file_exists($new_upload_image);$k++ ) {
                $new_image_name = $image_name . " - Copy ({$k}).";
                $new_upload_image = $upload_dir.$new_image_name.$type;
            }
            $upload_image = $new_upload_image;
        }
    }

    if (empty($error))
    {
        if (move_uploaded_file($_FILES['image']['tmp_name'],$upload_image))
        {
            $data['avatar'] = $upload_image;
            db_update('tb_users',$data,"`username`='{$_SESSION['username']}'");
            redirect("?mod=page&act=profile&username={$_SESSION['username']}");
        }
    }
    else
    {
        foreach ($error as $err)
            $alert = "<p style='color: red'>".$err."</p>";
    }
}

?>
<style>
    .avatar{
        width: 100%;
    }
    .avatar img{
        border: 2px solid black;
        border-radius: 100%;
        margin-bottom: 25px;
        margin-left: auto;
        margin-right: auto;
        display: block;
        width: 300px;
        height: 300px;
    }
    .avatar-info p{
        border-bottom: 2px solid black;
    }
</style>
<div class="background">
    <div id="home-event" class="container">
        <i class="fas fa-home"></i>
        <a href="?" class="home">Trang chủ</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">Tài khoản</a>
    </div>
</div>
<main class="container">
    <div id="content">
        <div class="heading">
            <h1 class="heading-fashion">Hồ sơ người dùng</h1>
        </div>
        <div class="box-body">
            <?php if (isset($alert)){ echo $alert;} ?>
            <div class="avatar">
                <img src="<?php echo $user['avatar']; ?>" alt="">
                <form enctype="multipart/form-data" action="" method="POST">
                    <input type="file" name="image">
                    <input type="hidden" name="token" value="<?php echo $token;?>">
                    <?php $_SESSION['token'] = $token; ?>
                    <input type="submit" name="btn_upload" value="Upload images">
                </form>
            </div>
            <div class="avatar-info">
                <p>User_id: <strong><?php echo $user['user_id']; ?></strong></p>
                <p>Fullname: <strong><?php echo $user['fullname']; ?></strong></p>
                <p>Username: <strong><?php echo $user['username']; ?></strong></p>
                <p>Gender: <strong><?php echo show_gender($user['gender']); ?></strong></p>
                <p>Email: <strong><?php echo $user['email']; ?></strong></p>
            </div>
        </div>
    </div>
</main>
<?php get_footer(); ?>
