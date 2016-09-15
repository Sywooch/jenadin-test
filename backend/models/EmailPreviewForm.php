<?php

namespace backend\models;


use common\models\Order;
use common\modules\i18n\Module;
use yii\base\Model;
use yii\helpers\ArrayHelper;

/**
 * Class EmailPreviewForm
 * @package backend\models
 */
class EmailPreviewForm extends Model
{

    /**
     * @var integer
     */
    public $orderID;

    /**
     * @var integer
     */
    public $emailTemplateID;

    /**
     * @return array
     */
    public function rules()
    {
        return [
            [['orderID', 'emailTemplateID'], 'required'],
            [['orderID', 'emailTemplateID'], 'integer'],
        ];
    }

    /**
     * @return array
     */
    public function attributes()
    {
        return [
            'orderID' => Module::t('Order'),
        ];
    }

    /**
     * @return array
     */
    public static function getOrdersList()
    {
        $collection = ArrayHelper::map(Order::find()->limit(20)->all(), 'id', 'id');
        return array_map(function ($value) {
            return '#' . $value;
        }, $collection);
    }


}