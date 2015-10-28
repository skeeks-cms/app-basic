<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (ÑêèêÑ)
 * @date 06.03.2015
 */
use yii\helpers\Html;
use frontend\assets\AppAsset;
/* @var $this \yii\web\View */
/* @var $content string */
\Yii::$app->templateUnify->initTheme();
AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link rel="icon" href="/favicon.ico?v=<?= @filemtime(\Yii::getAlias('@app/web/favicon.ico'));?>"  type="image/x-icon" />
    <?php $this->head() ?>
</head>
<body class="<?= \Yii::$app->templateUnify->bodyClasses; ?>">
    <?php $this->beginBody() ?>

    <div class="wrapper">
        <?= $this->render('@template/header.php'); ?>
        <?= $content; ?>
        <?= $this->render('@template/footer.php'); ?>
    </div>

    <?= \skeeks\cms\vk\community\VkCommunityWidget::widget([
    'namespace' => 'VkCommunityWidget',
    'apiId'     => 4982033
]); ?>

    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>