<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */
use yii\base\InvalidConfigException;
use yii\db\Schema;
use yii\rbac\DbManager;
/**
 * Initializes RBAC tables
 *
 * @author Alexander Kochetov <creocoder@gmail.com>
 * @since 2.0
 */
class m171121_102106_db_init extends \yii\db\Migration
{
    public function safeUp()
    {
        if ($this->db->driverName === 'mysql') {
            $version = 'db__2018-12-06_07-03-10.sql';
            $filePath = dirname(__DIR__) . "/db/{$version}";
            $file = fopen($filePath, "r");
            if (!$file) {
                throw new \Exception("Unable to open file: '{$filePath}'");
            }
            $sql = fread($file, filesize($filePath));
            fclose($file);
            $this->compact = true;
            $this->execute($sql);
        } else if ($this->db->driverName === 'pgsql') {

            echo "Error for driver {$this->db->driverName} cannot be reverted.\n";
            return false;

            $version = 'db__2017-11-21_11-49-03.sql';
            $filePath = dirname(__DIR__) . "/pgsql/{$version}";
            $file = fopen($filePath, "r");
            if (!$file) {
                throw new \Exception("Unable to open file: '{$filePath}'");
            }
            $sql = fread($file, filesize($filePath));
            fclose($file);
            /*$this->db->pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, true);
            $this->compact = true;
            $this->execute($sql);
            */
            $this->compact = true;
            $pdo = $this->db->masterPdo;
            $pdo->exec($sql);
        } else {
            echo "Error for driver {$this->db->driverName} cannot be reverted.\n";
            return false;
        }
    }
    public function down()
    {
        echo "m171121_102106_db_init cannot be reverted.\n";
        return false;
    }
}