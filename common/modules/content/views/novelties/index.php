<?php

use yii\helpers\Html;
use yii\grid\GridView;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\NoveltySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$labels = \backend\models\Novelty::getLabels();
BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge($labels, [
    'type' => 'index'
]));
?>
<div class="novelty-index">

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
                'attribute' => 'created_at',
                'format'    => 'datetime'
            ],

            [
                'attribute' => 'updated_at',
                'format'    => 'datetime'
            ],


            [
                'class' => 'yii\grid\ActionColumn',
                'buttons'  => [
                    'add-to-queue' => function ($url, $model) {
                        $icon = "envelope";
                        if ($model->send) {
                            $icon = 'ok-sign';
                        }
                        return Html::a('<span class="glyphicon glyphicon-' . $icon . '"></span> ', $url, [
                            'title' => \common\modules\i18n\Module::t('Send'),
                            'data-confirm' => \common\modules\i18n\Module::t('Are you sure you want to send novelty?'),
                            'data-method'  => 'post',
                            'data-pjax'    => 0,
                            'aria-label'   => \common\modules\i18n\Module::t('Send'),
                        ]);
                    }
                ],
                'template' => \backend\components\SiteHelper::getListTemplate([
                    'add-to-queue', 'view', 'update', 'delete'
                ])
            ],
        ],
    ]); ?>
</div>
