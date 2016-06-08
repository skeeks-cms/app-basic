Base app on SkeekS CMS (Yii2)
================

[![skeeks!](http://en.cms.skeeks.com/uploads/all/35/fd/33/35fd33aa306823dbaf53a0142d43b3fa.png)](http://en.cms.skeeks.com)  

##Links
* [Web site](http://en.cms.skeeks.com)
* [Web site (rus)](http://cms.skeeks.com)
* [Author](http://skeeks.com)
* [ChangeLog](https://github.com/skeeks-cms/cms/blob/master/CHANGELOG.md)

##Install

* [http://en.cms.skeeks.com/docs/install/installation-on-linux](http://en.cms.skeeks.com/docs/install/installation-on-linux)
* [http://marketplace.cms.skeeks.com/solutions/gotovyie-saytyi/191-korporativnyiy-sayt-skeeks_app-basic](http://marketplace.cms.skeeks.com/solutions/gotovyie-saytyi/191-korporativnyiy-sayt-skeeks_app-basic)
 
```bash
# Download latest version of composer
php -r "readfile('https://getcomposer.org/installer');" | php
# Installing the base project SkeekS CMS
COMPOSER_HOME=.composer php composer.phar create-project --no-install --prefer-dist skeeks/app-basic demo.ru
# Going into the project folder
cd demo.ru
# Download latest version of composer in project
php -r "readfile('https://getcomposer.org/installer');" | php
# Extra plug-ins
COMPOSER_HOME=.composer php composer.phar global require fxp/composer-asset-plugin --no-plugins
# Enter your github api key in composer.json
# "github-oauth": {"github.com":"3a941dde09e13c8fddddb75399106047b937fa9f"}
# Download dependency
COMPOSER_HOME=.composer php composer.phar install -o
# Run the command to initialize the project, the installer executable file and the necessary rights to the directory
php yii cms/init

#Edit the file to access the database, it is located at common/config/db.php

#Installation of ready-dump
php yii dbDumper/mysql/restore
```


##Demo
* [http://marketplace.cms.skeeks.com/solutions/gotovyie-saytyi/191-korporativnyiy-sayt-skeeks_app-basic](http://marketplace.cms.skeeks.com/solutions/gotovyie-saytyi/191-korporativnyiy-sayt-skeeks_app-basic)

##Screenshots
[![skeeks!](http://marketplace.cms.skeeks.com/uploads/all/11/46/fc/1146fc43f1f4663a70b9d1101e550863.png)](http://en.cms.skeeks.com)  




___

> [![skeeks!](https://gravatar.com/userimage/74431132/13d04d83218593564422770b616e5622.jpg)](http://skeeks.com)  
<i>SkeekS CMS (Yii2) — quickly, easily and effectively!</i>  
[skeeks.com](http://skeeks.com) | [en.cms.skeeks.com](http://en.cms.skeeks.com) | [cms.skeeks.com](http://cms.skeeks.com) | [marketplace.cms.skeeks.com](http://marketplace.cms.skeeks.com)

