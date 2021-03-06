<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Brand */

BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge(\backend\models\Brand::getLabels(), [
    'type' => 'view'
]), $model);
?>
<div class="brand-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= \backend\widgets\DetailViewButtons::widget([
        'model' => $model
    ]) ?>

    <?= DetailView::widget([
        'model'      => $model,
        'attributes' => [
            'name',
        ],
    ]) ?>

</div>
