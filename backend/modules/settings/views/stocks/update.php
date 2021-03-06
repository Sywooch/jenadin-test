<?php

use yii\helpers\Html;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Stock */

BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge(\backend\models\Stock::getLabels(), [
    'type'        => 'update',
    'customTitle' => $model->getPostTitle()
]), $model);
?>
<div class="stock-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
