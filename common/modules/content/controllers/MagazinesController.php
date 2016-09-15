<?php

namespace common\modules\content\controllers;

use backend\controllers\CRUDController;
use common\models\Magazine;
use common\models\Search\MagazineSearch;

/**
 * MagazinesController implements the CRUD actions for Magazine model.
 */
class MagazinesController extends CRUDController
{

    /**
     * Init bean class
     */
    public function init()
    {
        $this->beanClass = Magazine::className();
        $this->beanSearchClass = MagazineSearch::className();
        parent::init();
    }

}
