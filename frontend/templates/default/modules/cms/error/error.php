<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

$this->title = $name;
?>
<section style="padding: 40px 0;">
    <div class="container sx-content">
        <div class="row">
            <div class="col-md-12">

                <h1><?= Html::encode($this->title) ?></h1>

                <div class="alert alert-danger">
                    <?= nl2br(Html::encode($message)) ?>
                </div>


            </div>
        </div>
    </div>
</section>
