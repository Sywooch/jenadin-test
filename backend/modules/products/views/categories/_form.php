<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Category */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="category-form">

    <?php $form = ActiveForm::begin([
        'options' => [
            'enctype' => 'multipart/form-data'
        ]
    ]); ?>

    <?= \common\widgets\MultiLanguageInput::widget([
        'form'       => $form,
        'model'      => $model,
        'field'      => 'title',
        'parameters' => [

        ],
        'title'      => \common\modules\i18n\Module::t('Title')
    ]); ?>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'parent_id')->dropDownList(\backend\models\Category::getCategoryDropdown($model->id)); ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'sort')->textInput() ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'alias')->textInput() ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'enabled')->checkbox() ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'imageFile')->fileInput() ?>
            <div class="form-group">
                <? if (!empty($model->image)): ?>
                    <a href="<?= $model->image ?>" class="fancybox">
                        <?= Html::img($model->image, [
                            'width' => '200',
                        ]); ?>
                    </a>
                <? endif; ?>
            </div>
        </div>
    </div>

    <?= \backend\widgets\FormButtons::widget([
        'model' => $model
    ]); ?>

    <?php ActiveForm::end(); ?>

</div>
