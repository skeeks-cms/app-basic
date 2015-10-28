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

<?= $this->render('_header', ['title' => 'Авторизация'])?>

    <?php $form = ActiveForm::begin([
        'validationUrl' => UrlHelper::construct('cms/auth/login')->setSystemParam(\skeeks\cms\helpers\RequestResponse::VALIDATION_AJAX_FORM_SYSTEM_NAME)->toString(),
        'options' => [
            'class' => 'reg-page'
        ]
    ]); ?>
        <div class="reg-header">
            <h2>Авторизация</h2>
            <p>У вас нет аккаунта? <a href="<?= UrlHelper::constructCurrent()->setRoute('cms/auth/register')->toString() ;?>" class="color-green">Зарегистрироваться</a></p>
        </div>

        <?= $form->field($model, 'identifier') ?>
        <?= $form->field($model, 'password')->passwordInput() ?>

        <div class="row">
            <div class="col-md-6 checkbox">
                <?= $form->field($model, 'rememberMe')->checkbox() ?>
            </div>
            <div class="col-md-6">
                <button class="btn-u pull-right" type="submit"><i class="glyphicon glyphicon-off"></i> Войти</button>
            </div>
        </div>




        <h4>Забыли пароль?</h4>
        <p><a class="color-green" href="<?= UrlHelper::constructCurrent()->setRoute('cms/auth/forget')->toString(); ?>">Кликните сюда</a> чтобы запросить восстановление пароля.</p>

        <? if (\Yii::$app->authClientCollection->clients) : ?>
            <?= yii\authclient\widgets\AuthChoice::widget([
                 'baseAuthUrl' => ['/cms/auth/client'],
                 'popupMode' => true,
            ]) ?>
        <? endif; ?>

<?php ActiveForm::end(); ?>

<?= $this->render('_footer')?>

