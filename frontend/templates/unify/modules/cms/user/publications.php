<?php
use yii\helpers\Html;

use yii\widgets\ActiveForm;
/**
 * index
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 14.10.2014
 * @since 1.0.0
 */

/* @var $this yii\web\View */
/* @var $model common\models\User */
/* @var $personal bool */

$this->title = $model->getDisplayName();
\Yii::$app->breadcrumbs->createBase()->append($this->title);






?>

<?= $this->render('_header', [
    'model'     => $model,
    'personal'  => $personal,
    'title'     => 'Публикации пользователя',
]); ?>

<?= \skeeks\cms\widgets\Infoblock::widget([
    'id'                => 'user-paging-list',
    'name'              => 'Публикации постраничная навигация в профиле юзера',
    'protectedWidget'   => true,
    'refetch'           => true,
    'widget' => [
        'class'             => \skeeks\cms\widgets\publicationsAll\PublicationsAll::className(),
        'viewFile'          => '@app/views/widgets/publications/paging-list',
        'useCurrentTree'    => 1,
        'usePaging'         => 1,
        'createdBy'         => $model->id,
    ],
    'protectedWidgetParams'   => [
        'viewFile', 'createdBy'
    ],
]); ?>


<?/*
    $this->registerCssFile('@web/unify/css/pages/shortcode_timeline2.css', []);
*/?>

<?= $this->render('_footer'); ?>



