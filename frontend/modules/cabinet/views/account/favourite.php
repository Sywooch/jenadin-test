<?php

use common\modules\i18n\Module;
use yii\helpers\Html;

/**
 * @var \backend\models\Product[] $products
 */

echo \frontend\components\SeoHelper::setTitle($this, [
    'type' => 'account'
], null);

echo \common\widgets\Alert::widget();

?>

<h1><?= Module::t('Wish list') ?></h1>
<div class="vc_row wpb_row vc_row-fluid">
    <? if (!empty($products)): ?>
        <? foreach ($products as $product): ?>
            <div class="wpb_column vc_column_container vc_col-lg-2 vc_col-md-3 vc_col-sm-4 vc_col-xs-6   favourite-item">
                <a href="<?= $product->getUrl() ?>">
                    <div class="favourite-image">
                        <?= Html::img($product->getDefaultImage(), [
                            'class' => 'favourite-image'
                        ]) ?>
                    </div>

                    <div class="favourite-title">
                        <?= $product->title ?>
                    </div>
                    <div class="favourite-description">
                        <?= $product->getProductPriceFormatted() ?>
                    </div>
                    <i class="favourite-star"></i>
                </a>
                <a class="favourite-remove" href="<?= \yii\helpers\Url::to(['remove-from-favourite', 'productID' => $product->id]) ?>"></a>
            </div>
        <? endforeach; ?>
    <? else: ?>
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <p><?= Module::t('There is no product in your wish list') ?></p>
        </div>
    <? endif; ?>
</div>
<div class="form-group profile-buttons">

    <?= \yii\helpers\Html::a(Module::t('Back to profile view'), \yii\helpers\Url::to('index'), [
        'class' => 'btn btn-white btn-uppercase'
    ]) ?>

</div>
