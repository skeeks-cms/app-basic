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
?>

<?= \Yii::$app->view->render('_header', [
    'model'     => $model,
    'personal'  => $personal,
    'title'     => 'Управление настройками',
]); ?>


<div class="tab-v1">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#profile">Личные данные</a></li>
        <li><a data-toggle="tab" href="#passwordTab">Изменение пароля</a></li>
    </ul>
    <div class="tab-content">
        <div id="profile" class="profile-edit tab-pane fade in active">

            <? $modelForm = $model; ?>
            <? $form = \skeeks\cms\base\widgets\ActiveFormAjaxSubmit::begin([
                'validationUrl' => \skeeks\cms\helpers\UrlHelper::construct('cms/user/edit-info', ['username' => $model->username])->setSystemParam(\skeeks\cms\helpers\RequestResponse::VALIDATION_AJAX_FORM_SYSTEM_NAME)->toString(),
                'action'        => \skeeks\cms\helpers\UrlHelper::construct('cms/user/edit-info', ['username' => $model->username])->toString(),

                'afterValidateCallback' => new \yii\web\JsExpression(<<<JS
    function(jForm, ajax)
    {
        var handler = new sx.classes.AjaxHandlerStandartRespose(ajax, {
            'enableBlocker' : true,
            'blockerSelector' : '#' + jForm.attr('id')
        });

        handler.bind('success', function(e, response)
        {});
    }
JS
)
            ]); ?>

                <?= $form->field($model, 'image_id')->widget(
                    \skeeks\cms\widgets\formInputs\StorageImage::className()
                ) ?>

                <?= $form->field($model, 'username')->textInput(['maxlength' => 12])->hint('Уникальное имя пользователя. Используется для авторизации, для формирования ссылки на личный кабинет.'); ?>
                <?= $form->field($model, 'name')->textInput(); ?>



                <?= $form->field($model, 'email')->textInput(); ?>
                <?= $form->field($model, 'phone')->textInput(); ?>

                <?= $form->field($model, 'gender')->radioList([
                    'men' => 'Муж',
                    'women' => 'Жен',
                ]); ?>
                <?= $form->field($model, 'city')->textInput(); ?>
                <?= $form->field($model, 'address')->textInput(); ?>
                <?= $form->field($model, 'info')->textarea(); ?>
                <?/*= $form->field($model, 'status_of_life')->textarea(); */?>

                <button class="btn btn-primary">Сохранить</button>
            <? \skeeks\cms\base\widgets\ActiveFormAjaxSubmit::end(); ?>

        </div>

        <div id="passwordTab" class="profile-edit tab-pane fade">
            <? $modelForm = new \skeeks\cms\models\forms\PasswordChangeForm(); ?>
            <? $form = \skeeks\cms\base\widgets\ActiveFormAjaxSubmit::begin([
                'validationUrl' => \skeeks\cms\helpers\UrlHelper::construct('cms/user/change-password', ['username' => $model->username])->setSystemParam(\skeeks\cms\helpers\RequestResponse::VALIDATION_AJAX_FORM_SYSTEM_NAME)->toString(),
                'action'        => \skeeks\cms\helpers\UrlHelper::construct('cms/user/change-password', ['username' => $model->username])->toString()
            ]); ?>
                <?= $form->field($modelForm, 'new_password')->passwordInput() ?>
                <?= $form->field($modelForm, 'new_password_confirm')->passwordInput() ?>
                <button class="btn btn-primary">Изменить</button>
            <? \skeeks\cms\base\widgets\ActiveFormAjaxSubmit::end(); ?>
        </div>


        <div id="settings" class="profile-edit tab-pane fade">

        </div>
    </div>
</div>

<?= $this->render('_footer'); ?>



