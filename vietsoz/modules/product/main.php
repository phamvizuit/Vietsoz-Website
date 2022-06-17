<?php get_header(); ?>
<?php
$cat_id = $_GET['cat_id'];
$cat = get_cat($cat_id);
$list_product = get_list_product_by_cat($cat_id);
foreach ($list_product as &$item)
    set_url_add_cart($item);
unset($item);
?>
<div class="background">
    <div id="home-event" class="container">
        <i class="fas fa-home"></i>
        <a href="?" class="home">Trang chủ</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">sản phẩm</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add"><?php echo $cat['cat_title']; ?></a>
    </div>
</div>
<main class="container">
    <div id="content">
        <div class="heading">
            <h1 class="heading-fashion"><?php echo $cat['cat_title']; ?></h1>
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
    </div>
</main>
<?php get_footer(); ?>
