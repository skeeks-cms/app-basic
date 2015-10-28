<?php
/**
 * ProfileController
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 14.10.2014
 * @since 1.0.0
 */
namespace frontend\controllers;

use Yii;
use common\models\LoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;
use yii\base\InvalidParamException;
use yii\helpers\ArrayHelper;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\Response;

/**
 * Class ProfileController
 * @package frontend\controllers
 */
class ParseController extends Controller
{
    public function actionParse()
    {
        $KolyanFile = "http://bngnwww.b-ch.com/caption/35470338/2515/583829901912586/4496347453.xml?cashPath=1436712794100";
        $result = \common\Xml2Array::go(file_get_contents($KolyanFile));

        $counter = 1;
        $data = ArrayHelper::getValue($result, 'tt.body.div.0.p');
        foreach ($data as $row)
        {
            echo $counter . PHP_EOL;
            echo ArrayHelper::getValue($row, 'attr.begin') . ' --> ' . ArrayHelper::getValue($row, 'attr.end') . PHP_EOL;
            echo ArrayHelper::getValue($row, 'value') . PHP_EOL . PHP_EOL;

            $counter++;
        }

        \Yii::$app->response->format = Response::FORMAT_RAW;
        \Yii::$app->response->headers->set('Content-Type', 'text/plain');
        $this->layout = false;

        return;
    }
}