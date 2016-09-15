<?php

use common\modules\i18n\Module;
use yii\grid\GridView;
use yii\helpers\Html;

/**
 * @var \yii\data\ActiveDataProvider $dataProvider
 * @var \frontend\models\OrderFilter $searchModel
 */

echo \frontend\components\SeoHelper::setTitle($this, [
    'type' => 'orders'
], null);

echo \common\widgets\Alert::widget();
?>
<h1><?= Module::t('Orders') ?></h1>
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12 user-orders">
        <div class="form-group profile-buttons orders">

            <?= \yii\helpers\Html::a(Module::t('Back to profile view'), \yii\helpers\Url::to('index'), [
                'class' => 'btn btn-white btn-uppercase'
            ]) ?>

        </div>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns'      => [
                [
                    'class'          => 'yii\grid\SerialColumn',
                    'headerOptions'  => [
                        'class' => 'column-extra'
                    ],
                    'contentOptions' => [
                        'class' => 'column-extra'
                    ],
                ],

                [
                    'attribute' => 'id',
                    'value'     => function ($model) {
                        return '#' . $model->id;
                    },
                    'label'     => Module::t('Number'),
                ],
                [
                    'attribute'      => 'created_at',
                    'label'          => Module::t('Order date'),
                    'value'          => function ($model) {
                        /**
                         * @var \common\models\Order $model
                         */
                        return date('d.m.Y', $model->created_at);
                    },
                    'headerOptions'  => [
                        'class' => 'column-extra'
                    ],
                    'contentOptions' => [
                        'class' => 'column-extra'
                    ],
                ],
                [
                    'attribute' => 'totalPrice',
                    'label'     => Module::t('Price'),
                    'value'     => function ($model) {
                        /**
                         * @var \common\models\Order $model
                         */
                        return $model->getTotalPrice(true);
                    }
                ],
                [
                    'attribute'      => 'status',
                    'value'          => function ($model) {
                        /**
                         * @var \common\models\Order $model
                         */
                        return $model->getStatus();
                    },
                    'headerOptions'  => [
                        'class' => 'column-extra'
                    ],
                    'contentOptions' => [
                        'class' => 'column-extra'
                    ],
                ],

                [
                    'class'    => 'yii\grid\ActionColumn',
                    'buttons'  => [
                        'view' => function ($url, $model) {
                            return Html::a(Module::t('View'), \yii\helpers\Url::to(['order-view', 'id' => $model->id]), [
                                'class' => 'btn btn-black btn-uppercase btn-order-view-link'
                            ]);
                        },
                    ],
                    'template' => '{view}'
                ],
            ],
        ]); ?>
        <div class="woocommerce">
            <nav class="woocommerce-pagination">
                <?= \yii\widgets\LinkPager::widget([
                    'pagination'    => $dataProvider->pagination,
                    'options'       => [
                        'class' => 'page-numbers'
                    ],
                    'prevPageLabel' => '←',
                    'nextPageLabel' => '→'
                ]) ?>
            </nav>
        </div>
    </div>
</div>