<?php

namespace backend\models;

use common\models\Bean;
use common\modules\i18n\Module;

/**
 * This is the model class for table "social_link".
 *
 * @property integer $id
 * @property string $name
 * @property string $url
 * @property string $alias
 * @property integer $sort
 */
class SocialLink extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'social_link';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'url', 'alias'], 'required'],
            [['sort'], 'integer'],
            [['name', 'url', 'alias'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'    => Module::t('Id'),
            'name'  => Module::t('Name'),
            'url'   => 'Url',
            'alias' => Module::t('Alias'),
            'sort'  => Module::t('Sort'),
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
            'singular' => 'Social network',
            'multiple' => 'Social networks'
        ];
    }



}
