<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\sites\SitesCmsWidget */
/* @var $models  \skeeks\cms\models\CmsSite[] */
?>
<? if ($models = $widget->activeQuery->all()) : ?>
    <div class="headline"><h2><?= $widget->label; ?></h2></div>
    <ul class="list-unstyled link-list">
        <? foreach ($models as $model) : ?>
            <?= $this->render("_one-footer", [
                "widget"        => $widget,
                "model"         => $model,
            ]); ?>
        <? endforeach; ?>
    </ul>
<? endif; ?>