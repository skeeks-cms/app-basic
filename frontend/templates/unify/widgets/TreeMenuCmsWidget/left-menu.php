<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget */
/* @var $models  \skeeks\cms\models\Tree[] */
?>
<? if ($models = $widget->activeQuery->all()) : ?>
<ul class="nav nav-pills nav-stacked">
    <? foreach ($models as $model) : ?>
        <?= $this->render("_one", [
            "widget"        => $widget,
            "model"         => $model,
        ]); ?>
    <? endforeach; ?>
    </ul>
<? endif; ?>
