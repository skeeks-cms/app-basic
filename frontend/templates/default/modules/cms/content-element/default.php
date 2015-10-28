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
<section class="slice bg-white bb">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <?= $model->description_full; ?>

                        <?/*= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                            'namespace'         => 'TreeMenuCmsWidget-sub-catalog',
                            'viewFile'          => '@template/widgets/TreeMenuCmsWidget/sub-catalog',
                            'treePid'           => $model->id,
                            'enabledRunCache'   => \skeeks\cms\components\Cms::BOOL_N,
                        ]); */?>

                    </div>
                </div>
            </div>
        </div>
</section>