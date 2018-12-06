<?php
$config = [
    'bootstrap' => ['debug'],
    'modules' => [
        'debug' =>
        [
            'allowedIPs' => ['*'], // adjust this to your needs
            'class' => 'yii\debug\Module',
        ]
    ],
];
return $config;
