<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 *
 * @var \skeeks\cms\models\CmsContentElement $model
 *
 */
?>

<div class="wp-block inverse">
    <div class="figure">
        <img alt="" src="<?= $model->image->src; ?>" class="img-responsive">
        <div class="figcaption bg-base"></div>
        <div class="figcaption-btn">
            <a class="btn btn-lg btn-b-white" href="<?= $model->url; ?>" title="<?= $model->name; ?>" data-pjax="0">Подробнее</a>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-9">
            <h2><a href="<?= $model->url; ?>" title="<?= $model->name; ?>" data-pjax="0"><?= $model->name; ?></a></h2>
        </div>
        <div class="col-xs-3">
            <!--<div class="like-button">
                <span class="button">
                    <i class="fa fa-heart"></i>
                </span>
                <span class="count"><small>123</small></span>
            </div>
        </div>-->
        </div>
    </div>
</div>
