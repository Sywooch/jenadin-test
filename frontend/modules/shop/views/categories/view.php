<?php

/**
 * @var \backend\models\Category $category
 * @var \yii\data\ActiveDataProvider $dataProvider
 */

\frontend\components\SeoHelper::setTitle($this, [
    'type' => isset($type) ? $type : 'category'
], isset($category) ? $category : null);
?>
<script>
    var filterObject = '<?= $searchModel->getShortName() ?>';
</script>
<div class="product-list-menu vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-4 block-form-sort">
        <?= \yii\helpers\Html::dropDownList(null, $selectedSort, \frontend\models\ProductFilter::getSortDropdown(), [
            'class' => 'form-sort'
        ]);
        ?>
    </div>
    <div class="wpb_column vc_column_container vc_col-sm-4">
        <div class="product-list-title">
            <h1><?= isset($title) ? $title : $category->title ?></h1>
            <div class="product-list-results">
                <span class="product-list-results-container">
                    <span
                        class="total-results-message"><?= \common\modules\i18n\Module::t('Count of products:') ?>
                        <span class="total-number-of-products"><?= $dataProvider->totalCount ?></span>
                    </span>
                </span>
            </div>
        </div>
    </div>
    <div class="wpb_column vc_column_container vc_col-sm-4">
        <div class="pagination-top">
            <?= $this->render('_pagination-top', [
                'dataProvider' => $dataProvider
            ]) ?>
        </div>
    </div>
    <hr/>
</div>
<div class="vc_row wpb_row vc_row-fluid">
    <? if ($dataProvider->totalCount == 0): ?>
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <p><?= \common\modules\i18n\Module::t('Nothing was found') ?></p>
        </div>
    <? else: ?>
        <div class="wpb_column vc_column_container vc_col-sm-3">
            <div class="sidebar-widget-spoiler">
                <?= \common\modules\i18n\Module::t('Filter') ?>
                <div class="icon icon-menu_burger"></div>
            </div>
            <div class="sidebar-widget">
                <div class="sidebar-wrapper">
                    <? if (!empty($childCategories) && is_array($childCategories)): ?>
                        <div id="woocommerce_product_categories-2"
                             class="woocommerce widget_product_categories">
                            <h3><?= \common\modules\i18n\Module::t('Product categories') ?></h3>
                            <ul class="product-categories">
                                <? foreach ($childCategories as $childCategory): ?>
                                    <li class="cat-item">
                                        <?= \yii\helpers\Html::a($childCategory->title, \yii\helpers\Url::canonical() . '/' . $childCategory->alias) ?>
                                    </li>
                                <? endforeach; ?>
                            </ul>
                        </div>
                    <? endif; ?>
                    <? if (!empty($filterData)): ?>
                        <? foreach ($filterData as $key => $group): ?>
                            <div id="berocket_aapf_widget-<?= $key ?>" class="widget_berocket_aapf">
                                <div class="berocket_aapf_widget-wrapper">
                                    <div class="clear">
                                        <h3 class="widget-title berocket_aapf_widget-title">
                                            <span><?= $group->title ?></span>
                                        </h3>
                                        <a class="clear-filter" href="#"
                                           data-clear="<?= $group->alias ?>"><?= \common\modules\i18n\Module::t('Clear') ?></a>
                                    </div>
                                    <ul class="berocket_aapf_widget" data-scroll_theme="dark">
                                        <? foreach ($group->filterCharacteristics as $characteristic): ?>
                                            <li>
                                    <span>
                                        <?
                                        $id = 'checkbox_' . $characteristic->id;
                                        echo \yii\helpers\Html::checkbox('', in_array($characteristic->id, $selectedFilters), [
                                            'data-item' => $characteristic->id,
                                            'data-type' => $group->alias,
                                            'id'        => $id,
                                            'class'     => 'checkbox-filter'
                                        ]);
                                        echo \yii\helpers\Html::label(' ' . $characteristic->title, $id, [
                                            'class' => 'berocket_label_widgets'
                                        ])
                                        ?>
                                    </span>
                                            </li>
                                        <? endforeach; ?>
                                    </ul>
                                </div>
                            </div>
                        <? endforeach; ?>
                    <? endif; ?>
                </div>
            </div>
        </div>
        <div class="wpb_column vc_column_container vc_col-sm-9">
            <div class="products-container">
                <? echo $this->render('products', [
                    'dataProvider' => $dataProvider
                ]); ?>
            </div>
        </div>
    <? endif; ?>
</div>

