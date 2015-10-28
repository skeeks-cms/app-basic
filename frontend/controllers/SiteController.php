<?php
namespace frontend\controllers;

use common\models\User;
use skeeks\cms\actions\LogoutAction;
use Yii;
use skeeks\module\cms\user\model\LoginForm;
use skeeks\module\cms\user\model\PasswordResetRequestForm;
use skeeks\module\cms\user\model\ResetPasswordForm;
use skeeks\module\cms\user\model\SignupForm;
use frontend\models\ContactForm;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
            'auth' => [
                'class' => 'yii\authclient\AuthAction',
                'successCallback' => [$this, 'successAuthclientCallback'],
            ],
            'logout' => [
                'class' => LogoutAction::className(),
            ],
        ];
    }

    /**
     * TODO: допилить, разделить
     * @param \yii\authclient\BaseClient $client
     * @return bool
     */
    public function successAuthclientCallback($client)
    {
        $attributes = $client->getUserAttributes();

        //TODO: добавить обновление данных
        if (!Yii::$app->getUser()->isGuest)
        {
            $userAuthClient = \common\models\UserAuthclient::findOne([
                "user_id"               => Yii::$app->user->getId(),
                "provider"              => $client->getId(),
                "provider_identifier"   => $attributes["id"],
            ]);

            if (!$userAuthClient)
            {
                $userAuthClient = new \common\models\UserAuthclient([
                    "user_id"               => Yii::$app->user->getId(),
                    "provider"              => $client->getId(),
                    "provider_identifier"   => $attributes["id"],
                    "provider_data"         => serialize($attributes)
                ]);

                $userAuthClient->save();
            }
        } else
        {
            $userAuthClient = \common\models\UserAuthclient::findOne([
                "provider"              => $client->getId(),
                "provider_identifier"   => $attributes["id"],
            ]);

            if ($userAuthClient)
            {
                $user = \common\models\User::findIdentity($userAuthClient->getUserId());
                if ($user)
                {
                    return Yii::$app->user->login($user, 0);
                }
            }
        }
    }

    public function actionIndex()
    {
        return $this->render('index');
    }


    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login())
        {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }


    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->params['adminEmail'])) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending email.');
            }

            return $this->refresh();
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }

    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post())) {
            if ($user = $model->signup()) {
                if (Yii::$app->getUser()->login($user)) {
                    return $this->goHome();
                }
            }
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->getSession()->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->getSession()->setFlash('error', 'Sorry, we are unable to reset password for email provided.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidParamException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->getSession()->setFlash('success', 'New password was saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }
}
