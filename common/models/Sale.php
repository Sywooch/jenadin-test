<?php

namespace common\models;

use common\modules\i18n\Module;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "sale".
 *
 * @property integer $id
 * @property string $name
 * @property integer $created_at
 * @property integer $updated_at
 * @property double $percentage
 * @property integer $enabled
 *
 * @property SaleProduct[] $saleProducts
 */
class Sale extends Bean
{

    const STATUS_ENABLED = 1;

    const STATUS_DISABLED = 0;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sale';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'percentage', 'enabled'], 'required'],
            [['created_at', 'updated_at', 'enabled'], 'integer'],
            [['percentage'], 'number'],
            [['name'], 'string', 'max' => 255],
            ['saleProducts', 'validateRelatedBeans', 'skipOnEmpty' => false, 'skipOnError' => false, 'params' => ['beanRelatedField' => 'sale_id', 'beanClass' => SaleProduct::className()]],
        ];
    }

    /**
     * @return array
     */
    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            'timestamp' => [
                'class' => TimestampBehavior::className(),
            ],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => Module::t('Id'),
            'name'       => Module::t('Name'),
            'created_at' => Module::t('Createdat'),
            'updated_at' => Module::t('Updatedat'),
            'percentage' => Module::t('Percentage'),
            'enabled'    => Module::t('Enabled'),
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
            'singular' => 'Sale',
            'multiple' => 'Sales'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSaleProducts()
    {
        return $this->hasMany(SaleProduct::className(), ['sale_id' => 'id']);
    }

    /**
     * @param $save
     * @param array $postData
     */
    public function setSaleProducts($postData, $save = false)
    {
        if (!$save) return;
        SaleProduct::deleteAll(['sale_id' => $this->id]);
        $data = $this->bundleMultipleBean('\common\models\SaleProduct', $postData);
        foreach ($data['items'] as $bean) {
            /**
             * @var SaleProduct $bean
             */
            $bean->sale_id = $this->id;
            $bean->save();
        }
    }

    /**
     * @param bool $insert
     * @param array $changedAttributes
     */
    public function afterSave($insert, $changedAttributes)
    {
        $postData = \Yii::$app->request->post();
        $saleData = array_key_exists('saleProducts', $postData['Sale']) ? $postData['Sale']['saleProducts'] : [];
        $this->setSaleProducts($saleData, true);

        parent::afterSave($insert, $changedAttributes);
    }
}
