<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Magazine */

BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge(\common\models\Magazine::getLabels(), [
    'type'        => 'view',
    'customTitle' => $model->getMagazineTitle()
]), $model);
?>
<div class="magazine-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= \backend\widgets\DetailViewButtons::widget([
        'model' => $model
    ]) ?>

    <?= DetailView::widget([
        'model'      => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'image',
                'format'    => 'raw',
                'value'     => Html::img($model->image, [
                    'class' => 'img-responsive product-thumb',
                ])
            ],
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
