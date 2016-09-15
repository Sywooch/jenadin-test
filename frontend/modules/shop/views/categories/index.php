<?php

$post = new stdClass();
$post->title = \common\modules\i18n\Module::t('Shop');
\frontend\components\SeoHelper::setTitle($this, [
    'type' => 'post'
], $post);
?>
<div class="category-wrapper clear">
    <? foreach ($categories as $category): ?>
    <a href="<?= $category->getViewLink() ?>">
        <div class="category-item-img-wrap" style="background-image: url(<?= $category->image ?>)">
            <div class="category-title-wrap">
                <h2 class="category-title"><?= $category->title ?></h2>
            </div>
        </div>
    </a>
    <? endforeach; ?>
</div>
