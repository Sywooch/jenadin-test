<?php

namespace common\models;

use common\components\MultilingualBehavior;
use common\modules\i18n\Module;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "email_setting".
 *
 * @property integer $id
 * @property string $subject_from
 * @property string $email_from
 *
 */
class EmailSetting extends Bean
{

    protected $tableLang = 'email_settinglang';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'email_setting';
    }

    /**
     * Init function
     */
    public function init()
    {
        $this->multiLanguageFields = ['footer'];
        parent::init();
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        $multiLanguageNames = $this->formMultiLanguageFields();
        $safe = $multiLanguageNames['footer'];
        return [
            [['subject_from', 'email_from'], 'required'],
            [['subject_from', 'email_from'], 'string', 'max' => 255],
            [$safe, 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'           => Module::t('ID'),
            'subject_from' => Module::t('Subject from'),
            'email_from'   => Module::t('Email from'),
            'footer'       => Module::t('Footer'),
        ];
    }

    /**
     * @return array
     */
    public function behaviors()
    {
        /**
         * @var Lang $currentLanguage
         */
        $currentLanguage = Lang::getCurrent();
        return ArrayHelper::merge(parent::behaviors(), [
            'ml'        => [
                'class'           => MultilingualBehavior::className(),
                'defaultLanguage' => $currentLanguage->url,
                'langForeignKey'  => 'email_setting_id',
                'tableName'       => "{{%" . $this->tableLang . "}}",
                'attributes'      => $this->multiLanguageFields,
            ],
        ]);
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Email setting',
            'multiple' => 'Email settings'
        ];
    }
}
