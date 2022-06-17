<?php get_header(); ?>
<?php
$list_buy  = get_list_buy_cart();
?>
<style>
    @import "public/css/cart.css";
</style>
<div class="background">
    <div id="home-event" class="container">
        <i class="fas fa-home"></i>
        <a href="?" class="home">Trang chủ</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">Giỏ hàng</a>
    </div>
</div>
<main class="container">
    <h3 class="title">Giỏ hàng</h3>
    <div>
        <div id="info-cart-wp">
            <form action="?mod=cart&act=update" method="POST">
                <table class="table">
                    <thead>
                    <tr>
                        <td>Mã sản phẩm</td>
                        <td>Ảnh sản phẩm</td>
                        <td>Tên sản phẩm</td>
                        <td>Giá sản phẩm</td>
                        <td>Size</td>
                        <td>Số lượng</td>
                        <td colspan="2">Thành tiền</td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php if (!empty($list_buy)){
                    foreach ($list_buy as $item){
                        foreach ($item as $value){?>
                    <tr>
                        <td><?php echo $value['product_code']; ?></td>
                        <td>
                            <a href="<?php echo $value['url']; ?>" title="" class="thumb">
                                <img src="<?php echo $value['product_thumb']; ?>">
                            </a>
                        </td>
                        <td>
                            <a href="<?php echo $value['url'] ?>" title="" class="name-product"><?php echo $value['product_title']; ?></a>
                        </td>
                        <td><?php echo currency_format($value['price']); ?></td>
                        <td><?php echo $value['product_size']; ?></td>
                        <td>
                            <input type="number" min="1" max="<?php echo $value['max_qty']; ?>" data-id="<?php echo $value['product_id']; ?>" data-size="<?php echo $value['product_size']; ?>" name="qty[<?php echo $value['product_id']; ?>][<?php echo $value['product_size']; ?>]" value="<?php echo $value['qty']; ?>" class="num-order">
                        </td>
                        <td id="sub-total-<?php echo $value['product_id'].$value['product_size']; ?>"><?php echo currency_format($value['sub_total']); ?></td>
                        <td>
                            <a href="<?php echo $value['url_del_cart']; ?>" title="" class="del-product"><i class="far fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <?php }unset($value);unset($item);}}
                    else echo "<p style='text-align: center'>Không có sản phẩm nào trong giỏ hàng.</p>"
                    ?>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="8">
                            <div>
                                <p id="total-price" class="fl-right">Tổng giá: <span><?php echo currency_format(get_total_cart()); ?></span></p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8">
                                <div class="fl-right">
                                    <input type="submit" id="update-cart" name="btn_update_cart" value="Cập nhật giỏ hàng">
                                    <a href="?mod=cart&act=checkout" title="" id="checkout-cart">Thanh toán</a>
                                </div>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </form>
        </div>
        <div id="action-cart-wp">
            <div>
                <p class="title">Click vào <span>“Cập nhật giỏ hàng”</span> để cập nhật số lượng. Click vào icon thùng rác để xóa sản phẩm khỏi giỏ hàng. Nhấn vào thanh toán để hoàn tất mua hàng.</p>
                <a href="?" title="" id="buy-more">Mua tiếp</a><br>
                <a href="?mod=cart&act=delete_all" title="" id="delete-cart">Xóa giỏ hàng</a>
            </div>
        </div>
    </div>
</main>
<?php get_footer(); ?>
