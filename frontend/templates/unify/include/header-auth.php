<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.03.2015
 */
/* @var $this \yii\web\View */
?>
<ul class="list-inline top-v1-data">
<? if (\Yii::$app->user->isGuest) : ?>
    <li><a href="<?= \skeeks\cms\helpers\UrlHelper::construct('cms/auth/login')->setCurrentRef(); ?>"><i class="fa fa-user"></i> Авторизация / Регистрация</a></li>
<? else : ?>
    <li><a href="<?= \Yii::$app->cms->getAuthUser()->getPageUrl(); ?>"><i class="fa fa-user"></i> <?= \Yii::$app->cms->getAuthUser()->getDisplayName(); ?></a></li>
    <li><a href="<?= \skeeks\cms\helpers\UrlHelper::construct('cms/auth/logout')->setCurrentRef(); ?>" data-method="post"><span class="glyphicon glyphicon-off"></span> Выход</a></li>
<? endif; ?>
</ul>
