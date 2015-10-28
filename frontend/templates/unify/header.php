<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
?>
<!--=== Header v4 ===-->
<div class="header-v4">
        <!-- Topbar -->
        <div class="topbar-v1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-inline top-v1-contacts">
                            <li>
                                <i class="fa fa-envelope"></i>
                                <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
                                    'namespace' => 'header-email',
                                    'text'      => 'Email: <a href="mailto:support@skeeks.com">support@skeeks.com</a>'
                                ])?>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
                                    'namespace' => 'header-phone',
                                    'text' => "Служба поддержки: (+7 495) 722-28-73"
                                ])?>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-6">
                        <?= $this->render('@template/include/header-auth.php'); ?>
                        <?/*= $this->render('@app/views/include/header-auth.php'); */?>

                    </div>
                </div>
            </div>
        </div>
        <!-- End Topbar -->

        <!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display-->
                <div class="navbar-header col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                            <a class="navbar-brand" href="/">
                                <img id="logo-header" src="/img/logo.png" alt="Logo" title="Лого">
                            </a>
                        </div>
                        <div class="col-md-10" style="padding-top: 10px;">
                            <h1><a href="/">

                                <?= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
                                    'namespace' => 'logo-text',
                                    'text'      => 'Название сайта'
                                ])?>

                            </a></h1>
                        </div>
                    </div>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="full-width-menu">Меню</span>
                        <span class="icon-toggle">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </span>
                    </button>
                </div>
            </div>

            <div class="clearfix"></div>
            <div class="clearfix"></div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
                <div class="container" style="padding-left: 0px; padding-right: 0px;">
                    <?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                        'namespace'      => 'menu-top',
                        'viewFile'       => '@template/widgets/TreeMenuCmsWidget/menu-top.php',
                        'label'          => 'Верхнее меню',
                        'level'          => '1',
                        'enabledRunCache'=> \skeeks\cms\components\Cms::BOOL_N,
                    ]); ?>

                    <!-- Search Block -->
                    <ul class="nav navbar-nav navbar-border-bottom navbar-right">
                        <li class="no-border">
                            <i class="search fa fa-search search-btn"></i>
                            <div class="search-open">
                                <div class="input-group animated fadeInDown">
                                    <input type="text" class="form-control" placeholder="Поиск">
                                    <span class="input-group-btn">
                                        <button class="btn-u" type="button">Искать</button>
                                    </span>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!-- End Search Block -->
                </div>
            </div><!--/navbar-collapse-->
        </div>
        <!-- End Navbar -->
    </div>
<!--=== End Header v4 ===-->