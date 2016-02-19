<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (РЎРєРёРєРЎ)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\Tree */

?>

<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
    'namespace' => 'ContentElementsCmsWidget-home-slides',
    'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/slides',
]); ?>




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

<section class="slice bg-white">
    <div class="container">
        <div class="row">
            <?= $model->description_full; ?>
        </div>
    </div>

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
