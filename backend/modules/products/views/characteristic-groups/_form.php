<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\CharacteristicGroup */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="characteristic-group-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= \common\widgets\MultiLanguageInput::widget([
        'form'       => $form,
        'model'      => $model,
        'field'      => 'title',
        'parameters' => [

        ],
        'title'      => \common\modules\i18n\Module::t('Title')
    ]); ?>

    <?= $form->field($model, 'alias')->textInput() ?>

    <?= \backend\widgets\FormButtons::widget([
        'model' => $model
    ]); ?>

    <?php ActiveForm::end(); ?>

</div>
