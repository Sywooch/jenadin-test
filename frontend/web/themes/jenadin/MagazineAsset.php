<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 9/6/2016
 * Time: 7:07 PM
 */

namespace frontend\web\themes\jenadin;


use yii\web\AssetBundle;
use yii\web\View;

class MagazineAsset extends AssetBundle
{

    public $sourcePath = "@frontend/web/themes/jenadin/dist/";

    public $css = [
        'css/magazine.css',
    ];

    public $js = [
        'js/lib/jquery.min.1.7.js',
        'js/lib/turn.min.js',
        'js/lib/hash.js',
        'js/lib/modernizr.2.5.3.min.js',
        'js/lib/zoom.js',
        'js/lib/magazine.js',
        'js/Magazine.js',
    ];

    public function init()
    {
        parent::init();
        $this->publishOptions['forceCopy'] = true;
    }

    public $depends = [
        //'yii\web\YiiAsset',
    ];

    public $jsOptions = [
        'position' => View::POS_HEAD
    ];

}