<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\modules\i18n\Module;

/* @var $this yii\web\View */
/* @var $model common\models\Magazine */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="magazine-form">

    <?php $form = ActiveForm::begin([
        'enableAjaxValidation'   => true,
        'enableClientValidation' => false,
        'id'                     => 'magazine-form',
        'validationUrl'          => \yii\helpers\Url::to(['validate', 'id' => $model->id]),
        'options'                => ['enctype' => 'multipart/form-data']
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
            <?= \backend\widgets\ImageField::widget([
                'form'          => $form,
                'model'         => $model,
                'fileAttribute' => 'fileImage',
                'attribute'     => 'image',
            ]) ?>
        </div>
    </div>

    <?
    echo $form->field($model, 'magazineItems')->widget(\backend\widgets\multiple_bean\MultipleBean::className(), [
        'title'           => Module::t('Pages'),
        'min'             => 0,
    ])->label(false);
    ?>

    <?= \backend\widgets\FormButtons::widget([
        'model' => $model
    ]); ?>

    <?php ActiveForm::end(); ?>

</div>
