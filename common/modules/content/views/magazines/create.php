<?php

use yii\helpers\Html;
use backend\components\BreadcrumbHelper;


/* @var $this yii\web\View */
/* @var $model common\models\Magazine */

BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge(\common\models\Magazine::getLabels(), [
    'type' => 'create'
]), $model);
?>
<div class="magazine-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
