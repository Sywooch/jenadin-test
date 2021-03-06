<?php

namespace common\models\Search;

use common\models\Lang;
use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\PaymentType;

/**
 * PaymentTypeSearch represents the model behind the search form about `common\models\PaymentType`.
 */
class PaymentTypeSearch extends PaymentType
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'created_at', 'updated_at'], 'integer'],
            [['alias'], 'safe'],
            ['title', 'string'],
        ];
    }

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
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = PaymentType::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id'         => $this->id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        /**
         * Filtering by the multilingual fields
         */
        $query->join('left join', $this->tableLang, $this->tableLang . '.payment_type_id = ' . self::tableName() . '.id');

        $query->andFilterWhere([
            'like', 'title', $this->title,
        ])->andFilterWhere([
            'like', 'language', Lang::getCurrent()->url
        ]);

        return $dataProvider;
    }
}
