<?php
/**
 * User
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 29.10.2014
 * @since 1.0.0
 */

namespace common\models;
use skeeks\cms\models\User as CmsUser;
use skeeks\modules\cms\game\models\Game;
use skeeks\modules\cms\game\models\GameCompany;
use skeeks\modules\cms\game\models\searchs\GameGenre;
use skeeks\modules\cms\game\models\searchs\GamePlatform;

/**
 * Class User
 * @package common\models
 */
class User
    extends CmsUser
{
    //Сюда пишем методя для расширения базовой сущьности пользователя, для конкретно этого проекта

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGames()
    {
        return $this->hasMany(Game::className(), ['updated_by' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGameCompanies()
    {
        return $this->hasMany(GameCompany::className(), ['updated_by' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGameGenres()
    {
        return $this->hasMany(GameGenre::className(), ['updated_by' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGamePlatforms()
    {
        return $this->hasMany(GamePlatform::className(), ['updated_by' => 'id']);
    }
}