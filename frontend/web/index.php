<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 19.02.2015
 * @since 1.0.0
 */
/**
 * Перечень необязательных констант, если их не определить они будут определены по ходу выполнения проекта.
 * Ниже закомментированы их значения по умолчанию
 */
//define('YII_ENV',                 'dev');                   //Необязательная константа, если не будет определена, то определение произойдет по ходу выполнения проекта
//define('YII_DEBUG',               true);                    //Необязательная константа, если не будет определена, то определение произойдет по ходу выполнения проекта
//define('GETENV_POSSIBLE_NAMES',   'env,environment');       //Если не будет определена константа YII_ENV то значение этой константы будут прочитаны фунцией getenv(); перебирая имена возможных окружений.
//define('CONFIG_CACHE',            true);                    //Включить или отключить кэширование конфигов, по умолчанию включено, сильно разгружает проект. Много логики и мержа конфигов. Эта опция полностью отключает все эти хитрые мержи.
//define("COMMON_DIR",              ROOT_DIR . '/common');    //Где общая папка
//define("COMMON_CONFIG_DIR",       COMMON_DIR . '/config');  //Общие конфиги
//define("COMMON_RUNTIME_DIR",      COMMON_DIR . '/runtime'); //Временные файлы
//define("VENDOR_DIR",              ROOT_DIR . '/vendor');    //Вендоры

//error_reporting(E_ERROR | E_WARNING | E_PARSE);
error_reporting(E_ALL);
// определяем режим вывода ошибок
ini_set('display_errors', 'On');

/**
 * Будут определены по ходу выполенения кода
 * COMMON_ENV_CONFIG_DIR    //Дирриктория с конфигами common для текущего окружения
 * APP_ENV_CONFIG_DIR       //Дирриктория с конфигами текущего приложения для текущего окружения
 */
define("APP_DIR",               __DIR__);
define("APP_CONFIG_DIR",        realpath(__DIR__ . '/../config'));
define("APP_RUNTIME_DIR",       realpath(__DIR__ . '/../runtime'));
define("ROOT_DIR",              dirname(dirname(__DIR__)));

//Загрузка и запуск web приложения skeeks
$skeeksFile = ROOT_DIR . '/vendor/skeeks/cms/app-web.php';

if (!file_exists($skeeksFile))
{
    //Если нет app-web.php то попробуем начать установку автоматически.
    die("The project is not complete, not installed vendors.");
}

include $skeeksFile;
