<?php

namespace frontend\models;


use common\models\Order;
use yii\base\Model;
use yii\data\ActiveDataProvider;

class OrderFilter extends Order
{

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     * @param $category
     * @param $extraData
     *
     * @return ActiveDataProvider
     */
    public function search($params, $category = null, $extraData = [])
    {
        $query = Order::find();

        $query->andWhere([
            'user_id' => \Yii::$app->user->id,
        ]);

        $dataProvider = new ActiveDataProvider([
            'query'      => $query,
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);
        return $dataProvider;
    }

}