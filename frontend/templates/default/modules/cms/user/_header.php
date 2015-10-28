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
\Yii::$app->breadcrumbs->createBase()->append([
    'name' => $model->displayName,
    'url'  => $model->getPageUrl()
]);
?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>

<!--=== Content Part ===-->
<div class="container content profile sx-profile">
    <div class="row">
        <div class="col-md-3 md-margin-bottom-40">
            <? if ($model->image) : ?>
                <img class="img-responsive profile-img margin-bottom-20" src="<?= \skeeks\cms\helpers\Image::getSrc($model->image->src); ?>" alt="">
            <? else : ?>
                <img class="img-responsive profile-img margin-bottom-20" src="<?= \skeeks\cms\helpers\Image::getSrc(); ?>" alt="">
            <? endif; ?>

            <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">

                <li class="list-group-item <?= \Yii::$app->controller->action->id == 'view' ? "active": ""?>">
                    <a href="<?= $model->getPageUrl('view')?>"><i class="glyphicon glyphicon-calendar"></i> Профиль</a>
                </li>

                <? if (!\Yii::$app->user->isGuest && \Yii::$app->user->identity->id == $model->id) : ?>

                    <li class="list-group-item <?= \Yii::$app->controller->action->id == 'edit' ? "active": ""?>">
                        <a href="<?= $model->getPageUrl('edit')?>"><i class="fa fa-cog"></i> Настройки</a>
                    </li>

                    <li class="list-group-item">
                        <a href="<?= \skeeks\cms\helpers\UrlHelper::construct('cms/auth/logout')->setRef('/'); ?>" data-method="post"><i class="glyphicon glyphicon-off"></i> Выход</a>
                    </li>

                <? endif; ?>

            </ul>


        </div>


        <div class="col-md-9">
            <div class="profile-body">

                <?/* \skeeks\cms\modules\admin\widgets\Pjax::begin([
                    'linkSelector' => '.sx-profile a',
                    'blockContainer' => '.profile-body'
                ]); */?>


