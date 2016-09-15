<?php

use \common\modules\i18n\Module;

/**
 * @var \backend\models\Product $product
 * @var string $table
 */

\frontend\components\SeoHelper::setTitle($this, [
    'type' => 'product',
], $product);

?>

<article>
    <h1><?= Module::t('Table size') ?></h1>
    <h3><?= $product->title ?></h3>
    <div class="">
        <?= $table ?>
    </div>
</article>
