<?php

use common\modules\i18n\Module;

/**
 * @var array $items
 * @var \backend\models\Category $category
 */

echo \frontend\components\SeoHelper::setTitle($this, [
    'type' => 'cart'
], $this);
?>
<article>
    <div class="vc_row wpb_row vc_row-fluid">
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <?= \common\widgets\Alert::widget() ?>
            <h1><?= Module::t('Basket') ?></h1>
            <?= \yii\helpers\Html::beginForm('update', 'post', [
                'id' => 'form-basket'
            ]) ?>
            <div class="cart-upper-buttons clear">
                <a href="<?= $category->getUrl() ?>"
                   class="btn btn-white btn-uppercase btn-continue-shopping"><?= Module::t('Continue shopping') ?></a>
                <? if (!empty($items)): ?>
                    <a href="<?= \yii\helpers\Url::to('checkout') ?>"
                       class="btn btn-black btn-uppercase btn-proceed-checkout"><?= Module::t('Proceed checkout') ?></a>
                <? endif; ?>
            </div>
            <? if (!empty($items)): ?>
                <div class="cart-items">
                    <? foreach ($items as $item): ?>
                        <?
                        /**
                         * @var \backend\models\Product $product
                         */
                        $product = $item['product'];
                        /**
                         * @var \backend\models\Characteristic $size
                         */
                        $size = $item['size'];
                        ?>
                        <div class="cart-item clear" id="product-<?= $product->id ?>">
                            <div>
                                <a href="<?= $product->getUrl() ?>">
                                    <img src="<?= $product->getDefaultImage() ?>" class="cart-item-image"/>
                                </a>
                            </div>
                            <div class="cart-item-info-wrapper">
                                <div class="cart-item-info">
                                    <h2 class="cart-item-name">
                                        <a href="<?= $product->getUrl() ?>">
                                            <?= $product->title ?>
                                        </a>
                                    </h2>
                                    <div class="cart-item-properties">
                                        <div class="cart-item-size">
                                            <?= $size->title ?>
                                        </div>
                                        <div class="cart-item-count">
                                            <? $itemName = 'ProductCart[' . $product->getHash($size->id) . ']'; ?>
                                            <?= \yii\helpers\Html::hiddenInput($itemName . '[characteristicID]', $size->id) ?>
                                            <?= \yii\helpers\Html::hiddenInput($itemName . '[productID]', $product->id) ?>
                                            <?= \yii\helpers\Html::textInput($itemName . '[count]', $item['count'], [
                                                'class' => 'form-input form-input-number',
                                                'min'   => 1,
                                            ]) ?>
                                        </div>
                                        <div class="cart-item-price-per-unit">
                                            <?= Module::t('Unit price:') . ' ' . $product->getPricePerUnit($size->id, true) ?>
                                        </div>
                                        <div class="cart-item-price-per-unit">
                                            <?= Module::t('Total:') . ' ' . $product->getPriceTotal($size->id, $item['count'], true) ?>
                                        </div>
                                        <div class="cart-item-remove">
                                            <a href="<?= \yii\helpers\Url::to(['delete', 'hash' => $product->getHash($size->id)]) ?>"
                                               title="<?= Module::t('Remove') ?>">
                                                <span class="icon-cross_black"></span>
                                                <span
                                                    class="btn btn-black btn-uppercase"><?= Module::t('Remove') ?></span>
                                            </a>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-white btn-uppercase btn-edit"
                                           value="<?= Module::t('Update') ?>">
                                </div>
                            </div>
                        </div>
                    <? endforeach; ?>
                </div>
                <div class="clear">
                    <div class="cart-total">
                        <h2><?= Module::t('Sum in the basket') ?></h2>
                        <table class="shop-table shop-table-responsive">
                            <tbody>
                            <tr>
                                <td><?= Module::t('In total') ?></td>
                                <td><?= \Yii::$app->basket->getBasketCost(true) ?></td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="<?= \yii\helpers\Url::to('checkout') ?>"
                           class="btn btn-black btn-uppercase btn-proceed-checkout"><?= Module::t('Proceed checkout') ?></a>
                    </div>
                </div>
            <? else: ?>
                <p><?= Module::t('You basket is empty.') ?></p>
            <? endif; ?>
            <?= \yii\helpers\Html::endForm(); ?>
        </div>
    </div>
</article>
