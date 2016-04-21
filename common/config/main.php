<?php
/**
 * Общий конфиг для всего приложения
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 15.10.2014
 * @since 1.0.0
 */
$config = [
    'name' => 'SkeekS CMS',

    'components'    =>
    [
        'db' => include_once __DIR__ . '/db.php',

        'urlManager' => [
            'rules' => [
                [
                    'class'             => \skeeks\cms\components\urlRules\UrlRuleContentElement::className(),
                ],

                [
                    'class'             => \skeeks\cms\components\urlRules\UrlRuleTree::className(),
                ]
            ]
        ],

        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],

        'assetManager' =>
        [
            'linkAssets'        => false,
        ],

        /*'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class'     => 'yii\log\FileTarget',
                    'logVars'   => [],
                    'levels' => [
                        'error',
                        'warning'
                    ],
                ],
            ],
        ],*/


        'templateBoomerang' => [
            'class' => 'common\components\boomerang\TemplateBoomerang',
        ],

    ],
];


return $config;
