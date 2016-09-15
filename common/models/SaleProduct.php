<?php

namespace common\models;

use backend\models\Product;
use common\modules\i18n\Module;
use Yii;

/**
 * This is the model class for table "sale_product".
 *
 * @property integer $id
 * @property integer $sale_id
 * @property integer $product_id
 *
 * @property Product $product
 * @property Sale $sale
 */
class SaleProduct extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sale_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sale_id', 'product_id'], 'required'],
            [['sale_id', 'product_id'], 'integer'],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
            [['sale_id'], 'exist', 'skipOnError' => true, 'targetClass' => Sale::className(), 'targetAttribute' => ['sale_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => 'ID',
            'sale_id'    => 'Sale',
            'product_id' => Module::t('Product'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSale()
    {
        return $this->hasOne(Sale::className(), ['id' => 'sale_id']);
    }
}
