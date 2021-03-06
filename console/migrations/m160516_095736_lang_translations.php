<?php

use yii\base\InvalidConfigException;
use yii\db\Migration;
use yii\db\Schema;

class m160516_095736_lang_translations extends Migration
{
    public function up()
    {
        $i18n = Yii::$app->getI18n();
        if (!isset($i18n->sourceMessageTable) || !isset($i18n->messageTable)) {
            throw new InvalidConfigException('You should configure i18n component');
        }
        $sourceMessageTable = $i18n->sourceMessageTable;
        $messageTable = $i18n->messageTable;
        $this->createTable($sourceMessageTable, [
            'id'       => Schema::TYPE_PK,
            'category' => Schema::TYPE_STRING,
            'message'  => Schema::TYPE_TEXT
        ]);
        $this->createTable($messageTable, [
            'id'          => Schema::TYPE_INTEGER,
            'language'    => Schema::TYPE_STRING,
            'translation' => Schema::TYPE_TEXT
        ]);
        $this->addPrimaryKey('id', $messageTable, ['id', 'language']);
        $this->addForeignKey('fk_source_message_message', $messageTable, 'id', $sourceMessageTable, 'id', 'cascade', 'restrict');
    }

    public function down()
    {
        $i18n = Yii::$app->getI18n();
        if (!isset($i18n->sourceMessageTable) || !isset($i18n->messageTable)) {
            throw new InvalidConfigException('You should configure i18n component');
        }
        $this->dropTable($i18n->sourceMessageTable);
        $this->dropTable($i18n->messageTable);
        return true;
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
