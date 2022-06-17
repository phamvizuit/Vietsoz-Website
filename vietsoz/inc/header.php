<?php
$num_order = get_num_order_cart();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo</title>
    <link rel="stylesheet" href="public/css/reset.css">
    <link rel="stylesheet" href="public/css/main.css">
    <link rel="stylesheet" href="public/css/sign-in.css">
    <link rel="stylesheet" href="public/fontawesome/css/all.css">
    <link rel="stylesheet" href="public/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="public/owlcarousel/assets/owl.theme.default.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Roboto:wght@100;300;400;700&display=swap"
          rel="stylesheet">
    <script src="public/js/jquery-3.6.0.js"></script>
    <script src="public/owlcarousel/owl.carousel.min.js"></script>
    <script src="public/js/app.js"></script>
    <script src="public/js/update_size.js"></script>
    <script src="public/js/add_cart.js"></script>
    <script src="public/js/update_cart.js"></script>
    <script src="public/js/comment_form.js"></script>
</head>

<body>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0"
        nonce="612XELWt"></script>
<header>
    <nav class="container main-nav">
        <a class="logo" href="?"><img src="public/images/logo.png" alt="logo"></a>
        <ul id="main-menu" class="d-flex">
            <li><a href="?">Trang chủ</a></li>
            <li class="show-search"><a>Tìm kiếm</a></li>
            <li><a href="">Sản phẩm
                    <i class="nav-arrow-down fas fa-chevron-down"></i>
                </a>
                <ul class="sub-menu">
                    <li><a href="?mod=product&act=main&cat_id=1">T-shirt</a></li>
                    <li><a href="?mod=product&act=main&cat_id=2">Croptop</a></li>
                    <li><a href="?mod=product&act=main&cat_id=3">Polo</a></li>
                </ul>
            </li>
            <li><a href="">Xu hướng</a></li>
            <li><a href="">Liên hệ</a></li>
            <li><a href='?mod=user&act=login'><i class='fas fa-sign-in-alt'></i>Login</a></li>
            <li><a href='?mod=user&act=signup'><i class='fas fa-user'></i>Sign up</a></li>
        </ul>
        <div id="cart-wp" class="fl-right">
            <a href="?mod=cart&act=show" title="" id="btn-cart">
                <span id="icon"><img src="public/images/icon-cart.png" alt=""></span>
                <span id="num"><?php echo $num_order; ?></span>
            </a>
        </div>
    </nav>
    <form action="?mod=page&act=search" method="post" id="search" class="container">
        <input type="text" name="search-input" class="search-input" placeholder="NHẬP TỪ KHÓA BẠN MUỐN TÌM KIẾM">
        <button>
            <i class="fas fa-search"></i>
        </button>
    </form>
</header>