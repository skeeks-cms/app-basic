<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \frontend\widgets\LayerSliderCmsWidget */

\frontend\assets\LayerSliderAsset::register($this);

$this->registerJs(<<<JS
(function(sx, $, _)
{
    sx.classes.LayerSlider = sx.classes.Component.extend({

        _init: function()
        {

        },

        _onDomReady: function()
        {
            jQuery("#layerslider").layerSlider({
                skin: 'fullwidth',
                responsive : true,
                responsiveUnder : 960,
                layersContainer : 960,
                skinsPath: '/unify/plugins/layer-slider/layerslider/skins/'
            });
        },

        _onWindowReady: function()
        {}
    });

    new sx.classes.LayerSlider();
})(sx, sx.$, sx._);
JS
)
?>