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
<div class="side-nav-head">
    <button class="fa fa-bars"></button>
    <h4><?= $widget->label; ?></h4>
</div>

<? if ($models = $widget->activeQuery->all()) : ?>
<ul class="list-group list-group-bordered list-group-noicon uppercase">
    <? foreach ($models as $model) : ?>
        <?= $this->render("_one-left", [
            "widget"        => $widget,
            "model"         => $model,
        ]); ?>
    <? endforeach; ?>
    </ul>
<? endif; ?>
