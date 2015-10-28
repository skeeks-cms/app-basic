<?php
/**
 * error
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 24.11.2014
 * @since 1.0.0
 */
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

$this->title = $name;
$this->registerCssFile('@web/unify/css/pages/page_404_error.css', [
    'depends' => [
        \frontend\assets\AppAsset::className()
    ]
]);
?>

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
<?/*= $this->render('@app/views/include/breadcrumbs', [
    'model' => $model
])*/?>
<div class="container content">
    <!--Error Block-->
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="error-v1">
                <span class="error-v1-title">404</span>
                <span>Ошибка!</span>
                <p><?= nl2br(Html::encode($message)) ?></p>
            </div>
        </div>
    </div>
    <!--End Error Block-->
</div>

