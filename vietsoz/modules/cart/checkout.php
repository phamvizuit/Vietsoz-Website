<?php get_header(); ?>
<?php
$list_buy  = get_list_buy_cart();
?>
<style>
    @import "public/css/checkout.css";
</style>
<div class="background">
    <div id="home-event" class="container">
        <i class="fas fa-home"></i>
        <a href="?" class="home">Trang chủ</a>
        <i class="fas fa-angle-right"></i>
        <a href="" class="add">Thanh toán</a>
    </div>
</div>
<main class="container">
    <div id="content" class="fl-right">
        <div id="checkout-wp">
            <h3 class="section-title">Thanh toán</h3>
            <form method="POST">
                <div id="custom-info-wp" class="fl-left">
                    <h3 class="title">Thông tin khách hàng</h3>
                    <div class="detail">
                        <div class="field-wp">
                            <label>Họ tên</label>
                            <input type="text" name="fullname" id="fullname">
                        </div>
                        <div class="field-wp">
                            <label>Email</label>
                            <input type="email" name="email" id="email">
                        </div>
                        <div class="field-wp">
                            <label>Địa chỉ nhận hàng</label>
                            <input type="text" name="address" id="address">
                        </div>
                        <div class="field-wp">
                            <label>Số điện thoại</label>
                            <input type="tel" name="tel" id="tel">
                        </div>
                        <div class="field-full-wp">
                            <label>Ghi chú</label>
                            <textarea name="note"></textarea>
                        </div>

                    </div>
                </div>
                <div id="order-review-wp" class="fl-right">
                    <h3 class="title">Thông tin đơn hàng</h3>
                    <div class="detail">
                        <table class="shop-table">
                            <thead>
                            <tr>
                                <td>Sản phẩm</td>
                                <td>Tổng</td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if (!empty($list_buy)){
                                foreach ($list_buy as $value){
                                    foreach ($value as $item){
                                    ?>
                                    <tr class="cart-item">
                                        <td class="product-name"><?php echo $item['product_title']."-".$item['product_size']; ?><strong class="product-quantity">x <?php echo $item['qty']; ?></strong></td>
                                        <td class="product-total"><?php echo currency_format($item['sub_total']); ?></td>
                                    </tr>
                                <?php }unset($item);}unset($value);} ?>
                            </tbody>
                            <tfoot>
                            <tr class="order-total">
                                <td>Tổng đơn hàng:</td>
                                <td><strong class="total-price"><?php echo currency_format(get_total_cart()); ?></strong></td>
                            </tr>
                            </tfoot>
                        </table>
                        <div id="payment-checkout-wp">
                            <ul id="payment_methods">
                                <li>
                                    <input type="radio" checked="checked" id="direct-payment" name="payment-method" value="direct-payment">
                                    <label for="direct-payment">Thanh toán tại cửa hàng</label>
                                </li>
                                <li>
                                    <input type="radio" id="payment-home" name="payment-method" value="payment-home">
                                    <label for="payment-home">Thanh toán tại nhà</label>
                                </li>
                            </ul>
                        </div>
                        <div class="place-order-wp clearfix">
                            <button type="submit" name="checkout">Đặt hàng</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</main>
<?php get_footer(); ?>