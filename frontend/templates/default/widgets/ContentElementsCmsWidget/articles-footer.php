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


<!-- /Latest Blog Post -->
<h4 class="letter-spacing-1"><?= $widget->label; ?></h4>

<? echo \yii\widgets\ListView::widget([
    'dataProvider'      => $widget->dataProvider,
    'itemView'          => 'article-footer-item',
    'emptyText'          => '',
    'options'           =>
    [
        'tag'       => 'ul',
        'class'     => 'footer-posts list-unstyled',
    ],
    'itemOptions' => [
        'tag' => false
    ],
    'layout'            => "{items}"
])?>
