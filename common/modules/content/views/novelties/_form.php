<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Novelty */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="novelty-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'content')->textarea([
        'data-group' => 'common'
    ])?>

    <?= \backend\widgets\FormButtons::widget([
        'model' => $model
    ]); ?>

    <?php ActiveForm::end(); ?>

</div>
