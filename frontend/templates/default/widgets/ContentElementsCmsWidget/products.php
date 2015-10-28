<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget */
?>
<? if ($widget->label) : ?>
    <h1 class="size-17 margin-bottom-20"><?= $widget->label; ?></h1>
<? endif; ?>

<? if ($widget->enabledPjaxPagination = \skeeks\cms\components\Cms::BOOL_Y) : ?>
    <? \skeeks\cms\modules\admin\widgets\Pjax::begin(); ?>
<? endif; ?>

<? echo \yii\widgets\ListView::widget([
    'dataProvider'      => $widget->dataProvider,
    'itemView'          => 'product-item',
    'emptyText'          => '',
    'options'           =>
    [
        'class'   => 'shop-item-list row list-inline nomargin',
        'tag'   => 'ul',
    ],
    'itemOptions' => [
        'tag' => false
    ],
    'layout'            => "\n{items}{$summary}\n<p class=\"row\">{pager}</p>"
])?>

<? if ($widget->enabledPjaxPagination = \skeeks\cms\components\Cms::BOOL_Y) : ?>
    <? \skeeks\cms\modules\admin\widgets\Pjax::end(); ?>
<? endif; ?>