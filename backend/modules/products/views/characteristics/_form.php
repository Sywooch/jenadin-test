<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Characteristic */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="characteristic-form">

    <?php $form = ActiveForm::begin(); ?>

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
            <?= $form->field($model, 'characteristic_group_id')->dropDownList(\backend\models\Characteristic::getGroupDropdown()) ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'sort')->textInput() ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'alias')->textInput() ?>
        </div>
    </div>

    <?= \backend\widgets\FormButtons::widget([
        'model' => $model
    ]); ?>

    <?php ActiveForm::end(); ?>

</div>
