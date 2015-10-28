<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.03.2015
 */

if (!$title)
{
    if ($model)
    {
        $title = $model->name;
    }
}


?>
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left"><?= $title; ?></h1>

        <?= \skeeks\cms\cmsWidgets\breadcrumbs\BreadcrumbsCmsWidget::widget([
            'viewFile'       => '@template/widgets/BreadcrumbsCmsWidget/default',
        ]); ?>

    </div>
</div>