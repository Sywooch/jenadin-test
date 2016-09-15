<?= \yii\widgets\ListView::widget([
    'dataProvider' => $dataProvider,
    'options'      => [
        'tag'   => 'ul',
        'class' => 'products',
    ],
    'itemView'     => '_list',
    'summary'      => '',
    'itemOptions'  => [
        'tag' => false,
    ],
]); ?>

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