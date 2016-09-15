<?php

namespace backend\models;

use common\models\Bean;
use common\modules\i18n\Module;
use Yii;

/**
 * This is the model class for table "template".
 *
 * @property integer $id
 * @property string $name
 * @property string $alias
 * @property string $text
 * @property string $footer
 */
class Template extends Bean
{
    /**
     * Aliases for templates
     * */
    const ALIAS_CONFIRM = "confirm";
    const ALIAS_INVOICE = "invoice";
    const ALIAS_INVOICE_EMAIL = "invoiceEmail";

    const TEMPLATE_PREFIX = "[";
    const TEMPLATE_SUFFIX = "]";

    private static $emailViewPath = '';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'template';
    }

    /**
     * Method for getting the name of the bean
     * Is called for breadcrumb generation
     * @return array
     */
    public static function getLabels()
    {
        return [
            'singular' => 'Template',
            'multiple' => 'Templates'
        ];
    }

    /**
     * Find template row for product line and copy it
     * @param string $html
     * @return string
     */
    private function findTemplateString($html)
    {
        $dom = new \DOMDocument();
        $dom->loadHTML($html);
        $xpath = new \DOMXPath($dom);
        $result = $xpath->query('//tr[@id="template-line"]');
        if ($result->length > 0) {
            $newDom = new \DOMDocument();
            $newDom->appendChild($newDom->importNode($result->item(0), true));
            $template_string = trim($newDom->saveHTML());
            return $template_string;
        }
        return "";
    }

    /**
     * Method that replaces all keywords to appropriate values
     * @param string $content
     * @param array $data
     * @return string mixed
     */
    public static function replaceTemplates($content, $data)
    {
        foreach ($data as $prefix => $bean) {
            foreach ($bean as $property => $value) {
                $keyword = self::formTemplateKey($prefix, $property);
                $content = str_replace($keyword, $value, $content);
            }
        }
        return $content;
    }

    /**
     * Form keyword from prefix and property (attribute)
     * @param $prefix
     * @param $property
     * @return string
     */
    private static function formTemplateKey($prefix, $property)
    {
        return self::TEMPLATE_PREFIX . strtoupper($prefix) . "_" . strtoupper($property) . self::TEMPLATE_SUFFIX;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'alias', 'text'], 'required'],
            [['text', 'footer'], 'string'],
            [['name', 'alias'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'    => Module::t('Id'),
            'name'  => Module::t('Name'),
            'alias' => Module::t('Alias'),
            'text'  => Module::t('Text'),
        ];
    }


}
