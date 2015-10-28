<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\CmsContentElement $model */
?>
<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>

<!--=== Content Part ===-->
<div class="container content">
    <div class="row magazine-page">
        <? $colLeft = trim($this->render('@template/include/col-left.php')); ?>
        <? if ($colLeft) : ?>
            <div class="col-md-3">
                <?= $colLeft; ?>
            </div>
        <? endif; ?>

        <div class="<?= $colLeft ? "col-md-9" : "col-md-12"; ?> sx-content">
            <?= $model->description_full; ?>
            <?= \skeeks\cms\reviews2\widgets\reviews2\Reviews2Widget::widget([
                'namespace'                 => 'Reviews2Widget',
                'cmsContentElement'         => $model
            ]); ?>
        </div>
    </div>
</div>