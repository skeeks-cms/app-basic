<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget */
/* @var $model   \skeeks\cms\models\Tree */
$hasChildrens = $model->children;

$class = '';
if (\Yii::$app->cms->getCurrentTree()->id == $model->id)
{
    $class = 'active';
}
?>
<li class="<?= $hasChildrens ? $class . " dropdown" : $class?>">
    <? if ($hasChildrens) : ?>
        <a href="<?= $model->url; ?>" title="<?= $model->name; ?>" class="dropdown-toggle" data-toggle="dropdown"><?= $model->name; ?></a>
            <ul class="dropdown-menu">
        <? foreach($model->getChildren()
                       ->andWhere(['active' => $widget->active])
                       ->orderBy([$widget->orderBy => $widget->order])
                       ->all() as $childTree) : ?>
                <li class=" " >
                    <a href="<?= $childTree->url; ?>" title="<?= $childTree->name; ?>"><span class="menu-title"><?= $childTree->name; ?></span></a>
                </li>
        <? endforeach; ?>
            </ul>
    <? else: ?>
        <a href="<?= $model->url; ?>" title="<?= $model->name; ?>"><?= $model->name; ?></a>
    <? endif; ?>
</li>