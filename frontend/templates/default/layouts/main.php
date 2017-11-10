<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 01.10.2015
 */
use yii\helpers\Html;
use frontend\assets\AppAsset;
/* @var $this \yii\web\View */
/* @var $content string */
AppAsset::register($this);
\Yii::$app->templateBoomerang->initTheme();
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link rel="icon" href="<?= AppAsset::getAssetUrl('favicon.ico'); ?>"  type="image/x-icon" />
    <?php $this->head() ?>
</head>
<body>
    <?php $this->beginBody() ?>

		<!-- wrapper -->
		<div class="body-wrap <?= \Yii::$app->templateBoomerang->bodyCssClasses; ?>">

            <?= $this->render('@app/views/header'); ?>
                <?= $content; ?>
            <?= $this->render('@app/views/footer'); ?>

        </div>
		<!-- /wrapper -->

    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>