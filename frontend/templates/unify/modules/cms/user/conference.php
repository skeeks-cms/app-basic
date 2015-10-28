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
    'title'     => 'Публикации пользователя',
]); ?>
<div class="tab-v1">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#sx-<?= \common\models\ProjectConference::STATUS_FOR_APPROVAL; ?>">На утверждении</a></li>
                                <li ><a data-toggle="tab" href="#sx-<?= \common\models\ProjectConference::STATUS_SCHEDULED; ?>">Запланированные</a></li>

                                <li><a data-toggle="tab" href="#sx-<?= \common\models\ProjectConference::STATUS_REJECTED; ?>">Отклоненные</a></li>
                                <!--<li><a data-toggle="tab" href="#sx-<?/*= \common\models\ProjectConference::STATUS_ARCHIVE; */?>">Архив</a></li>-->
                                <li><a data-toggle="tab" href="#sx-for-archive">Архив</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="sx-<?= \common\models\ProjectConference::STATUS_SCHEDULED; ?>" class="profile-edit tab-pane fade">
                                    <?= \skeeks\cms\widgets\Infoblock::widget([
                                        'id'                => 'conference-list-111',
                                        'name'              => 'Конференции',
                                        'protectedWidget'   => true,
                                        'refetch'           => true,
                                        'widget' => [
                                            'class'             => \frontend\widgets\conference\Conference::className(),
                                            'viewFile'          => '@app/views/widgets/conference/paging-list',
                                            'usePaging'         => 1,
                                            'condition'         => 'future-current',
                                            'defaultSortField'  => 'start_at',
                                            'defaultPageSize'   => 10,
                                            'defaultSort'       => SORT_ASC,
                                            'type'              => \common\models\ProjectHostpitalMapTime::TYPE_BLOCKED,
                                            'useCurrentUser'    => true,
                                            //'user_id'           => \Yii::$app->user->can('conference-show-all') ? null : \Yii::$app->cms->getAuthUser()->id,
                                            'pageParam'         => 'future',
                                            'status'            => \common\models\ProjectConference::STATUS_SCHEDULED
                                        ],
                                        'protectedWidgetParams'   => true,
                                    ]); ?>
                                </div>


                                <div id="sx-<?= \common\models\ProjectConference::STATUS_FOR_APPROVAL; ?>" class="profile-edit tab-pane fade in active">
                                    <?= \skeeks\cms\widgets\Infoblock::widget([
                                        'id'                => 'conference-list-222',
                                        'name'              => 'Конференции',
                                        'widget' => [
                                            'class' => \frontend\widgets\conference\Conference::className(),
                                            'viewFile'          => '@app/views/widgets/conference/paging-list',
                                            'usePaging'         => 1,
                                            //'condition'         => 'past',
                                            'defaultSortField'  => 'start_at',
                                            'defaultSort'       => SORT_ASC,
                                            'defaultPageSize'   => 10,
                                            'type'              => \common\models\ProjectHostpitalMapTime::TYPE_BLOCKED,
                                            'useCurrentUser'    => true,
                                            //'user_id'              => \Yii::$app->user->can('conference-show-all') ? null : \Yii::$app->cms->getAuthUser()->id,
                                            //'pageParam'         => 'past',
                                            //'pageParam'         => 'future',
                                            'status'            => \common\models\ProjectConference::STATUS_FOR_APPROVAL
                                        ],
                                        'protectedWidgetParams'   => true,
                                    ]); ?>
                                </div>

                                <div id="sx-<?= \common\models\ProjectConference::STATUS_REJECTED; ?>" class="profile-edit tab-pane fade">
                                    <?= \skeeks\cms\widgets\Infoblock::widget([
                                        'id'                => 'conference-list-333',
                                        'name'              => 'Конференции',
                                        'protectedWidget'   => true,
                                        'refetch'           => true,
                                        'widget' => [
                                            'class' => \frontend\widgets\conference\Conference::className(),
                                            'viewFile'          => '@app/views/widgets/conference/paging-list',
                                            'usePaging'         => 1,
                                            'defaultSortField'  => 'start_at',
                                            'defaultSort'       => SORT_DESC,
                                            'defaultPageSize'   => 10,
                                            'type'              => \common\models\ProjectHostpitalMapTime::TYPE_BLOCKED,
                                            'useCurrentUser'    => true,
                                            //'user_id'              => \Yii::$app->user->can('conference-show-all') ? null : \Yii::$app->cms->getAuthUser()->id,
                                            //'pageParam'         => 'past',
                                            'status'            => \common\models\ProjectConference::STATUS_REJECTED
                                        ],
                                        'protectedWidgetParams'   => true,

                                    ]); ?>
                                </div>

                               <!-- <div id="sx-<?/*= \common\models\ProjectConference::STATUS_ARCHIVE; */?>" class="profile-edit tab-pane fade">
                                    <?/*= \skeeks\cms\widgets\Infoblock::widget([
                                        'id'                => 'conference-list-4',
                                        'name'              => 'Конференции',
                                        'protectedWidget'   => true,
                                        'refetch'           => true,
                                        'widget' => [
                                            'class' => \frontend\widgets\conference\Conference::className(),
                                            'viewFile'          => '@app/views/widgets/conference/paging-list',
                                            'usePaging'         => 1,
                                            'defaultSortField'  => 'start_at',
                                            'defaultSort'       => SORT_DESC,
                                            'defaultPageSize'   => 10,
                                            'type'              => \common\models\ProjectHostpitalMapTime::TYPE_BLOCKED,
                                            'user_id'              => \Yii::$app->user->can('conference-show-all') ? null : \Yii::$app->cms->getAuthUser()->id,
                                            //'pageParam'         => 'past',
                                            'status'            => \common\models\ProjectConference::STATUS_ARCHIVE
                                        ],
                                        'protectedWidgetParams'   => true,
                                    ]); */?>
                                </div>-->

                                <div id="sx-for-archive" class="profile-edit tab-pane fade">
                                    <?= \skeeks\cms\widgets\Infoblock::widget([
                                        'id'                => 'conference-list-444',
                                        'name'              => 'Конференции',
                                        'protectedWidget'   => true,
                                        'refetch'           => true,
                                        'widget' => [
                                            'class' => \frontend\widgets\conference\Conference::className(),
                                            'viewFile'          => '@app/views/widgets/conference/paging-list',
                                            'usePaging'         => 1,
                                            'defaultSortField'  => 'start_at',
                                            'defaultSort'       => SORT_DESC,
                                            'defaultPageSize'   => 10,
                                            'type'              => \common\models\ProjectHostpitalMapTime::TYPE_BLOCKED,
                                            'useCurrentUser'    => true,
                                            //'user_id'           => \Yii::$app->user->can('conference-show-all') ? null : \Yii::$app->cms->getAuthUser()->id,
                                            'condition'         => 'past',
                                        ],
                                        'protectedWidgetParams'   => true,
                                    ]); ?>
                                </div>
                            </div>
                    </div>


<?/*
    $this->registerCssFile('@web/unify/css/pages/shortcode_timeline2.css', []);
*/?>

<?= $this->render('_footer'); ?>



