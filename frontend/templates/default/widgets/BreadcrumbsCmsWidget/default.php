<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\breadcrumbs\BreadcrumbsCmsWidget */

?>
<? if (\Yii::$app->breadcrumbs->parts) : ?>
    <? $count = count(\Yii::$app->breadcrumbs->parts); ?>
    <? $counter = 0; ?>
    <ol class="breadcrumb pull-right">
        <? foreach (\Yii::$app->breadcrumbs->parts as $data) : ?>
            <? $counter ++; ?>
            <? if ($counter == $count): ?>
                <li class="active"><?= $data['name']; ?></li>
            <? else : ?>
                <li><a href="<?= $data['url']; ?>" title="<?= $data['name']; ?>"><?= $data['name']; ?></a></li>
            <? endif;?>
        <? endforeach; ?>
    </ol>
<? endif;?>
