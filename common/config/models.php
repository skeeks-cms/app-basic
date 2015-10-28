<?php
/**
 * базовые глобальные опции
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 20.11.2014
 * @since 1.0.0
 */
return
[
    'publication' =>
    [
        'modelClass'                 => 'skeeks\cms\models\Publication',
        'name'                       => 'Публикация',

        'types'                 =>
        [
            'news' =>
            [
                'name'      => 'Новость'
            ],

            'article' =>
            [
                'name'      => 'Статья',
            ],
        ],

        /*'actionViews'                 =>
        [
            'news' =>
            [
                'name'      => 'Новость'
            ],

            'article' =>
            [
                'name'      => 'Статья',
            ],
        ]*/
    ],

    'tree' =>
    [
        'types'                 =>
        [
            'homePage' =>
            [
                'name'          => 'Главная страница',
                'actionView'    => 'home',
            ],

            'secondPage' =>
            [
                'name'          => 'Вторая страница',
                'actionView'    => 'second'
            ],

            'contacts' =>
            [
                'name'          => 'Страница контактов',
                'actionView'    => 'contacts'
            ],
        ],

        'actionViews'                 =>
        [
            'home' =>
            [
                'name'      => 'Главная страница'
            ],

            'second' =>
            [
                'name'      => 'Вторая страница',
            ],

            'contacts' =>
            [
                'name'      => 'Страница контактов',
            ],
        ]
    ],
];