<?
use yii\bootstrap\Html;
use common\modules\i18n\Module;

/**
 * @var string $attribute
 * @var integer $min
 * @var integer $counter
 * @var array $attributesData
 * @var \common\models\MagazineItem $model
 */

?>
<div class="panel panel-default panel-item ui-state-default" data-item="<?= $attribute ?>" data-counter="<?= $counter ?>">
    <div class="panel-body">
        <? if ($counter >= $min || !is_numeric($counter)): ?>
            <div class="clearfix">
                <div class="btn btn-danger btn-delete-bean pull-right">
                    <i class="glyphicon glyphicon-remove"></i>
                </div>
            </div>
        <? endif; ?>
        <div class="row">
            <div class="col-sm-6">
                <label><?= Module::t('Image') ?></label>
                <div class="form-group field-<?= $attributesData['image']['id'] ?>">
                    <? if (isset($model->id)): ?>
                        <a class="fancybox" rel="group" href="<?= \yii\helpers\Url::to($model->image) ?>"
                           target="_blank">
                            <?= Html::img($model->image, [
                                'class' => 'img-responsive multiple-bean-image',
                            ])?>
                            <?= Html::hiddenInput('MagazineItem[' . $counter . '][image]', $model->image) ?>
                        </a>
                        <?

                        ?>
                    <? else: ?>
                        <?
                        echo Html::fileInput('file[' . $counter . ']', '', ['id' => $counter, 'accept' => '']);
                        ?>
                    <? endif; ?>
                    <div class="help-block"></div>
                </div>
            </div>
            <div class="col-sm-6">
                <label><?= Module::t('Sort') ?></label>
                <div class="form-group field-<?= $attributesData['sort']['id'] ?>">
                    <?
                    echo Html::textInput('MagazineItem[' . $counter . '][sort]', $model->sort, ['class' => 'form-control field-sort', 'id' => $attributesData['sort']['id']]);
                    ?>
                    <div class="help-block"></div>
                </div>
            </div>
        </div>
    </div>
</div>
