<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link https://skeeks.com/
 * @copyright (c) 2010 SkeekS
 * @date 21.11.2017
 */
define("ROOT_DIR",              dirname(dirname(__DIR__)));

$ip = isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : "";
//print_r($ip);die;

if (
    1 == 1
    && in_array($ip, ['180.249.39.156'])
) {
    defined('YII_ENV') or define('YII_ENV', 'dev');
    defined('YII_DEBUG') or define('YII_DEBUG', true);
    defined('ENV') or define('ENV', 'dev');
}

//Загрузка и запуск web приложения skeeks
include ROOT_DIR . '/vendor/skeeks/cms/app-web.php';

