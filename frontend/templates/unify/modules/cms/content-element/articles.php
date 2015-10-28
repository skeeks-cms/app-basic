<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\CmsContentElement */
?>

<?= $this->render("default", [
    "model" => $model
]); ?>
<?= \skeeks\cms\vk\comments\VkCommentsWidget::widget([
    'namespace' => 'VkCommentsWidget-main',
    'apiId'     => 4982033
]); ?>