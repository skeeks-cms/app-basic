<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
?>

<!--=== Footer Version 1 ===-->
<div class="footer-v1">
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- About -->
                <div class="col-md-3 md-margin-bottom-40">
                    <?= \skeeks\cms\cmsWidgets\sites\SitesCmsWidget::widget([
                        'namespace'      => 'SitesCmsWidget-footer-2',
                        'viewFile'       => '@template/widgets/SitesCmsWidget/footer.php',
                        'label'          => 'Основные разделы',
                    ]); ?>
                </div><!--/col-md-3-->
                <!-- End About -->

                <!-- Latest -->
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="posts">

                        <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                            'namespace'         => 'ContentElementsCmsWidget-footer',
                            'viewFile'          => '@template/widgets/ContentElementsCmsWidget/articles-footer',
                            'label'             => 'Публикации',
                            'enabledCurrentTree'=> \skeeks\cms\components\Cms::BOOL_N,
                            'limit'             => 4,
                        ])?>

                    </div>
                </div><!--/col-md-3-->
                <!-- End Latest -->

                <!-- Link List -->
                <div class="col-md-3 md-margin-bottom-40">
                    <?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                        'namespace'      => 'menu-footer-2',
                        'viewFile'       => '@template/widgets/TreeMenuCmsWidget/menu-footer.php',
                        'label'          => 'Меню',
                        'level'          => '1',
                    ]); ?>

                </div><!--/col-md-3-->
                <!-- End Link List -->

                <!-- Address -->
                <div class="col-md-3 map-img md-margin-bottom-40">
                    <div class="headline"><h2>Контакты</h2></div>

                    <address class="md-margin-bottom-40">
                        <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
                            'namespace'         => 'text-footer-address',
                            'text'              => <<<HTML
                            Москва, Зеленоград, 2005-29 <br />
                            Россия, Москва <br />
                            Телефон: (+7 495) 722 28-73 <br />
                            Email: <a href="mailto:support@skeeks.com" class="">support@skeeks.com</a>
HTML
,
                        ]); ?>
                    </address>


                    <?/*= \skeeks\cms\widgets\Infoblock::widget([
                        'id'               => 'footer-right-contacts',
                    ]); */?>


                </div><!--/col-md-3-->
                <!-- End Address -->
            </div>
        </div>
    </div><!--/footer-->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>
                        2015 &copy; Все права защищены
                        <a href="http://skeeks.com" title="Разработка сайта компания СкикС" target="_blank">SkeekS.com</a> | <a href="http://cms.skeeks.com" title="сайт работает под управлением SkeekS CMS" target="_blank">cms.SkeekS.com</a>
                    </p>
                </div>

                <!-- Social Links -->
                <div class="col-md-6">
                    <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
                            'namespace'         => 'text-footer-social',
                            'text'              => <<<HTML
                            <ul class="footer-socials list-inline">


                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                <i class="fa fa-skype"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                <i class="fa fa-pinterest"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                <i class="fa fa-dribbble"></i>
                            </a>
                        </li>


                    </ul>
HTML
,
                        ]); ?>


                </div>
                <!-- End Social Links -->
            </div>
        </div>
    </div><!--/copyright-->
</div>
<!--=== End Footer Version 1 ===-->