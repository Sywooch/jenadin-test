<?php

namespace frontend\modules\shop\controllers;


use backend\models\Category;
use backend\models\Characteristic;
use backend\models\Product;
use common\models\Address;
use common\models\Lang;
use common\models\Order;
use common\models\PaymentType;
use common\modules\i18n\Module;
use frontend\components\FrontendHelper;
use frontend\models\ProductForm;
use frontend\payments\IPaymentSystem;
use yii\helpers\Inflector;
use yii\web\Controller;
use yii\web\Response;

/**
 * Class BasketController
 * @package frontend\modules\shop\controllers
 */
class BasketController extends Controller
{

    /**
     * Init callback url
     */
    public function init()
    {
        $this->enableCsrfValidation = false;
        parent::init();
    }

    /**
     * @return mixed
     */
    public function actionAdd()
    {
        $productForm = new ProductForm();
        $postData = \Yii::$app->request->post();
        if ($productForm->load($postData)) {
            /**
             * @var Product $product
             */
            $product = Product::findOne($productForm->product);
            $response = \Yii::$app->basket->insertProduct(
                $product->getHash($productForm->size), $product->id, $product->price, $productForm->size, [], $productForm->count
            );
            $response['html'] = $this->renderPartial('modal-product', [
                'product' => $product,
                'size'    => Characteristic::findOne($productForm->size),
                'count'   => $productForm->count,
            ]);
            \Yii::$app->response->format = Response::FORMAT_JSON;
            return $response;
        }
    }

    /**
     * @return string
     */
    public function actionIndex()
    {
        $items = \Yii::$app->basket->getBasketProducts();
        $category = Category::find()->one();
        foreach ($items as $key => $item) {
            $product = Product::findOne($item['id_product']);
            $item['product'] = $product;
            $item['size'] = Characteristic::findOne($item['characteristic_id']);
            $items[$key] = $item;
        }
        return $this->render('index', [
            'items'    => $items,
            'category' => $category,
        ]);
    }

    /**
     * @return Response
     */
    public function actionUpdate()
    {
        $postData = \Yii::$app->request->post();
        $postKey = 'ProductCart';
        if (array_key_exists($postKey, $postData)) {
            $data = $postData[$postKey];
            foreach ($data as $hash => $itemData) {
                \Yii::$app->basket->insertProduct(
                    $hash, $itemData['productID'], '', $itemData['characteristicID'], [], $itemData['count']
                );
            }
        }
        $this->pushSuccessMessage();
        return $this->redirect('index');
    }

    /**
     * @param $hash
     * @return Response
     */
    public function actionDelete($hash)
    {
        if (!empty($hash)) {
            \Yii::$app->basket->insertProduct(
                $hash, 0, '', 0, [], 0
            );
        }
        $this->pushSuccessMessage();
        return $this->redirect('index');
    }

    /**
     * @return string
     */
    public function actionCheckout()
    {
        $items = \Yii::$app->basket->getBasketProducts();
        /**
         * Load address data
         */
        $address = new Address();
        $address->loadUserData();
        /**
         * Load order data
         */
        $order = new Order();
        $order->loadUserData();
        $paymentTypes = PaymentType::find()->all();
        /**
         * Set default payment type
         */
        $order->payment_type_id = $paymentTypes[0]->id;
        /**
         * Load data for basket items
         */
        foreach ($items as $key => $item) {
            $product = Product::findOne($item['id_product']);
            $item['product'] = $product;
            $item['size'] = Characteristic::findOne($item['characteristic_id']);
            $items[$key] = $item;
        }
        /**
         * Handle POST data
         */
        $postData = \Yii::$app->request->post();
        if (!empty($items) && $address->load($postData) && $order->load($postData) && $address->validate()) {
            $viewPath = $this->viewPath;
            $response = $order->checkoutOrder($address);
            if (isset($response['payment'])) {
                /**
                 * @var IPaymentSystem $payment
                 */
                $payment = $response['payment'];
                $order->status = Order::STATUS_WAITED;
                $order->save();
                $content = $payment->checkout($order);
                \Yii::$app->controller->viewPath = $viewPath;
                return $this->render('payment-system', [
                    'content' => $content,
                ]);
            } else {
                \Yii::$app->session->setFlash('success', Module::t('Your order was accepted successfully!'));
                return $this->redirect(FrontendHelper::formLink('/basket/index'));
            }
        }
        return $this->render('checkout', [
            'items'        => $items,
            'address'      => $address,
            'order'        => $order,
            'paymentTypes' => $paymentTypes,
        ]);
    }

    /**
     * @param $paymentSystemAlias
     */
    public function actionPaymentCallback($paymentSystemAlias)
    {
        $className = 'frontend\\payments\\' . Inflector::camelize($paymentSystemAlias);
        $postData = \Yii::$app->request->post();
        if (class_exists($className) && !empty($postData)) {
            /**
             * @var IPaymentSystem $paymentSystem
             */
            $paymentSystem = new $className();
            $paymentSystem->handleCallback($postData);
        }
    }


    /**
     * Push success message
     */
    private function pushSuccessMessage()
    {
        \Yii::$app->session->setFlash('success', Module::t('Basket is updated successfully.'));
    }
}