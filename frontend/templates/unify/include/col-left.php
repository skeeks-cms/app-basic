<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */

$treePid = null;

if (\Yii::$app->cms->currentTree->level == 1)
{
    $treePid = \Yii::$app->cms->currentTree->id;
} else if (\Yii::$app->cms->currentTree->level == 2)
{
    $treePid = \Yii::$app->cms->currentTree->pid;
}
?>

<?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
    'namespace'         => 'TreeMenuCmsWidget-left',
    'viewFile'          => '@template/widgets/TreeMenuCmsWidget/left-menu',
    'level'             => 2,
    'treePid'           => $treePid,
    'enabledRunCache'   => \skeeks\cms\components\Cms::BOOL_N,
])?>

