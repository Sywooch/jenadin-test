<?php

use yii\helpers\Html;
use yii\grid\GridView;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $searchModel common\models\Search\MagazineSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$labels = \common\models\Magazine::getLabels();
BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge($labels, [
    'type' => 'index'
]));
?>
<div class="magazine-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= \backend\widgets\FormButtons::widget([
            'model'      => false,
            'type'       => 'create',
            'modelLabel' => $labels['singular']
        ]); ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
                'attribute' => 'title',
                'label'     => \common\modules\i18n\Module::t('Title')
            ],
            [
                'attribute' => 'image',
                'format'    => 'raw',
                'value'     => function ($model) {
                    /**
                     * @var \common\models\Magazine $model
                     */
                    return Html::img($model->image, [
                        'class' => 'img-responsive product-thumb'
                    ]);
                }
            ],
            [
                'attribute' => 'updated_at',
                'format'    => 'datetime',
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
