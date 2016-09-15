<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 8/30/2016
 * Time: 9:06 AM
 */

namespace backend\modules\products\controllers;


use backend\controllers\CRUDController;
use backend\models\EmailPreviewForm;
use common\components\Mailer;
use common\models\EmailTemplate;
use common\models\Order;
use common\models\Search\EmailTemplateSearch;
use yii\web\ForbiddenHttpException;

class EmailTemplatesController extends CRUDController
{

    /**
     * Init bean class
     */
    public function init()
    {
        $this->beanClass = EmailTemplate::className();
        $this->beanSearchClass = EmailTemplateSearch::className();
        parent::init();
    }

    public function actionView($id, $returnModel = false, $extraParams = [])
    {
        $previewForm = new EmailPreviewForm();
        $previewForm->emailTemplateID = $id;
        $extraParams['previewForm'] = $previewForm;
        return parent::actionView($id, $returnModel, $extraParams);
    }

    public function actionCreate($extraParams = [])
    {
        throw new ForbiddenHttpException();
    }

    public function actionDelete($id, $returnModel = false)
    {
        throw new ForbiddenHttpException();
    }

    public function actionPreview()
    {
        $previewForm = new EmailPreviewForm();
        if ($previewForm->load(\Yii::$app->request->post()) && $previewForm->validate()) {
            $order = Order::findOne($previewForm->orderID);
            $emailTemplate = EmailTemplate::findOne($previewForm->emailTemplateID);
            $html = $emailTemplate->loadEmailBody($order);
            echo $html;
            exit;
        }
    }

}