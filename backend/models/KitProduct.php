<?php

namespace backend\models;

use common\models\Bean;
use common\modules\i18n\Module;
use Yii;

/**
 * This is the model class for table "kit_product".
 *
 * @property integer $id
 * @property integer $kit_id
 * @property integer $product_id
 *
 * @property Kit $kit
 * @property Product $product
 */
class KitProduct extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kit_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kit_id', 'product_id'], 'required'],
            [['kit_id', 'product_id'], 'integer'],
            [['kit_id'], 'exist', 'skipOnError' => true, 'targetClass' => Kit::className(), 'targetAttribute' => ['kit_id' => 'id']],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => Module::t('Id'),
            'kit_id'     => Module::t('Kit'),
            'product_id' => Module::t('Product'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getKit()
    {
        return $this->hasOne(Kit::className(), ['id' => 'kit_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }
}
