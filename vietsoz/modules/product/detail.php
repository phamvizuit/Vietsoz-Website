<?php get_header(); ?>
<?php
$product_id = $_GET['product_id'];
$cat_id = $_GET['cat_id'];
$item = get_product_by_id($product_id);

$list_product = get_list_product_by_cat($cat_id);
//if (isset($_SESSION['cart']['buy']))
//    show_arr($_SESSION['cart']['buy']);
?>
<style>
    @import "public/css/detail.css";
    @import "public/css/comment-form.css";
</style>
<div class="background">
    <div id="home-event" class="container">
        <i class="fas fa-home"></i>
        <a href="?" class="home">Trang chủ</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">Chi tiết sản phẩm</a>
    </div>
</div>

<main id="wp-content" class="container">
    <div id="content">
        <div class="box-body">
            <ul class="list-post">
                <li class="list-post-item">
                    <a href="" class="post-thumb">
                        <img style="width: 82%" src="<?php echo $item['product_thumb']; ?>" alt="">
                    </a>
                    <div class="more-info">
                        <a href="" class="post-title"><?php echo $item['product_title']; ?></a>
                        <div class="post-published">
                                    <span class="product-code"><i class="product-code-icon far fa-check-circle"></i>Mã
                                        sản phẩm: <strong><?php echo $item['product_code']; ?></strong></span>
                            <span class="price-product"><?php echo currency_format($item['price']); ?></span>
                            <span class="old-price-product"><?php echo currency_format($item['old_price']); ?></span>
                        </div>
                        <div>
                            <select name="" id="product_size" data-id="<?php echo $item['product_id']; ?>">
                                <option value="S" selected="selected">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                                <option value="XXL">XXL</option>
                            </select>
                        </div>
                        <p class="post-excerpt">
                            <?php echo $item['product_desc']; ?>
                        </p>
                        <div class="amount">
                            <p>Số lượng:</p>
                            <input style="width:50px; height: 30px;font-size: 18px;" id="qty" type="number" value="1" min="1" max="<?php echo $item['qty']; ?>">
                        </div>
                        <div class="support-buying">
                            <button class="add-rows">Thêm giỏ hàng</button>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="box">
                <div class="box-head">
                    <h3 class="box-head-info">Thông tin sản phẩm</h3>
                </div>
                <div class="box-body">
                    <div class="box-content">
                        <?php echo $item['product_content']; ?>
                    </div>
                </div>
            </div>
        </div>

        <?php
        $list_cmt = get_cmt_by_product_id($product_id);
        if (!empty($list_cmt))
            $num_cmt = count($list_cmt);
        else $num_cmt = 0;
        ?>
<!--comment-->
        <div class="be-comment-block">
            <h1 class="comments-title">Comments (<span><?php echo $num_cmt; ?></span>)</h1>
            <?php if (!empty($list_cmt)){
                foreach ($list_cmt as $cmt){
                    echo set_cmt($cmt['username'],$cmt['avatar'],$cmt['cmt_content'],$cmt['time']);
                }unset($cmt);} ?>
            <?php if (isset($_SESSION['is_login'])){ ?>
            <form class="form-block">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <textarea id="cmt_text"  class="form-input" name="text_cmt" placeholder="Your comment"></textarea>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="username" value="<?php if(isset($_SESSION['is_login'])){echo $_SESSION['username'];} ?>">
            </form>
            <button class="btn btn-primary pull-right fl-right">Submit</button>
            <?php } ?>
        </div>
<!--end comment-->
    </div>
    <!-- Sidebar -->
    <div id="sidebar">
        <div id="wrapper-menu">
            <div class="menu-title">
                <h2 class="menu-heading">DANH MỤC</h2>
            </div>
            <ul class="menu-category">
                <li class="menu-item"><a href="">Sản phẩm</a>
                    <i id="active" class="item-icon fas fa-chevron-circle-down"></i>
                </li>
                <li class="menu-item" id="active"><a href="">Cảm nhận sản phẩm</a>
                    <i id="active" class="item-icon fas fa-chevron-circle-down"></i>
                </li>
                <li class="menu-item"><a href="">Xu hướng</a>
                    <i id="active" class="item-icon fas fa-chevron-circle-down"></i>
                </li>
                <li class="menu-item"><a href="?mod=cart&act=show">Thanh toán</a>
                    <i id="active" class="item-icon fas fa-chevron-circle-down"></i>
                </li>
            </ul>
        </div>
        <a href="#" class="banner"><img src="public/images/banner-02.png" alt="banner"></a>
        <!-- End-wp-menu -->
        <div class="box-product-selling">
            <div class="box-title-product">
                <h2 class="product-heading">SẢN PHẨM CÙNG LOẠI</h2>
            </div>
            <div class="box-product-body">
                <ul class="list-product-post">
                    <?php foreach ($list_product as $value){
                        if ($value['product_id']!=$product_id){ ?>
                    <li class="list-product-item">
                        <a href="?mod=product&act=detail&cat_id=<?php echo $cat_id; ?>&product_id=<?php echo $value['product_id']; ?>" class="product-thumb">
                            <img style="max-width: 80%" src="<?php echo $value['product_thumb']; ?>" alt="">
                        </a>
                        <div class="info-product">
                            <a href="?mod=product&act=detail&cat_id=<?php echo $cat_id; ?>&product_id=<?php echo $value['product_id']; ?>" class="product-title">
                                <?php echo $value['product_title'] ?></a>
                            <div class="product-published">
                                <span class="product-price"><?php echo currency_format($value['price']); ?></span>
                                <span class="product-old-price"><?php echo currency_format($value['old_price']); ?></span>
                            </div>
                            <a href="?mod=product&act=detail&cat_id=<?php echo $cat_id; ?>&product_id=<?php echo $value['product_id']; ?>" class="product-detail">Chi tiết </a>
                        </div>
                    </li>
                    <?php }}unset($value); ?>
                </ul>
            </div>
        </div>
    </div>
    <!-- End-sidebar -->
</main>
<?php get_footer(); ?>