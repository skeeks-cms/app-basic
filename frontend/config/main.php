<?php
/**
 * Конфиг сайтвой части приложения
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 15.10.2014
 * @since 1.0.0
 */
$config = [
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'frontend\controllers',

    'params' => (new \skeeks\cms\Config([
        COMMON_CONFIG_DIR . "/params.php",
        COMMON_ENV_CONFIG_DIR . "/params.php",
        APP_CONFIG_DIR . "/params.php",
        APP_ENV_CONFIG_DIR . "/params.php"
    ]))->getResult(),

    'components' =>
    [
        'errorHandler' => [
            'errorAction' => 'cms/error/error',
        ],

        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'skeeks2',
        ],

        'user' =>
        [
            'identityClass' => 'common\models\User',
            /*'identityCookie' => [
                'name' => '_identity',
                'httpOnly' => true,
                'domain' => '.cms.skeeks.com'
            ]*/
        ],
    ]
];

return $config;