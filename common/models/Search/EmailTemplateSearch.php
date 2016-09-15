<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 8/30/2016
 * Time: 9:07 AM
 */

namespace common\models\search;


use common\models\EmailTemplate;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * Class EmailTemplateSearch
 * @package common\models\search
 */
class EmailTemplateSearch extends EmailTemplate
{

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'description', 'enabled', 'receivers', 'alias'], 'safe'],
            [['description', 'receivers'], 'string'],
            [['enabled'], 'integer'],
            [['name', 'alias'], 'string', 'max' => 255],
            [['subject'], 'string']
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
        $query = EmailTemplate::find();

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
            'id'      => $this->id,
            'enabled' => $this->enabled,
        ]);

        $query->andFilterWhere([
            'like', 'name', $this->name
        ]);

        return $dataProvider;
    }

}