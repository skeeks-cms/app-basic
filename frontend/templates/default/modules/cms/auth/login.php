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

?>
<?= $this->render("_header", ['title' => 'Авторизация']); ?>
<div class="col-md-6 col-md-offset-3">

    <div class="box-static box-border-top padding-30">
        <div class="box-title margin-bottom-30">
            <h2 class="size-20">Авторизация</h2>
        </div>

        <?php $form = ActiveForm::begin([
            'validationUrl' => UrlHelper::construct('cms/auth/login')->setSystemParam(\skeeks\cms\helpers\RequestResponse::VALIDATION_AJAX_FORM_SYSTEM_NAME)->toString()
        ]); ?>
            <?= $form->field($model, 'identifier') ?>
            <?= $form->field($model, 'password')->passwordInput() ?>
            <?= $form->field($model, 'rememberMe')->checkbox() ?>

            <div class="form-group">
                <?= Html::submitButton("<i class=\"glyphicon glyphicon-off\"></i> Войти", ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
            </div>

        <?php ActiveForm::end(); ?>
        <?= Html::a('Забыли пароль?', UrlHelper::constructCurrent()->setRoute('cms/auth/forget')->toString()) ?> |
        <?= Html::a('Регистрация', UrlHelper::constructCurrent()->setRoute('cms/auth/register')->toString()) ?>
        <!--Или социальные сети
        --><?/*= yii\authclient\widgets\AuthChoice::widget([
             'baseAuthUrl' => ['site/auth']
        ]) */?>
    </div>
</div>
<?= $this->render("_footer"); ?>