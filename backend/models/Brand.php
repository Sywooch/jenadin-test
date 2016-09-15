<?php

namespace backend\models;

use common\models\Bean;
use common\modules\i18n\Module;
use Yii;

/**
 * This is the model class for table "brand".
 *
 * @property integer $id
 * @property string $name
 */
class Brand extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'brand';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'   => Module::t('Id'),
            'name' => Module::t('Name'),
        ];
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Brand',
            'multiple' => 'Brands'
        ];
    }

}
