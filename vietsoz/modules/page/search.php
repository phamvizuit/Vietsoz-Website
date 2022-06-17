<?php get_header(); ?>
<?php
$string = $_POST['search-input'];
$list_product = get_list_product_by_search($string);
if (!empty($list_product)) {
    foreach ($list_product as &$item)
        set_url_add_cart($item);
    unset($item);
}
?>
<div class="background">
    <div id="home-event" class="container">
        <i class="fas fa-home"></i>
        <a href="?" class="home">Trang chủ</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">Sản phẩm</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">Tìm kiếm</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add"><?php echo $string; ?></a>
    </div>
</div>
<main class="container">
    <div id="content">
        <div class="heading">
            <h1 class="heading-fashion">Kết quả tìm kiếm</h1>
        </div>
        <div class="box-body">
            <?php if (!empty($list_product)){ ?>
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
                                </a>a
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
            <?php }else echo "<p style='text-align: center'>Không tìm thấy sản phẩm nào phù hợp.</p>" ?>
        </div>
    </div>
</main>
<?php get_footer(); ?>
