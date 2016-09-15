<?php

namespace backend\models;

use backend\behaviors\FileBehavior;
use backend\components\ManyToManyBehavior;
use common\models\Bean;
use common\modules\i18n\Module;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;
use yii\imagine\Image;

/**
 * This is the model class for table "kit".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $name
 * @property string $image
 *
 * @property Product[] $products
 * @property KitProduct[] $items
 */
class Kit extends Bean
{

    const TABLE_KIT_PRODUCT = 'kit_product';

    /**
     * @var string
     */
    public $fileImage;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kit';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['created_at', 'updated_at'], 'integer'],
            [['name', 'image'], 'string', 'max' => 255],
            [['fileImage'], 'file', 'skipOnEmpty' => true, 'extensions' => 'jpg, png'],
            ['items', 'validateRelatedBeans', 'skipOnEmpty' => false, 'skipOnError' => false, 'params' => ['beanRelatedField' => 'kit_id', 'beanClass' => KitProduct::className()]],
        ];
    }



    /**
     * Behaviors of the model
     * @return array
     */
    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            TimestampBehavior::className(),
            'file' => [
                'class'          => FileBehavior::className(),
                'fileAttributes' => [
                    'image' => 'fileImage',
                ],
                'folderName'     => 'kits',
            ],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'          => Module::t('Id'),
            'created_at'  => Module::t('Createdat'),
            'updated_at'  => Module::t('Updatedat'),
            'name'        => Module::t('Name'),
            'image'       => Module::t('Image'),
            'product_ids' => Module::t('Products'),
        ];
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Kit',
            'multiple' => 'Kits'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Product::className(), [
            'id' => 'product_id'
        ])->viaTable(self::TABLE_KIT_PRODUCT, ['kit_id' => 'id']);
    }

    public function getItems()
    {
        return $this->hasMany(KitProduct::className(), [
            'kit_id' => 'id'
        ]);
    }

    /**
     * @param bool $insert
     * @return bool
     */
    public function beforeSave($insert)
    {
        if (!empty($this->image)) {
            $filePath = \Yii::getAlias('@frontend') . '/web' . $this->image;
            if (file_exists($filePath)) {
            //    Image::thumbnail($filePath, 170, 200)->save($filePath, ['quality' => 100]);
            }
        }
        return parent::beforeSave($insert);
    }

    /**
     * @param $save
     * @param array $postData
     */
    public function setItems($postData, $save = false)
    {
        if (!$save) return;
        KitProduct::deleteAll(['Kit_id' => $this->id]);
        $data = $this->bundleMultipleBean('\backend\models\KitProduct', $postData);

        foreach ($data['items'] as $bean) {
            $bean->kit_id = $this->id;
            $bean->save();
        }
    }

    public function afterSave($insert, $changedAttributes)
    {
        $postData = \Yii::$app->request->post();
        $this->setItems($postData['Kit']['items'], true);
        parent::afterSave($insert, $changedAttributes);
    }

}
