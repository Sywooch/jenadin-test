<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 8/14/2016
 * Time: 4:29 PM
 */

namespace frontend\modules\shop\controllers;


use backend\models\Characteristic;
use backend\models\KitProduct;
use backend\models\Product;
use common\models\Country;
use common\models\Setting;
use frontend\models\ProductForm;
use yii\web\Controller;
use Yii;
use yii\web\Response;
use yii\widgets\ActiveForm;

/**
 * Class ProductsController
 * @package frontend\modules\shop\controllers
 */
class ProductsController extends Controller
{

    public function init()
    {
        $this->enableCsrfValidation = false;
        parent::init();
    }

    /**
     * @param $alias
     * @return string
     */
    public function actionView($alias)
    {
        /**
         * @var Product $product
         */
        $product = Product::getProductByAlias($alias);
        $sizes = $product->getProductSizesDropdown();
        $productForm = new ProductForm();
        $productForm->product = $product->id;
        $productForm->count = 1;

        return $this->render('view', [
            'product'     => $product,
            'sizes'       => $sizes,
            'productForm' => $productForm
        ]);
    }

    /**
     * @return array
     */
    public function actionValidate()
    {
        $model = new ProductForm();
        if (Yii::$app->request->isAjax && $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            $errors = ActiveForm::validate($model);
            return $errors;
        }
    }

    /**
     * @param $productID
     * @return string
     */
    public function actionViewSize($productID)
    {
        $this->layout = 'table-size';
        $product = Product::getProductByID($productID);
        $tableSize = $product->table_size;
        if (empty($tableSize)) {
            $setting = Setting::find()->one();
            $tableSize = $setting->table_size;
        }
        return $this->render('table-size', [
            'table'   => $tableSize,
            'product' => $product,
        ]);
    }

}