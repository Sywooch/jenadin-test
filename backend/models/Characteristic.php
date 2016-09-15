<?php

namespace backend\models;

use common\components\MultilingualBehavior;
use common\models\Bean;
use common\models\Lang;
use common\modules\i18n\Module;
use frontend\components\FrontendHelper;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "characteristic".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $characteristic_group_id
 * @property integer $sort
 * @property string $alias
 *
 * @property CharacteristicGroup $group
 */
class Characteristic extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'characteristic';
    }

    /**
     * @var string
     */
    protected $tableLang = 'characteristiclang';

    /**
     * Init multilingual fields
     */
    public function init()
    {
        $this->multiLanguageFields = ['title'];
        parent::init();
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
                'langForeignKey'  => 'characteristic_id',
                'tableName'       => "{{%" . $this->tableLang . "}}",
                'attributes'      => $this->multiLanguageFields,
            ],
            'slug'      => [
                'class'        => 'common\\behaviors\\Alias',
                'inAttribute'  => 'title',
                'outAttribute' => 'alias',
            ]
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
            [['created_at', 'updated_at', 'characteristic_group_id', 'sort'], 'integer'],
            ['alias', 'string'],
            [$safe, 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'                      => Module::t('Id'),
            'created_at'              => Module::t('Createdat'),
            'updated_at'              => Module::t('Updatedat'),
            'characteristic_group_id' => Module::t('Characteristic group'),
            'sort'                    => Module::t('Sort'),
            'title'                   => Module::t('Title'),
            'alias'                   => Module::t('Alias'),
        ];
    }

    /**
     * @return mixed
     */
    public function getCharacteristicTitle()
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
            'singular' => 'Characteristic',
            'multiple' => 'Characteristics'
        ];
    }

    /**
     * @return array
     */
    public static function getGroupDropdown()
    {
        $groups = CharacteristicGroup::findAllLocalized();
        return ArrayHelper::map($groups, 'id', 'title');
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGroup()
    {
        return $this->hasOne(CharacteristicGroup::className(), [
            'id' => 'characteristic_group_id'
        ])->with('translations');
    }

    /**
     * @return array
     */
    public static function getSizesList()
    {
        return self::getDropdownList('size');
    }

    /**
     * @param $alias
     * @return array
     */
    public static function getDropdownList($alias)
    {
        $collection = self::find()
            ->join('inner join', CharacteristicGroup::tableName(),
                CharacteristicGroup::tableName() . '.id = ' . self::tableName() . '.characteristic_group_id')
            ->where([
                CharacteristicGroup::tableName() . '.alias' => $alias,
            ])
            ->all();
        $data = [];
        foreach ($collection as $item) {
            $data[$item->id] = $item->title;
        }
        return $data;
    }

    /**
     * @return array
     */
    public static function getCollectionMenu()
    {
        $collection = self::find()
            ->join('inner join', CharacteristicGroup::tableName(),
                CharacteristicGroup::tableName() . '.id = ' . self::tableName() . '.characteristic_group_id')
            ->where([
                CharacteristicGroup::tableName() . '.alias' => 'collection',
            ])
            ->with('group')
            ->localized(Lang::getCurrent()->url)
            ->limit(10)
            ->all();
        $data = [];
        foreach ($collection as $item) {
            /**
             * @var Characteristic $item
             */
            $data[] = [
                'id'        => $item->id,
                'title'     => $item->title,
                'enabled'   => true,
                'directUrl' => $item->getUrl(),
            ];
        }
        return $data;
    }

    /**
     * @return string
     */
    public function getUrl()
    {
        $path = '/' . $this->group->alias . '/' . $this->alias;
        return FrontendHelper::formLink($path);
    }


}
