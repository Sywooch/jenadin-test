<?php

use common\modules\i18n\Module;
use backend\models\Product;
use yii\helpers\Html;
use common\models\Lang;

/**
 * @var \common\models\Order $order
 * @var Lang $currentLang
 */

echo \frontend\components\SeoHelper::setTitle($this, [
    'type' => 'order'
], $order);

$currentLang = Lang::getCurrent();

$countryField = 'title_' . $currentLang->url;

?>
<h1><?= Module::t('Order') . ' #' . $order->id ?></h1>

<!-- ORDER DATA -->
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12">
        <h2 class="order-view-title"><?= Module::t('Order data') ?></h2>
        <div class="address-row">
            <label><?= Module::t('Order date') ?>:</label>
            <?= date('d.m.Y', $order->created_at) ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Status') ?>:</label>
            <?= $order->getStatus() ?>
        </div>
    </div>
</div>
<!-- ORDER DATA END -->

<!-- POSITION START -->
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12">
        <h2 class="order-view-title"><?= Module::t('Positions') ?></h2>
        <table class="shop-table shop-order-table shop-order-table-view">
            <thead>
            <tr>
                <th><?= Module::t('Product') ?></th>
                <th><?= Module::t('Total price') ?></th>
            </tr>
            </thead>
            <tbody>
            <? foreach ($order->orderItems as $item): ?>
                <?
                /**
                 * @var Product $product
                 */
                $product = $item->product;

                /**
                 * @var \backend\models\Characteristic $size
                 */
                $size = $item->characteristic;
                ?>
                <tr>
                    <td>
                        <p>
                            <?= Html::a($product->title, $product->getUrl()) ?><strong> × <?= $item->count ?></strong>
                        </p>
                        <p>
                            <?= $size->group->getCharacteristicGroupTitle() ?>: <?= $size->title ?>
                        </p>
                    </td>
                    <td>
                        <p><?= $item->getFormattedPrice(true) ?></p>
                    </td>
                </tr>
            <? endforeach; ?>
            </tbody>
            <tfoot>
            <tr>
                <td>
                    <strong><?= Module::t('In total') ?></strong>
                </td>
                <td>
                    <strong><?= $order->getTotalPrice(true) ?></strong>
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
<!-- POSITION END -->

<!-- USER DATA START -->
<h2 class="order-view-title"><?= Module::t('Personal data') ?></h2>
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12">
        <div class="address-row">
            <label><?= Module::t('First name') ?>:</label>
            <?= $order->address->first_name ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Last name') ?>:</label>
            <?= $order->address->last_name ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Email') ?>:</label>
            <?= $order->email ?>
        </div>
    </div>
</div>
<!-- USER DATA END -->

<!-- ADDRESS START -->
<h2 class="order-view-title"><?= Module::t('Address') ?></h2>
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12">
        <div class="address-row">
            <label><?= Module::t('Country') ?>:</label>
            <?= $order->address->country->{$countryField} ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Region') ?>:</label>
            <?= $order->address->region ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('City') ?>:</label>
            <?= $order->address->city ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Street') ?>:</label>
            <?= $order->address->street ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Building') ?>:</label>
            <?= $order->address->building ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Flat') ?>:</label>
            <?= $order->address->flat ?>
        </div>
        <div class="address-row">
            <label><?= Module::t('Zip') ?>:</label>
            <?= $order->address->zip ?>
        </div>
    </div>
</div>
<!-- ADDRESS END -->

<div class="form-group profile-buttons orders">

    <?= \yii\helpers\Html::a(Module::t('Back to order list'), \yii\helpers\Url::to('orders'), [
        'class' => 'btn btn-white btn-uppercase'
    ]) ?>

</div>
