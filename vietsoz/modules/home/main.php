<?php get_header(); ?>

<?php
$num_row = db_num_rows("SELECT * FROM `tb_products`");
$num_per_page = 12;
$total_row = $num_row;
$num_page = ceil($total_row/$num_per_page);
$page = isset($_GET['page'])?(int)$_GET['page']:1;
$start = ($page - 1)*$num_per_page;

$list_product = get_list_product($start,$num_per_page);
foreach ($list_product as &$item)
    set_url_add_cart($item);
unset($item);
?>

<div id="banner">
    <a class="logo" href="">
        <img class="banner-img" src="public/images/slider8.png" alt="slider8" title="">
    </a>
</div>
<div class="container justify-content-between">
    <div class="free-ship">
        <span class="member">FREE SHIP NỘI THÀNH</span>
        <button class="ship"><i class="fas fa-shopping-cart"></i></button>
    </div>
    <div class="gift-member">
        <span class="member">TẶNG THẺ THÀNH VIÊN</span>
        <button class="gift"><i class="fas fa-gift"></i></button>
    </div>
    <div class="discount-sunday">
        <span class="member">GIẢM GIÁ 25% CUỐI TUẦN</span>
        <button class="discount"><i class="far fa-paper-plane"></i></button>
    </div>
</div>
<main class="container">
    <div id="slider">
        <div class="heading">
            <h1 class="heading-fashion">
                Sản phẩm nổi bật
            </h1>
        </div>
        <div class="box-body">
            <div class="list-newest-post owl-carousel owl-theme">
            <?php for($i=0;$i<count($list_product); $i++){?>
                <div class="newest-post-item">
                    <a href="?mod=product&act=detail&cat_id=<?php echo $list_product[$i]['cat_id']; ?>&product_id=<?php echo $list_product[$i]['product_id']; ?>" class="post-thumb">
                        <img src="<?php echo $list_product[$i]['product_thumb']; ?>" class="post-thumb-img" alt="">
                    </a>
                    <div class="more-info-product">
                        <a href="?mod=product&act=detail&cat_id=<?php echo $list_product[$i]['cat_id']; ?>&product_id=<?php echo $list_product[$i]['product_id']; ?>" class="post-title-product">
                            <?php echo $list_product[$i]['product_title']; ?>
                        </a>
                        <div class="post-published-product">
                            <span class="price-product"><?php echo currency_format($list_product[$i]['price']); ?></span>
                            <span class="old-price-product"><?php echo currency_format($list_product[$i]['old_price']); ?></span>
                        </div>
                        <a href="<?php echo $list_product[$i]['url_add_cart']; ?>" class="buy-now">Mua ngay</a>
                    </div>
                </div>
            <?php  } ?>
            </div>
        </div>
    </div>
    <div id="content">
        <div class="heading">
            <h1 class="heading-fashion">Tất cả sản phẩm</h1>
        </div>
        <div class="box-body">
            <ul class="list-newest-post">
                <?php foreach ($list_product as $item){ ?>
                <li>
                    <div class="newest-post-item">
                        <a href="?mod=product&act=detail&cat_id=<?php echo $item['cat_id']; ?>&product_id=<?php echo $item['product_id']; ?>" class="post-thumb">
                            <img src="<?php echo $item['product_thumb']; ?>" class="post-thumb-img" alt="">
                        </a>
                        <div class="more-info-product">
                            <a href="?mod=product&act=detail&cat_id=<?php echo $item['cat_id']; ?>&product_id<?php echo $item['product_id']; ?>" class="post-title-product">
                                <?php echo $item['product_title']; ?>
                            </a>
                            <div class="post-published-product">
                                <span class="price-product"><?php echo currency_format($item['price']); ?></span>
                                <span class="old-price-product"><?php echo currency_format($item['old_price']); ?></span>
                            </div>
                            <a href="<?php echo $item['url_add_cart']; ?>" class="buy-now">Mua ngay</a>
                        </div>
                    </div>
                </li>
                 <?php }unset($item); ?>
            </ul>
        </div>
        <?php echo get_pagging($num_page,$page, "?mod=home&act=main"); ?>
    </div>
</main>
<?php get_footer(); ?>