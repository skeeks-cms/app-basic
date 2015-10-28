<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget */


?>

<!-- OWL SLIDER -->

<? if ($widget->dataProvider->query->count()) : ?>

<?

\frontend\assets\OwnCarouselAsset::register($this);

if ($widget->dataProvider->query->count() > 1)
{
        $this->registerJs(<<<JS
        new sx.classes.OwnCarousel({
            'jsquerySelector' : '.owl-carousel'
        });
JS
    );
} else
{
    $this->registerCss(<<<CSS
.owl-carousel
{
    display: block;
}
CSS
);
}


?>
    <? echo \yii\widgets\ListView::widget([
        'dataProvider'      => $widget->dataProvider,
        'itemView'          => 'slide-item',
        'emptyText'          => '',
        'options'           =>
        [
            'tag'       => 'div',
            'class'       => 'owl-carousel buttons-autohide controlls-over nomargin',
            'data-plugin-options'       => '{"items": 1, "autoHeight": false, "navigation": true, "pagination": false, "transitionStyle":"fade", "progressBar":"true"}',
        ],
        'itemOptions' => [
            'tag' => "div"
        ],
        'layout'            => "{items}"
    ])?>


<? endif; ?>

<!-- /OWL SLIDER -->