<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 22.09.2015
 */
/* @var $this yii\web\View */
?>

<?= $this->render('@template/include/breadcrumbs', [
    'title' => 'Корзина'
]) ?>


<?
\frontend\assets\CartAsset::register($this);
\skeeks\cms\shop\widgets\ShopGlobalWidget::widget();

$this->registerJs(<<<JS
    (function(sx, $, _)
    {
        new sx.classes.shop.FullCart(sx.Shop, 'sx-cart-full');
    })(sx, sx.$, sx._);
JS
);
?>


<!--=== Content Part ===-->
<section>
    <div class="container">

        <? \skeeks\cms\modules\admin\widgets\Pjax::begin([
            'id'                    => 'sx-cart-full',
        ]) ?>

        <? if (\Yii::$app->shop->shopFuser->isEmpty()) : ?>
            <!-- EMPTY CART -->
                <div class="panel panel-default">
                <div class="panel-body">
                    <strong>Ваша корзина пуста!</strong><br />
                    В вашей корзине нет покупок.<br />
                    Кликните <a href="/" data-pjax="0">сюда</a> для продолжения покупок. <br />
                    <!--<span class="label label-warning">this is just an empty cart example</span>-->
                </div>
            </div>
            <!-- /EMPTY CART -->
        <? else: ?>
            <ul class="process-steps nav nav-justified">
                <li class="active">
                    <a href="<?= \yii\helpers\Url::to(['/shop/cart/index']); ?>" data-pjax="0">1</a>
                    <h5>Корзина</h5>
                </li>
                <li class="">
                    <a href="<?= \yii\helpers\Url::to(['/shop/cart/checkout']); ?>" data-pjax="0">2</a>
                    <h5>Оформление</h5>
                </li>
                <li class="">
                    <a href="<?= \yii\helpers\Url::to(['/shop/cart/payment']); ?>" data-pjax="0">3</a>
                    <h5>Оплата</h5>
                </li>
                <li>
                    <a href="#">4</a>
                    <h5>Финиш</h5>
                </li>

            </ul>

            <hr />

            <!-- LEFT -->
            <div class="col-lg-9 col-sm-8">

                <!-- CART -->
                <form class="cartContent clearfix" method="post" action="#">

                    <!-- cart content -->
                    <div id="cartContent">
                        <!-- cart header -->
                        <div class="item head clearfix">
                            <span class="cart_img"></span>
                            <span class="product_name size-13 bold">Товар</span>
                            <span class="remove_item size-13 bold"></span>
                            <span class="total_price size-13 bold">Всего</span>
                            <span class="qty size-13 bold">Количество</span>
                        </div>
                        <!-- /cart header -->

                        <? foreach(\Yii::$app->shop->shopFuser->shopBaskets as $shopBasket) : ?>
                            <!-- cart item -->
                            <div class="item">
                                <div class="cart_img pull-left width-100 padding-10 text-left">
                                    <img src="<?= \skeeks\cms\helpers\Image::getSrc($shopBasket->product->cmsContentElement->image->src)?>" alt="" width="80" />
                                </div>
                                <a href="<?= $shopBasket->product->cmsContentElement->url; ?>" class="product_name" data-pjax="0">
                                    <span><?= $shopBasket->product->cmsContentElement->name; ?></span>
                                    <!--<small>Color: Brown, Size: XL</small>-->
                                </a>
                                <a href="#" class="remove_item" data-toggle="tooltip" title="" onclick="sx.Shop.removeBasket('<?= $shopBasket->id; ?>'); return false;" data-original-title="Удалить позицию"><i class="fa fa-times"></i></a>
                                <div class="total_price"><span><?= \Yii::$app->money->intlFormatter()->format($shopBasket->money); ?></span></div>
                                <div class="qty">
                                    <input type="number" value="<?= round($shopBasket->quantity); ?>" name="qty" class="sx-basket-quantity" maxlength="3" max="999" min="1" data-basket_id="<?= $shopBasket->id; ?>"/>
                                    &times; <?= \Yii::$app->money->intlFormatter()->format($shopBasket->productPrice->money); ?>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- /cart item -->
                        <? endforeach;?>


                        <!-- update cart -->
                        <button onclick="sx.Shop.clearCart(); return false;" class="btn btn-default btn-sm margin-top-20 margin-right-10 pull-left"><i class="glyphicon glyphicon-remove"></i> Очистить корзину</button>
                        <!-- /update cart -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- /cart content -->

                </form>
                <!-- /CART -->

            </div>


            <!-- RIGHT -->
            <div class="col-lg-3 col-sm-4">

                <!-- TOGGLE -->
                <div class="toggle-transparent toggle-bordered-full clearfix">

                    <div class="toggle nomargin-top">
                        <label>Купон</label>

                        <div class="toggle-content" style="display: block;">
                            <p>Укажите код вашего купона.</p>

                            <form action="#" method="post" class="nomargin">
                                <input type="text" id="cart-code" name="cart-code" class="form-control text-center margin-bottom-10" placeholder="Код купона" required="required">
                                <button class="btn btn-primary btn-block" type="submit">Получить скидку</button>
                            </form>
                        </div>
                    </div>


                </div>
                <!-- /TOGGLE -->

                <div class="toggle-transparent toggle-bordered-full clearfix">
                    <div class="toggle active" style="display: block;">
                        <div class="toggle-content" style="display: block;">

                            <span class="clearfix">
                                <span class="pull-right"><?= \Yii::$app->money->intlFormatter()->format(\Yii::$app->shop->shopFuser->moneyNoDiscount); ?></span>
                                <strong class="pull-left">Итого:</strong>
                            </span>
                            <span class="clearfix">
                                <span class="pull-right"><?= \Yii::$app->money->intlFormatter()->format(\Yii::$app->shop->shopFuser->moneyDiscount); ?></span>
                                <span class="pull-left">Скидка:</span>
                            </span>
                            <span class="clearfix">
                                <span class="pull-right"><?= \Yii::$app->money->intlFormatter()->format(\Yii::$app->shop->shopFuser->moneyDelivery); ?></span>
                                <span class="pull-left">Доставка:</span>
                            </span>

                            <hr />

                            <span class="clearfix">
                                <span class="pull-right size-20"><?= \Yii::$app->money->intlFormatter()->format(\Yii::$app->shop->shopFuser->money); ?></span>
                                <strong class="pull-left">ИТОГ:</strong>
                            </span>

                            <hr />

                            <a href="<?= \yii\helpers\Url::to(['/shop/cart/checkout']); ?>" class="btn btn-primary btn-lg btn-block size-15" data-pjax="0">
                                <i class="fa fa-mail-forward"></i> Оформить
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        <? endif; ?>

        <? \skeeks\cms\modules\admin\widgets\Pjax::end() ?>


    </div>
</section>