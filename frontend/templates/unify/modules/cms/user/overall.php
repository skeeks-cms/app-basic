
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
    'title'     => 'Общая информация',
]); ?>


<div class="row margin-bottom-10">
    <div class="col-sm-6 sm-margin-bottom-20">
        <div class="service-block-v3 service-block-u">
            <i class="icon-users"></i>
            <span class="service-heading">Overall Visits</span>
            <span class="counter">52,147</span>

            <div class="clearfix margin-bottom-10"></div>

            <div class="row margin-bottom-20">
                <div class="col-xs-6 service-in">
                    <small>Last Week</small>
                    <h4 class="counter">1,385</h4>
                </div>
                <div class="col-xs-6 text-right service-in">
                    <small>Last Month</small>
                    <h4 class="counter">6,048</h4>
                </div>
            </div>
            <div class="statistics">
            <h3 class="heading-xs">Statistics in Progress Bar <span class="pull-right">67%</span></h3>
                <div class="progress progress-u progress-xxs">
                    <div style="width: 67%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="67" role="progressbar" class="progress-bar progress-bar-light">
                    </div>
                </div>
                <small>11% less <strong>than last month</strong></small>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="service-block-v3 service-block-blue">
            <i class="icon-screen-desktop"></i>
            <span class="service-heading">Overall Page Views</span>
            <span class="counter">324,056</span>

            <div class="clearfix margin-bottom-10"></div>

            <div class="row margin-bottom-20">
                <div class="col-xs-6 service-in">
                    <small>Last Week</small>
                    <h4 class="counter">26,904</h4>
                </div>
                <div class="col-xs-6 text-right service-in">
                    <small>Last Month</small>
                    <h4 class="counter">124,766</h4>
                </div>
            </div>
            <div class="statistics">
            <h3 class="heading-xs">Statistics in Progress Bar <span class="pull-right">89%</span></h3>
                <div class="progress progress-u progress-xxs">
                    <div style="width: 89%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="89" role="progressbar" class="progress-bar progress-bar-light">
                    </div>
                </div>
                <small>15% higher <strong>than last month</strong></small>
            </div>
        </div>
    </div>
</div>

<hr />

<div class="row margin-bottom-20">
    <!--Profile Post-->
    <div class="col-sm-6">
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
                <h2 class="panel-title heading-sm pull-left"><i class="fa fa-pencil"></i>Notes</h2>
                <a href="#"><i class="fa fa-cog pull-right"></i></a>
            </div>
            <div id="scrollbar" class="panel-body no-padding mCustomScrollbar _mCS_2 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;"><div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0"><div id="mCSB_2_container" class="mCSB_container" style="position: relative; top: -172px; left: 0px;" dir="ltr">
                <div class="profile-post color-one">
                    <span class="profile-post-numb">01</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Creative Blog</a></h3>
                        <p>How to market yourself as a freelance designer</p>
                    </div>
                </div>
                <div class="profile-post color-two">
                    <span class="profile-post-numb">02</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Codrops Collective #117</a></h3>
                        <p>Web Design &amp; Development News</p>
                    </div>
                </div>
                <div class="profile-post color-three">
                    <span class="profile-post-numb">03</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Sketch Toolbox</a></h3>
                        <p>Basic prototype of a package manager for Sketch</p>
                    </div>
                </div>
                <div class="profile-post color-four">
                    <span class="profile-post-numb">04</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Amazing Portfolio</a></h3>
                        <p>Create a free online portfolio lookbook with Readz</p>
                    </div>
                </div>
                <div class="profile-post color-five">
                    <span class="profile-post-numb">05</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Discover New Features</a></h3>
                        <p>More than 100+ amazing add-ons coming soon...</p>
                    </div>
                </div>
                <div class="profile-post color-six">
                    <span class="profile-post-numb">06</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Corporation Plans</a></h3>
                        <p>Discussion of new corporation plans</p>
                    </div>
                </div>
                <div class="profile-post color-seven">
                    <span class="profile-post-numb">07</span>
                    <div class="profile-post-in">
                        <h3 class="heading-xs"><a href="#">Project Updates</a></h3>
                        <p>New features of coming update</p>
                    </div>
                </div>
            </div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 185px; max-height: 286px; top: 100px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div>
        </div>
    </div>
    <!--End Profile Post-->

    <!--Profile Event-->
    <div class="col-sm-6 md-margin-bottom-20">
        <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
                <h2 class="panel-title heading-sm pull-left"><i class="fa fa-briefcase"></i>Upcoming Events</h2>
                <a href="#"><i class="fa fa-cog pull-right"></i></a>
            </div>
            <div id="scrollbar2" class="panel-body no-padding mCustomScrollbar _mCS_3 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;"><div id="mCSB_3" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0"><div id="mCSB_3_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
                <div class="profile-event">
                    <div class="date-formats">
                        <span>25</span>
                        <small>05, 2014</small>
                    </div>
                    <div class="overflow-h">
                        <h3 class="heading-xs"><a href="#">GitHub seminars in Japan.</a></h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                    </div>
                </div>
                <div class="profile-event">
                    <div class="date-formats">
                        <span>31</span>
                        <small>06, 2014</small>
                    </div>
                    <div class="overflow-h">
                        <h3 class="heading-xs"><a href="#">Bootstrap Update</a></h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                    </div>
                </div>
                <div class="profile-event">
                    <div class="date-formats">
                        <span>07</span>
                        <small>08, 2014</small>
                    </div>
                    <div class="overflow-h">
                        <h3 class="heading-xs"><a href="#">Apple Conference</a></h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                    </div>
                </div>
                <div class="profile-event">
                    <div class="date-formats">
                        <span>22</span>
                        <small>10, 2014</small>
                    </div>
                    <div class="overflow-h">
                        <h3 class="heading-xs"><a href="#">Backend Meeting</a></h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                    </div>
                </div>
                <div class="profile-event">
                    <div class="date-formats">
                        <span>14</span>
                        <small>11, 2014</small>
                    </div>
                    <div class="overflow-h">
                        <h3 class="heading-xs"><a href="#">Google Conference</a></h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                    </div>
                </div>
                <div class="profile-event">
                    <div class="date-formats">
                        <span>05</span>
                        <small>12, 2014</small>
                    </div>
                    <div class="overflow-h">
                        <h3 class="heading-xs"><a href="#">FontAwesome Update</a></h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                    </div>
                </div>
            </div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 168px; max-height: 286px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div>
        </div>
    </div>
    <!--End Profile Event-->
</div>

<?= $this->render('_footer'); ?>



