<?php

namespace backend\models;

use common\components\MultilingualBehavior;
use common\models\Bean;
use common\models\Lang;
use common\modules\i18n\Module;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "characteristic_group".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $alias
 *
 * @property CharacteristicGrouplang[] $characteristicGrouplangs
 */
class CharacteristicGroup extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'characteristic_group';
    }

    /**
     * Characteristics of the current group that will be used in the filter
     * @var array
     */
    public $filterCharacteristics = [];

    /**
     * @var string
     */
    protected $tableLang = 'characteristic_grouplang';

    /**
     * Init multilingual fields
     */
    public function init()
    {
        $this->multiLanguageFields = ['title'];
        parent::init(); // TODO: Change the autogenerated stub
    }

    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            'timestamp' => [
                'class' => TimestampBehavior::className(),
            ],
            'ml'        => [
                'class'           => MultilingualBehavior::className(),
                'defaultLanguage' => Lang::getDefaultLang()->url,
                'langForeignKey'  => 'characteristic_group_id',
                'tableName'       => "{{%" . $this->tableLang . "}}",
                'attributes'      => $this->multiLanguageFields,
            ],
            'slug'      => [
                'class'           => 'common\\behaviors\\Alias',
                'inAttribute'     => 'title',
                'outAttribute'    => 'alias',
            ],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        $multiLanguageNames = $this->formMultiLanguageFields();
        $safe = $multiLanguageNames['title'];
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['alias'], 'string'],
            [$safe, 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => Module::t('Id'),
            'created_at' => Module::t('Createdat'),
            'updated_at' => Module::t('Updatedat'),
            'title'      => Module::t('Title')
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCharacteristicGrouplangs()
    {
        return $this->hasMany(CharacteristicGrouplang::className(), ['characteristic_group_id' => 'id']);
    }

    /**
     * @return mixed
     */
    public function getCharacteristicGroupTitle()
    {
        $fieldName = self::getMultiAttributeName('title', Lang::getCurrent()->url);
        return $this->{$fieldName};
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Characteristic group',
            'multiple' => 'Characteristic groups'
        ];
    }
}
