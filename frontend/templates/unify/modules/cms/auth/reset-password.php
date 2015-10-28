<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.03.2015
 */
/* @var $this yii\web\View */

use yii\helpers\Html;
use skeeks\cms\base\widgets\ActiveFormAjaxSubmit as ActiveForm;
use \skeeks\cms\helpers\UrlHelper;

?>
<!--=== Content Part ===-->
<?= $this->render('_header', ['title' => 'Получение нового пароля'])?>
        <form id="w1" class="reg-page">
            <div class="reg-header">
                <h2><?= $message; ?></h2>
            </div>
            <p>
                <?= Html::a('Запросить восстановление еще раз', UrlHelper::construct('cms/auth/forget')->setRef(UrlHelper::construct('cms/user/profile'))->toString()) ?> |
                <?= Html::a('Авторизация', UrlHelper::construct('cms/auth/login')->setRef(UrlHelper::construct('cms/user/profile'))->toString()) ?> |
                <?= Html::a('Регистрация', UrlHelper::construct('cms/auth/register')->setRef(UrlHelper::construct('cms/user/profile'))->toString()) ?>
            </p>
        </form>
<?= $this->render('_footer')?>
