<?php
use yii\helpers\Html;
use yii\helpers\HtmlPurifier;
use common\modules\i18n\Module;

/**
 * @var \backend\models\Product $model
 */

$discount = $model->getActionDiscount();

?>

<li class="product">

    <? if (!empty($discount)): ?>
        <div class="product-tag sale">-<?= $discount ?>%</div>
    <? endif; ?>
    <? if (empty($discount) && $model->isNovelty()): ?>
        <div class="product-tag novelty"><?= Module::t('Latest product') ?></div>
    <? endif; ?>
    <img src="<?= $model->getDefaultImage() ?>" alt="" sizes="(max-width: 250px) 100vw 250px"/>
    <h3><?= $model->title ?></h3>
    <? if ($model->isInStock()): ?>
        <span class="price">
            <span class="amount">
                <?= $model->getProductPriceFormatted(); ?>
            </span>
        </span>
    <? else: ?>
        <span class="soldout">
                <?= Module::t('Not available') ?>
            </span>
    <? endif; ?>
    <a href="<?= $model->getUrl() ?>">
    </a>
    <div class="button-wrap">
        <a href="<?= $model->getUrl() ?>" class="button  product_type_<?= $model->type ?>">
            <?= Module::t('View') ?>
        </a>
    </div>
</li>