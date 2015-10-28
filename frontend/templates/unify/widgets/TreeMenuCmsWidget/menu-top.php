<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget */
/* @var $trees  \skeeks\cms\models\Tree[] */
?>
<ul class="nav navbar-nav">
    <? if (\Yii::$app->cms->currentTree && \Yii::$app->cms->currentTree->level == 0): ?>
        <li class="active"><a href="/" title="Перейти на главную страницу"><i class="fa fa-home"></i></a></li>
    <? else: ?>
        <li><a href="/" title="Перейти на главную страницу"><i class="fa fa-home"></i></a></li>
    <? endif; ?>

<? if ($trees = $widget->activeQuery->all()) : ?>
    <? foreach ($trees as $tree) : ?>
        <?= $this->render("_one", [
            "widget"        => $widget,
            "model"         => $tree,
        ]); ?>
    <? endforeach; ?>
<? endif; ?>
</ul>
