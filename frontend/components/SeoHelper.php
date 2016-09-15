<?php

namespace frontend\components;
use backend\models\Category;
use backend\models\Product;
use common\models\Magazine;
use common\models\Order;
use common\models\Setting;
use common\modules\i18n\Module;
use yii\helpers\ArrayHelper;
use yii\web\View;

/**
 * Class SeoHelper
 * @package frontend\components
 * Helper for the setting of the SEO features
 */
class SeoHelper
{

    /**
     * Setting of the title based on the type of the given bean
     * @param $viewData
     * @param $extraData
     * @param $model
     */
    public static function setTitle($viewData, $extraData, $model)
    {
        if (!array_key_exists('type', $extraData)) {
            throw new Exception("Please provide the type of the breadcrumb");
        }
        $actionName = "handle" . ucfirst($extraData['type']);
        if (!method_exists(__CLASS__, $actionName)) {
            throw new Exception("No such method {$actionName} in the helper");
        }
        self::$actionName($viewData, $extraData, $model);
    }

    /**
     * Set SEO data for the posts
     * @param View $viewData
     * @param $extraData
     * @param $post
     */
    private static function handlePost($viewData, $extraData, $post)
    {
        /**
         * @var Setting $setting
         */
        $setting = Setting::find()->one();
        $categoryList = mb_strtolower(implode(', ', array_slice(ArrayHelper::getColumn(Category::findAllLocalized(), 'title'), 0, 10)), 'utf-8');
        $viewData->registerMetaTag([
            'description' => $setting->seo_category_description . ' ' . $categoryList,
            'keywords'    => $categoryList . ', ' . \Yii::$app->name,
        ]);
        $viewData->title = $post->title . ' : ' . \Yii::$app->name;
    }

    /**
     * @param View $viewData
     * @param $extraData
     * @param $category
     */
    private static function handleCategory($viewData, $extraData, $category)
    {
        /**
         * @var Setting $setting
         */
        $setting = Setting::find()->one();
        $categoryList = mb_strtolower(implode(', ', array_slice(ArrayHelper::getColumn(Category::findAllLocalized(), 'title'), 0, 10)), 'utf-8');
        $viewData->registerMetaTag([
            'description' => $setting->seo_category_description . ' ' . $categoryList,
            'keywords'    => $categoryList . ', ' . \Yii::$app->name,
        ]);
        $viewData->title = Module::t('Product categories ') . ' ' . $category->title . ' : ' . \Yii::$app->name;
    }

    /**
     * @param View $viewData
     * @param $extraData
     * @param Product $product
     */
    private static function handleProduct($viewData, $extraData, $product)
    {
        $description = $product->title . ' ' . trim(str_replace(PHP_EOL, '', preg_replace('#<[^>]+>#', ' ', $product->content)));
        $categoryList = $product->getCategoriesList();
        $keywords = $product->title . ', ' . strip_tags($product->short_description) . ', ' . $categoryList;
        $viewData->registerMetaTag([
            'description' => $description,
            'keywords'    => mb_strtolower($keywords, 'utf-8'),
        ]);
        $viewData->title = $product->title . ', ' . $product->vendor_code . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $product
     */
    private static function handleCart($viewData, $extraData, $product)
    {
        $viewData->title = Module::t('Basket') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $product
     */
    private static function handleAccount($viewData, $extraData, $product)
    {
        $viewData->title = Module::t('Profile') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $product
     */
    private static function handleCheckout($viewData, $extraData, $product)
    {
        $viewData->title = Module::t('Checkout') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $product
     */
    private static function handleSale($viewData, $extraData, $product)
    {
        $viewData->title = Module::t('Sell-out') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $product
     */
    private static function handleNovelty($viewData, $extraData, $product)
    {
        $viewData->title = Module::t('Novelties products') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $collection
     */
    private static function handleCollection($viewData, $extraData, $collection)
    {
        $viewData->title = $collection->title . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param $collection
     */
    private static function handleSearch($viewData, $extraData, $collection)
    {
        $viewData->title = Module::t('Search') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param Magazine $magazine
     */
    private static function handleMagazine($viewData, $extraData, $magazine)
    {
        $viewData->title = Module::t('Magazine') . ' ' . $magazine->title . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param Magazine $magazine
     */
    private static function handleOrders($viewData, $extraData, $magazine)
    {
        $viewData->title = Module::t('Orders') . ' : ' . \Yii::$app->name;
    }

    /**
     * @param $viewData
     * @param $extraData
     * @param Order $order
     */
    private static function handleOrder($viewData, $extraData, $order)
    {
        $viewData->title = Module::t('Order') . ' #' . $order->id . ' : ' . \Yii::$app->name;
    }


}