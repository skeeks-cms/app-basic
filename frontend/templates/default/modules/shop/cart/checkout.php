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
    'title' => 'Офрмление заказа'
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
                    <a href="<?= \yii\helpers\Url::to(['/shop/cart']); ?>" data-pjax="0">1</a>
                    <h5>Корзина</h5>
                </li>
                <li class="active">
                    <a href="<?= \yii\helpers\Url::to(['/shop/cart/checkout']); ?>"  data-pjax="0">2</a>
                    <h5>Оформление</h5>
                </li>
                <li class="">
                    <a href="<?= \yii\helpers\Url::to(['/shop/cart/payment']); ?>"  data-pjax="0">3</a>
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

                <!-- cart content -->
                <div id="cartContent">

                    <? if (\Yii::$app->user->isGuest) : ?>
                        <!-- EMPTY CART -->
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <strong>Вы не авторизованы на сайте.</strong><br />
                                Для постоянных покупателей у нас действует система бонусов и скидок.<br />
                                Если у вас уже есть аккаунт, то вы можете <a href="<?= \skeeks\cms\helpers\UrlHelper::construct('cms/auth/login')->setCurrentRef(); ?>" data-pjax="0">войти на сайт</a>. <br />
                                <!--<span class="label label-success">this is just an empty cart example</span>-->
                            </div>
                        </div>
                    <!-- /EMPTY CART -->
                    <? endif; ?>

                    <? if (!\Yii::$app->shop->shopPersonTypes) : ?>
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <strong>Магазин не настроен.</strong><br />
                                В настоящий момент магазин не настроен, не найдены типы плательщиков.
                            </div>
                        </div>
                    <? else : ?>




                            <label class="control-label">Доступные профили</label>
                            <?= \skeeks\widget\chosen\Chosen::widget([
                                'name'          => 'select-person-type',
                                'id'            => 'select-person-type',
                                'items'         => \Yii::$app->shop->shopFuser->getBuyersList(),
                                'value'         => \Yii::$app->shop->shopFuser->buyer_id ? \Yii::$app->shop->shopFuser->buyer_id : (
                                    \Yii::$app->shop->shopFuser->personType->id ? "shopPersonType-" . \Yii::$app->shop->shopFuser->personType->id : ""
                                ),
                                'placeholder'   => 'Выберите профиль покупателя',
                                'allowDeselect' => false,
                            ])?>

                            <? if (\Yii::$app->shop->shopFuser->shopBuyers) : ?>
                                <small>Ранее вы уже совершали покупки в нашем магазине, и поэтому можете выбрать ранее заполненный профиль.</small>
                            <? endif; ?>

                            <? $this->registerJs(<<<JS
(function(sx, $, _)
{
    sx.classes.ShopSelectPersonType = sx.classes.Component.extend({

        _onDomReady: function()
        {
            $('#select-person-type').on("change", function()
            {
                sx.Shop.saveBuyer($(this).val());
                sx.Shop.bind('saveBuyer', function(e, data)
                {
                    window.location.reload();
                });
            });
        }
    });

    new sx.classes.ShopSelectPersonType();
})(sx, sx.$, sx._);
JS
)?>
                        <? if (\Yii::$app->shop->shopFuser->personType || \Yii::$app->shop->shopFuser->buyer) : ?>
                            <hr />
                            <?= \skeeks\cms\shop\widgets\ShopPersonTypeFormWidget::widget([]) ?>
                        <? endif; ?>



                        <?/*
                        /**
                         * @var $shopPersonType \skeeks\cms\shop\models\ShopPersonType
                        $shopPersonType = array_shift(\Yii::$app->shop->shopPersonTypes);
                        */?>




                    <? endif; ?>

                    <div class="clearfix"></div>
                </div>
                <!-- /cart content -->

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

                            <a href="<?= \yii\helpers\Url::to(['/shop/cart/payment']); ?>" class="btn btn-primary btn-lg btn-block size-15" data-pjax="0">
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