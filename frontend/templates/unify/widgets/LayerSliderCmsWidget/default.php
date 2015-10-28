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

    <!--Second Slide-->
    <div class="ls-slide" data-ls="slidedelay:7500; transition2d:93;">

        <img src="/img/bg/blue.jpg" class="ls-bg" alt="Slide background">

        <span class="ls-s-1" style="
            /*text-transform: uppercase;*/
            line-height: 45px;
            font-size:35px;
            color:#fff;
            text-align: center;
            top: 40px;
            left: 60px;
            slidedirection : top;
            slideoutdirection : right;
            durationin : 1500;
            durationout : 1500;
            delayin : 200;
        ">
            Хотите создать сайт?
        </span>

        <span class="ls-s-1" style="
            /*text-transform: uppercase;*/
            line-height: 45px;
            font-size:35px;
            color:#fff;
            top: 100px;
            left: 60px;
            slidedirection : bottom;
            slideoutdirection : left;
            durationin : 1500;
            durationout : 1500;
            delayin : 2000;
        ">
            Не знаете какую CMS выбрать?
        </span>

        <span class="ls-s-1" style="
            /*text-transform: uppercase;*/
            line-height: 45px;
            font-size:35px;
            color:#fff;
            top: 160px;
            left: 60px; slidedirection : bottom; slideoutdirection : left; durationin : 1500; durationout : 10500; delayin : 4000;
        ">
            Все очень просто.
        </span>

        <span class="ls-s-1" style="
            /*text-transform: uppercase;*/
            line-height: 45px;
            font-size:45px;
            color:#fff;
            top: 220px;
            left: 60px;
            slidedirection : bottom;
            slideoutdirection : left;
            durationin : 1500;
            durationout : 1500;
            delayin : 5000;
        ">
            <img src="/img/logo.png" style="margin-bottom: 5px;"/> SkeekS CMS !
        </span>


        <img src="/img/slider/cms-box.png" alt="Slider Image" class="ls-s-1" style="
        top:30px;
        left: 650px;
        slidedirection : top;
        slideoutdirection : right;
        durationin : 1500;
        durationout : 1500;
        delayin : 2000;
         ">
    </div>


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
            SkeekS CMS — Система управления сайтом
        </span>

        <img class="ls-l" src="/img/slider/site.png" style="top: 80px; left: 30%;" data-ls="offsetxin:left; durationin:1500; delayin:900; fadein:false; offsetxout:left; durationout:1000; fadeout:false;" alt="">


        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:150px; left: 590px; slidedirection : right; slideoutdirection : top; delayin : 2500; durationin : 500; durationout : 1500; "></i>
        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:150px; left: 620px; slidedirection : right; slideoutdirection : bottom; delayin : 2500; durationin : 1000; durationout : 1500; ">
            Быстро
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:190px; left: 590px; slidedirection : right; slideoutdirection : top; delayin : 2800; durationin : 500; durationout : 1500; "></i>
        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:190px; left: 620px; slidedirection : right; slideoutdirection : top; delayin : 2800; durationin : 1000; durationout : 1500; ">
            Просто
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:230px; left: 590px; slidedirection : right; slideoutdirection : top; delayin : 3100; durationin : 500; durationout : 1500; "></i>
        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:230px; left: 620px; slidedirection : right; slideoutdirection : top; delayin : 3100; durationin : 1000; durationout : 1500; ">
            Эффективно
        </span>

        <a class="btn-u btn-u-lg btn-u-orange ls-l-1" href="http://git.skeeks.com/skeeks/cms/tags" target="_blank" style=" padding: 9px 20px; font-size:25px; top:340px; left: 590px; slidedirection : bottom; slideoutdirection : top; durationin : 3500; durationout : 2500; delayin : 1000; ">
            <i class="fa fa-cloud-download"></i>
            Скачать CMS
        </a>
    </div>


    <!--Third Slide-->
    <div class="ls-slide" style="slidedirection: right; slidedelay:6500; transition2d: 92,93,105; ">
        <img src="/img/bg/red.jpg" class="ls-bg" alt="Slide background">

        <span class="ls-s-1" style="
            /*text-transform: uppercase;*/
            line-height: 45px;
            font-size:35px;
            color:#fff;
            top: 40px;
            left: 40px;
            slidedirection : top;
            slideoutdirection : right;
            durationin : 500;
            durationout : 500;
        ">
            Преимущества SkeekS CMS
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:120px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 1500; durationout : 500; "></i>

        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:120px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 1500; durationout : 500; ">
            Ядро системы разрабатывают тысячи разработчиков
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:170px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 2500; durationout : 1500; "></i>

        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:170px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 2500; durationout : 1500; ">
            Скорость разработки впечатляет
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:220px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 3500; durationout : 3500; "></i>

        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:220px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 3500; durationout : 2500; ">
            Скорость работы сайта впечатляет еще больше
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:270px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 4500; durationout : 3500; "></i>

        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:270px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 4500; durationout : 3500; ">
            1000+ готовых модулей, виджетов, компонентов
        </span>

        <i class="fa fa-chevron-circle-right ls-s-1" style=" color: #fff; font-size: 24px; top:320px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 5500; durationout : 4500; "></i>

        <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:320px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 5500; durationout : 4500; ">
            Позволяет разрабатывать любые web проекты
        </span>

        <img src="/img/slider/build-site.png" alt="Slider Image" class="ls-s-1" style=" top:30px; left: 670px; slidedirection : right; slideoutdirection : bottom; durationin : 3000; durationout : 3000; ">
    </div>
    <!--End Third Slide-->
</div><!--/layer_slider-->
<!--=== End Slider ===-->