<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.03.2015
 */
/* @var $this yii\web\View */
/* @var $model \skeeks\cms\models\forms\SignupForm */

use yii\helpers\Html;
use skeeks\cms\base\widgets\ActiveFormAjaxSubmit as ActiveForm;
use \skeeks\cms\helpers\UrlHelper;
?>

<?= $this->render('_header', ['title' => 'Регистрация'])?>


                    <?php $form = ActiveForm::begin([
                        'validationUrl' => UrlHelper::construct('cms/auth/register')->setSystemParam(\skeeks\cms\helpers\RequestResponse::VALIDATION_AJAX_FORM_SYSTEM_NAME)->toString(),
                        'options' => [
                            'class' => 'reg-page'
                        ]
                    ]); ?>
                            <div class="reg-header">
                                <h2>Регистрация</h2>
                                <p>Вы уже зарегистрированны? <a href="<?= UrlHelper::constructCurrent()->setRoute('cms/auth/login')->toString() ;?>" class="color-green">Войти в свой аккаунт</a></p>
                            </div>
                        <?= $form->field($model, 'username') ?>
                        <?= $form->field($model, 'email') ?>
                        <?= $form->field($model, 'password')->passwordInput() ?>

                        <div class="form-group">
                            <?= Html::submitButton("<i class=\"glyphicon glyphicon-off\"></i> Зарегистрироваться", ['class' => 'btn-u', 'name' => 'login-button']) ?>
                        </div>


                        <? if (\Yii::$app->authClientCollection->clients) : ?>
                            <?= yii\authclient\widgets\AuthChoice::widget([
                                 'baseAuthUrl' => ['/cms/auth/client'],
                                 'popupMode' => true,
                            ]) ?>
                        <? endif; ?>

                    <?php ActiveForm::end(); ?>

<?= $this->render('_footer');?>
