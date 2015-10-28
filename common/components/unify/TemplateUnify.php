<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 19.03.2015
 */
namespace common\components\unify;
use skeeks\cms\base\Component;

use skeeks\cms\components\Cms;
use \Yii;
use yii\helpers\ArrayHelper;

/**
 * @property string $bodyClasses
 *
 * Class TemplateUnify
 * @package common\components\unify
 */
class TemplateUnify extends Component
{
    /**
     * @var array Доступные темы
     */
    static public $themes =
    [
        'purple'    => 'Пурпурная',
        'orange'    => 'Оранжевая',
        'blue'      => 'Синяя',
        'red'       => 'Красная',
    ];

    /**
     * Можно задать название и описание компонента
     * @return array
     */
    static public function descriptorConfig()
    {
        return array_merge(parent::descriptorConfig(), [
            'name'          => 'Настройки шаблона Unify',
        ]);
    }

    /**
     * @var string Цветовая схема
     */
    public $themeColor              = "";

    /**
     * @var string Изображение для фона
     */
    public $boxedBgImage                 = "";

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
        ]);
    }

    public function attributeLabels()
    {
        return ArrayHelper::merge(parent::attributeLabels(), [
            'themeColor'    => 'Цветовая схема',
            'boxedBgImage'       => 'Фоновое изображение',
            'boxedLayout'   => 'Boxed Layout',
        ]);
    }


    /**
     * @return $this
     */
    public function initTheme()
    {
        if ($this->themeColor)
        {
            if (in_array($this->themeColor, array_keys(self::$themes)))
            {
                \Yii::$app->view->registerCssFile('/unify/css/theme-colors/' . $this->themeColor . '.css', [
                    'depends' =>
                    [
                        'frontend\assets\AppAsset'
                    ]
                ]);
            }
        }

        if ($this->boxedBgImage)
        {
            \Yii::$app->view->registerCss(<<<CSS
            body.boxed-layout
            {
                background: url('{$this->boxedBgImage}') fixed center;
            }
CSS
);
        }

        return $this;
    }

    /**
     * @return string
     */
    public function getBodyClasses()
    {
        if ($this->boxedLayout == Cms::BOOL_Y)
        {
            return 'boxed-layout container';
        }

        return '';
    }
}