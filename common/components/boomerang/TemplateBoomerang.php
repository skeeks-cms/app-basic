<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 27.10.2015
 */
namespace common\components\boomerang;
use frontend\assets\BoomerangThemeAsset;
use skeeks\cms\base\Component;

use skeeks\cms\components\Cms;
use \Yii;
use yii\helpers\ArrayHelper;

/**
 * @var string $bodyCssClasses
 *
 * Class TemplateBoomerang
 * @package common\components\unify
 */
class TemplateBoomerang extends Component
{
    /**
     * @return array
     */
    static public function themes()
    {
        return [
            'blue'      => 'Синяя',

            'violet'    => 'Пурпурная',
            'orange'    => 'Оранжевая',
            'red'       => 'Красная',
            'green'     => 'Зеленая',
            'yellow'     => 'Желтая',
        ];
    }


    /**
     * Можно задать название и описание компонента
     * @return array
     */
    static public function descriptorConfig()
    {
        return array_merge(parent::descriptorConfig(), [
            'name'          => 'Настройки шаблона Boomerang',
        ]);
    }

    /**
     * @var string Цветовая схема
     */
    public $themeColor              = "blue";

    /**
     * @var string Изображение для фона
     */
    public $boxedBgImage                    = "/img/pattern-3.png";
    public $boxedBgCss                      = "repeat";

    /**
     * @var string
     */
    public $boxedLayout             = Cms::BOOL_Y;

    public function rules()
    {
        return ArrayHelper::merge(parent::rules(), [
            [['themeColor'], 'string'],
            [['boxedBgImage'], 'string'],
            [['boxedLayout'], 'string'],
            [['boxedBgCss'], 'string'],
        ]);
    }

    public function attributeLabels()
    {
        return ArrayHelper::merge(parent::attributeLabels(), [
            'themeColor'            => 'Цветовая схема',
            'boxedBgImage'          => 'Фоновое изображение',
            'boxedLayout'           => 'Фиксированный шаблон',
            'boxedBgCss'            => 'Css стиль для фона',
        ]);
    }


    /**
     * @return $this
     */
    public function initTheme()
    {
        if ($this->themeColor)
        {
            if (in_array($this->themeColor, array_keys(self::themes())))
            {
                \Yii::$app->view->registerCssFile(BoomerangThemeAsset::getAssetUrl('css/global-style-' . $this->themeColor . '.css'), [
                    'depends' =>
                    [
                        'frontend\assets\BoomerangThemeAsset'
                    ]
                ]);
            }
        }

        if ($this->boxedBgImage)
        {
            \Yii::$app->view->registerCss(<<<CSS
            body
            {
                background: url('{$this->boxedBgImage}') {$this->boxedBgCss};
            }
CSS
);
        }

        return $this;
    }

    /**
     * @return string
     */
    public function getBodyCssClasses()
    {
        if ($this->boxedLayout == Cms::BOOL_Y)
        {
            return 'body-boxed';
        }

        return '';
    }
}