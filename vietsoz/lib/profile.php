<?php
$token = md5(uniqid());
//&& $_SESSION['token'] == $_POST['token']
if (isset($_FILES['image']) && $_SESSION['token'] == $_POST['token'])
{
    $error = array();
    $upload_dir = 'uploads/images/';
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
            //echo "<img src='{$upload_image}'/><br>";
            echo "<p>Upload thành công<p>";
        }
        else echo 'Upload file thất bại!';
    }
}