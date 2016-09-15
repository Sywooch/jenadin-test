<?php

use yii\helpers\Html;
use backend\components\BreadcrumbHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Novelty */

BreadcrumbHelper::set($this, \yii\helpers\ArrayHelper::merge(\backend\models\Novelty::getLabels(), [
    'type'        => 'update',
    'customTitle' => $model->getNoveltyTitle()
]), $model);
?>
<div class="novelty-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
