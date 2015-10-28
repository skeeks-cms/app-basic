<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \frontend\widgets\LayerSliderCmsWidget */

\frontend\assets\OwlCarouselAsset::register($this);

$this->registerJs(<<<JS
(function(sx, $, _)
{
    sx.classes.OwnClietns = sx.classes.Component.extend({

        _init: function()
        {},

        _onDomReady: function()
        {
            OwlCarousel.initOwlCarousel();
        },

        _onWindowReady: function()
        {}
    });

    new sx.classes.OwnClietns();
})(sx, sx.$, sx._);
JS
)
?>

<!-- Our Clients -->
<div class="owl-carousel-style-v2">
    <div class="headline"><h2>Наши клиенты</h2></div>
    <div class="owl-slider-v3">
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/1.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/2.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/3.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/4.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/5.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/6.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/7.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/8.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/9.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/3.png" alt="">
        </div>
        <div class="item">
            <img class="img-responsive" src="/unify/img/clients4/7.png" alt="">
        </div>
    </div>
</div>
<!-- End Our Clients -->