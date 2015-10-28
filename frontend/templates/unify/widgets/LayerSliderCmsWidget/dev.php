<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \frontend\widgets\LayerSliderCmsWidget */
?>
<?= $this->render('_assets'); ?>

<!--=== Slider ===-->
<div id="layerslider" style="width: 100%; height: 500px; margin: 0px auto;">
    <!-- First slide -->



    <div class="ls-slide" data-ls="slidedelay:6500;transition2d:25;">
        <img src="/img/bg/green.jpg" class="ls-bg" alt="Slide background">

        <span class="ls-s-1" style="
            /*text-transform: uppercase;*/
            line-height: 45px;
            font-size:35px;
            color:#fff;
            top: 40px;
            left: 60px;
            slidedirection : top;
            slideoutdirection : right;
            durationin : 500;
            durationout : 500;
        ">
            Центр поддержки разработчиков SkeekS CMS
        </span>

        <img class="ls-l" src="/img/slider/under-construction.png" style="top: 80px; left: 30%;" data-ls="offsetxin:left; durationin:500; delayin:900; fadein:false; offsetxout:left; durationout:1000; fadeout:false;" alt="">


        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:150px; left: 590px; slidedirection : right; slideoutdirection : top; delayin : 500; durationin : 500; durationout : 1500; "></i>
        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:150px; left: 620px; slidedirection : right; slideoutdirection : bottom; delayin : 500; durationin : 1000; durationout : 1500; ">
            <a href="/novichku/zachem-ispolzovat-skeeks-cms" style="color: #ffffff; text-decoration: underline;">Новичку</a>
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:190px; left: 590px; slidedirection : right; slideoutdirection : top; delayin : 800; durationin : 500; durationout : 1500; "></i>
        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:190px; left: 620px; slidedirection : right; slideoutdirection : top; delayin : 800; durationin : 1000; durationout : 1500; ">
            <a href="/news" style="color: #ffffff; text-decoration: underline;">Новости</a>
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:230px; left: 590px; slidedirection : right; slideoutdirection : top; delayin : 1100; durationin : 500; durationout : 1500; "></i>
        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:230px; left: 620px; slidedirection : right; slideoutdirection : top; delayin : 1100; durationin : 1000; durationout : 1500; ">
            <a href="/docs" style="color: #ffffff; text-decoration: underline;">Документация</a>
        </span>

        <a class="btn-u btn-u-lg btn-u-orange ls-l-1" href="http://git.skeeks.com/skeeks/cms/tags" target="_blank" style=" padding: 9px 20px; font-size:25px; top:340px; left: 590px; slidedirection : bottom; slideoutdirection : top; durationin : 3500; durationout : 2500; delayin : 1000; ">
            <i class="fa fa-cloud-download"></i>
            Скачать CMS
        </a>
    </div>


    <!--End Third Slide-->
</div><!--/layer_slider-->
<!--=== End Slider ===-->