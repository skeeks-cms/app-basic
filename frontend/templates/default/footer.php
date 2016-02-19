<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
?>
<!-- FOOTER -->
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="col">
					<?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'text-footer-left',
					'text'              => <<<HTML
					<h4>Контакты</h4>
				   <ul>
						<li>г . Москва, ул . Вятская д. 27 стр . 4 (м. Савеловская)</li>
						<li>Телефон: <a href="tel:8 (915) 337-08-90">8 (915) 337-08-90</a></li>
						<li>Email: <a href="mailto:adria@mail.ru" title="adria@mail.ru">adria@mail.ru</a></li>
						<li><hr /></li>
						<li><a href="/contacts" title="Все контакты" class="btn btn-primary">Все контакты + карта</a></li>
					</ul>
HTML
	,
				]); ?>


				 </div>
			</div>

			<div class="col-md-3">
				<div class="col">
					<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
						'namespace'         => 'ContentElementsCmsWidget-footer',
						'viewFile'          => '@template/widgets/ContentElementsCmsWidget/articles-footer',
						'label'             => 'Новости и статьи',
						'enabledCurrentTree'=> \skeeks\cms\components\Cms::BOOL_N,
						'limit'             => 4,
					]); ?>

				</div>
			</div>

			<div class="col-md-3">
				<div class="col col-social-icons">
					<?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
						'namespace'      => 'menu-footer-2',
						'viewFile'       => '@template/widgets/TreeMenuCmsWidget/menu-footer.php',
						'label'          => 'Меню',
						'level'          => '1',
					]); ?>


				</div>
			</div>

			 <div class="col-md-3">
				<div class="col">
					<?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
					'namespace'         => 'text-footer-bout-us',
					'text'              => <<<HTML
					<h4>О нас</h4>
					<p class="no-margin">
					Стоматологическая клиника «АДРИА» занимается медецинской деятельностью порядка 16 лет. За это время мы накопили колоссальный опыт, позволяющий нашим пациентам чувствовать себя спокойно и уверенно.
					<br><br>
					</p>
HTML
	,
				]); ?>


				</div>
			</div>
		</div>

		<hr>

		<div class="row">
			<div class="col-lg-8 copyright">
				2015 © Все права защищены, SkeekS CMS — система управления сайтом.
			</div>
			<div class="col-lg-4">
				<div class=" pull-right">
					<a href="http://skeeks.com" title="Разработка сайта — SkeekS" target="_blank">Разработка сайта — SkeekS</a> (<a href="http://cms.skeeks.com" title="Система управления сайтом yii2 cms — SkeekS" target="_blank">Yii2 CMS SkeekS</a>)
				</div>
			</div>
		</div>
	</div>
</footer>


<a id="fca_phone_div" href="#callback" class="fca-phone fca-green fca-show fca-static sx-fancybox" style="right: 50px; bottom: 100px; display: block;">
	<div class="fca-ph-circle"></div>
	<div class="fca-ph-circle-fill"></div>
	<div class="fca-ph-img-circle"></div>
</a>
<div style="display: none;">
	<div id="callback" style="width: 600px;">
		<h2>Обратный звонок</h2>
		<p>Оставьте ваш номер телефона и мы вам перезвоним.</p>
		<?= \skeeks\modules\cms\form2\cmsWidgets\form2\FormWidget::widget([
			'namespace' => 'FormWidget-all',
			'form_code' => 'callback',
			'viewFile' => 'whith-messages',
		])?>
	</div>
</div>