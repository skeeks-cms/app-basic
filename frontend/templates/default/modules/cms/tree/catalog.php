<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */

$catalogHelper = \common\helpers\CatalogTreeHelper::instance($model);
?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>


<!-- Product page -->
<section>
    <div class="container">
        <div class="row">

            <div class="col-lg-9 col-md-9 col-sm-9 col-lg-push-3 col-md-push-3 col-sm-push-3">

                <div class="row">
                    <?= $model->description_full; ?>

                    <? if ($catalogHelper->viewType == \common\helpers\CatalogTreeHelper::VIEW_TREE) : ?>
                        <?= trim(\skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                            'namespace'         => 'TreeMenuCmsWidget-sub-catalog',
                            'viewFile'          => '@template/widgets/TreeMenuCmsWidget/sub-catalog',
                            'treePid'           => $model->id,
                            'enabledRunCache'   => \skeeks\cms\components\Cms::BOOL_N,
                        ])); ?>
                    <? else : ?>
                        <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                            'namespace' => 'ContentElementsCmsWidget-second',
                            'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/products',
                        ]); ?>
                    <? endif; ?>
                </div>

            </div>

            <!-- LEFT -->
            <div class="col-lg-3 col-md-3 col-sm-3 col-lg-pull-9 col-md-pull-9 col-sm-pull-9">

                <!-- CATEGORIES -->
                <div class="side-nav margin-bottom-60">


                    <?= trim(\skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                        'namespace'         => 'TreeMenuCmsWidget-leftmenu',
                        'viewFile'          => '@template/widgets/TreeMenuCmsWidget/left-menu',
                        'treePid'           => $model->id,
                        'enabledRunCache'   => \skeeks\cms\components\Cms::BOOL_N,
                        'label'             => 'Каталог',
                    ])); ?>

                </div>
                <!-- /CATEGORIES -->
            </div>

        </div>
    </div>
</section>

