<?php
function get_header($mod = 'header')
{
    if (isset($_SESSION['is_login']))
        $mod = 'header-login';
    $path = "inc/{$mod}.php";
    if (file_exists($path))
        require $path;
    else echo "Không tồn tại đường dẫn {$path}";
}
function get_footer($mod = 'footer')
{
    $path = "inc/{$mod}.php";
    if (file_exists($path))
        require $path;
    else echo "Không tồn tại đường dẫn {$path}";
}
?>