<?php

namespace common\models;

use backend\models\Characteristic;
use backend\models\Currency;
use backend\models\Product;
use common\modules\i18n\Module;
use Yii;

/**
 * This is the model class for table "order_item".
 *
 * @property integer $id
 * @property integer $order_id
 * @property integer $product_id
 * @property integer $characteristic_id
 * @property integer $count
 * @property double $price
 * @property integer $currency_id
 *
 * @property Characteristic $characteristic
 * @property Order $order
 * @property Product $product
 * @property Currency $currency
 */
class OrderItem extends Bean
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'order_item';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['order_id', 'product_id', 'characteristic_id', 'count', 'price', 'currency_id'], 'required'],
            [['order_id', 'product_id', 'characteristic_id', 'count', 'currency_id'], 'integer'],
            ['price', 'number'],
            [['characteristic_id'], 'exist', 'skipOnError' => true, 'targetClass' => Characteristic::className(), 'targetAttribute' => ['characteristic_id' => 'id']],
            [['order_id'], 'exist', 'skipOnError' => true, 'targetClass' => Order::className(), 'targetAttribute' => ['order_id' => 'id']],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'                => Module::t('Id'),
            'order_id'          => Module::t('Order'),
            'product_id'        => Module::t('Product'),
            'characteristic_id' => Module::t('Characteristic'),
            'count'             => Module::t('Count'),
            'price'             => Module::t('Price'),
            'currency'          => Module::t('Currency'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCharacteristic()
    {
        return $this->hasOne(Characteristic::className(), ['id' => 'characteristic_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrder()
    {
        return $this->hasOne(Order::className(), ['id' => 'order_id']);
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
    public function getCurrency()
    {
        return $this->hasOne(Currency::className(), ['id' => 'currency_id']);
    }

    /**
     * @param bool $format
     * @return int|string
     */
    public function getFormattedPrice($format = true)
    {
        $currency = Currency::findOne($this->currency_id);
        $price = $this->count * Currency::convertToDefaultCurrency($this->price, $currency);
        return $format ? Currency::showPrice($price) : $price;
    }
}
