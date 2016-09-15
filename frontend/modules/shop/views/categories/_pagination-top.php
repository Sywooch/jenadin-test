<?php
echo \yii\helpers\Html::hiddenInput('', $dataProvider->getCount());
echo \yii\widgets\LinkPager::widget([
    'pagination'    => $dataProvider->getPagination(),
    'options'       => [
        'class' => 'page-numbers-top'
    ],
    'prevPageLabel' => '←',
    'nextPageLabel' => '→'
]);