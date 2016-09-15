<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Product */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="product-form">

    <?php $form = ActiveForm::begin([
        'enableAjaxValidation'   => true,
        'enableClientValidation' => false,
        'id'                     => 'product-form',
        'validationUrl'          => \yii\helpers\Url::to(['validate', 'id' => $model->id]),
        'options'                => ['enctype' => 'multipart/form-data'],
    ]); ?>

    <div class="row">
        <div class="col-sm-8">
            <?= \common\widgets\MultiLanguageInput::widget([
                'form'       => $form,
                'model'      => $model,
                'field'      => 'title',
                'parameters' => [

                ],
                'title'      => \common\modules\i18n\Module::t('Title')
            ]); ?>

            <?= \common\widgets\MultiLanguageInput::widget([
                'form'       => $form,
                'model'      => $model,
                'field'      => 'short_description',
                'parameters' => [
                    'textarea' => [
                        'data-group' => 'common'
                    ]
                ],
                'title'      => \common\modules\i18n\Module::t('Short description')
            ]); ?>

            <?= \common\widgets\MultiLanguageInput::widget([
                'form'       => $form,
                'model'      => $model,
                'field'      => 'content',
                'parameters' => [
                    'textarea' => [
                        'data-group' => 'common'
                    ]
                ],
                'title'      => \common\modules\i18n\Module::t('Text')
            ]); ?>


        </div>
        <div class="col-sm-4">
            <label><?= \common\modules\i18n\Module::t('Categories') ?></label>
            <?= \backend\widgets\CheckboxTree::widget([
                'tree'          => \backend\models\Category::getCategoryTree(),
                'fieldName'     => 'Product[category_ids]',
                'selectedItems' => $model->category_ids
            ]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= \common\widgets\MultiLanguageInput::widget([
                'form'       => $form,
                'model'      => $model,
                'field'      => 'size_fit',
                'parameters' => [
                    'textarea' => [
                        'data-group' => 'common'
                    ]
                ],
                'title'      => \common\modules\i18n\Module::t('Size & fit information')
            ]); ?>
        </div>
        <div class="col-sm-6">
            <?= \common\widgets\MultiLanguageInput::widget([
                'form'       => $form,
                'model'      => $model,
                'field'      => 'editor_notes',
                'parameters' => [
                    'textarea' => [
                        'data-group' => 'common'
                    ]
                ],
                'title'      => \common\modules\i18n\Module::t('Editor notes')
            ]); ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <?= \common\widgets\MultiLanguageInput::widget([
                'form'       => $form,
                'model'      => $model,
                'field'      => 'table_size',
                'parameters' => [
                    'textarea' => [
                        'data-group' => 'common'
                    ]
                ],
                'title'      => \common\modules\i18n\Module::t('Table size')
            ]); ?>
        </div>
    </div>


    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'vendor_code')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'alias')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'enabled')->checkbox() ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'fileVideo')->fileInput()->label(\common\modules\i18n\Module::t('Video')) ?>
            <?= $form->field($model, 'video')->hiddenInput()->label(false) ?>
            <? if (!empty($model->video)): ?>
                <button type="button"
                        class="btn btn-danger btn-remove-video"><?= \common\modules\i18n\Module::t('Remove') ?></button>
                <video controls muted preload="auto" class="video-js vjs-default-skin vjs-big-play-centered"
                       data-setup='{"example_option":true}'>
                    <source src="<?= \Yii::$app->request->hostInfo . \yii\helpers\Url::to($model->video) ?>"
                            type="video/mp4"/>
                </video>
            <? endif; ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'is_new')->checkbox() ?>
        </div>
        <div class="col-sm-6">
            <?= \backend\widgets\ImageField::widget([
                'form'          => $form,
                'model'         => $model,
                'fileAttribute' => 'fileImage',
                'attribute'     => 'image_color',
            ]) ?>
        </div>
    </div>

    <?php
    echo $form->field($model, 'images')->widget(\backend\widgets\multiple_bean\MultipleBean::className(), [
        'title' => \common\modules\i18n\Module::t('Gallery'),
        'min'   => 0
    ])->label(false);
    ?>


    <div class="row">
        <div class="col-sm-6">
            <?= \backend\widgets\CharacteristicField::widget([
                'model'           => $model,
                'customAttribute' => 'color',
                'form'            => $form,
            ]); ?>
        </div>
        <div class="col-sm-6">
            <?= \backend\widgets\CharacteristicField::widget([
                'model'           => $model,
                'customAttribute' => 'size',
                'form'            => $form,
            ]); ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= \backend\widgets\CharacteristicField::widget([
                'model'           => $model,
                'customAttribute' => 'collection',
                'form'            => $form,
            ]); ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'price')->textInput() ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'currency_id')->dropDownList(\backend\models\Currency::listAll()) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'type')->dropDownList(\backend\models\Product::getTypeList()) ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'in_stock')->checkbox() ?>
        </div>
    </div>

    <div class="product-data">
        <div class="product-type <?= $model->type != 'simple' && !empty($model->type) ? 'hidden' : '' ?>"
             data-group="simple">

        </div>
        <div class="product-type <?= $model->type != 'variation' ? 'hidden' : '' ?>" data-group="variation">
            <?php
            echo $form->field($model, 'variations')->widget(\backend\widgets\multiple_bean\MultipleBean::className(), [
                'title' => \common\modules\i18n\Module::t('Variations'),
                'min'   => 0
            ])->label(false);
            ?>
        </div>
    </div>


    <?= \backend\widgets\FormButtons::widget([
        'model' => $model
    ]); ?>

    <?php ActiveForm::end(); ?>

</div>
