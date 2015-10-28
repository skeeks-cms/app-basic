<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 01.10.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */
$this->registerCss(<<<CSS
canvas {
	width: auto  !important;
	/* max-width: 800px; causes panorama gmap problems */
	height: auto !important;
}
CSS
);

?>
<?= $this->render('@app/views/include/breadcrumbs', [
    'model' => $model
])?>

<!--=== Content Part ===-->
<section class="slice no-padding">
    <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'contacts-map',
					'text'              => <<<HTML
                    <script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=mKvmwnHX1m5v7UeNQZp5k34sgPxhAUeU&width=100%&height=400px&lang=ru_RU&sourceType=constructor"></script>
HTML
	,
				]); ?>

</section>
<section class="slice bg-white">
    <div class="w-section inverse">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="section-title-wr">
                        <h3 class="section-title left"><span><?= $model->name; ?></span></h3>
                    </div>
                    <p>
                        <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'contacts-text-1',
					'text'              => <<<HTML
					Для записи на прием или для уточнения, интересующей вас информации, можете обработиться к нам, заполнив форму ниже.
HTML
	,
				]); ?>


                    </p>

                    <?= \skeeks\modules\cms\form2\cmsWidgets\form2\FormWidget::widget([
                        'form_code' => 'feedback'
                    ]); ?>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'contacts-text-left',
					'text'              => <<<HTML

					<div class="section-title-wr">
                        <h3 class="section-title left"><span>Адрес</span></h3>
                    </div>
                    <div class="contact-info">
                        <h5><i class="fa fa-map-marker"></i> Адрес</h5>
                        <p>г . Москва, ул . Вятская д. 27 стр . 4 (м. Савеловская)</p>

                        <h5><i class="fa fa-envelope"></i> Email</h5>
                        <p><a href="mailto:adria@mail.ru" title="adria@mail.ru">adria@mail.ru</a></p>

                        <h5><i class="fa fa-phone"></i> Телефон</h5>
                        <p><a href="tel:8 (915) 337-08-90">8 (915) 337-08-90</a></p>
                    </div>

HTML
	,
				]); ?>


                        </div>
                        <div class="col-md-6">

                            <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'contacts-text-right',
					'text'              => <<<HTML

					<div class="section-title-wr">
                        <h3 class="section-title left"><span>Время работы</span></h3>
                    </div>
                    <div class="contact-info">
                        <h5><i class="fa fa-check"></i> Понедельник —  Пятница</h5>
                        <p>8:00 – 20:00</p>

                        <h5><i class="fa fa-check"></i> Суббота</h5>
                        <p>9:00 – 19:00</p>

                        <h5><i class="fa fa-times"></i> Воскресенье</h5>
                        <p>Выходной</p>
                    </div>

HTML
	,
				]); ?>


                        </div>
                    </div>

                    <!--<div class="section-title-wr">
                        <h3 class="section-title left"><span>Stay connected</span></h3>
                    </div>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur acing elit. Aenean esrsel piesn qersl ioinm sersoe non urna dolor aecena.
                    </p>
                    <div class="social-media">
                        <a href="#"><i class="fa fa-facebook facebook"></i></a>
                        <a href="#"><i class="fa fa-google-plus google"></i></a>
                        <a href="#"><i class="fa fa-twitter twitter"></i></a>
                    </div>-->
                </div>
            </div>
        </div>
    </div>
</section>