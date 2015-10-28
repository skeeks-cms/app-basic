<?php

$config = [
    'bootstrap' => ['debug'],
    'modules' => [
        'gii' =>
        [
            'allowedIPs' => ['80.243.13.242', '127.*']
        ],
        'debug' =>
        [
            'allowedIPs' => ['*'] // adjust this to your needs
        ]
    ],

    /*'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'skeeks1',
        ],
    ],*/
];

return $config;
