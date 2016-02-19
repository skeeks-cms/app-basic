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
<? if ($model->image) : ?>
    <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
        <!-- slide background -->
        <img src="<?= $model->image->src; ?>" class="ls-bg" style="width: 100%;"  alt="Slide background"/>

        <div class=" ls-l " style="width:auto; top:30px; left:0;   position:absolute;     "
            data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1000;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">

                <div class="col-xs-12 col-md-6 c-white" style="background-color: rgba(41, 82, 93, 0.7); max-height:320px; overflow:hidden; margin-left: 60px;">
                    <div class="p-30 clearfix ls-texts">
                        <h2 style="font-size:180%"><?= $model->name; ?></h2>
                        <div class=" lh-150 ls-descr-short" style="font-size:100%">
                            <?= $model->description_short; ?>
                        </div>
                        <div class=" lh-150 ls-descr-fool" style="font-size:100%">
                            <? if ($url = $model->relatedPropertiesModel->getAttribute('url')) : ?>
                                <a href="<?= $url; ?>" class="btn btn-base btn-lg ls-l" style="top:75%; left:80px; margin-top: 20px;" data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:3500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;"
                                >Подробнее</a>
                            <? endif; ?>
                        </div>
                    </div >
                </div>
            </div>




    </div>
<? endif; ?>