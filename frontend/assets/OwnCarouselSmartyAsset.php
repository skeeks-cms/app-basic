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

use skeeks\template\smarty\SmartyAsset;

/**
 * Class OwnCarouselAsset
 * @package frontend\assets
 */
class OwnCarouselSmartyAsset extends SmartyAsset
{
    public $css = [];

    public $js = [
        'plugins/owl-carousel/owl.carousel.min.js',
    ];

    public $depends = [
        '\frontend\assets\AppAsset',
    ];
}