<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.03.2015
 */
/* @var $this yii\web\View */
/* @var $model \skeeks\cms\models\forms\PasswordResetRequestFormEmailOrLogin */

use yii\helpers\Html;
use skeeks\cms\base\widgets\ActiveFormAjaxSubmit as ActiveForm;
use \skeeks\cms\helpers\UrlHelper;
?>
<?= $this->render('_header', ['title' => 'Запрос на восстановление пароля'])?>


                    <?php $form = ActiveForm::begin([
                        'validationUrl' => UrlHelper::construct('cms/auth/forget')->setSystemParam(\skeeks\cms\helpers\RequestResponse::VALIDATION_AJAX_FORM_SYSTEM_NAME)->toString(),
                        'options' => [
                            'class' => 'reg-page'
                        ]
                    ]); ?>
                        <div class="reg-header">
                            <h2>Запрос на восстановление пароля</h2>
                        </div>


                        <?= $form->field($model, 'identifier') ?>

                        <div class="form-group">
                            <?= Html::submitButton("Отправить", ['class' => 'btn-u', 'name' => 'login-button']) ?>
                        </div>

                        <p>
                            <?= Html::a('Авторизация', UrlHelper::constructCurrent()->setRoute('cms/auth/login')->toString()) ?> |
                            <?= Html::a('Регистрация', UrlHelper::constructCurrent()->setRoute('cms/auth/register')->toString()) ?>
                        </p>

                    <?php ActiveForm::end(); ?>


<?= $this->render('_footer')?>
