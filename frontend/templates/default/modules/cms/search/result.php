<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
?>

<?/*= $this->render('@template/include/breadcrumbs', [
    'title' => "Результаты поиска: " . \Yii::$app->cmsSearch->searchQuery
])*/?>

<section style="padding: 40px 0;">
    <div class="container sx-content">
        <div class="row">
            <div class="col-md-12">

                <? \skeeks\cms\modules\admin\widgets\Pjax::begin(); ?>

                    <div class="row">
                        <div class="col-md-12">
                            <form action="/search" method="get" data-pjax="true">
                                <div class="input-group animated fadeInDown">
                                    <input type="text" name="<?= \Yii::$app->cmsSearch->searchQueryParamName; ?>" class="form-control" placeholder="Поиск" value="<?= \Yii::$app->cmsSearch->searchQuery; ?>">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button" onclick="$('.search-open form').submit(); return false;">Искать</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                <!--=== Content Part ===-->
                    <div class="row">
                        <div class="col-md-12">

                            <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                                'namespace'                     => 'ContentElementsCmsWidget-search-result',
                                'viewFile'                      => '@app/views/modules/cms/search/_widget',
                                'enabledCurrentTree'            => \skeeks\cms\components\Cms::BOOL_N,
                                'dataProviderCallback'           => function(\yii\data\ActiveDataProvider $dataProvider)
                                {
                                    \Yii::$app->cmsSearch->buildElementsQuery($dataProvider->query);
                                    \Yii::$app->cmsSearch->logResult($dataProvider);
                                },
                            ])?>

                        </div>
                    </div>

                <? \skeeks\cms\modules\admin\widgets\Pjax::end(); ?>

            </div>
        </div>
    </div>
</section>
