<?php

namespace common\models;

use backend\behaviors\FileBehavior;
use backend\components\SiteHelper;
use common\components\MultilingualBehavior;
use common\modules\i18n\Module;
use Yii;
use yii\base\Exception;
use yii\behaviors\TimestampBehavior;
use yii\helpers\ArrayHelper;
use yii\helpers\BaseFileHelper;
use yii\web\UploadedFile;

/**
 * This is the model class for table "magazine".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $image
 *
 * @property MagazineItem[] $magazineItems
 */
class Magazine extends Bean
{

    /**
     * @var mixed
     */
    public $fileImage;

    /**
     * @var string
     */
    protected $tableLang = 'magazinelang';

    /**
     * Init function
     */
    public function init()
    {
        $this->multiLanguageFields = ['title'];
        parent::init();
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'magazine';
    }

    /**
     * @return array
     */
    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            'timestamp' => [
                'class' => TimestampBehavior::className(),
            ],
            'ml'        => [
                'class'           => MultilingualBehavior::className(),
                'defaultLanguage' => Lang::getDefaultLang()->url,
                'langForeignKey'  => 'magazine_id',
                'tableName'       => "{{%" . $this->tableLang . "}}",
                'attributes'      => $this->multiLanguageFields,
            ],
            'file'      => [
                'class'          => FileBehavior::className(),
                'fileAttributes' => [
                    'image' => 'fileImage',
                ],
                'folderName'     => 'magazines',
            ],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        $multiLanguageNames = $this->formMultiLanguageFields();
        $safe = $multiLanguageNames['title'];
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['image'], 'string', 'max' => 255],
            [$safe, 'safe'],
            [['fileImage'], 'file', 'skipOnEmpty' => true, 'extensions' => 'jpg, png'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => Module::t('Id'),
            'created_at' => Module::t('Createdat'),
            'updated_at' => Module::t('Updatedat'),
            'image'      => Module::t('Image'),
            'fileImage'  => Module::t('Image'),
            'title'      => Module::t('Title'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMagazineItems()
    {
        return $this->hasMany(MagazineItem::className(), ['magazine_id' => 'id'])->orderBy('sort');
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Magazine',
            'multiple' => 'Magazines'
        ];
    }

    /**
     * @return mixed
     */
    public function getMagazineTitle()
    {
        $fieldName = self::getMultiAttributeName('title', Lang::getCurrent()->url);
        return $this->{$fieldName};
    }

    /**
     * @param array $postData
     * @param $save
     * @return mixed
     */
    public function setMagazineItems($postData, $save = false)
    {
        if (!$save) return null;
        MagazineItem::deleteAll(['magazine_id' => $this->id]);
        $files = UploadedFile::getInstancesByName('file');
        $uploadFolder = self::getUploadFolder();
        $errors = [];
        if (!empty($postData)) {
            $data = array_key_exists('MagazineItem', $postData) ? $postData['MagazineItem'] : [];
            $counter = 0;
            foreach ($data as $key => $beanArray) {
                $bean = new MagazineItem();
                if (array_key_exists('image', $beanArray)) {
                    $bean->image = $beanArray['image'];
                }
                else {
                    /**
                     * Load image
                     */
                    if (!array_key_exists($counter, $files)) continue;
                    $file = $files[$counter];
                    $baseName = SiteHelper::translit($file->baseName);
                    $relativePath = $uploadFolder['relativePath'] .  $baseName . "." . $file->extension;
                    $path = $uploadFolder['path'] . $baseName . "." . $file->extension;
                    $file->saveAs($path);
                    $bean->image = $relativePath;
                    $counter++;
                }
                $bean->sort = $beanArray['sort'];
                $bean->magazine_id = $this->id;
                $bean->save();
            }
        }
        return $errors;
    }

    /**
     * Get directory where customer's file is saved
     * @return string
     * @throws Exception
     */
    public function getUploadFolder()
    {
        $id = $this->id;
        $basePath = \Yii::getAlias('@frontend') . '/web';
        $relativePath = "/uploads/magazine-items/" . $id . "/";
        $path = [
            'path'         => $basePath . $relativePath,
            'relativePath' => $relativePath
        ];
        BaseFileHelper::createDirectory($path['path']);
        return $path;
    }

    /**
     * @param bool $insert
     * @param array $changedAttributes
     */
    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes);
        if (method_exists(\Yii::$app->request, 'post')) {
            $postData = \Yii::$app->request->post();
            $errors = $this->setMagazineItems($postData, true);
            if (!empty($errors)) {
                \Yii::$app->session->setFlash('error', implode(',', $errors));
            }
        }
    }
}
