<?php
use yii\helpers\Html;

use yii\widgets\ActiveForm;
/**
 * index
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 14.10.2014
 * @since 1.0.0
 */

/* @var $this yii\web\View */
/* @var $model common\models\User */
/* @var $personal bool */

$this->title = $model->getDisplayName();
\Yii::$app->breadcrumbs->createBase()->append($this->title);






?>

<?= $this->render('_header', [
    'model'     => $model,
    'personal'  => $personal,
    'title'     => 'История',
]); ?>



<ul class="timeline-v2">
    <li>
        <time class="cbp_tmtime" datetime=""><span>4/1/08</span> <span>Март</span></time>
        <i class="cbp_tmicon rounded-x hidden-xs"></i>
        <div class="cbp_tmlabel">
            <h2>Our first step</h2>
            <div class="row">
                <div class="col-md-4">
                    <img class="img-responsive" src="/unify/img/main/img18.jpg" alt="">
                    <div class="md-margin-bottom-20"></div>
                </div>
                <div class="col-md-8">
                    <p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
                    <p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
                </div>
            </div>
        </div>
    </li>
    <li>
        <time class="cbp_tmtime" datetime=""><span>7/2/09</span> <span>February</span></time>
        <i class="cbp_tmicon rounded-x hidden-xs"></i>
        <div class="cbp_tmlabel">
            <h2>First achievements</h2>
            <p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
            <div class="row">
                <div class="col-sm-6">
                    <ul class="list-unstyled">
                        <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida</li>
                        <li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
                        <li><i class="fa fa-check color-green"></i> Responsive Bootstrap Template</li>
                        <li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
                    </ul>
                </div>
                <div class="col-sm-6">
                    <ul class="list-unstyled">
                        <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida</li>
                        <li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
                        <li><i class="fa fa-check color-green"></i> Responsive Bootstrap Template</li>
                        <li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
                    </ul>
                </div>
            </div>
        </div>
    </li>
    <li>
        <time class="cbp_tmtime" datetime=""><span>28/6/12</span> <span>May</span></time>
        <i class="cbp_tmicon rounded-x hidden-xs"></i>
        <div class="cbp_tmlabel">
            <h2>Difficulties</h2>
            <p>Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jícama bell pepper carrot onion corn plantain garbanzo. Sierra leone bologi komatsuna celery peanut swiss chard silver beet squash dandelion maize chicory burdock tatsoi dulse radish wakame beetroot.</p>
        </div>
    </li>
    <li>
        <time class="cbp_tmtime" datetime=""><span>11/3/10</span> <span>March</span></time>
        <i class="cbp_tmicon rounded-x hidden-xs"></i>
        <div class="cbp_tmlabel">
            <h2>Our Popularity</h2>
            <p>Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. Lotus root burdock bell pepper chickweed shallot groundnut pea sprouts welsh onion wattle seed pea salsify turnip scallion peanut arugula bamboo shoot onion swiss chard.</p>

            <div class="margin-bottom-20"></div>

            <div class="row">
                <div class="col-sm-6">
                    <!-- Progress Bar Text -->
                    <div class="progress-bar-text">
                        <p class="text-left">HTML &amp; CSS</p>
                        <p class="text-right">91%</p>
                        <div class="progress progress-u progress-xs">
                            <div class="progress-bar progress-bar-u progress-bar-u-success" role="progressbar" aria-valuenow="91" aria-valuemin="0" aria-valuemax="100" style="width: 91%">
                            </div>
                        </div>
                    </div>
                    <!-- End Progress Bar Text -->

                    <!-- Progress Bar Text -->
                    <div class="progress-bar-text">
                        <p class="text-left">Web Animation</p>
                        <p class="text-right">55%</p>
                        <div class="progress progress-u progress-xs">
                            <div class="progress-bar progress-bar-u progress-bar-u-info" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">
                            </div>
                        </div>
                    </div>
                    <!-- End Progress Bar Text -->
                </div>

                <div class="col-sm-6">
                    <!-- Progress Bar Text -->
                    <div class="progress-bar-text">
                        <p class="text-left">Web Design</p>
                        <p class="text-right">67%</p>
                        <div class="progress progress-u progress-xs">
                            <div class="progress-bar progress-bar-u progress-bar-u-danger" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width: 67%">
                            </div>
                        </div>
                    </div>
                    <!-- End Progress Bar Text -->

                    <!-- Progress Bar Text -->
                    <div class="progress-bar-text">
                        <p class="text-left">PHP &amp; Javascript</p>
                        <p class="text-right">73%</p>
                        <div class="progress progress-u progress-xs">
                            <div class="progress-bar progress-bar-u progress-bar-u-warning" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                            </div>
                        </div>
                    </div>
                    <!-- End Progress Bar Text -->
                </div>
            </div>
        </div>
    </li>
    <li>
        <time class="cbp_tmtime" datetime=""><span>2/4/11</span> <span>April</span></time>
        <i class="cbp_tmicon rounded-x hidden-xs"></i>
        <div class="cbp_tmlabel">
            <h2>Back to the past</h2>
            <p>Peanut gourd nori welsh onion rock melon mustard jícama. Desert raisin amaranth kombu aubergine kale seakale brussels sprout pea. Black-eyed pea celtuce bamboo shoot salad kohlrabi leek squash prairie turnip catsear rock melon chard taro broccoli turnip greens. Fennel quandong potato watercress ricebean swiss chard garbanzo. Endive daikon brussels sprout lotus root silver beet epazote melon shallot.</p>
        </div>
    </li>
    <li>
        <time class="cbp_tmtime" datetime=""><span>18/7/13</span> <span>June</span></time>
        <i class="cbp_tmicon rounded-x hidden-xs"></i>
        <div class="cbp_tmlabel">
            <h2>Unify in recent years</h2>
            <p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
            <p>Bitterleaf celery coriander epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout.</p>

            <div class="margin-bottom-20"></div>

            <div class="row">
                <div class="col-md-4 col-xs-6">
                    <img class="img-responsive md-margin-bottom-10" src="assets/img/main/img3.jpg" alt="">
                </div>
                <div class="col-md-4 col-xs-6">
                    <img class="img-responsive md-margin-bottom-10" src="assets/img/main/img9.jpg" alt="">
                </div>
                <div class="col-md-4 col-xs-6">
                    <img class="img-responsive md-margin-bottom-10" src="assets/img/main/img4.jpg" alt="">
                </div>
            </div>
        </div>
    </li>
</ul>
<?/*
    $this->registerCssFile('@web/unify/css/pages/shortcode_timeline2.css', []);
*/?>

<?= $this->render('_footer'); ?>



