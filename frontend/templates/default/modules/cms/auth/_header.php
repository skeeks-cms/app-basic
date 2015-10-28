<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.03.2015
 */
/* @var $this yii\web\View */
/* @var $model \skeeks\cms\models\forms\LoginFormUsernameOrEmail */

use yii\helpers\Html;
use skeeks\cms\base\widgets\ActiveFormAjaxSubmit as ActiveForm;
use \skeeks\cms\helpers\UrlHelper;

$this->title = $title;
\Yii::$app->breadcrumbs->createBase()->append($this->title);

\yii\authclient\widgets\AuthChoiceAsset::register($this);

$this->registerCss(<<<CSS
    div.auth-clients
    {
          border-top: solid 1px #eee;
          margin: 0;
          padding: 0;
          text-align: center;
          padding-top: 10px;
    }

    ul.auth-clients
    {
          margin-bottom: 0;
          padding-bottom: 0;
    }

CSS
);

?>

<?= $this->render('@template/include/breadcrumbs', [
    'title' => $this->title
])?>

<? \skeeks\cms\modules\admin\widgets\Pjax::begin(); ?>

<!-- -->
<section>
    <div class="container">
        <div class="row">