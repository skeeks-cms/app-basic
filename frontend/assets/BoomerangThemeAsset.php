<?php
/**
 * AppAsset
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 20.10.2014
 * @since 1.0.0
 */

namespace frontend\assets;

use skeeks\template\boomerang\BoomerangAsset;

/**
 * Class SmartyThemeAsset
 * @package frontend\assets
 */
class BoomerangThemeAsset extends BoomerangAsset
{
    public $css = [
        'font-awesome/css/font-awesome.min.css',
        'css/global-style.css',
        'assets/layerslider/css/layerslider.css',
    ];

    public $js = [
        'assets/layerslider/js/greensock.js',
        'assets/layerslider/js/layerslider.transitions.js',
        'assets/layerslider/js/layerslider.kreaturamedia.jquery.js',
    ];
}