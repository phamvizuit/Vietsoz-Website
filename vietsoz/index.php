<?php
session_start();
ob_start();
require 'config/db_config.php';
require 'config/email_config.php';
require 'db/database.php';
require 'lib/email.php';

require 'lib/data.php';
require 'lib/template.php';
require 'lib/pages.php';
require 'lib/products.php';
require 'lib/number.php';
require 'lib/url.php';
require 'lib/cart.php';
require 'lib/validation.php';
require 'lib/pagging.php';
require 'lib/user.php';
require 'lib/comment_form.php';
?>
<?php
db_connect($db_config);
$mod = !empty($_GET['mod'])?$_GET['mod']:"home";
$act = !empty($_GET['act'])?$_GET['act']:"main";
$path = "modules/{$mod}/{$act}.php";
//
if (file_exists($path))
    require $path;
?>
