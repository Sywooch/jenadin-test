<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 8/18/2016
 * Time: 3:27 PM
 */

namespace frontend\models;


use backend\models\Product;
use common\modules\i18n\Module;
use yii\base\Model;

/**
 * Class ProductForm
 * @package frontend\models
 */
class ProductForm extends Model
{

    /**
     * @var integer
     */
    public $size;

    /**
     * @var string
     */
    public $count;

    /**
     * @var integer
     */
    public $product;

    /**
     * @return array
     */
    public function rules()
    {
        return [
            [['product'], 'required'],
            ['size', 'required', 'message' => Module::t('You need to choose a size')],
            ['count', 'required', 'message' => Module::t('You need to enter a count')],
            [['size', 'product'], 'integer'],
            ['size', 'checkSizeAvailability', 'skipOnEmpty' => true, 'skipOnError' => false],
            ['count', 'integer', 'min' => 1],
        ];
    }

    /**
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'count' => Module::t('Count')
        ];
    }

    /**
     * @param $attribute
     * @param $params
     */
    public function checkSizeAvailability($attribute, $params)
    {
        $product = Product::findOne($this->product);
        if (!$product->isSizeInStock($this->size)) {
            $this->addError($attribute, Module::t('The size is out of stock.'));
        }
    }


}