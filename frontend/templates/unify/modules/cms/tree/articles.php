<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */
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

            <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                'namespace'         => 'articles',
                'viewFile'          => '@template/widgets/ContentElementsCmsWidget/articles',
                'pageSize'          => 3
            ])?>
            <hr />
            <h2>Комменты VK</h2>
            <?= \skeeks\cms\vk\comments\VkCommentsWidget::widget([
                'namespace' => 'VkCommentsWidget-main',
                'apiId' => 4982033
            ]); ?>

            ----
            <h2>Комменты VK</h2>
            <?= \skeeks\cms\yandex\share\widget\YaShareWidget::widget([
                'namespace' => 'YaShareWidget-main',
            ]); ?>
        </div>

    </div>
</div>