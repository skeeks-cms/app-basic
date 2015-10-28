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
$class = '';
if (\Yii::$app->cms->getCurrentTree()->id == $model->id)
{
    $class = 'active';
}
?>
<li><a href="<?= $model->url; ?>" title="<?= $model->name; ?>"><?= $model->name; ?></a></li>