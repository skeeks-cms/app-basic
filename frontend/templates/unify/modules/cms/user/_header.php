<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.03.2015
 */
/* @var $this yii\web\View */
/* @var $model \common\models\User */

use yii\helpers\Html;
use skeeks\cms\base\widgets\ActiveFormAjaxSubmit as ActiveForm;
use \skeeks\cms\helpers\UrlHelper;

$this->title = $model->getDisplayName() . ' / ' . $title;
\Yii::$app->breadcrumbs->createBase()->append($this->title);

\frontend\assets\UserProfileAsset::register($this);

$this->registerJs(<<<JS

(function(sx, $, _)
{
    sx.createNamespace('classes.userProfile', sx);

    sx.classes.userProfile.Calendar = sx.classes.Component.extend({
        _onDomReady: function()
        {
            Datepicker.initDatepicker();
        }
    });

    sx.classes.userProfile.Counter = sx.classes.Component.extend({
        _onDomReady: function()
        {
            jQuery('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        }
    });

    sx.classes.userProfile.ScrollBar = sx.classes.Component.extend({
        _onDomReady: function()
        {
            jQuery('.mCustomScrollbar').mCustomScrollbar({
                theme:"minimal",
                scrollInertia: 300,
                scrollEasing: "linear"
            });
        }
    });


    sx.classes.userProfile.Menu = sx.classes.Component.extend({
        _onDomReady: function()
        {
            var self = this;
            $('.list-group-item').on('click', function()
            {
                self.inactiveAll();
                $(this).addClass('active');
            });
        },

        inactiveAll: function()
        {
            $('.list-group-item').each(function()
            {
                $(this).removeClass('active');
            });
        }
    });

    sx.classes.UserProfile = sx.classes.Component.extend({

        _init: function()
        {
            this.Calendar = new sx.classes.userProfile.Calendar();
            this.Menu = new sx.classes.userProfile.Menu();
            this.Counter = new sx.classes.userProfile.Counter();
            this.ScrollBar = new sx.classes.userProfile.ScrollBar();
        },

        _onDomReady: function()
        {

        },

        _onWindowReady: function()
        {}
    });

    sx.UserProfile = new sx.classes.UserProfile();
})(sx, sx.$, sx._);
JS
);

?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>

<!--=== Content Part ===-->
<div class="container content profile sx-profile">
    <div class="row">
        <div class="col-md-3 md-margin-bottom-40">
            <img class="img-responsive profile-img margin-bottom-20" src="<?= \skeeks\cms\helpers\Image::getSrc($model->getMainImageSrc()); ?>" alt="">

            <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                <!--<li class="list-group-item">
                    <a href="<?/*= $model->getPageUrl()*/?>"><i class="fa fa-user"></i> Профиль</a>
                </li>-->

               <!-- <li class="list-group-item <?/*= \Yii::$app->controller->action->id == 'conference' ? "active": ""*/?>">
                    <a href="<?/*= $model->getPageUrl('conference')*/?>" data-pjax="0"><i class="glyphicon glyphicon-list"></i> Конференции</a>
                </li>

                <li class="list-group-item <?/*= \Yii::$app->controller->action->id == 'create-conference' ? "active": ""*/?>">
                    <a href="<?/*= $model->getPageUrl('create-conference')*/?>" data-pjax="0"><i class="glyphicon glyphicon-fire"></i> Записаться</a>
                </li>-->

                <!--<li class="list-group-item">
                    <a href="<?/*= $model->getPageUrl('history')*/?>"><i class="fa fa-history"></i> История</a>
                </li>

                <li class="list-group-item">
                    <a href="<?/*= $model->getPageUrl('publications')*/?>"><i class="fa fa-cubes"></i> Публикации</a>
                </li>

                <li class="list-group-item">
                    <a href="<?/*= $model->getPageUrl('overall')*/?>"><i class="fa fa-bar-chart-o"></i> Общая информация</a>
                </li>-->
<!--
                <li class="list-group-item">
                    <a href="page_profile_users.html"><i class="fa fa-group"></i> Users</a>
                </li>
                <li class="list-group-item">
                    <a href="page_profile_projects.html"><i class="fa fa-cubes"></i> My Projects</a>
                </li>
                <li class="list-group-item">
                    <a href="page_profile_comments.html"><i class="fa fa-comments"></i> Comments</a>
                </li>
                <li class="list-group-item">
                    <a href="page_profile_history.html"><i class="fa fa-history"></i> History</a>
                </li>-->
                <li class="list-group-item <?= \Yii::$app->controller->action->id == 'view' ? "active": ""?>">
                    <a href="<?= $model->getPageUrl('view')?>"><i class="glyphicon glyphicon-calendar"></i> Профиль</a>
                </li>

                <li class="list-group-item <?= \Yii::$app->controller->action->id == 'edit' ? "active": ""?>">
                    <a href="<?= $model->getPageUrl('edit')?>"><i class="fa fa-cog"></i> Настройки</a>
                </li>

                <? if (\Yii::$app->user->can('conference-bookings')) : ?>
                    <li class="list-group-item <?= \Yii::$app->controller->action->id == 'conference-bookings' ? "active": ""?>">
                        <a href="<?= $model->getPageUrl('conference-bookings')?>"><i class="glyphicon glyphicon-calendar"></i> Расписание госпиталей</a>
                    </li>
                <? endif; ?>


                <li class="list-group-item">
                    <a href="<?= \skeeks\cms\helpers\UrlHelper::construct('cms/auth/logout')->setRef('/'); ?>" data-method="post"><i class="glyphicon glyphicon-off"></i> Выход</a>
                </li>


            </ul>


        </div>


        <div class="col-md-9">
            <div class="profile-body">

                <?/* \skeeks\cms\modules\admin\widgets\Pjax::begin([
                    'linkSelector' => '.sx-profile a',
                    'blockContainer' => '.profile-body'
                ]); */?>


