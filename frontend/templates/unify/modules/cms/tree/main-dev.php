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
        'viewFile' => '@template/widgets/LayerSliderCmsWidget/dev'
    ])?>



    <!--<div class="purchase">
        <div class="container">
            <div class="row">
                <div class="col-md-9 animated fadeInLeft">
                    <span>Этот сайт посвящен SkeekS CMS.</span>
                    <p>Здесь мы публикуем последние новости, информацию об обновления, последних релизах, интересных модулях, виджетах и компонентах.</p>
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
                <div class="promo-box" style="cursor: pointer;" onclick="window.location.href='/novichku/zachem-ispolzovat-skeeks-cms'; return false;">
                    <i class="fa fa-child color-green"></i>
                    <strong>Начинающему разработчику</strong>
                    <p>Небольшой вводный курс для начинающих разработчиков, которые впервые узнали о SkeekS CMS.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="promo-box" style="cursor: pointer;" onclick="window.location.href='/docs'; return false;">
                    <i class="fa fa-info color-orange"></i>
                    <strong>Документация</strong>
                    <p>Основной раздел с документацией.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="promo-box" style="cursor: pointer;" onclick="window.location.href='http://git.skeeks.com/'; return false;">
                    <i class="fa fa-git-square color-purple"></i>
                    <strong>SkeekS GitLab</strong>
                    <p>Для своих проектов, можете использовать наш git server, бесплатно.</p>
                </div>
            </div>
        </div>
        <!-- End Promo Box -->


    </div>
<!-- End Content Part -->


