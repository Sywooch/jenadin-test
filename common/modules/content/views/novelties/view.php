<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Novelty */

BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge(\backend\models\Novelty::getLabels(), [
    'type'        => 'view',
    'customTitle' => $model->getNoveltyTitle()
]), $model);
?>
<div class="novelty-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= \backend\widgets\DetailViewButtons::widget([
        'model' => $model
    ]) ?>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'created_at',
                'format'    => 'datetime',
            ],
            [
                'attribute' => 'updated_at',
                'format'    => 'datetime'
            ],
        ],
    ]) ?>

</div>
