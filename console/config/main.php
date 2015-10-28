<?php
/**
 * main
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 19.02.2015
 * @since 1.0.0
 */
return [
    'id' => 'app-console',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log', 'gii', 'cms'],
    'controllerNamespace' => 'console\controllers',
    'modules' => [
        'gii' => 'yii\gii\Module',
    ],
    'components' => [
        'log' => [
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
    ],

    'params' => (new \skeeks\cms\Config([
        COMMON_CONFIG_DIR . "/params.php",
        COMMON_ENV_CONFIG_DIR . "/params.php",
        APP_CONFIG_DIR . "/params.php",
        APP_ENV_CONFIG_DIR . "/params.php"
    ]))->getResult(),
];
