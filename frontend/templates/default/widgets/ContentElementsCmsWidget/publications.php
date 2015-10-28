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
<section class="slice no-padding bg-white animate-hover-slide">
    <div class="wp-section work">
        <div class="container">


            <? if ($widget->label) : ?>
                <div class="section-title-wr">
                    <h3 class="section-title left">
                        <span><?= $widget->label; ?></span>
                    </h3>
                </div>

            <? endif; ?>

            <div class="row">
                <div id="ulSorList">

            <? if ($widget->enabledPjaxPagination = \skeeks\cms\components\Cms::BOOL_Y) : ?>
                <? \skeeks\cms\modules\admin\widgets\Pjax::begin(); ?>
            <? endif; ?>

            <? echo \yii\widgets\ListView::widget([
                'dataProvider'      => $widget->dataProvider,
                'itemView'          => 'publication-item',
                'emptyText'          => '',
                'options'           =>
                [
                ],
                'itemOptions' => [
                    'class'     => 'col-lg-3 col-md-3 col-sm-6',
                    'tag'       => 'div',
                ],
                'layout'            => "\n{items}\n<p class=\"row\">{pager}</p>"
            ])?>

            <? if ($widget->enabledPjaxPagination = \skeeks\cms\components\Cms::BOOL_Y) : ?>
                <? \skeeks\cms\modules\admin\widgets\Pjax::end(); ?>
            <? endif; ?>
                </div>
            </div>
        </div>
    </div>
</section>
