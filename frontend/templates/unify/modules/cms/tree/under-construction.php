<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */

\Yii::$app->response->setStatusCode(503);
?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
]) ?>


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
            <p style="text-align: center;"><img src="/img/503/contruction.jpg" style="text-align: center; max-width: 300px;"/></p>
            <?= $model->description_full; ?>
        </div>

    </div>
</div>