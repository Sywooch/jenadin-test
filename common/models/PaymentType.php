<?php

namespace common\models;

use common\components\MultilingualBehavior;
use common\modules\i18n\Module;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "payment_type".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $alias
 *
 */
class PaymentType extends Bean
{

    protected $tableLang = 'payment_typelang';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'payment_type';
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
                'langForeignKey'  => 'payment_type_id',
                'tableName'       => "{{%" . $this->tableLang . "}}",
                'attributes'      => $this->multiLanguageFields,
            ],
            'slug'      => [
                'class'           => 'common\\behaviors\\Alias',
                'inAttribute'     => 'title',
                'outAttribute'    => 'alias',
            ]
        ]);
    }
    /**
     * Init function
     */
    public function init()
    {
        $this->multiLanguageFields = ['title', 'content'];
        parent::init();
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        $multiLanguageNames = $this->formMultiLanguageFields();
        $required = ArrayHelper::merge($multiLanguageNames['title'], $multiLanguageNames['content']);
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['alias'], 'string', 'max' => 255],
            [$required, 'safe'],
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
            'alias'      => Module::t('Alias'),
            'title'      => Module::t('Title'),
            'content'    => Module::t('Text'),
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
            'singular' => 'Payment type',
            'multiple' => 'Payment types'
        ];
    }

    /**
     * @return mixed
     */
    public function getPaymentTypeTitle()
    {
        $fieldName = self::getMultiAttributeName('title', Lang::getCurrent()->url);
        return $this->{$fieldName};
    }
}
