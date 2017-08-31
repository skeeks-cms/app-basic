<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 28.02.2017
 */
return [
    'id' => 'app-skeeks-console',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log', 'cms'],
    'controllerNamespace' => 'console\controllers',
    'components' => [
        'log' => [
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'urlManager' => [
            'baseUrl'   => '',
            //'hostInfo' => 'https://demo.ru'
        ]
    ],

    'params' => [],
];
