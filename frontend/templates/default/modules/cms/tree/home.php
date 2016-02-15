<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (РЎРєРёРєРЎ)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\Tree */
$timestamp = \Yii::$app->assetManager->appendTimestamp;
\Yii::$app->assetManager->appendTimestamp = false;
$skinsPath = \frontend\assets\BoomerangThemeAsset::getAssetUrl("assets/layerslider/skins/");


\Yii::$app->assetManager->appendTimestamp = $timestamp;
$this->registerJs(<<<JS
	jQuery("#layerslider").layerSlider({
        pauseOnHover: true,
        autoPlayVideos: false,
        skinsPath: '{$skinsPath}',
        responsive: false,
        responsiveUnder: 1280,
        layersContainer: 1280,
        skin: 'borderlessdark3d',
        hoverPrevNext: true,
    });
JS
);
?>
<!-- Optional header components (ex: slider) -->
            <!-- Importing slider content -->
<section id="slider-wrapper" class="layer-slider-wrapper layer-slider-static">
    <div id="layerslider" style="width: 100%; height: 600px;">
        <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
            <!-- slide background -->
            <img src="<?= \frontend\assets\BoomerangThemeAsset::getAssetUrl('images/backgrounds/full-bg-19.jpg'); ?>" class="ls-bg" style="width: 100%;"  alt="Slide background"/>

            <!-- Left Text -->
            <h3 class="ls-l title title-sm strong" style="width:500px; top:25%; left:80px;" data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">Тестовый сайт</h3>
            <h3 class="ls-l subtitle strong-400" style="top:40%; left:80px;" data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">Недорого, качественно, удобно</h3>
            <p class="ls-l text-standard" style="width:500px; top:55%; left:80px;" data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:2500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
            Тут любой текст, текст о любой теме тест, тест текст, текст тест, тест текст, текст тест, тест текст, текст тест, тест текст, текст тест, тест текст, текст тест, тест текст, текст
            </p>
            <a href="<?= \skeeks\cms\models\Tree::find()->where(['code' => 'contacts', 'level' => 1])->one()->url; ?>" class="btn btn-base btn-lg ls-l" style="top:75%; left:80px;" data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:3500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;" title="Откроется страница контактов, на ней можно заполнить форму записи на прием.">Контакты</a>

        </div>
    </div>
</section>



<!-- MAIN CONTENT -->

    <section class="slice base inset-shadow-1">
        <div class="wp-section">
            <div class="section-title-wr">
                <h3 class="section-title center">
                    <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'home-title-1',
					'text'              => <<<HTML
                    <span class="c-white">О нас</span>
                    <small class="c-white">Тестовый сайт — тест, тест, тест, текст, текст, текст, текст</small>

HTML
	,
				]); ?>


                </h3>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">

                        <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'home-text-1',
					'text'              => <<<HTML
                    <p class="text-center">
                        Добро пожаловать на тестовый сайт! Наша стоматологическая клиника занимается всеми видами лечения зубов, общей и косметической стоматологией, ортодонтией, имплантацией и протезированием зубов.
Диапазон наших стоматологических услуг обширен, но базируется на сохранении естественной структуры зубов, безболезненном лечении и создании непревзойденных естественных результатов в кратчайший промежуток времени. А каждый этап лечения проводится с особой тщательностью и вниманием к деталям.

                    </p>
                     <p class="text-center">
                        <a href="/about" title="Подробнее о нас" class="btn btn-primary">Подробнее о нас</a>
                    </p>

HTML
	,
				]); ?>


                    </div>
                </div>
            </div>
        </div>
    </section>






<section class="slice bg-white">
<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
    'namespace' => 'ContentElementsCmsWidget-home',
    'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/publications',
]); ?>
</section>

<!--=== Content Part ===-->
<section class="slice no-padding">
    <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'home-map',
					'text'              => <<<HTML
                    <script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=mKvmwnHX1m5v7UeNQZp5k34sgPxhAUeU&width=100%&height=400px&lang=ru_RU&sourceType=constructor"></script>
HTML
	,
				]); ?>

</section>
