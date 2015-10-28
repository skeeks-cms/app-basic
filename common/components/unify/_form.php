<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 27.03.2015
 */
use yii\helpers\Html;
use skeeks\cms\modules\admin\widgets\form\ActiveFormUseTab as ActiveForm;

$modelClassName = $model->className();

/* @var $this yii\web\View */
/* @var $model \common\components\unify\TemplateUnify */
?>
<?php $form = ActiveForm::begin(); ?>


<?= $form->fieldSet('Основное'); ?>

    <?= $form->fieldSelect($model, 'themeColor', $modelClassName::$themes, [
        'allowDeselect' => true
    ])->hint(''); ?>

    <?= $form->fieldRadioListBoolean($model, 'boxedLayout'); ?>
    <?= $form->field($model, 'boxedBgImage')->textInput(); ?>

<?= $form->fieldSetEnd(); ?>

<?= $form->buttonsCreateOrUpdate($model); ?>
<?php ActiveForm::end(); ?>


