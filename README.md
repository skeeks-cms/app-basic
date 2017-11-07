Base app on SkeekS CMS (Yii2)
================

[![skeeks!](https://cms.skeeks.com/uploads/all/35/fd/33/35fd33aa306823dbaf53a0142d43b3fa.png)](http://cms.skeeks.com)

[![Latest Stable Version](https://poser.pugx.org/skeeks/app-basic/v/stable.png)](https://packagist.org/packages/skeeks/app-basic)
[![Total Downloads](https://poser.pugx.org/skeeks/app-basic/downloads.png)](https://packagist.org/packages/skeeks/app-basic)
[![Dependency Status](https://www.versioneye.com/php/skeeks:app-basic/dev-master/badge.png)](https://www.versioneye.com/php/skeeks:app-basic/dev-master)


Links
-----

* [Web site](https://cms.skeeks.com)
* [Author](https://skeeks.com)
* [ChangeLog](https://github.com/skeeks-cms/cms/blob/master/CHANGELOG.md)
* [Youtube](https://www.youtube.com/channel/UC26fcOT8EK0Rr80WSM44mEA)
* [Facebook](https://www.facebook.com/skeekscom)
* [Vk](https://vk.com/skeeks_com)

Installation
------------

```bash
# Download latest version of composer
curl -sS https://getcomposer.org/installer | COMPOSER_HOME=.composer php

# Installing the base project SkeekS CMS
COMPOSER_HOME=.composer php composer.phar create-project --prefer-dist --stability=dev skeeks/app-basic demo.ru
# Going into the project folder
cd demo.ru

#Edit the file to access the database, it is located at common/config/db.php

#Installation of ready-dump
php yii dbDumper/mysql/restore
```


Documentation
-------------

- [Web version](https://docs.cms.skeeks.com/en/latest/).
- [Pdf version](https://media.readthedocs.org/pdf/skeeks-cms/latest/skeeks-cms.pdf).
- [Веб-версия на русскомя зыке](https://docs.cms.skeeks.com/ru/latest/).
- [Pdf-версия на русскомя зыке](https://media.readthedocs.org/pdf/skeeks-cms-ru/latest/skeeks-cms-ru.pdf).


Screenshots
-------------

[![skeeks!](https://cms.skeeks.com/uploads/all/11/46/fc/1146fc43f1f4663a70b9d1101e550863.png)](http://cms.skeeks.com)



___

> [![skeeks!](https://skeeks.com/img/logo/logo-no-title-80px.png)](https://skeeks.com)  
<i>SkeekS CMS (Yii2) — quickly, easily and effectively!</i>  
[skeeks.com](https://skeeks.com) | [cms.skeeks.com](https://cms.skeeks.com)
