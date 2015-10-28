<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */
?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>

<div class="container content">
    <div class="row margin-bottom-30">
        <div class="col-md-9 mb-margin-bottom-30">

            <script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=wqpmG5AZ0oKqmSBfk8NBvrMaydo8CC4c&width=&height=450"></script>

            <p><?= $model->description_full; ?></p><br>
        </div><!--/col-md-9-->

        <div class="col-md-3">
            <!-- Contacts -->
            <div class="headline"><h2>Контакты</h2></div>
            <ul class="list-unstyled who margin-bottom-30">
                <li><a href="#"><i class="fa fa-home"></i>Москва, Зеленоград, 2005-29</a></li>
                <li><a href="mailto:support@skeeks.com"><i class="fa fa-envelope"></i>support@skeeks.com</a></li>
                <li><a href="#"><i class="fa fa-phone"></i>(+7 495) 722 28-73 </a></li>
                <li><a href="http://skeeks.com"><i class="fa fa-globe"></i>http://skeeks.com</a></li>
            </ul>

            <!-- Business Hours -->
            <div class="headline"><h2>Часы работы</h2></div>
            <ul class="list-unstyled margin-bottom-30">
                <li><strong>Понедельник - пятница:</strong> с 10:00 до 18:00</li>
            </ul>


        </div><!--/col-md-3-->
    </div>

</div>