<?php

namespace common\models;

use backend\models\Currency;
use backend\models\Product;
use backend\models\Template;
use common\components\Mailer;
use common\modules\i18n\Module;
use frontend\payments\IPaymentSystem;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;
use yii\helpers\Inflector;

/**
 * This is the model class for table "order".
 *
 * @property integer $id
 * @property string $email
 * @property integer $address_id
 * @property integer $user_id
 * @property string $notes
 * @property string $status
 * @property integer $payment_type_id
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @property User $user
 * @property Address $address
 * @property OrderItem[] $orderItems
 * @property PaymentType $paymentType
 */
class Order extends Bean
{

    const STATUS_CONCEPT = 'concept';

    const STATUS_WAITED = 'waited';

    const STATUS_PAID = 'paid';

    const EVENT_PROCEED_ORDER = 'proceedOrder';

    const EVENT_COMPLETE_ORDER = 'completeOrder';

    const SCENARIO_STATUS = 'status';

    /**
     * @var mixed
     */
    public $totalPrice;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'order';
    }

    /**
     * @return array
     */
    public function scenarios()
    {
        return [
            self::SCENARIO_DEFAULT => ['email', 'status', 'payment_type_id', 'address_id', 'user_id', 'created_at',
                'updated_at', 'address', 'orderItems', 'notes'],
            self::SCENARIO_STATUS  => ['status'],
        ];
    }

    /**
     * Init events
     */
    public function init()
    {
        $this->on(self::EVENT_PROCEED_ORDER, [$this, 'eventProceedOrder']);
        $this->on(self::EVENT_COMPLETE_ORDER, [$this, 'eventCompleteOrder']);
        parent::init();
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['email', 'status', 'payment_type_id'], 'required'],
            [['address_id', 'user_id', 'created_at', 'updated_at'], 'integer'],
            ['email', 'email'],
            [['notes'], 'string'],
            [['email', 'status', 'payment_type_id'], 'string', 'max' => 255],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
            [['address_id'], 'exist', 'skipOnError' => true, 'targetClass' => Address::className(), 'targetAttribute' => ['address_id' => 'id']],
            ['address', 'validateRelatedBeans', 'skipOnEmpty' => false, 'skipOnError' => false, 'params' => ['beanRelatedField' => '', 'beanClass' => Address::className()]],
            ['orderItems', 'validateRelatedBeans', 'skipOnEmpty' => false, 'skipOnError' => false, 'params' => ['beanRelatedField' => 'order_id', 'beanClass' => OrderItem::className()]],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'              => Module::t('Id'),
            'email'           => Module::t('Email'),
            'address_id'      => Module::t('Address'),
            'user_id'         => Module::t('User'),
            'notes'           => Module::t('Notes'),
            'status'          => Module::t('Status'),
            'payment_type_id' => Module::t('Payment type'),
            'created_at'      => Module::t('Createdat'),
            'updated_at'      => Module::t('Updatedat'),
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
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAddress()
    {
        return $this->hasOne(Address::className(), ['id' => 'address_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrderItems()
    {
        return $this->hasMany(OrderItem::className(), ['order_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPaymentType()
    {
        return $this->hasOne(PaymentType::className(), ['id' => 'payment_type_id']);
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Order',
            'multiple' => 'Orders'
        ];
    }

    /**
     * Load order data from user
     */
    public function loadUserData()
    {
        if (!Yii::$app->user->isGuest) {
            /**
             * @var User $user
             */
            $user = Yii::$app->user->identity;
            $this->email = $user->email;
        }
    }

    /**
     * @return array
     */
    public static function getStatuses()
    {
        return [
            'concept' => Module::t('Concept'),
            'paid'    => Module::t('Paid'),
            'refused' => Module::t('Refused'),
            'waited'  => Module::t('Pay waited'),
        ];
    }

    /**
     * @return mixed|string
     */
    public function getStatus()
    {
        $statuses = self::getStatuses();
        if (array_key_exists($this->status, $statuses)) {
            return $statuses[$this->status];
        }
        return '';
    }

    /**
     * @param Address $address
     * @return array
     */
    public function checkoutOrder($address)
    {
        $response = [
            'payment' => null
        ];
        $address->user_id = null;
        $address->save();
        $this->address_id = $address->id;
        $this->status = self::STATUS_CONCEPT;
        if (!Yii::$app->user->isGuest) {
            $this->user_id = Yii::$app->user->id;
        }
        if ($this->validate() && $this->save()) {
            $basketProducts = \Yii::$app->basket->getBasketProducts();
            foreach ($basketProducts as $item) {
                $orderItem = new OrderItem();
                $orderItem->product_id = $item['id_product'];
                $orderItem->characteristic_id = $item['characteristic_id'];
                $orderItem->count = $item['count'];
                $orderItem->order_id = $this->id;
                $product = Product::findOne($orderItem->product_id);
                $orderItem->price = $product->getPricePerUnit($orderItem->characteristic_id);
                $orderItem->currency_id = Currency::getDefaultCurrency()->id;
                $orderItem->save();
            }
            /**
             * Clear basket
             */
            Yii::$app->basket->eraseBasket();
            $this->trigger(self::EVENT_PROCEED_ORDER);
            /**
             * Handle the order if the payment system is chosen
             */
            $className = 'frontend\\payments\\' . Inflector::camelize($this->paymentType->alias);
            if (class_exists($className)) {
                /**
                 * @var IPaymentSystem $payment
                 */
                $response['payment'] = new $className();
            }

        }
        return $response;
    }

    /**
     * Checkout cart event
     */
    public function eventProceedOrder()
    {
        EmailTemplate::sendTemplateByAlias(EmailTemplate::ALIAS_NEW_ORDER, $this);
        EmailTemplate::sendTemplateByAlias(EmailTemplate::ALIAS_PROCEEDING_ORDER, $this);
    }

    /**
     * Event fired when the status of the order is changed to Paid
     */
    public function eventCompleteOrder()
    {
        EmailTemplate::sendTemplateByAlias(EmailTemplate::ALIAS_COMPLETED_ORDER, $this);
    }

    /**
     * @param bool $format
     * @return int|string
     */
    public function getTotalPrice($format = false)
    {
        $totalPrice = 0;
        foreach ($this->orderItems as $item) {
            $totalPrice += $item->getFormattedPrice(false);
        }
        if ($format) {
            return Currency::showPrice($totalPrice);
        }
        return $totalPrice;
    }

    /**
     * @param array $postData
     * @param boolean $save
     */
    public function setAddress($postData, $save = false)
    {
        if (!$save) return;
        $data = $this->bundleMultipleBean('\common\models\Address', $postData);
        $currentAddress = (!empty($this->address_id)) ? Address::findOne($this->address_id) : null;
        foreach ($data['items'] as $bean) {
            if (isset($currentAddress)) {
                foreach ($bean->attributes as $attribute => $value) {
                    if ($attribute == 'id') continue;
                    $currentAddress->{$attribute} = $value;
                }
            } else {
                $currentAddress = $bean;
            }
            $currentAddress->save();
        }
        $this->address_id = $currentAddress->id;
    }

    /**
     * @param $save
     * @param array $postData
     */
    public function setOrderItems($postData, $save = false)
    {
        if (!$save) return;
        OrderItem::deleteAll(['order_id' => $this->id]);
        $data = $this->bundleMultipleBean('\common\models\OrderItem', $postData);

        foreach ($data['items'] as $bean) {
            $bean->order_id = $this->id;
            $bean->save();
        }
    }

    /**
     * @param bool $insert
     * @return bool
     */
    public function beforeSave($insert)
    {
        $postData = \Yii::$app->request->post();
        if ($this->scenario == self::SCENARIO_DEFAULT && array_key_exists('address', $postData['Order'])) {
            $this->setAddress($postData['Order']['address'], true);
        }

        return parent::beforeSave($insert);
    }

    /**
     * @param bool $insert
     * @param array $changedAttributes
     */
    public function afterSave($insert, $changedAttributes)
    {
        $postData = \Yii::$app->request->post();
        if ($this->scenario == self::SCENARIO_DEFAULT && array_key_exists('orderItems', $postData['Order'])) {
            $this->setOrderItems($postData['Order']['orderItems'], true);
        }
        if (array_key_exists('status', $changedAttributes) && $this->status == self::STATUS_PAID) {
            $this->trigger(self::EVENT_COMPLETE_ORDER);
        }

        parent::afterSave($insert, $changedAttributes);
    }

    /**
     * After delete hook
     */
    public function afterDelete()
    {
        Address::deleteAll([
            'id' => $this->address_id
        ]);
        parent::afterDelete();
    }


}
