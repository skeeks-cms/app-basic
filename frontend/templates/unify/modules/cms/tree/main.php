<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\Tree */

?>

<!--=== Content Part ===-->


    <?= \frontend\widgets\LayerSliderCmsWidget::widget([
        'viewFile' => '@template/widgets/LayerSliderCmsWidget/default'
    ])?>



    <!--<div class="purchase">
        <div class="container">
            <div class="row">
                <div class="col-md-9 animated fadeInLeft">
                    <span>Этот сайт посвящен SkeekS CMS.</span>
                    <p>Здесь мы публикуем последние новости, информацию об обновления, последних релизах, интересных модулях, виджетах и компонентах.</p>
                    <p>Помимо этого проект лежит тут: <a href="http://git.skeeks.com/skeeks/cms/" target="_blank" title="Ссылка откроется в новой вкладке.">git.SkeekS.com</a></p>
                    <p>Самые свежия изменения по CMS тут: <a href="http://git.skeeks.com/skeeks/cms/blob/master/CHANGELOG.md" target="_blank" title="Ссылка откроется в новой вкладке.">git.SkeekS.com/skeeks/cms/blob/master/CHANGELOG.md</a></p>
                </div>
                <div class="col-md-3 btn-buy animated fadeInRight">
                    <a href="http://git.skeeks.com/skeeks/cms/tags" class="btn-u btn-u-lg" target="_blank"><i class="fa fa-cloud-download"></i> Скачать CMS</a>
                </div>
            </div>
        </div>
    </div>-->


    <div class="container content">
        <!--Title Box-->
        <div class="title-box">
            <div class="title-box-text">Создавайте <span class="color-green">эффективные</span> сайты с нами.</div>
            <p>Мы создаем эффективные сайты, которые продают, рекламируют, доносят информацию, привлекают клиентов, одним словом выполняют задачу, для которой предназначены.</p>
        </div>
        <!-- End Promo Box&nbsp;-->


        <!-- Promo Box -->
        <div class="row">
            <div class="col-md-4">
                <div class="promo-box" style="cursor: pointer;" onclick="window.location.href='/informatsiya/o-produkte'; return false;">
                    <i class="fa fa-bullhorn color-green"></i>
                    <strong>Клиентам</strong>
                    <p>Узнайте больше о SkeekS CMS, посмотрите ее возможности, видео и обзоры. Узнайте почему стоит использовать ее для своего сайта.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="promo-box" style="cursor: pointer;" onclick="window.location.href='http://partners.cms.skeeks.com/'; return false;">
                    <i class="fa fa-users color-orange"></i>
                    <strong>Партнерам</strong>
                    <p>Становитесь нашими партнерами, помогайте развивать продукт и зарабатывайте вместе с нами.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="promo-box" style="cursor: pointer;" onclick="window.location.href='http://dev.cms.skeeks.com/'; return false;">
                    <i class="fa fa-file-code-o color-purple"></i>
                    <strong>Разработчикам</strong>
                    <p>Читайте документацию, задавайте вопросы, общайтесь с другими разработчиками, следите за обновленями, и свежими релизами SkeekS CMS.</p>
                </div>
            </div>
        </div>
        <!-- End Promo Box -->

        <?= \frontend\widgets\ClientsCarouselCmsWidget::widget([
            'viewFile' => '@template/widgets/ClientsCarouselCmsWidget/default'
        ])?>





    </div>
<!-- End Content Part -->

<!--=== Parallax Counter v3 ===-->
    <div class="parallax-counter-v3 parallaxBg">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-6 md-margin-bottom-50">
                    <div class="features">
                        <span class="counter">5867</span>
                        <span class="features-info">Клиентов</span>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6 md-margin-bottom-50">
                    <div class="features">
                        <span class="counter">7169</span>
                        <span class="features-info">Проектов</span>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="features">
                        <span class="counter">1000</span>
                        <span class="features-info">Модулей</span>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="features">
                        <span class="counter">200</span>
                        <span class="features-info">Партнеров</span>
                    </div>
                </div>
            </div>
        </div><!--/end container-->
    </div>
    <!--=== End Parallax Counter v3 ===-->

    <!--=== Parallax Counter v4 ===-->
    <!--<div class="parallax-counter-v4 parallaxBg">
        <div class="container content-sm">
            <div class="row">
                <div class="col-md-3 col-xs-6 md-margin-bottom-50">
                    <i class="icon-cup"></i>
                    <span class="counter">265</span>
                    <h4>Coffee's Drunk</h4>
                </div>
                <div class="col-md-3 col-xs-6 md-margin-bottom-50">
                    <i class="icon-clock"></i>
                    <span class="counter">5957</span>
                    <h4>Working Hours</h4>
                </div>
                <div class="col-md-3 col-xs-6">
                    <i class="icon-emoticon-smile"></i>
                    <span class="counter">3495</span>
                    <h4>Happy Clients</h4>
                </div>
                <div class="col-md-3 col-xs-6">
                    <i class="icon-bulb"></i>
                    <span class="counter">576</span>
                    <h4>New Ideas</h4>
                </div>
            </div><!--/end row
        </div><!--/end container
    </div>-->
    <!--=== End Parallax Counter v4 ===-->

