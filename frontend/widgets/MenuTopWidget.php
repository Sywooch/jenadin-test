<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 8/6/2016
 * Time: 4:11 PM
 */

namespace frontend\widgets;


use backend\components\SiteHelper;
use backend\models\Category;
use backend\models\Characteristic;
use backend\models\MenuType;
use backend\models\Product;
use common\models\Lang;
use common\models\Menu;
use yii\base\Widget;
use yii\helpers\ArrayHelper;

/**
 * Class MenuTopWidget
 * @package frontend\widgets
 * Widget for the building of the top menu
 */
class MenuTopWidget extends Widget
{

    /**
     * @var string
     */
    private $viewPath;

    /**
     * @var array
     */
    private $callbackMenu = [
        5  => 'callbackNews',
        6  => 'callbackCollection',
        9  => 'callbackShop',
        25 => 'callbackSale',
    ];

    /**
     * Init view path
     */
    public function init()
    {
        $this->viewPath = 'menu-top' . DIRECTORY_SEPARATOR . 'view';
        parent::init();
    }

    /**
     * @return string
     */
    public function run()
    {
        /**
         * @var MenuType $menuTopType
         */
        $menuTopType = MenuType::find()->where([
            'alias' => MenuType::TYPE_HEADER
        ])->one();
        $menuCollection = Menu::findAllWithTitle(null, $menuTopType->id);
        $menuTree = SiteHelper::buildTreeArrayFromCollection($menuCollection, 'id');
        foreach ($menuTree as $key => $menuRoot) {
            if (array_key_exists($menuRoot['id'], $this->callbackMenu)) {
                $methodName = $this->callbackMenu[$menuRoot['id']];
                if (method_exists($this, $methodName)) {
                    $menuTree[$key] = $this->{$methodName}($menuRoot);
                }
            }
        }
        return $this->render($this->viewPath, [
            'menuCollection' => $menuTree
        ]);
    }

    /**
     * @param $menu
     * @return mixed
     */
    public function callbackCollection($menu)
    {
        $children = array_key_exists('children', $menu) ? $menu['children'] : [];
        $menu['children'] = ArrayHelper::merge($children, Characteristic::getCollectionMenu());
        return $menu;
    }

    /**
     * @param $menu
     * @return mixed
     */
    public function callbackSale($menu)
    {
        $menu['enabled'] = !empty(Product::getProductIdsWithAction(true));
        return $menu;
    }

    /**
     * @param $menu
     * @return mixed
     */
    public function callbackNews($menu)
    {
        $menu['enabled'] = true;
        return $menu;
    }

    /**
     * @param $menu
     * @return mixed
     */
    public function callbackShop($menu)
    {
        $children = array_key_exists('children', $menu) ? $menu['children'] : [];
        $categoryCollection = Category::find()->where([
            'enabled'   => Category::STATUS_ENABLED,
            'parent_id' => null,
        ])->localized(Lang::getCurrent()->url)->orderBy('sort')->all();
        $data = [];
        foreach ($categoryCollection as $category) {
            /**
             * @var Category $category
             */
            $data[] = [
                'id'        => $category->id,
                'title'     => $category->title,
                'enabled'   => true,
                'directUrl' => $category->getUrl(),
            ];
        }
        $menu['children'] = ArrayHelper::merge($children, $data);
        return $menu;
    }


}