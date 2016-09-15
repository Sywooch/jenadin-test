<?php

namespace common\modules\content\controllers;

use backend\controllers\CRUDController;
use backend\models\Novelty;
use backend\models\search\NoveltySearch;
use common\modules\i18n\Module;

/**
 * NoveltiesController implements the CRUD actions for Novelty model.
 */
class NoveltiesController extends CRUDController
{

    /**
     * Init bean class
     */
    public function init()
    {
        $this->beanClass = Novelty::className();
        $this->beanSearchClass = NoveltySearch::className();
        parent::init();
    }

    /**
     * @param $id
     * @return \yii\web\Response
     */
    public function actionAddToQueue($id)
    {
        $novelty = $this->findModel($id);
        $novelty->addToQueue();
        \Yii::$app->session->setFlash('success', Module::t('Operation is done successfully.'));
        return $this->redirect(['index']);
    }

}
