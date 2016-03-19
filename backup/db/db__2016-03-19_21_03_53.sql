-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: skeeks_app-basic
-- ------------------------------------------------------
-- Server version 	5.5.46-0ubuntu0.14.04.2-log
-- Date: Sat, 19 Mar 2016 21:03:53 +0300

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_assignment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_assignment` VALUES ('root',1,1439037301);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `auth_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_item` VALUES ('admin',1,'Администратор',NULL,NULL,1439037301,1439037301),('admin/admin-permission',2,'Администрирование | Управление привилегиями',NULL,NULL,1439297538,1439297538),('admin/admin-role',2,'Администрирование | Управление ролями',NULL,NULL,1439297538,1439297538),('admin/checker',2,'Администрирование | Проверка системы',NULL,NULL,1439297538,1439297538),('admin/clear',2,'Администрирование | Удаление временных файлов',NULL,NULL,1439297538,1439297538),('admin/db',2,'Администрирование | Удаление временных файлов',NULL,NULL,1439297538,1439297538),('admin/email',2,'Администрирование | Тестирование отправки email сообщений с сайта',NULL,NULL,1439297538,1439297538),('admin/gii',2,'Администрирование | Генератор кода',NULL,NULL,1439297538,1439297538),('admin/index',2,'Администрирование | Рабочий стол',NULL,NULL,1443689676,1443689676),('admin/info',2,'Администрирование | Информация о системе',NULL,NULL,1439297538,1439297538),('admin/ssh',2,'Администрирование | Ssh консоль',NULL,NULL,1439297538,1439297538),('approved',1,'Подтвержденный пользователь',NULL,NULL,1443647312,1443647312),('cms.admin-access',2,'Доступ к системе администрирования',NULL,NULL,1439037301,1439037301),('cms.admin-dashboards-edit',2,'Access to edit dashboards',NULL,NULL,1455882084,1455882084),('cms.controll-panel-access',2,'Доступ к панеле управления сайтом',NULL,NULL,1439037301,1439037301),('cms.edit-view-files',2,'The ability to edit view files',NULL,NULL,1447185422,1447185422),('cms.elfinder-additional-files',2,'Доступ ко всем файлам',NULL,NULL,1439037301,1439037301),('cms.elfinder-common-public-files',2,'Доступ к общим публичным файлам',NULL,NULL,1439037301,1439037301),('cms.elfinder-user-files',2,'Доступ к личным файлам',NULL,NULL,1439037301,1439037301),('cms.model-create',2,'Возможность создания записей',NULL,NULL,1439037301,1439037301),('cms.model-delete',2,'Удаление записей',NULL,NULL,1439037301,1439037301),('cms.model-delete-own',2,'Удаление своих записей','isAuthor',NULL,1439037301,1439037301),('cms.model-update',2,'Обновление данных записей',NULL,NULL,1439037301,1439037301),('cms.model-update-advanced',2,'Обновление дополнительных данных записей',NULL,NULL,1439037301,1439037301),('cms.model-update-advanced-own',2,'Обновление дополнительных данных своих записей','isAuthor',NULL,1439037301,1439037301),('cms.model-update-own',2,'Обновление данных своих записей','isAuthor',NULL,1439037301,1439037301),('cms.user-full-edit',2,'The ability to manage user groups',NULL,NULL,1457470067,1457470067),('cms/admin-cms-agent',2,'Администрирование | Управление агентами',NULL,NULL,1439297538,1439297538),('cms/admin-cms-content',2,'Администрирование | Управление контентом',NULL,NULL,1443696551,1443696551),('cms/admin-cms-content-element',2,'Администрирование | Элементы',NULL,NULL,1443700128,1443700128),('cms/admin-cms-content-element__1',2,'Администрирование | Публикации',NULL,NULL,1443699185,1443699185),('cms/admin-cms-content-element__2',2,'Администрирование | Слайды',NULL,NULL,1443697223,1443697223),('cms/admin-cms-content-element__3',2,'Администрирование | Услуги',NULL,NULL,1445806952,1445806952),('cms/admin-cms-content-type',2,'Администрирование | Управление контентом',NULL,NULL,1439297538,1439297538),('cms/admin-cms-lang',2,'Администрирование | Управление языками',NULL,NULL,1439297538,1439297538),('cms/admin-cms-site',2,'Администрирование | Управление сайтами',NULL,NULL,1439297538,1439297538),('cms/admin-cms-tree-type',2,'Администрирование | Настройки разделов',NULL,NULL,1439297538,1439297538),('cms/admin-cms-user-universal-property',2,'Администрирование | Управление свойствами пользователя',NULL,NULL,1445957836,1445957836),('cms/admin-component-settings',2,'Администрирование | Управление настройками компонентов',NULL,NULL,1443695979,1443695979),('cms/admin-file-manager',2,'Администрирование | Файловый менеджер',NULL,NULL,1439297538,1439297538),('cms/admin-marketplace',2,'Администрирование | Маркетплейс',NULL,NULL,1439297538,1439297538),('cms/admin-settings',2,'Администрирование | Управление настройками',NULL,NULL,1439297538,1439297538),('cms/admin-storage',2,'Администрирование | Управление серверами',NULL,NULL,1439297538,1439297538),('cms/admin-storage-files',2,'Администрирование | Управление файлами хранилища',NULL,NULL,1439297538,1439297538),('cms/admin-tree',2,'Администрирование | Дерево страниц',NULL,NULL,1439297538,1439297538),('cms/admin-tree-menu',2,'Администрирование | Управление позициями меню',NULL,NULL,1439297538,1439297538),('cms/admin-universal-component-settings',2,'Администрирование | Управление настройками компонента',NULL,NULL,1445806012,1445806012),('cms/admin-user',2,'Администрирование | Управление пользователями',NULL,NULL,1439297538,1439297538),('cms/admin-user-email',2,'Администрирование | Управление email адресами',NULL,NULL,1439297538,1439297538),('cms/admin-user-phone',2,'Администрирование | Управление телефонами',NULL,NULL,1439297538,1439297538),('editor',1,'Редактор (доступ а администрированию)',NULL,NULL,1439037301,1439037301),('form2/admin-form',2,'Администрирование | Управление формами',NULL,NULL,1439297538,1439297538),('form2/admin-form-property',2,'Администрирование | Управление свойствами',NULL,NULL,1445805998,1445805998),('form2/admin-form-send',2,'Администрирование | Сообщения с форм',NULL,NULL,1439297538,1439297538),('guest',1,'Неавторизованный пользователь',NULL,NULL,1439037301,1439037301),('manager',1,'Менеджер (доступ а администрированию)',NULL,NULL,1439037301,1439037301),('reviews2.add.review',2,'Добавление отзывов',NULL,NULL,1441207879,1441207879),('reviews2/admin-message',2,'Администрирование | Управление отзывами',NULL,NULL,1439297538,1439297538),('root',1,'Суперпользователь',NULL,NULL,1439037301,1439037301),('user',1,'Зарегистрированный пользователь',NULL,NULL,1439037301,1439037301);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `auth_item_child`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_item_child` VALUES ('root','admin'),('root','admin/admin-permission'),('root','admin/admin-role'),('root','admin/checker'),('root','admin/clear'),('root','admin/db'),('root','admin/email'),('root','admin/gii'),('root','admin/index'),('root','admin/info'),('root','admin/ssh'),('root','approved'),('admin','cms.admin-access'),('editor','cms.admin-access'),('manager','cms.admin-access'),('root','cms.admin-access'),('root','cms.admin-dashboards-edit'),('admin','cms.controll-panel-access'),('editor','cms.controll-panel-access'),('manager','cms.controll-panel-access'),('root','cms.controll-panel-access'),('root','cms.edit-view-files'),('admin','cms.elfinder-additional-files'),('root','cms.elfinder-additional-files'),('admin','cms.elfinder-common-public-files'),('editor','cms.elfinder-common-public-files'),('manager','cms.elfinder-common-public-files'),('root','cms.elfinder-common-public-files'),('admin','cms.elfinder-user-files'),('editor','cms.elfinder-user-files'),('manager','cms.elfinder-user-files'),('root','cms.elfinder-user-files'),('admin','cms.model-create'),('editor','cms.model-create'),('manager','cms.model-create'),('root','cms.model-create'),('admin','cms.model-delete'),('cms.model-delete-own','cms.model-delete'),('manager','cms.model-delete'),('root','cms.model-delete'),('editor','cms.model-delete-own'),('root','cms.model-delete-own'),('admin','cms.model-update'),('cms.model-update-own','cms.model-update'),('manager','cms.model-update'),('root','cms.model-update'),('admin','cms.model-update-advanced'),('cms.model-update-advanced-own','cms.model-update-advanced'),('root','cms.model-update-advanced'),('root','cms.model-update-advanced-own'),('editor','cms.model-update-own'),('root','cms.model-update-own'),('root','cms.user-full-edit'),('root','cms/admin-cms-agent'),('root','cms/admin-cms-content'),('root','cms/admin-cms-content-element'),('root','cms/admin-cms-content-element__1'),('root','cms/admin-cms-content-element__2'),('root','cms/admin-cms-content-element__3'),('root','cms/admin-cms-content-type'),('root','cms/admin-cms-lang'),('root','cms/admin-cms-site'),('root','cms/admin-cms-tree-type'),('root','cms/admin-cms-user-universal-property'),('root','cms/admin-component-settings'),('root','cms/admin-file-manager'),('root','cms/admin-marketplace'),('root','cms/admin-settings'),('root','cms/admin-storage'),('root','cms/admin-storage-files'),('root','cms/admin-tree'),('root','cms/admin-tree-menu'),('root','cms/admin-universal-component-settings'),('root','cms/admin-user'),('root','cms/admin-user-email'),('root','cms/admin-user-phone'),('root','editor'),('root','form2/admin-form'),('root','form2/admin-form-property'),('root','form2/admin-form-send'),('root','guest'),('root','manager'),('root','reviews2.add.review'),('root','reviews2/admin-message'),('root','user');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `auth_rule`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_rule` VALUES ('isAuthor','O:26:\"skeeks\\cms\\rbac\\AuthorRule\":3:{s:4:\"name\";s:8:\"isAuthor\";s:9:\"createdAt\";i:1439037301;s:9:\"updatedAt\";i:1439037301;}',1439037301,1439037301);
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_agent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_exec_at` int(11) DEFAULT NULL,
  `next_exec_at` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text,
  `agent_interval` int(11) NOT NULL DEFAULT '86400',
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `is_period` char(1) NOT NULL DEFAULT 'Y',
  `is_running` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `last_exec_at` (`last_exec_at`),
  KEY `next_exec_at` (`next_exec_at`),
  KEY `agent_interval` (`agent_interval`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  KEY `is_period` (`is_period`),
  KEY `is_running` (`is_running`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Агенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_agent`
--

LOCK TABLES `cms_agent` WRITE;
/*!40000 ALTER TABLE `cms_agent` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_agent` VALUES (4,1458396834,1458483234,'cms/utils/clear-search-phrase','Чистка поисковых запросов',86400,100,'Y','N','N'),(5,1458410602,1458421402,'cms/db/refresh','Инвалидация кэша структуры таблиц',10800,100,'Y','N','N'),(6,NULL,1458484420,'cms/cache/flush-runtimes','Чистка временных диррикторий',86400,100,'Y','N','N'),(7,NULL,1458484420,'cms/db/dump','Бэкап базы данных',86400,100,'Y','N','N');
/*!40000 ALTER TABLE `cms_agent` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_component_settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_component_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `value` longtext,
  `site_code` char(15) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lang_code` char(5) DEFAULT NULL,
  `namespace` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `component` (`component`),
  KEY `site_code` (`site_code`),
  KEY `user_id` (`user_id`),
  KEY `lang_code` (`lang_code`),
  KEY `namespace` (`namespace`),
  CONSTRAINT `cms_component_settings_lang_code` FOREIGN KEY (`lang_code`) REFERENCES `cms_lang` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_component_settings_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_component_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_settings_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_settings_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_component_settings`
--

LOCK TABLES `cms_component_settings` WRITE;
/*!40000 ALTER TABLE `cms_component_settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_component_settings` VALUES (1,1,1,1439039222,1439039222,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"4\",\"active\":\"Y\",\"level\":\"\",\"label\":\"\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/sub-catalog\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"TreeMenuCmsWidget-sub-catalog-main\"},\"namespace\":\"TreeMenuCmsWidget-sub-catalog-main\"}',NULL,NULL,NULL,'TreeMenuCmsWidget-sub-catalog-main'),(2,1,1,1439303916,1447184420,'skeeks\\cms\\assetsAuto\\SettingsAssetsAutoCompress','{\"enabled\":\"0\",\"jsCompress\":\"1\",\"jsCompressFlaggedComments\":\"1\",\"cssCompress\":\"1\",\"cssFileCompile\":\"1\",\"cssFileRemouteCompile\":\"0\",\"cssFileCompress\":\"1\",\"cssFileBottom\":\"\",\"cssFileBottomLoadOnJs\":\"\",\"jsFileCompile\":\"1\",\"jsFileRemouteCompile\":\"0\",\"jsFileCompress\":\"1\",\"jsFileCompressFlaggedComments\":\"1\",\"enabledPreloader\":\"\",\"preloaderBodyHtml\":\"<div class=\\\"sx-preloader\\\">\\r\\n    <div id=\\\"sx-loaderImage\\\"></div>\\r\\n</div>\",\"preloaderBodyCss\":\".sx-preloader{\\r\\n  display: table;\\r\\n  background: #1e1e1e;\\r\\n  z-index: 999999;\\r\\n  position: fixed;\\r\\n  height: 100%;\\r\\n  width: 100%;\\r\\n  left: 0;\\r\\n  top: 0;\\r\\n}\\r\\n\\r\\n#sx-loaderImage {\\r\\n  display: table-cell;\\r\\n  vertical-align: middle;\\r\\n  overflow: hidden;\\r\\n  text-align: center;\\r\\n}\\r\\n\\r\\n\\r\\n#sx-canvas {\\r\\n  display: table-cell;\\r\\n  vertical-align: middle;\\r\\n  margin: 0 auto;\\r\\n}\",\"preloaderBodyJs\":\"\\tjQuery(window).load(function(){\\r\\n\\t\\tjQuery(\'.sx-preloader\').fadeOut(\'slow\',function(){jQuery(this).remove();});\\r\\n\\t});\",\"defaultAttributes\":{\"enabled\":false,\"jsCompress\":true,\"jsCompressFlaggedComments\":true,\"cssCompress\":true,\"cssFileCompile\":true,\"cssFileRemouteCompile\":false,\"cssFileCompress\":false,\"cssFileBottom\":false,\"cssFileBottomLoadOnJs\":false,\"jsFileCompile\":true,\"jsFileRemouteCompile\":false,\"jsFileCompress\":true,\"jsFileCompressFlaggedComments\":true,\"enabledPreloader\":false,\"preloaderBodyHtml\":\"<div class=\\\"sx-preloader\\\">\\n    <div id=\\\"sx-loaderImage\\\"></div>\\n</div>\",\"preloaderBodyCss\":\".sx-preloader{\\n  display: table;\\n  background: #1e1e1e;\\n  z-index: 999999;\\n  position: fixed;\\n  height: 100%;\\n  width: 100%;\\n  left: 0;\\n  top: 0;\\n}\\n\\n#sx-loaderImage {\\n  display: table-cell;\\n  vertical-align: middle;\\n  overflow: hidden;\\n  text-align: center;\\n}\\n\\n\\n#sx-canvas {\\n  display: table-cell;\\n  vertical-align: middle;\\n  margin: 0 auto;\\n}\",\"preloaderBodyJs\":\"\\tjQuery(window).load(function(){\\n\\t\\tjQuery(\'.sx-preloader\').fadeOut(\'slow\',function(){jQuery(this).remove();});\\n\\t});\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(4,1,1,1443696591,1443697282,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/slides\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-slides\"},\"namespace\":\"ContentElementsCmsWidget-slides\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-slides'),(5,1,1,1443698727,1455882445,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"6f4cf3ff\",\"9d505500\",\"ab768f41\",\"c68056fd\",\"4369038e\",\"c79b45e9\",\"b77921d4\",\"7276e0e4\",\"4663e865\",\"2564e302\"],\"grid\":null,\"orderBy\":\"priority\",\"order\":\"4\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"cms/admin-cms-content-element/index2\"},\"namespace\":\"cms/admin-cms-content-element/index2\"}',NULL,NULL,NULL,'cms/admin-cms-content-element/index2'),(6,1,1,1443699012,1445808988,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Услуги\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"4\",\"active\":\"\",\"createdBy\":[],\"content_ids\":[\"3\"],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"@template/widgets/ContentElementsCmsWidget/articles-footer\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-footer\"},\"namespace\":\"ContentElementsCmsWidget-footer\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-footer'),(7,1,1,1445809130,1445809161,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"N\",\"enabledPjaxPagination\":\"N\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Услуги\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"4\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"3\"],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/publications\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home\"},\"namespace\":\"ContentElementsCmsWidget-home\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-home'),(10,1,1,1446145239,1455884222,'skeeks\\cms\\modules\\admin\\components\\settings\\AdminSettings','{\"languageCode\":\"ru\"}',NULL,1,NULL,NULL),(11,1,1,1446246127,1446246542,'skeeks\\cms\\components\\Cms','{\"adminEmail\":\"admin@skeeks.com\",\"notifyAdminEmailsHidden\":\"\",\"notifyAdminEmails\":\"\",\"appName\":\"SkeekS CMS\",\"noImageUrl\":\"http://vk.com/images/deactivated_100.gif\",\"userPropertyTypes\":[],\"registerRoles\":[\"user\"],\"languageCode\":\"ru\",\"passwordResetTokenExpire\":\"3600\",\"enabledHitAgents\":\"Y\",\"hitAgentsInterval\":\"60\",\"enabledHttpAuth\":\"N\",\"enabledHttpAuthAdmin\":\"N\",\"httpAuthLogin\":\"\",\"httpAuthPassword\":\"\",\"debugEnabled\":\"N\",\"debugAllowedIPs\":\"*\",\"giiEnabled\":\"N\",\"giiAllowedIPs\":\"*\",\"licenseKey\":\"\",\"templatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/views\":[\"@app/templates/default\"]}}},\"templates\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/views\":[\"@app/templates/default\"]}}},\"template\":\"default\",\"emailTemplatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/mail\":[\"@app/mail\",\"@skeeks/cms/mail\"]}}},\"emailTemplates\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/mail\":[\"@app/mail\",\"@skeeks/cms/mail\"]}}},\"emailTemplate\":\"default\",\"defaultAttributes\":{\"adminEmail\":\"admin@skeeks.com\",\"notifyAdminEmailsHidden\":\"\",\"notifyAdminEmails\":\"\",\"appName\":null,\"noImageUrl\":\"http://vk.com/images/deactivated_100.gif\",\"userPropertyTypes\":[],\"registerRoles\":[\"user\"],\"languageCode\":\"ru\",\"passwordResetTokenExpire\":3600,\"enabledHitAgents\":\"Y\",\"hitAgentsInterval\":60,\"enabledHttpAuth\":\"N\",\"enabledHttpAuthAdmin\":\"N\",\"httpAuthLogin\":\"\",\"httpAuthPassword\":\"\",\"debugEnabled\":\"N\",\"debugAllowedIPs\":\"*\",\"giiEnabled\":\"N\",\"giiAllowedIPs\":\"*\",\"licenseKey\":\"demo\",\"templatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/views\":[\"@app/templates/default\"]}}},\"templates\":[],\"template\":\"default\",\"emailTemplatesDefault\":{\"default\":{\"name\":\"Базовый шаблон (по умолчанию)\",\"pathMap\":{\"@app/mail\":[\"@app/mail\",\"@skeeks/cms/mail\"]}}},\"emailTemplates\":[],\"emailTemplate\":\"default\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL,NULL),(12,1,1,1446291154,1455883584,'skeeks\\cms\\components\\CmsToolbar','{\"mode\":\"no-edit\",\"isOpen\":\"Y\",\"editWidgets\":\"N\"}',NULL,1,NULL,NULL),(13,1,1,1455882391,1455882420,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"priority\",\"order\":\"4\",\"label\":\"\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/slides\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home-slides\"},\"namespace\":\"ContentElementsCmsWidget-home-slides\"}',NULL,NULL,NULL,'ContentElementsCmsWidget-home-slides');
/*!40000 ALTER TABLE `cms_component_settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `description` text,
  `index_for_search` char(1) NOT NULL DEFAULT 'Y',
  `name_meny` varchar(100) DEFAULT NULL,
  `name_one` varchar(100) DEFAULT NULL,
  `tree_chooser` char(1) DEFAULT NULL,
  `list_mode` char(1) DEFAULT NULL,
  `content_type` varchar(32) NOT NULL,
  `default_tree_id` int(11) DEFAULT NULL,
  `is_allow_change_tree` varchar(1) NOT NULL DEFAULT 'Y',
  `root_tree_id` int(11) DEFAULT NULL,
  `viewFile` varchar(255) DEFAULT NULL,
  `meta_title_template` varchar(500) DEFAULT NULL,
  `meta_description_template` text,
  `meta_keywords_template` text,
  `access_check_element` varchar(1) NOT NULL DEFAULT 'N',
  `parent_content_id` int(11) DEFAULT NULL,
  `visible` varchar(1) NOT NULL DEFAULT 'Y',
  `parent_content_on_delete` varchar(10) NOT NULL DEFAULT 'CASCADE',
  `parent_content_is_required` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `index_for_search` (`index_for_search`),
  KEY `name_meny` (`name_meny`),
  KEY `name_one` (`name_one`),
  KEY `tree_chooser` (`tree_chooser`),
  KEY `list_mode` (`list_mode`),
  KEY `content_type` (`content_type`),
  KEY `default_tree_id` (`default_tree_id`),
  KEY `is_allow_change_tree` (`is_allow_change_tree`),
  KEY `root_tree_id` (`root_tree_id`),
  KEY `viewFile` (`viewFile`),
  KEY `parent_content_id` (`parent_content_id`),
  KEY `visible` (`visible`),
  KEY `parent_content_on_delete` (`parent_content_on_delete`),
  KEY `parent_content_is_required` (`parent_content_is_required`),
  CONSTRAINT `cms_content_cms_content_type` FOREIGN KEY (`content_type`) REFERENCES `cms_content_type` (`code`),
  CONSTRAINT `cms_content_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__cms_content` FOREIGN KEY (`parent_content_id`) REFERENCES `cms_content` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__default_tree_id` FOREIGN KEY (`default_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__root_tree_id` FOREIGN KEY (`root_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content`
--

LOCK TABLES `cms_content` WRITE;
/*!40000 ALTER TABLE `cms_content` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content` VALUES (1,1,1,1443696561,1443696561,'Публикации','articles','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'publication',NULL,'Y',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y'),(2,1,1,1443696578,1443696578,'Слайды','slide','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'other',NULL,'Y',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y'),(3,1,1,1445806941,1445806941,'Услуги','services','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'clinic',6,'N',6,'default',NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y');
/*!40000 ALTER TABLE `cms_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_element`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `published_to` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_full_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description_short` longtext,
  `description_full` longtext,
  `files_depricated` longtext,
  `content_id` int(11) DEFAULT NULL,
  `tree_id` int(11) DEFAULT NULL,
  `show_counter` int(11) DEFAULT NULL,
  `show_counter_start` int(11) DEFAULT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `description_short_type` varchar(10) NOT NULL DEFAULT 'text',
  `description_full_type` varchar(10) NOT NULL DEFAULT 'text',
  `parent_content_element_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_id_2` (`content_id`,`code`),
  UNIQUE KEY `tree_id_2` (`tree_id`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `published_at` (`published_at`),
  KEY `published_to` (`published_to`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `active` (`active`),
  KEY `content_id` (`content_id`),
  KEY `tree_id` (`tree_id`),
  KEY `show_counter` (`show_counter`),
  KEY `show_counter_start` (`show_counter_start`),
  KEY `meta_title` (`meta_title`(255)),
  KEY `description_short_type` (`description_short_type`),
  KEY `description_full_type` (`description_full_type`),
  KEY `image_id` (`image_id`),
  KEY `image_full_id` (`image_full_id`),
  KEY `parent_content_element_id` (`parent_content_element_id`),
  CONSTRAINT `cms_content_element_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`),
  CONSTRAINT `cms_content_element_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__cms_content_element` FOREIGN KEY (`parent_content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__image_full_id` FOREIGN KEY (`image_full_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element`
--

LOCK TABLES `cms_content_element` WRITE;
/*!40000 ALTER TABLE `cms_content_element` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_element` VALUES (1,1,1,1443697232,1455882577,1443697232,NULL,500,'Y','Слайд 1',7,NULL,'slayd-1','','',NULL,2,NULL,NULL,NULL,'','','','text','text',NULL),(2,1,1,1443697447,1455882577,1443697447,NULL,500,'Y','Слайд 2',6,NULL,'slayd-2','','',NULL,2,NULL,NULL,NULL,'','','','text','text',NULL),(3,1,1,1443698322,1455882578,1443698322,NULL,500,'Y','Слайд 3',8,NULL,'slayd-3','','',NULL,2,NULL,NULL,NULL,'','','','text','text',NULL),(4,1,1,1443698355,1455882578,1443698355,NULL,500,'Y','Слайд 4',9,NULL,'slayd-4','','',NULL,2,NULL,NULL,NULL,'','','','text','text',NULL),(5,1,1,1443698742,1455882578,1443698742,NULL,500,'Y','Слайд 5',10,NULL,'slayd-5','','',NULL,2,NULL,NULL,NULL,'','','','text','text',NULL),(6,1,1,1443699259,1443700220,1443699259,NULL,500,'Y','Дополнительная упаковка при доставке.',NULL,NULL,'dopolnitelnaya-upakovka-pri-dosta','<p><span style=\"line-height: 20.8px;\">С 1.08.2015 отгрузки через Деловые Линии, содержащие мотор-редукторы и комплектующие,</span><br style=\"line-height: 20.8px;\" />\r\n<span style=\"line-height: 20.8px;\">будут упаковываться в дополнительную деревянную обрешетку, оплата Получателем.</span><br style=\"line-height: 20.8px;\" />\r\n<span style=\"line-height: 20.8px;\">Чтобы отказаться от услуги, нужно заполнить Отказное письмо.</span></p>\r\n','<p>С 1.08.2015 отгрузки через Деловые Линии, содержащие мотор-редукторы и комплектующие,<br />\r\nбудут упаковываться в дополнительную деревянную обрешетку, оплата Получателем.<br />\r\nЧтобы отказаться от услуги, нужно заполнить Отказное письмо.</p>\r\n',NULL,1,NULL,NULL,NULL,'','','','editor','editor',NULL),(7,1,1,1443700182,1443700182,1443700182,NULL,500,'Y','Еще одна тестовая новость компании',NULL,NULL,'esche-odna-testovaya-novost-kompanii','<p><span style=\"line-height: 20.8px;\">С 1.08.2015 отгрузки через Деловые Линии, содержащие мотор-редукторы и комплектующие,</span><br style=\"line-height: 20.8px;\" />\r\n<span style=\"line-height: 20.8px;\">будут упаковываться в дополнительную деревянную обрешетку, оплата Получателем.</span><br style=\"line-height: 20.8px;\" />\r\n<span style=\"line-height: 20.8px;\">Чтобы отказаться от услуги, нужно заполнить Отказное письмо.</span></p>\r\n','<p><span style=\"line-height: 20.8px;\">С 1.08.2015 отгрузки через Деловые Линии, содержащие мотор-редукторы и комплектующие,</span><br style=\"line-height: 20.8px;\" />\r\n<span style=\"line-height: 20.8px;\">будут упаковываться в дополнительную деревянную обрешетку, оплата Получателем.</span><br style=\"line-height: 20.8px;\" />\r\n<span style=\"line-height: 20.8px;\">Чтобы отказаться от услуги, нужно заполнить Отказное письмо.</span></p>\r\n',NULL,1,NULL,NULL,NULL,'','','','editor','editor',NULL),(8,1,1,1445806961,1445807895,1445806961,NULL,500,'Y','Терапия',16,NULL,'terapiya','','<h2>Основными направлениями Терапевтической стоматологии в нашей клинике является:</h2>\r\n\r\n<ul>\r\n	<li>Лечение кариозных полостей</li>\r\n	<li>Лечение пульпита и переодантита</li>\r\n	<li>Лечение кисты</li>\r\n	<li>Удаление нерва</li>\r\n	<li>Пломбирование каналов</li>\r\n	<li>Гигиеническая чистка полости рта</li>\r\n</ul>\r\n\r\n<p>Поговорим о нескольких из них:</p>\r\n\r\n<h3>Методы и технологии применяемые нами:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Наша клиника использует качественные пломбировочные материалы, биологически совместимые с тканями зуба, имеющие&nbsp;особо сильную прочность и имеющие&nbsp;международные сертификаты качества;</p>\r\n	</li>\r\n	<li>\r\n	<p>перед лечением мы проводим диагностику полости рта с использованием современных средств, позволяющих выявить кариес даже в труднодоступных местах;</p>\r\n	</li>\r\n	<li>\r\n	<p>мы используем &laquo;щадящие&raquo; технологи, позволяющие вылечить зуб с максимально возможным сохранением собственных тканей зуба.</p>\r\n	</li>\r\n	<li>\r\n	<p>наши врачи&nbsp;пломбируют зуб&nbsp;так,что следов лечения не заметно,выполняя&nbsp;художественное восстановление анатомической формы и цвета зуба.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Лечение кариозной полости:</h2>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/OESvR1s-zMg?rel=0\" width=\"640\"></iframe></p>\r\n\r\n<h3>Пломбирование каналов зуба:</h3>\r\n\r\n<p>Способ&nbsp;пломбирования корневых каналов</p>\r\n\r\n<p>Метод &laquo;Латеральной конденсации гуттаперчи&raquo;: при пломбировании каналов этим способом, используют несколько гуттаперчевых штифтов различной конусности и определенной(заданной) длины. Гуттаперчевые штифты в сочетании со специальной пастой, вводят в, предварительно подготовленный канал, до апикального отверстия, далее вводят инструмент, напоминающий иглу, которым прижимают штифт к одной из стенок корневого канала. Инструмент вынимают, а в освободившееся место вводят следующий штифт, более меньшего диаметра и на меньшую глубину. Далее, инструментом прижимают к стенке этот и по очереди все последующие штифты. Таким образом, посредствам поочередного введения гуттаперчевых штифтов и конденсации их, достигается герметичное заполнение корневого канала.</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/UxYNVkRjUHo?rel=0\" width=\"640\"></iframe></p>\r\n\r\n<h3>Гигиеническая чистка зубов:</h3>\r\n\r\n<p>Гигиеническая чистка зубов важна каждому человеку,вне зависимости реагируют зубы на раздражители или нет. Её главная задача удалить твердый зубной налет ( зубной камень ) и удаление мягкого зубного налета,и вот почему:</p>\r\n\r\n<p>Твердый зубной налет скапливается между зубом и десной, в итоге десна не плотно прилегает к зубу и создается карман,в который вместе с едой попадают бактерии. Десны начинают кровоточить,если долго не принемать действий, зубной камень будет скапливаться все глубже под десной что может привести к воспалению десен и расшатыванию зуба.</p>\r\n\r\n<p>Мягкий зубной налет опасен тем,что любой налет это бактерии и продукты их разложений, которые портят ткани зуба, именно из-за налета, образуется кариес.</p>\r\n\r\n<p>Гигиеническая чистка удаляет абсолютно всю негативную микрофлору полости рта,после удаления зубного камня, десенка &quot; вздыхает&quot; с облегчением, принимает здоровый цвет,&nbsp;перестает кровоточить и быстро востанавливается,начиная крепче держать Ваши зубки.</p>\r\n\r\n<p>&nbsp;</p>\r\n',NULL,3,6,NULL,NULL,'','','','text','editor',NULL),(9,1,1,1445807959,1445810203,1445807959,NULL,500,'Y','Протезирование зубов',17,NULL,'protezirovanie-zubov','','<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh4aflk\" id=\"ieh4aflk\">\r\n<p>Стоматология Адриа успешно занимается всеми видами протезирования:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Мостовидные протезы</p>\r\n	</li>\r\n	<li>\r\n	<p>Керамические коронки</p>\r\n	</li>\r\n	<li>\r\n	<p>Металлокерамические коронки</p>\r\n	</li>\r\n	<li>\r\n	<p>Коронки на основе диоксида циркония</p>\r\n	</li>\r\n	<li>\r\n	<p>Виниры</p>\r\n	</li>\r\n	<li>\r\n	<p>Съемные протезы</p>\r\n	</li>\r\n	<li>\r\n	<p>Культевые вкладки</p>\r\n	</li>\r\n	<li>\r\n	<p>Восстановление разрушенного зуба</p>\r\n	</li>\r\n	<li>\r\n	<p>Временные коронки</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;&nbsp;Поговорим о нескольких из них:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Мостовидные протезы,что это?</h3>\r\n\r\n<p>Мостовидные протезы &ndash; это универсальные конструкции, которые применяются, даже если в челюсти отсутствует несколько зубов. Показаниями для их использования&nbsp;считается необходимость восстановления 1-2, максимум 3 подряд отсутствующих зубов. В этом случае зубной мост будет надежно зафиксирован и выполнит свои функции в полном объеме.&nbsp;</p>\r\n\r\n<p>Мостовидный протез&nbsp;отличается высокой эстетичностью, прочностью, комфортом и продолжительным сроком службы. В зависимости от используемых материалов и типа конструкции, а также ухода за протезом, зубной мост в среднем прослужит не менее 10 лет.</p>\r\n</div>\r\n\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh62m2d\" id=\"ieh62m2d\">\r\n<p>Керамические коронки, металлокерамические коронки, коронки на основе диоксиа циркония.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Сегодня металлокерамические коронки являются наиболее удачным компромиссом между эстетикой, надежностью и стоимостью.</p>\r\n\r\n<p>Внутренняя часть металлокерамической коронки состоит из сплавов металла . В зависимости от использованных металлов и их сплавов различают металлокерамику на золоте, на кобальто-хромовых сплавах и тому подобное. Благодаря присутствию в сплаве золота удается достичь более естественного оттенка металлокерамических коронок, готовых к установке.&nbsp;Внутри коронки находится литой каркас.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Достоинства и недостатки металлокерамических коронок :</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Функциональность. Вы не будете ощущать никакого различия при приеме пищи. Искусственные зубы пережевывают пищу идентично натуральным зубам.</p>\r\n	</li>\r\n	<li>\r\n	<p>Эстетичность. Хороший специалист изготовит металлокерамические коронки, которые на вид совершенно не будут отличаться от настоящих зубов.</p>\r\n	</li>\r\n	<li>\r\n	<p>Долговечность и прочность. Металлокерамика легко выдерживает серьезные нагрузки, поэтому нет никакого риска образования на ваших коронках растрескиваний, сколов или других повреждений. Срок службы металлокерамических коронок &ndash; более 15 лет при соблюдении элементарной гигиены полости рта.</p>\r\n	</li>\r\n	<li>\r\n	<p>Гигиеничность. В отличие от настоящих зубов металлокерамические коронки не подвержены воздействию микроорганизмов и бактерий. Это огромный плюс для пациентов, в жизни которых имеют место заболевания пародонта.</p>\r\n	</li>\r\n	<li>\r\n	<p>Биологическая совместимость. Качественные, правильно изготовленные и хорошо установленные металлокерамические коронки не вызывают в деснах никаких изменений.</p>\r\n	</li>\r\n	<li>\r\n	<p>Защита зуба под коронкой. Правильно изготовленная коронка прилегает к зубу настолько плотно, что идеально защищает его от воздействия агрессивной среды, присутствующей в ротовой полости человека, тем самым предотвращает его дальнейшее разрушение.</p>\r\n	</li>\r\n	<li>\r\n	<p>Стоимость металлокерамической коронки более доступна в сравнении, например, с неметаллическими протезами или&nbsp;имплантами.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh703ce\" id=\"ieh703ce\">\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh703ce.0\" id=\"ieh703celine\">&nbsp;</div>\r\n</div>\r\n\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh71rpb\" id=\"ieh71rpb\">\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh71rpb.0\" id=\"ieh71rpbvideoFrame\"><iframe allowfullscreen=\"\" data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh71rpb.0.0\" frameborder=\"0\" height=\"100%\" src=\"http://www.youtube.com/embed/uFSb_9kBdW8?wmode=transparent&amp;autoplay=0&amp;theme=dark&amp;controls=1&amp;autohide=0&amp;loop=0&amp;showinfo=0&amp;rel=0&amp;playlist=false&amp;enablejsapi=0\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: transparent;\" width=\"100%\"></iframe></div>\r\n</div>\r\n\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh780br\" id=\"ieh780br\">\r\n<p>Виниры:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Виниры &ndash; это микропротезы,пластинки, которые позволяют восстановить цвет и форму одного или группы зубов.</p>\r\n\r\n<p>Винировые пластинки устанавливают на переднюю поверхность зуба. Их применяют для реставрации передних зубов, попадающих в линию улыбки.</p>\r\n\r\n<p>Зубы с винирами, ничем не отличаются от настоящих, так как при их изготовлении учитывается цвет зубов пациента.</p>\r\n\r\n<p>Винировые пластинки используются в тех случаях, когда восстановление и отбеливание зубов не дадут желаемого результата. Реставрация зубов винирами позволяет в кратчайшие сроки восстановить зубы, имеющие большие дефекты.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh7r3d7\" id=\"ieh7r3d7\">\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh7r3d7.0\" id=\"ieh7r3d7videoFrame\"><iframe allowfullscreen=\"\" data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$c1qbb.1.$ieh7r3d7.0.0\" frameborder=\"0\" height=\"100%\" src=\"http://www.youtube.com/embed/Q91izXON3Pc?wmode=transparent&amp;autoplay=0&amp;theme=dark&amp;controls=1&amp;autohide=0&amp;loop=0&amp;showinfo=0&amp;rel=0&amp;playlist=false&amp;enablejsapi=0\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: transparent;\" width=\"100%\"></iframe></div>\r\n</div>\r\n',NULL,3,6,NULL,NULL,'','','','text','editor',NULL),(10,1,1,1445807986,1445810334,1445807986,NULL,500,'Y','Исправление прикуса (брекеты)',18,NULL,'ispravlenie-prikusa-breketyi','','<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$cg92.1.$ieh8p00n\" id=\"ieh8p00n\">\r\n<h3 style=\"text-align: center;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/66iripWSEcM?rel=0\" width=\"640\"></iframe></h3>\r\n\r\n<h3>В каком возрасте возможно проведение ортодонтического лечения?</h3>\r\n\r\n<p>Вопреки распространенному мнению, исправить прикус и положение зубов можно в любом возрасте. При здоровой зубочелюстной системе возраст не является ограничивающим фактором, а в некоторых случаях ортодонтическая подготовка является обязательным этапом общего стоматологического лечения взрослого пациента. Длительность исправления прикуса зависит от скорости перестройки костной ткани, степени нарушения прикуса и в среднем оно занимает от одного года до полутора лет.</p>\r\n\r\n<p>В наше время брекеты наберают всю большую популярность, они компактно и аккуратно выглядят,являются символом ухода за своим здоровьем .</p>\r\n\r\n<p>Наш ортодонт пользуется самой современной брекет системой Damon, которая позволяет сократить срок пользования&nbsp;брекетами, делает их практически невидемыми при общении&nbsp;и удобными.</p>\r\n\r\n<p><strong>Показания к постановке&nbsp;брекетов:</strong></p>\r\n\r\n<p><strong>Функциональные.&nbsp;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Человеческий организм - это единая система. Если в одном из отделов появился сбой, то он негативно влияет на весь организм. Вкраце - при патологическом&nbsp;прикусе, зубы смыкаются неправильно, и не обеспечивают должного&nbsp;размельчения и пережовывания пищи, в итоге страдает весь пищеварительный тракт</p>\r\n	</li>\r\n	<li>\r\n	<p>При патологическом прикусе, нагрузка на зубы распределяется неправильно, в итоге возникают клиновидные дифекты, уходит десна, за счет чего зубы становятся подвижными.</p>\r\n	</li>\r\n	<li>\r\n	<p>При патологическом расположении зубов, нет хорошего межзубного контакта, в итоге еда застревает на контактах и образуется кариес ( чаще наблюдается при скучености )</p>\r\n	</li>\r\n	<li>\r\n	<p>Дифекты речи</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div data-reactid=\".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$cg92.1.$ieha02or\" id=\"ieha02or\">\r\n<p><strong>Эстетические.</strong></p>\r\n\r\n<p>В наше время красивая улыбка играет далеко не последнюю роль. И если природа вас не наградила красивой улыбкой, то не огорчайтесь, все можно исправить, главное желание и терпение. Исправление положения зубов брекетами это самый гуманный метод придать вам Вашу натуральную и красивую улыбку.&nbsp;Ведь при постановки брекетов, не надо обтачивать абсолютно здоровые зубы,брекеты клеятся&nbsp;&nbsp;к эмали зуба на специальный состав, содержащий фтор. В результате эмаль не только герметично защищена от микроорганизмов&nbsp;, но и укрепляется под постоянным выделением фтора.</p>\r\n</div>\r\n',NULL,3,6,NULL,NULL,'','','','text','editor',NULL),(11,1,1,1445808011,1445810091,1445808011,NULL,500,'Y','Отбеливание зубов',19,NULL,'otbelivanie-zubov','','<p>Если Вас не устраивает свой цвет зубов, то вам может помоч профессиональное отбеливание,благодаря которому ваши зубы станут гораздо белее. Эффект от отбеливания держится в среднем до 6 лет ( в зависимости от образа жизни и гигиены), но вся прелесть в том, что после отбеливания, зубы уже никогда не вернуться к своему старому цвету, со временем ( спустя N лет...) зубки потемнеют, но будут гораздо светлее, чем были до отбеливания.</p>\r\n\r\n<p>Перед отбеливанием очень важно заранее провести гигиеническую чистку &ndash; освободить поверхность эмали от зубного камня, налета пищи и пленки бактерий. Данный этап необходим, чтобы отбеливание получилось равномерным и эффективным.</p>\r\n\r\n<p>В начале самой процедуры доктор с помощью тонких латексных пластин и специального состава изолирует от окружающих тканей зубы, подлежащие отбеливанию. Это убережет губы, язык и десны от попадания отбеливающего раствора. Далее на зубы наносится отбеливающий гель, который активируется лазерным лучом. Опытный специалист подбирает необходимую интенсивность и время воздействия лазера в каждом конкретном случае. Как только необходимый результат будет достигнут, лазер направляется на следующий зуб. Под действием лазерного луча активный кислород, содержащийся в геле, высвобождается, проникает в эмаль и нейтрализует темный пигмент. В конце процедуры на зубы наносят фтор-гель, укрепляющий осветленную эмаль. В целом лазерное отбеливание дает возможность осветлить зубы на 8-10 тонов. После отбеливания пациентам назначают &quot; белую диету&quot; на 2 нед, в ходе которой идет закрепление цвета.</p>\r\n\r\n<p><strong>Не вредно ли это ?</strong></p>\r\n\r\n<p>У многих людей существует такой стереотип, что отбеливание вредит здоровым зубам, истончает эмаль и так далее. Безусловно если не иметь базовых профильных знаний и самовольно пытаться отбелить зубы подручными средствами, то шансы не только на белоснежную улыбку,но и на здоровые зубы резко снижаются.&nbsp;</p>\r\n\r\n<p>Не секрет,что все отбеливающие системы содержат в своем составе перекись водорода.Разные системы используют разные концентрации данного ве-ва,но этот элемент присутствует везде без исключений.При нанесении отбеливающего геля на зубы,через дентинные канальца гель проникает внутрь зуба воздействуя на коллаген,который располагается на эмалево-дентинной границе. Зуб насыщен влагой(слюна),при попадании геля на зубы, перекись начинает вытеснять воду из зубов, эта реакция идет с выделением кислорода, за счет чего образуется пузырьки пены ,этих пузырьков очень много, они бьются друг об друга,лопаются и происходит вибрация,которая ощущает пульповая камера зуба,Именно из- за этой реакции ощущаются дискомфортные и болезненные ощущения.&nbsp;<br />\r\nЕщё какое-то время после отбеливания, дентинные канальца остаются открытыми и чувствительность на воздух и др. раздражители сохраняется, но спустя сутки, она полностью пропадает.<br />\r\nЗапомните ! &nbsp;отбеливающие системы воздействуют на коллаген, именно он отвечает за цвет ваших зубов, точно такой же коллаген есть и у глаз отвечающий за цвет глаз.</p>\r\n',NULL,3,6,NULL,NULL,'','','','text','editor',NULL);
/*!40000 ALTER TABLE `cms_content_element` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_element2cms_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element2cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_user_id` int(11) NOT NULL,
  `cms_content_element_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user2elements` (`cms_user_id`,`cms_content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_content_element2cms_user__cms_content_element_id` (`cms_content_element_id`),
  CONSTRAINT `cms_content_element2cms_user__cms_content_element_id` FOREIGN KEY (`cms_content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element2cms_user__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element2cms_user__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element2cms_user__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Favorites content items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element2cms_user`
--

LOCK TABLES `cms_content_element2cms_user` WRITE;
/*!40000 ALTER TABLE `cms_content_element2cms_user` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element2cms_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_element_file`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `content_element_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__content_element_id` (`storage_file_id`,`content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `content_element_id` (`content_element_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_content_element_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_file__content_element_id` FOREIGN KEY (`content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_file__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь элементов и файлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_file`
--

LOCK TABLES `cms_content_element_file` WRITE;
/*!40000 ALTER TABLE `cms_content_element_file` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_file` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_element_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `content_element_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__content_element_id` (`storage_file_id`,`content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `content_element_id` (`content_element_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_content_element_image_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_image_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_image__content_element_id` FOREIGN KEY (`content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_image__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь элементов и файлов изображений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_image`
--

LOCK TABLES `cms_content_element_image` WRITE;
/*!40000 ALTER TABLE `cms_content_element_image` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_image` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_element_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `cms_content_element_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_element_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь товара свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_property`
--

LOCK TABLES `cms_content_element_property` WRITE;
/*!40000 ALTER TABLE `cms_content_element_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_element_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `element_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `element_id_2` (`element_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `tree_id` (`tree_id`),
  KEY `element_id` (`element_id`),
  CONSTRAINT `cms_content_element_tree_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_element_tree_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_tree_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_tree_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь контента и разделов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_tree`
--

LOCK TABLES `cms_content_element_tree` WRITE;
/*!40000 ALTER TABLE `cms_content_element_tree` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_tree` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` longtext,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`,`content_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `content_id` (`content_id`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `code` (`code`) USING BTREE,
  CONSTRAINT `cms_content_property_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`),
  CONSTRAINT `cms_content_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Свойства элементов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property`
--

LOCK TABLES `cms_content_property` WRITE;
/*!40000 ALTER TABLE `cms_content_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_content_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_content_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property_enum`
--

LOCK TABLES `cms_content_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_content_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_content_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `files` text,
  `priority` int(11) NOT NULL DEFAULT '500',
  `name` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  CONSTRAINT `cms_content_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_type`
--

LOCK TABLES `cms_content_type` WRITE;
/*!40000 ALTER TABLE `cms_content_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_type` VALUES (1,1,1,1443696537,1443696537,NULL,500,'Публикации','publication'),(2,1,1,1443696547,1443696547,NULL,500,'Прочее','other'),(3,1,1,1445806903,1445806903,NULL,500,'Клиника','clinic');
/*!40000 ALTER TABLE `cms_content_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_dashboard`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `columns` int(11) unsigned NOT NULL DEFAULT '1',
  `columns_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `priority` (`priority`),
  KEY `columns` (`columns`),
  CONSTRAINT `cms_dashboard_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Рабочий стол';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_dashboard` VALUES (1,1,1,1455882076,1455882267,'Стол 1 (общая информация)',NULL,100,2,NULL),(2,1,1,1455882157,1455882166,'Стол 2 (Контент)',NULL,100,3,NULL);
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_dashboard_widget`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_dashboard_id` int(11) NOT NULL,
  `cms_dashboard_column` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '100',
  `component` varchar(255) NOT NULL,
  `component_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `component` (`component`),
  KEY `cms_dashboard_id` (`cms_dashboard_id`),
  KEY `cms_dashboard_column` (`cms_dashboard_column`),
  CONSTRAINT `cms_dashboard_widget_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_widget_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_widget__cms_dashboard_id` FOREIGN KEY (`cms_dashboard_id`) REFERENCES `cms_dashboard` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Виджет рабочего стола';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard_widget`
--

LOCK TABLES `cms_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `cms_dashboard_widget` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_dashboard_widget` VALUES (1,1,1,1455882100,1455882319,1,1,100,'skeeks\\cms\\modules\\admin\\dashboards\\AboutCmsDashboard',''),(2,1,1,1455882123,1455882319,1,1,200,'skeeks\\cms\\modules\\admin\\dashboards\\CmsInformDashboard',''),(3,1,1,1455882162,1455882243,2,1,100,'skeeks\\cms\\modules\\admin\\dashboards\\ContentElementListDashboard','a:11:{s:4:\"name\";s:20:\"Публикации\";s:13:\"enabledPaging\";s:1:\"1\";s:8:\"pageSize\";s:2:\"10\";s:16:\"pageSizeLimitMin\";s:1:\"1\";s:16:\"pageSizeLimitMax\";s:2:\"50\";s:17:\"enabledActiveTime\";s:1:\"1\";s:11:\"content_ids\";a:1:{i:0;s:1:\"1\";}s:8:\"tree_ids\";s:0:\"\";s:5:\"limit\";s:1:\"0\";s:7:\"orderBy\";s:12:\"published_at\";s:5:\"order\";s:1:\"3\";}'),(4,1,1,1455882189,1455882243,2,2,100,'skeeks\\cms\\modules\\admin\\dashboards\\ContentElementListDashboard','a:11:{s:4:\"name\";s:12:\"Слайды\";s:13:\"enabledPaging\";s:1:\"1\";s:8:\"pageSize\";s:2:\"10\";s:16:\"pageSizeLimitMin\";s:1:\"1\";s:16:\"pageSizeLimitMax\";s:2:\"50\";s:17:\"enabledActiveTime\";s:1:\"1\";s:11:\"content_ids\";a:1:{i:0;s:1:\"2\";}s:8:\"tree_ids\";s:0:\"\";s:5:\"limit\";s:1:\"0\";s:7:\"orderBy\";s:8:\"priority\";s:5:\"order\";s:1:\"4\";}'),(5,1,1,1455882225,1455882243,2,3,100,'skeeks\\cms\\modules\\admin\\dashboards\\ContentElementListDashboard','a:11:{s:4:\"name\";s:12:\"Услуги\";s:13:\"enabledPaging\";s:1:\"1\";s:8:\"pageSize\";s:2:\"10\";s:16:\"pageSizeLimitMin\";s:1:\"1\";s:16:\"pageSizeLimitMax\";s:2:\"50\";s:17:\"enabledActiveTime\";s:1:\"1\";s:11:\"content_ids\";a:1:{i:0;s:1:\"3\";}s:8:\"tree_ids\";s:0:\"\";s:5:\"limit\";s:1:\"0\";s:7:\"orderBy\";s:12:\"published_at\";s:5:\"order\";s:1:\"3\";}'),(6,1,1,1455882252,1455882319,1,2,100,'skeeks\\cms\\modules\\admin\\dashboards\\DiscSpaceDashboard','');
/*!40000 ALTER TABLE `cms_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_event`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '150',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_name` (`event_name`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_event`
--

LOCK TABLES `cms_event` WRITE;
/*!40000 ALTER TABLE `cms_event` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_event` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_lang`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `def` char(1) NOT NULL DEFAULT 'N',
  `priority` int(11) NOT NULL DEFAULT '500',
  `code` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `description` (`description`),
  KEY `cms_lang__image_id` (`image_id`),
  CONSTRAINT `cms_lang_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_lang_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_lang__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Доступные языки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_lang`
--

LOCK TABLES `cms_lang` WRITE;
/*!40000 ALTER TABLE `cms_lang` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_lang` VALUES (1,1,1,1432126580,1432130752,'Y','Y',500,'ru','Русский','',NULL),(2,1,1,1432126667,1446071203,'Y','N',600,'en','Английский','',NULL);
/*!40000 ALTER TABLE `cms_lang` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_search_phrase`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `phrase` varchar(255) DEFAULT NULL,
  `result_count` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  `site_code` char(15) DEFAULT NULL,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `phrase` (`phrase`),
  KEY `result_count` (`result_count`),
  KEY `pages` (`pages`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `site_code` (`site_code`),
  CONSTRAINT `cms_search_phrase_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_search_phrase_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_search_phrase_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Поисковые фразы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_search_phrase`
--

LOCK TABLES `cms_search_phrase` WRITE;
/*!40000 ALTER TABLE `cms_search_phrase` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_search_phrase` VALUES (1,1,1,1443704883,1443704883,'',7,1,'80.243.13.242','rs2pvjt1bb2tlc3oo93phqom64','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"HTTP_REFERER\";s:38:\"http://sigma-eng.1021.s2.h.skeeks.com/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:740:\"SKEEKS_PORTAL=ga1r8vqlopmtc0qb1dokouv0o6; _csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL_IDENTITY=c4e2905b8f2071783b84b9a521fea24ac14dc7afb340adf21be8fa7e66e55dcea%3A2%3A%7Bi%3A0%3Bs%3A22%3A%22SKEEKS_PORTAL_IDENTITY%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=rs2pvjt1bb2tlc3oo93phqom64; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"50279\";s:21:\"REDIRECT_QUERY_STRING\";s:58:\"src=%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:58:\"src=%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:66:\"/search?src=%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1443704883.1170001;s:12:\"REQUEST_TIME\";i:1443704883;}','a:7:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:14:\"elFinderCaches\";a:11:{s:8:\"_optsMD5\";s:32:\"17fb3c24d27d0b5c0338fec3426e9000\";s:3:\"l1_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjg5ODkzO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDFfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDFfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvYjI5ZjRhMjIvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l2_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjg5ODkzO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDJfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDJfIjtzOjQ6Im5hbWUiO3M6MjE6ItCe0LHRidC40LUg0YTQsNC50LvRiyI7czo0OiJpY29uIjtzOjQyOiIvYXNzZXRzL2IyOWY0YTIyL2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7fQ==\";}s:3:\"l3_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjk1NjM4O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDNfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDNfIjtzOjQ6Im5hbWUiO3M6ODoiUk9PVF9ESVIiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy9iMjlmNGEyMi9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l4_\";a:1:{s:8:\"rootstat\";s:392:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjk3NTg0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDRfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDRfIjtzOjQ6Im5hbWUiO3M6MzI6ItCa0L7RgNC10L3RjCAocm9ib3RzLnR4dCDRgtGD0YIpIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvYjI5ZjRhMjIvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}s:3:\"l5_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjg5ODkzO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDVfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDVfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvYjI5ZjRhMjIvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l6_\";a:1:{s:8:\"rootstat\";s:348:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjg5ODk1O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDZfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDZfIjtzOjQ6Im5hbWUiO3M6MTQ6ImZyb250ZW5kL3ZpZXdzIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvYjI5ZjRhMjIvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l7_\";a:1:{s:8:\"rootstat\";s:372:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjk4ODYwO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDdfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDdfIjtzOjQ6Im5hbWUiO3M6MTY6ImZyb250ZW5kL3J1bnRpbWUiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy9iMjlmNGEyMi9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l8_\";a:1:{s:8:\"rootstat\";s:372:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjk1NjQxO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDhfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDhfIjtzOjQ6Im5hbWUiO3M6MTU6ImNvbnNvbGUvcnVudGltZSI7czo0OiJpY29uIjtzOjQyOiIvYXNzZXRzL2IyOWY0YTIyL2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l9_\";a:1:{s:8:\"rootstat\";s:388:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjk3MjI1O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDlfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDlfIjtzOjQ6Im5hbWUiO3M6Mjg6ItCS0YDQtdC80LXQvdC90YvQtSBqcyDQuCBjc3MiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy9iMjlmNGEyMi9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:4:\"l10_\";a:1:{s:8:\"rootstat\";s:368:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDQzNjg5ODkyO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NjoibDEwX0x3IjtzOjg6InZvbHVtZWlkIjtzOjQ6ImwxMF8iO3M6NDoibmFtZSI7czoxMjoi0JHRjdC60LDQv9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvYjI5ZjRhMjIvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}}s:30:\"elFinderCaches:ARCHIVERS_CACHE\";a:2:{s:6:\"create\";a:3:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-cf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-czf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-cJf\";s:3:\"ext\";s:2:\"xz\";}}s:7:\"extract\";a:4:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-xf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xzf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xJf\";s:3:\"ext\";s:2:\"xz\";}s:15:\"application/zip\";a:3:{s:3:\"cmd\";s:5:\"unzip\";s:4:\"argc\";s:0:\"\";s:3:\"ext\";s:3:\"zip\";}}}s:28:\"elFinderCaches:LAST_ACTIVITY\";i:1443703370;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}s:23:\"skeeks-cms-toolbar-mode\";s:7:\"no-edit\";}','a:6:{s:13:\"SKEEKS_PORTAL\";s:26:\"ga1r8vqlopmtc0qb1dokouv0o6\";s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:22:\"SKEEKS_PORTAL_IDENTITY\";s:162:\"c4e2905b8f2071783b84b9a521fea24ac14dc7afb340adf21be8fa7e66e55dcea:2:{i:0;s:22:\"SKEEKS_PORTAL_IDENTITY\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"rs2pvjt1bb2tlc3oo93phqom64\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:3:\"src\";s:18:\"установка\";}'),(2,1,1,1444288608,1444288608,'',7,1,'80.243.13.242','ojr7b451bqoaqjdqmpbu4t70m3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"HTTP_REFERER\";s:45:\"http://sigma-eng.1021.s2.h.skeeks.com/novosti\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:740:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=3m0ev39rtbrl2rs4v0l4bemtg0; SKEEKS_PORTAL_IDENTITY=c4e2905b8f2071783b84b9a521fea24ac14dc7afb340adf21be8fa7e66e55dcea%3A2%3A%7Bi%3A0%3Bs%3A22%3A%22SKEEKS_PORTAL_IDENTITY%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=ojr7b451bqoaqjdqmpbu4t70m3; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=opened\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"47449\";s:21:\"REDIRECT_QUERY_STRING\";s:188:\"src=%D0%95%D1%89%D0%B5+%D0%BE%D0%B4%D0%BD%D0%B0+%D1%82%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+%D0%BD%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D1%8C+%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:188:\"src=%D0%95%D1%89%D0%B5+%D0%BE%D0%B4%D0%BD%D0%B0+%D1%82%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+%D0%BD%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D1%8C+%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8\";s:11:\"REQUEST_URI\";s:196:\"/search?src=%D0%95%D1%89%D0%B5+%D0%BE%D0%B4%D0%BD%D0%B0+%D1%82%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+%D0%BD%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D1%8C+%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444288608.3729999;s:12:\"REQUEST_TIME\";i:1444288608;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:23:\"skeeks-cms-toolbar-mode\";s:7:\"no-edit\";}','a:6:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"3m0ev39rtbrl2rs4v0l4bemtg0\";s:22:\"SKEEKS_PORTAL_IDENTITY\";s:162:\"c4e2905b8f2071783b84b9a521fea24ac14dc7afb340adf21be8fa7e66e55dcea:2:{i:0;s:22:\"SKEEKS_PORTAL_IDENTITY\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"ojr7b451bqoaqjdqmpbu4t70m3\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"opened\";}','a:1:{s:3:\"src\";s:64:\"Еще одна тестовая новость компании\";}'),(3,1,1,1444643095,1444643095,'',7,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://sigma-eng.1021.s2.h.skeeks.com/about\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43690\";s:21:\"REDIRECT_QUERY_STRING\";s:6:\"src=er\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:6:\"src=er\";s:11:\"REQUEST_URI\";s:14:\"/search?src=er\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643095.648;s:12:\"REQUEST_TIME\";i:1444643095;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:3:\"src\";s:2:\"er\";}'),(4,1,1,1444643156,1444643156,'тест',1,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"HTTP_REFERER\";s:38:\"http://sigma-eng.1021.s2.h.skeeks.com/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45254\";s:21:\"REDIRECT_QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"REQUEST_URI\";s:34:\"/search?q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643156.8610001;s:12:\"REQUEST_TIME\";i:1444643156;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:1:\"q\";s:8:\"тест\";}'),(5,1,1,1444643403,1444643403,'тест',1,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TGthNXdRM3A9EVJkPTJqRnRGBXxPFAUgCCIEaiEZWjY7WDkNDh0CSQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:71:\"http://sigma-eng.1021.s2.h.skeeks.com/search?q=%D1%82%D0%B5%D1%81%D1%82\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"51370\";s:21:\"REDIRECT_QUERY_STRING\";s:38:\"q=%D1%82%D0%B5%D1%81%D1%82&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:38:\"q=%D1%82%D0%B5%D1%81%D1%82&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:46:\"/search?q=%D1%82%D0%B5%D1%81%D1%82&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643403.697;s:12:\"REQUEST_TIME\";i:1444643403;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:2:{s:1:\"q\";s:8:\"тест\";s:5:\"_pjax\";s:3:\"#w0\";}'),(6,1,1,1444643416,1444643416,'тест',1,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; undefined__skeeks-toolbar__container=closed; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"51685\";s:21:\"REDIRECT_QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"REQUEST_URI\";s:34:\"/search?q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643416.082;s:12:\"REQUEST_TIME\";i:1444643416;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:8:\"тест\";}'),(7,1,1,1444643473,1444643473,'тест',1,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"52960\";s:21:\"REDIRECT_QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"REQUEST_URI\";s:34:\"/search?q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643473.9159999;s:12:\"REQUEST_TIME\";i:1444643473;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:1:\"q\";s:8:\"тест\";}'),(8,1,1,1444643495,1444643495,'тест',1,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"53681\";s:21:\"REDIRECT_QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"REQUEST_URI\";s:34:\"/search?q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643495.905;s:12:\"REQUEST_TIME\";i:1444643495;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:1:\"q\";s:8:\"тест\";}'),(9,1,1,1444643516,1444643516,'тест',1,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"HTTP_REFERER\";s:38:\"http://sigma-eng.1021.s2.h.skeeks.com/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"54286\";s:21:\"REDIRECT_QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:26:\"q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"REQUEST_URI\";s:34:\"/search?q=%D1%82%D0%B5%D1%81%D1%82\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643516.1389999;s:12:\"REQUEST_TIME\";i:1444643516;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:1:\"q\";s:8:\"тест\";}'),(10,1,1,1444643768,1444643768,'',7,1,'80.243.13.242','hgd84bf09gedktckm6pdl8bb42','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36\";s:12:\"HTTP_REFERER\";s:46:\"http://sigma-eng.1021.s2.h.skeeks.com/contacts\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:505:\"_csrf=b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19%22%3B%7D; SKEEKS_PORTAL=ebbmrdl1sjb3c8s2gd00lr5c25; PHPSESSID=hgd84bf09gedktckm6pdl8bb42; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60003\";s:21:\"REDIRECT_QUERY_STRING\";s:2:\"q=\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:2:\"q=\";s:11:\"REQUEST_URI\";s:10:\"/search?q=\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444643768.0650001;s:12:\"REQUEST_TIME\";i:1444643768;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"b5137c598a339d765b9f48d633bc8380d3dfb35be4ebb51314a1e85f662a882ba:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"qz3QJcY68-dI8E6PDIe_VHiFw3X8yL19\";}\";s:13:\"SKEEKS_PORTAL\";s:26:\"ebbmrdl1sjb3c8s2gd00lr5c25\";s:9:\"PHPSESSID\";s:26:\"hgd84bf09gedktckm6pdl8bb42\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:1:\"q\";s:0:\"\";}'),(11,1,1,1445702846,1445702846,'a',2,1,'91.219.165.198','1j2ncdhb9dbmmcbottcmapias6','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36\";s:12:\"HTTP_REFERER\";s:38:\"http://sigma-eng.1021.s2.h.skeeks.com/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:740:\"SKEEKS_PORTAL=v2dn18a3go7c1ibauo5m1bj5u6; SKEEKS_PORTAL_IDENTITY=c4e2905b8f2071783b84b9a521fea24ac14dc7afb340adf21be8fa7e66e55dcea%3A2%3A%7Bi%3A0%3Bs%3A22%3A%22SKEEKS_PORTAL_IDENTITY%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; PHPSESSID=1j2ncdhb9dbmmcbottcmapias6; _csrf=fc8818898d2b70dc8ab8eb3425957847b8a9b84742938ce9c03d9afaaf3357e2a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22cPIPlgJKxN2jYoVye9hUbdLuT2B3NHW5%22%3B%7D; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; undefined__skeeks-toolbar__container=closed\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:90:\"<address>Apache/2.4.7 (Ubuntu) Server at sigma-eng.1021.s2.h.skeeks.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:30:\"sigma-eng.1021.s2.h.skeeks.com\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/sigma-eng.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/sigma-eng.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"49274\";s:21:\"REDIRECT_QUERY_STRING\";s:3:\"q=a\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:3:\"q=a\";s:11:\"REQUEST_URI\";s:11:\"/search?q=a\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1445702846.7479999;s:12:\"REQUEST_TIME\";i:1445702846;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:6:{s:13:\"SKEEKS_PORTAL\";s:26:\"v2dn18a3go7c1ibauo5m1bj5u6\";s:22:\"SKEEKS_PORTAL_IDENTITY\";s:162:\"c4e2905b8f2071783b84b9a521fea24ac14dc7afb340adf21be8fa7e66e55dcea:2:{i:0;s:22:\"SKEEKS_PORTAL_IDENTITY\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:9:\"PHPSESSID\";s:26:\"1j2ncdhb9dbmmcbottcmapias6\";s:5:\"_csrf\";s:130:\"fc8818898d2b70dc8ab8eb3425957847b8a9b84742938ce9c03d9afaaf3357e2a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"cPIPlgJKxN2jYoVye9hUbdLuT2B3NHW5\";}\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:36:\"undefined__skeeks-toolbar__container\";s:6:\"closed\";}','a:1:{s:1:\"q\";s:1:\"a\";}');
/*!40000 ALTER TABLE `cms_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_site`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `def` char(1) NOT NULL DEFAULT 'N',
  `priority` int(11) NOT NULL DEFAULT '500',
  `code` char(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `server_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `active` (`active`),
  KEY `server_name` (`server_name`),
  KEY `def` (`def`),
  KEY `priority` (`priority`),
  KEY `cms_site__image_id` (`image_id`),
  CONSTRAINT `cms_site_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Сайты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_site` VALUES (1,1,1,1432128290,1432130861,'Y','Y',500,'s1','Сайт 1','','',NULL);
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_site_domain`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` char(15) NOT NULL,
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`,`site_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_site_domain_site_code` (`site_code`),
  CONSTRAINT `cms_site_domain_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_domain_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_site_domain_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Доменные имена сайтов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site_domain`
--

LOCK TABLES `cms_site_domain` WRITE;
/*!40000 ALTER TABLE `cms_site_domain` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_site_domain` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_storage_file`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_storage_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` varchar(16) DEFAULT NULL,
  `cluster_file` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `size` bigint(32) DEFAULT NULL,
  `mime_type` varchar(16) DEFAULT NULL,
  `extension` varchar(16) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `name_to_save` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description_short` text,
  `description_full` text,
  `image_height` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cluster_id` (`cluster_id`,`cluster_file`),
  KEY `cluster_id_2` (`cluster_id`),
  KEY `cluster_file` (`cluster_file`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `size` (`size`),
  KEY `extension` (`extension`),
  KEY `name_to_save` (`name_to_save`),
  KEY `name` (`name`),
  KEY `mime_type` (`mime_type`),
  KEY `image_height` (`image_height`),
  KEY `image_width` (`image_width`),
  CONSTRAINT `storage_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `storage_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Файл';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_storage_file`
--

LOCK TABLES `cms_storage_file` WRITE;
/*!40000 ALTER TABLE `cms_storage_file` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_storage_file` VALUES (6,'local','e7/3e/02/e73e0270e75c9f93738bbafefe182923.jpg',1,1,1443698527,1443698527,369564,'image/jpeg','jpg','%C2%A6%D0%AF%C2%A6-%C2%A6-%C2%A6%C2%AC%C2%A6%C2%ACT%D0%9C%C2%A6-%C2%A6-(4).jpg',NULL,'Слайд 2',NULL,NULL,500,1000),(7,'local','22/39/3f/22393fb271d072fd9e80629f56c457be.jpg',1,1,1443698567,1443698567,130519,'image/jpeg','jpg','kqfsv6ixxjjxz3dcs6ms.jpg',NULL,'Слайд 1',NULL,NULL,500,1000),(8,'local','c7/63/df/c763dfcc39d930e23502d088e518f099.jpg&w=1200&h=500&crop-to-fit=y',1,1,1443698642,1443698642,77241,'image/jpeg','jpg&w=1200&h=500','8664_rendering1-copy.jpg&w=1200&h=500&crop-to-fit=y',NULL,'Слайд 3',NULL,NULL,500,1200),(9,'local','6e/d4/c4/6ed4c434e7ec08d7a7489f5458f26b3d.png',1,1,1443698667,1443698667,618627,'image/png','png','444444.png',NULL,'Слайд 4',NULL,NULL,500,1200),(10,'local','a5/11/9e/a5119efa777546c9366e3affd8802571.png',1,1,1443698755,1443698756,477837,'image/png','png','1.png',NULL,'Слайд 5',NULL,NULL,500,1200),(16,'local','89/84/80/8984801767d98d26445c32e15725cb62.jpg',1,1,1445807895,1445807895,105935,'image/jpeg','jpg','image001.jpg',NULL,'Терапия',NULL,NULL,566,948),(17,'local','e3/b2/c7/e3b2c71dcdf5d325c0b73003380a808e.jpg',1,1,1445808804,1445808804,7517,'image/jpeg','jpg','big2owvasdc0ypez6x1fq7ng5ujl9kmht8rbi34.jpg',NULL,'Протезирование зубов',NULL,NULL,200,300),(18,'local','0c/2a/8c/0c2a8c95e88b17e27389d20b164025ba.jpg',1,1,1445808864,1445808864,47405,'image/jpeg','jpg','wsmile.jpg',NULL,'Исправление прикуса (брекеты)',NULL,NULL,335,534),(19,'local','26/a8/db/26a8dbb6439e79022c61e1a5fbcbec97.jpg',1,1,1445808934,1445808934,33713,'image/jpeg','jpg','32321_o420x258.jpg',NULL,'Отбеливание зубов',NULL,NULL,258,420);
/*!40000 ALTER TABLE `cms_storage_file` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_full_id` int(11) DEFAULT NULL,
  `description_short` longtext,
  `description_full` longtext,
  `files_depricated` longtext,
  `code` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pids` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `dir` text,
  `has_children` smallint(1) DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `published_at` int(11) DEFAULT NULL,
  `redirect` varchar(500) DEFAULT NULL,
  `tree_menu_ids` varchar(500) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `site_code` char(15) NOT NULL,
  `tree_type_id` int(11) DEFAULT NULL,
  `description_short_type` varchar(10) NOT NULL DEFAULT 'text',
  `description_full_type` varchar(10) NOT NULL DEFAULT 'text',
  `redirect_tree_id` int(11) DEFAULT NULL,
  `redirect_code` int(11) NOT NULL DEFAULT '301',
  `name_hidden` varchar(255) DEFAULT NULL,
  `view_file` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_2` (`pid`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `seo_page_name` (`code`),
  KEY `pid` (`pid`),
  KEY `pids` (`pids`),
  KEY `level` (`level`),
  KEY `priority` (`priority`),
  KEY `has_children` (`has_children`),
  KEY `published_at` (`published_at`),
  KEY `redirect` (`redirect`(255)),
  KEY `tree_menu_ids` (`tree_menu_ids`(255)),
  KEY `meta_title` (`meta_title`(255)),
  KEY `site_code` (`site_code`),
  KEY `tree_type_id` (`tree_type_id`),
  KEY `description_short_type` (`description_short_type`),
  KEY `description_full_type` (`description_full_type`),
  KEY `image_id` (`image_id`),
  KEY `image_full_id` (`image_full_id`),
  KEY `redirect_tree_id` (`redirect_tree_id`),
  KEY `redirect_code` (`redirect_code`),
  KEY `name_hidden` (`name_hidden`),
  KEY `view_file` (`view_file`),
  CONSTRAINT `cms_tree_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_pid_cms_tree` FOREIGN KEY (`pid`) REFERENCES `cms_tree` (`id`),
  CONSTRAINT `cms_tree_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_tree_type_id` FOREIGN KEY (`tree_type_id`) REFERENCES `cms_tree_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree__image_full_id` FOREIGN KEY (`image_full_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__redirect_tree_id` FOREIGN KEY (`redirect_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Страницы дерево';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree`
--

LOCK TABLES `cms_tree` WRITE;
/*!40000 ALTER TABLE `cms_tree` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree` VALUES (1,1,1,1416084922,1455882885,'Главная страница',NULL,NULL,'','<p>Текст редактируемый в подробном описании главного раздела сайта.</p>\r\n','',NULL,NULL,'',0,NULL,1,0,NULL,'','','Y','Тестовый проект SkeekS CMS (Yii2)','','','s1',1,'editor','editor',NULL,301,'',NULL),(4,1,1,1443695838,1445809375,'Контакты',NULL,NULL,'','',NULL,'contacts',1,'1',1,'contacts',0,600,NULL,'','','Y','','','','s1',5,'text','text',NULL,301,NULL,NULL),(6,1,1,1445723753,1445809375,'Услуги',NULL,NULL,NULL,NULL,NULL,'uslugi',1,'1',1,'uslugi',0,200,NULL,NULL,'','Y',NULL,NULL,NULL,'s1',2,'text','text',NULL,301,NULL,NULL),(7,1,1,1445723763,1445809375,'Цены',NULL,NULL,NULL,NULL,NULL,'tsenyi',1,'1',1,'tsenyi',0,300,NULL,NULL,'','Y',NULL,NULL,NULL,'s1',2,'text','text',NULL,301,NULL,NULL),(8,1,1,1445723768,1445809375,'Специалисты',NULL,NULL,NULL,NULL,NULL,'spetsialistyi',1,'1',1,'spetsialistyi',0,400,NULL,NULL,'','Y',NULL,NULL,NULL,'s1',2,'text','text',NULL,301,NULL,NULL),(9,1,1,1445723775,1445809375,'Акции',NULL,NULL,NULL,NULL,NULL,'aktsii',1,'1',1,'aktsii',0,500,NULL,NULL,'','Y',NULL,NULL,NULL,'s1',2,'text','text',NULL,301,NULL,NULL),(18,1,1,1445809372,1455882645,'О сайте',NULL,NULL,'','<p>Это демо текст</p>\r\n\r\n<h2>Московская сертифицированная стоматологическая клиника. 1111</h2>\r\n\r\n<p>Клиника доктора Дмитрия Вадимовича Звонарева,одна из ведущих стоматологических клиник Зеленограда, специализируется на оказании комплексной помощи в области стоматологии - лечения зубов и дёсен, как то: терапевтической, хирургической, ортодонтической, ортопедической стоматологии и имплантологии. Клиника укомплектована всем необходимым для качественного лечения зубов: квалифицированным медицинским персоналом, современным&nbsp;оборудованием.</p>\r\n',NULL,'about',1,'1',1,'about',0,100,NULL,'','','Y','','','','s1',2,'text','editor',NULL,301,'',NULL);
/*!40000 ALTER TABLE `cms_tree` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_file`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__tree_id` (`storage_file_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `tree_id` (`tree_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_tree_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_file__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_file__tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь разделов и файлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_file`
--

LOCK TABLES `cms_tree_file` WRITE;
/*!40000 ALTER TABLE `cms_tree_file` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_file` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__tree_id` (`storage_file_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `tree_id` (`tree_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_tree_image_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_image_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_image__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_image__tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь разделов и файлов изображений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_image`
--

LOCK TABLES `cms_tree_image` WRITE;
/*!40000 ALTER TABLE `cms_tree_image` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_image` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `cms_tree_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Позиции меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_menu`
--

LOCK TABLES `cms_tree_menu` WRITE;
/*!40000 ALTER TABLE `cms_tree_menu` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_menu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `cms_tree_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_property`
--

LOCK TABLES `cms_tree_property` WRITE;
/*!40000 ALTER TABLE `cms_tree_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `description` text,
  `index_for_search` char(1) NOT NULL DEFAULT 'Y',
  `name_meny` varchar(100) DEFAULT NULL,
  `name_one` varchar(100) DEFAULT NULL,
  `viewFile` varchar(255) DEFAULT NULL,
  `default_children_tree_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `index_for_search` (`index_for_search`),
  KEY `name_meny` (`name_meny`),
  KEY `name_one` (`name_one`),
  KEY `viewFile` (`viewFile`),
  KEY `default_children_tree_type` (`default_children_tree_type`),
  CONSTRAINT `cms_tree_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type__default_children_tree_type` FOREIGN KEY (`default_children_tree_type`) REFERENCES `cms_tree_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Тип раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type`
--

LOCK TABLES `cms_tree_type` WRITE;
/*!40000 ALTER TABLE `cms_tree_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree_type` VALUES (1,1,1,1439037415,1445723743,'Главный раздел','home','Y',500,NULL,'','Разделы','Раздел','',2),(2,1,1,1439037424,1439037424,'Текстовый раздел','text','Y',500,NULL,'','Разделы','Раздел',NULL,NULL),(5,1,1,1443703382,1443703382,'Контакты','contacts','Y',500,NULL,'','Разделы','Раздел',NULL,NULL);
/*!40000 ALTER TABLE `cms_tree_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_type_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` longtext,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  `tree_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`,`tree_type_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `tree_type_id` (`tree_type_id`),
  KEY `code` (`code`) USING BTREE,
  CONSTRAINT `cms_tree_type_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_type_property_tree_type_id` FOREIGN KEY (`tree_type_id`) REFERENCES `cms_tree_type` (`id`),
  CONSTRAINT `cms_tree_type_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Свойство раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property`
--

LOCK TABLES `cms_tree_type_property` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_type_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_tree_type_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_tree_type_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_tree_type_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_type_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств для разделов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property_enum`
--

LOCK TABLES `cms_tree_type_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_type_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `info` text,
  `files` text,
  `status_of_life` varchar(255) DEFAULT NULL,
  `gender` enum('men','women') NOT NULL DEFAULT 'men',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `logged_at` int(11) DEFAULT NULL,
  `last_activity_at` int(11) DEFAULT NULL,
  `last_admin_activity_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `password_hash` (`password_hash`),
  KEY `password_reset_token` (`password_reset_token`),
  KEY `name` (`name`),
  KEY `city` (`city`),
  KEY `address` (`address`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `logged_at` (`logged_at`),
  KEY `last_activity_at` (`last_activity_at`),
  KEY `last_admin_activity_at` (`last_admin_activity_at`),
  KEY `image_id` (`image_id`),
  CONSTRAINT `cms_user_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Пользователь';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user`
--

LOCK TABLES `cms_user` WRITE;
/*!40000 ALTER TABLE `cms_user` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_user` VALUES (1,'root','otv60YW-nV6-8GRI4La3vYNhu_-dmp_n','$2y$13$tEMlbu9DvkU3RDCg.sZwM.JNScy.HJXFqG.Ew.n5fwcdAPxHsFdla','wn49wJLj9OMVjgj8bBzBjND4nFixyJgt_1413297645',NULL,1458410633,'Семенов Александр',NULL,'Зеленоград','Зеленоград, ул. Каменка, 2004-25','','','','men','Y',1,NULL,1458399307,1458410633,1458410633);
/*!40000 ALTER TABLE `cms_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user_authclient`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_authclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `provider_identifier` varchar(100) DEFAULT NULL,
  `provider_data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `provider` (`provider`),
  KEY `provider_identifier` (`provider_identifier`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_authclient`
--

LOCK TABLES `cms_user_authclient` WRITE;
/*!40000 ALTER TABLE `cms_user_authclient` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_authclient` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user_email`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `approved` char(1) NOT NULL DEFAULT 'N',
  `def` varchar(1) NOT NULL DEFAULT 'N',
  `approved_key` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `approved_key` (`approved_key`),
  KEY `approved` (`approved`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  CONSTRAINT `cms_user_email_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_email`
--

LOCK TABLES `cms_user_email` WRITE;
/*!40000 ALTER TABLE `cms_user_email` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_user_email` VALUES (2,1,'semenov@skeeks.com','Y','Y',NULL,1455882778,1455882803);
/*!40000 ALTER TABLE `cms_user_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user_phone`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `approved` char(1) NOT NULL DEFAULT 'N',
  `def` varchar(1) NOT NULL DEFAULT 'N',
  `approved_key` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `approved_key` (`approved_key`),
  KEY `approved` (`approved`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  CONSTRAINT `cms_user_phone_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_phone`
--

LOCK TABLES `cms_user_phone` WRITE;
/*!40000 ALTER TABLE `cms_user_phone` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_phone` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `cms_user_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_user_universal_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_property`
--

LOCK TABLES `cms_user_property` WRITE;
/*!40000 ALTER TABLE `cms_user_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user_universal_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_universal_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  CONSTRAINT `cms_user_universal_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_universal_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Свойства пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_universal_property`
--

LOCK TABLES `cms_user_universal_property` WRITE;
/*!40000 ALTER TABLE `cms_user_universal_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_universal_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `cms_user_universal_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_universal_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_user_universal_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_universal_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_user_universal_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_universal_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_universal_property_enum`
--

LOCK TABLES `cms_user_universal_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_user_universal_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_universal_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `form2_form`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `code` varchar(32) DEFAULT NULL,
  `emails` text,
  `phones` text,
  `user_ids` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  CONSTRAINT `form2_form_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Формы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form`
--

LOCK TABLES `form2_form` WRITE;
/*!40000 ALTER TABLE `form2_form` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `form2_form` VALUES (1,1,1,1439302701,1439302727,'Обратная связь (клиент)','','feedback','','',''),(3,1,1,1455883158,1455883158,'Заказать звонок','','callback',NULL,NULL,NULL);
/*!40000 ALTER TABLE `form2_form` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `form2_form_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `list_type` char(1) NOT NULL DEFAULT 'L',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `multiple_cnt` int(11) DEFAULT NULL,
  `with_description` char(1) DEFAULT NULL,
  `searchable` char(1) NOT NULL DEFAULT 'N',
  `filtrable` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `smart_filtrable` char(1) NOT NULL DEFAULT 'N',
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`,`form_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `list_type` (`list_type`),
  KEY `multiple` (`multiple`),
  KEY `multiple_cnt` (`multiple_cnt`),
  KEY `with_description` (`with_description`),
  KEY `searchable` (`searchable`),
  KEY `filtrable` (`filtrable`),
  KEY `is_required` (`is_required`),
  KEY `version` (`version`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `smart_filtrable` (`smart_filtrable`),
  KEY `form_id` (`form_id`),
  CONSTRAINT `form2_form_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_property_form2_form` FOREIGN KEY (`form_id`) REFERENCES `form2_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Свойство раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_property`
--

LOCK TABLES `form2_form_property` WRITE;
/*!40000 ALTER TABLE `form2_form_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `form2_form_property` VALUES (4,1,1,1439302873,1439302873,'Имя','property345da3829b7efab4c33cfba3e915239b','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','YTowOnt9','','N',1),(5,1,1,1439302905,1439302905,'Телефон','property51795c04a1d3e834c56f2bc870c6bf43','Y',500,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','YTowOnt9','','N',1),(6,1,1,1439302915,1439302915,'email','property4c0a2dc7fd35d47d9d73831286131846','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','YTowOnt9','','N',1),(7,1,1,1445806010,1445806017,'Сообщение','property902885a914c2c25a1ccbecafcd69dde2','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:10:{s:4:\"code\";s:1:\"S\";s:4:\"name\";s:10:\"Текст\";s:12:\"fieldElement\";s:8:\"textarea\";s:4:\"rows\";s:1:\"5\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}','','N',1),(8,1,1,1455883171,1455883171,'Имя','property447f1a8cfe6b1788bf3a056bba68abb2','Y',500,'S','L','N',NULL,'N','Y','N','N',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',3),(9,1,1,1455883183,1455883183,'Телефон','propertyD0c5d40de85683ff6b2ef22e2fa055de','Y',500,'S','L','N',NULL,'N','Y','N','Y',1,'skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','','N',3);
/*!40000 ALTER TABLE `form2_form_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `form2_form_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `form2_form_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `form2_form_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_property_enum`
--

LOCK TABLES `form2_form_property_enum` WRITE;
/*!40000 ALTER TABLE `form2_form_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `form2_form_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `form2_form_send`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `processed_at` int(11) DEFAULT NULL,
  `data_values` text,
  `data_labels` text,
  `emails` text,
  `phones` text,
  `user_ids` text,
  `email_message` text,
  `phone_message` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `form_id` int(255) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `page_url` varchar(500) DEFAULT NULL,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  `additional_data` text,
  `site_code` char(15) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `form_id` (`form_id`),
  KEY `processed_by` (`processed_by`),
  KEY `processed_at` (`processed_at`),
  KEY `status` (`status`),
  KEY `ip` (`ip`),
  KEY `page_url` (`page_url`(255)),
  KEY `site_code` (`site_code`),
  CONSTRAINT `form2_form_send_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_form_id` FOREIGN KEY (`form_id`) REFERENCES `form2_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_processed_by` FOREIGN KEY (`processed_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Сообщения с форм';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_send`
--

LOCK TABLES `form2_form_send` WRITE;
/*!40000 ALTER TABLE `form2_form_send` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `form2_form_send` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `form2_form_send_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_send_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  CONSTRAINT `form2_form_send_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `form2_form_send` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `form2_form_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_send_property`
--

LOCK TABLES `form2_form_send_property` WRITE;
/*!40000 ALTER TABLE `form2_form_send_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `form2_form_send_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`),
  CONSTRAINT `fk_source_message_message` FOREIGN KEY (`id`) REFERENCES `source_message` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `message` VALUES (1,'en',NULL),(1,'ru',NULL),(2,'en',NULL),(2,'ru',NULL),(3,'en',NULL),(3,'ru',NULL),(4,'en',NULL),(4,'ru',NULL),(5,'en',NULL),(5,'ru',NULL),(6,'en',NULL),(6,'ru',NULL),(7,'en',NULL),(7,'ru',NULL),(8,'en',NULL),(8,'ru',NULL),(9,'en',NULL),(9,'ru',NULL),(10,'en',NULL),(10,'ru',NULL),(11,'en',NULL),(11,'ru',NULL),(12,'en',NULL),(12,'ru',NULL),(13,'en',NULL),(13,'ru',NULL),(14,'en',NULL),(14,'ru',NULL),(15,'en',NULL),(15,'ru',NULL),(16,'en',NULL),(16,'ru',NULL),(17,'en',NULL),(17,'ru',NULL),(18,'en',NULL),(18,'ru',NULL),(19,'en',NULL),(19,'ru',NULL),(20,'en',NULL),(20,'ru',NULL),(21,'en',NULL),(21,'ru',NULL),(22,'en',NULL),(22,'ru',NULL),(23,'en',NULL),(23,'ru',NULL),(24,'en',NULL),(24,'ru',NULL),(25,'en',NULL),(25,'ru',NULL),(26,'en',NULL),(26,'ru',NULL),(27,'en',NULL),(27,'ru',NULL),(28,'en',NULL),(28,'ru',NULL),(29,'en',NULL),(29,'ru',NULL),(30,'en',NULL),(30,'ru',NULL),(31,'en',NULL),(31,'ru',NULL),(32,'en',NULL),(32,'ru',NULL),(33,'en',NULL),(33,'ru',NULL),(34,'en',NULL),(34,'ru',NULL),(35,'en',NULL),(35,'ru',NULL),(36,'en',NULL),(36,'ru',NULL),(37,'en',NULL),(37,'ru',NULL),(38,'en',NULL),(38,'ru',NULL),(39,'en',NULL),(39,'ru',NULL),(40,'en',NULL),(40,'ru',NULL),(41,'en',NULL),(41,'ru',NULL),(42,'en',NULL),(42,'ru',NULL),(43,'en',NULL),(43,'ru',NULL),(44,'en',NULL),(44,'ru',NULL),(45,'en',NULL),(45,'ru',NULL),(46,'en',NULL),(46,'ru',NULL),(47,'en',NULL),(47,'ru',NULL),(48,'en',NULL),(48,'ru',NULL),(49,'en',NULL),(49,'ru',NULL),(50,'en',NULL),(50,'ru',NULL),(51,'en',NULL),(51,'ru',NULL),(52,'en',NULL),(52,'ru',NULL),(53,'en',NULL),(53,'ru',NULL),(54,'en',NULL),(54,'ru',NULL),(55,'en',NULL),(55,'ru',NULL),(56,'en',NULL),(56,'ru',NULL),(57,'en',NULL),(57,'ru',NULL),(58,'en',NULL),(58,'ru',NULL),(59,'en',NULL),(59,'ru',NULL),(60,'en',NULL),(60,'ru',NULL),(61,'en',NULL),(61,'ru',NULL),(62,'en',NULL),(62,'ru',NULL),(63,'en',NULL),(63,'ru',NULL),(64,'en',NULL),(64,'ru',NULL),(65,'en',NULL),(65,'ru',NULL),(66,'en',NULL),(66,'ru',NULL),(67,'en',NULL),(67,'ru',NULL),(68,'en',NULL),(68,'ru',NULL),(69,'en',NULL),(69,'ru',NULL),(70,'en',NULL),(70,'ru',NULL),(71,'en',NULL),(71,'ru',NULL),(72,'en',NULL),(72,'ru',NULL),(73,'en',NULL),(73,'ru',NULL),(74,'en',NULL),(74,'ru',NULL),(75,'en',NULL),(75,'ru',NULL),(76,'en',NULL),(76,'ru',NULL),(77,'en',NULL),(77,'ru',NULL),(78,'en',NULL),(78,'ru',NULL),(79,'en',NULL),(79,'ru',NULL),(80,'en',NULL),(80,'ru',NULL),(81,'en',NULL),(81,'ru',NULL),(82,'en',NULL),(82,'ru',NULL),(83,'en',NULL),(83,'ru',NULL),(84,'en',NULL),(84,'ru',NULL),(85,'en',NULL),(85,'ru',NULL),(86,'en',NULL),(86,'ru',NULL),(87,'en',NULL),(87,'ru',NULL),(88,'en',NULL),(88,'ru',NULL),(89,'en',NULL),(89,'ru',NULL),(90,'en',NULL),(90,'ru',NULL),(91,'en',NULL),(91,'ru',NULL),(92,'en',NULL),(92,'ru',NULL),(93,'en',NULL),(93,'ru',NULL),(94,'en',NULL),(94,'ru',NULL),(95,'en',NULL),(95,'ru',NULL),(96,'en',NULL),(96,'ru',NULL),(97,'en',NULL),(97,'ru',NULL),(98,'en',NULL),(98,'ru',NULL),(99,'en',NULL),(99,'ru',NULL),(100,'en',NULL),(100,'ru',NULL),(101,'en',NULL),(101,'ru',NULL),(102,'en',NULL),(102,'ru',NULL),(103,'en',NULL),(103,'ru',NULL),(104,'en',NULL),(104,'ru',NULL),(105,'en',NULL),(105,'ru',NULL),(106,'en',NULL),(106,'ru',NULL),(107,'en',NULL),(107,'ru',NULL),(108,'en',NULL),(108,'ru',NULL),(109,'en',NULL),(109,'ru',NULL),(110,'en',NULL),(110,'ru',NULL),(111,'en',NULL),(111,'ru',NULL),(112,'en',NULL),(112,'ru',NULL),(113,'en',NULL),(113,'ru',NULL),(114,'en',NULL),(114,'ru',NULL),(115,'en',NULL),(115,'ru',NULL),(116,'en',NULL),(116,'ru',NULL),(117,'en',NULL),(117,'ru',NULL),(118,'en',NULL),(118,'ru',NULL),(119,'en',NULL),(119,'ru',NULL),(120,'en',NULL),(120,'ru',NULL),(121,'en',NULL),(121,'ru',NULL),(122,'en',NULL),(122,'ru',NULL),(123,'en',NULL),(123,'ru',NULL),(124,'en',NULL),(124,'ru',NULL),(125,'en',NULL),(125,'ru',NULL),(126,'en',NULL),(126,'ru',NULL),(127,'en',NULL),(127,'ru',NULL),(128,'en',NULL),(128,'ru',NULL),(129,'en',NULL),(129,'ru',NULL),(130,'en',NULL),(130,'ru',NULL),(131,'en',NULL),(131,'ru',NULL),(132,'en',NULL),(132,'ru',NULL),(133,'en',NULL),(133,'ru',NULL),(134,'en',NULL),(134,'ru',NULL),(135,'en',NULL),(135,'ru',NULL),(136,'en',NULL),(136,'ru',NULL),(137,'en',NULL),(137,'ru',NULL),(138,'en',NULL),(138,'ru',NULL),(139,'en',NULL),(139,'ru',NULL),(140,'en',NULL),(140,'ru',NULL),(141,'en',NULL),(141,'ru',NULL),(142,'en',NULL),(142,'ru',NULL),(143,'en',NULL),(143,'ru',NULL),(144,'en',NULL),(144,'ru',NULL),(145,'en',NULL),(145,'ru',NULL),(146,'en',NULL),(146,'ru',NULL),(147,'en',NULL),(147,'ru',NULL),(148,'en',NULL),(148,'ru',NULL),(149,'en',NULL),(149,'ru',NULL),(150,'en',NULL),(150,'ru',NULL),(151,'en',NULL),(151,'ru',NULL),(152,'en',NULL),(152,'ru',NULL),(153,'en',NULL),(153,'ru',NULL),(154,'en',NULL),(154,'ru',NULL),(155,'en',NULL),(155,'ru',NULL),(156,'en',NULL),(156,'ru',NULL),(157,'en',NULL),(157,'ru',NULL),(158,'en',NULL),(158,'ru',NULL),(159,'en',NULL),(159,'ru',NULL),(160,'en',NULL),(160,'ru',NULL),(161,'en',NULL),(161,'ru',NULL),(162,'en',NULL),(162,'ru',NULL),(163,'en',NULL),(163,'ru',NULL),(164,'en',NULL),(164,'ru',NULL),(165,'en',NULL),(165,'ru',NULL),(166,'en',NULL),(166,'ru',NULL),(167,'en',NULL),(167,'ru',NULL),(168,'en',NULL),(168,'ru',NULL),(169,'en',NULL),(169,'ru',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `migration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `migration` VALUES ('m000000_000000_base',1439036753),('m140506_102106_rbac_init',1439036754),('m140801_201442_create_user_table',1439036756),('m140814_223103_create_user_authclient_table',1439036758),('m140902_110812_create_storage_file_table',1439036764),('m141019_100557_create_publication_table',1439036767),('m141019_162718_create_comment_table',1439036771),('m141019_162721_subscribe_create_table',1439036773),('m141019_162726_create_vote_table',1439036776),('m141104_100557_create_cms_tree_table',1439036784),('m141106_100557_create_user_group_table',1439036788),('m141109_100557_create_cms_infoblock_table',1439036791),('m141111_100557_alter_tables_tree_and_publication',1439036794),('m141116_100557_create_teable_static_block',1439036796),('m141117_100557_create_teable_site',1439036798),('m141205_100557_alter_table_published_behavior',1439036802),('m141231_100557_create_teable_cms_tree_menu',1439036805),('m141231_100559_alter_table_tree',1439036808),('m150116_100559_alter_table_publications',1439036811),('m150121_193200_create_table__cms_user_email',1439036814),('m150121_273200_create_table__cms_user_phone',1439036815),('m150121_273203_alter_table__cms_user',1439036819),('m150121_273205_alter_table__cms_user__add_emails',1439036823),('m150122_273205_alter_table__cms_user__emails_adn_phones',1439036823),('m150316_273205_alter_table__cms_user__emails_adn_phones_1',1439036828),('m150324_273205_alter_table__cms_infoblock',1439036830),('m150324_273210_alter_table__cms_infoblock_2',1439036830),('m150327_273210_create_table__cms_settings',1439036832),('m150512_103210_create_table__cms_content_type',1439036834),('m150512_103220_create_table__cms_content',1439036839),('m150512_103230_create_table__cms_content_element',1439036846),('m150512_113230_create_table__cms_content_property',1439036851),('m150512_123230_create_table__cms_content_property_enum',1439036854),('m150512_153230_create_table__cms_content_element_property',1439036859),('m150516_103230_create_table__cms_content_element_tree',1439036862),('m150519_103210_drop_tables_social',1439036862),('m150519_113210_cms_alter_clear_social_data',1439036878),('m150519_123210_cms_alter_drop_publications_and_page_options',1439036880),('m150520_103210_cms_alter_user_data',1439036886),('m150520_133210_cms_alter_storage_files',1439036897),('m150520_143210_cms_alter_cms_tree',1439036903),('m150520_153210_cms_alter_meta_data',1439036909),('m150520_153305_cms_alter_table__cms_lang',1439036912),('m150520_153310_cms_alter_table__cms_site',1439036916),('m150520_163310_insert_cms_site_and_lang',1439036916),('m150520_173310_create_table__cms_site_domain',1439036919),('m150520_183310_alter_table__cms_tree',1439036922),('m150521_183310_alter_table__cms_tree',1439036924),('m150521_183315_alter_table__cms_tree',1439036926),('m150521_193315_alter_table__cms_settings',1439036926),('m150522_193315_drop_table__cms_infoblock',1439036926),('m150523_103220_create_table__cms_tree_type',1439036929),('m150523_103520_create_table__cms_tree_type_property',1439036935),('m150523_103525_create_table__cms_tree_type_property_enum',1439036940),('m150523_104025_create_table__cms_tree_property',1439036944),('m150523_114025_alter_table__cms_tree',1439036948),('m150528_114025_alter_table__cms_component_settings',1439036953),('m150528_114030_alter_table__cms_component_settings',1439036953),('m150604_114030_alter_table__cms_user',1439036957),('m150607_114030_alter_table__cms_tree_and_cms_content_element',1439036961),('m150608_114030_alter_table__cms_site_code_length',1439036965),('m150608_154030_alter_table__cms_user_emails_and_phones',1439036966),('m150615_162718_create_table__form2_form',1439036985),('m150615_162740_create_table__form2_form_send',1439036992),('m150615_172718_create_table__form2_form_property',1439036998),('m150615_182718_create_table__form2_form_property_enum',1439037001),('m150615_192740_create_table__form2_form_send_property',1439037006),('m150622_114030_alter_table__cms_user',1439036967),('m150702_114030_alter_table__cms_user',1439036969),('m150703_162718_create_table__reviews2_message',1439037016),('m150707_114030_alter_table__big_text',1439036981),('m150715_103220_create_table__cms_agent',1439036982),('m150730_103220_create_table__cms_session',1439036983),('m150730_213220_create_table__cms_event',1439036984),('m150806_213220_alter_table__cms_tree_type_property',1439297629),('m150807_213220_alter_table__cms_content_property',1439297631),('m150825_213220_delete_table__cms_user_group',1441207854),('m150826_113220_create_table__cms_user_universal_property',1441207862),('m150826_123220_create_table__cms_user_universal_property_enum',1441207868),('m150826_133220_create_table__cms_user_property',1441207874),('m150827_133220_create_table__cms_search_phrase',1441207878),('m150922_213220_alter_table__cms_user',1442994194),('m150922_223220_update_data__cms_user',1442994194),('m150922_233220_alter_table__cms_tree',1442994199),('m150922_234220_update_data__cms_tree',1442994199),('m150922_235220_alter_table__cms_content_element',1442994205),('m150922_235320_update_data__cms_content_element',1442994205),('m150922_235520_alter_table__drop_files_column',1442994208),('m150923_133220_create_table__cms_tree_image',1443026255),('m150923_143220_create_table__cms_tree_file',1443026259),('m150923_153220_create_table__cms_content_element_image',1443026262),('m150923_163220_create_table__cms_content_element_file',1443026266),('m150923_173220_update_data__images_and_files',1443026266),('m150923_183220_alter_table__tree__content_element',1443027041),('m150924_183220_alter_table__cms_user',1443647310),('m150924_193220_alter_table__cms_user_email',1443647311),('m151023_113220_alter_table__cms_site',1445701967),('m151023_153220_alter_table__cms_content',1445701972),('m151023_163220_alter_table__cms_content',1445701974),('m151023_173220_alter_table__cms_tree_type',1445701977),('m151030_173220_alter_table__cms_tree',1446248160),('m151030_183220_alter_table__cms_tree',1446248162),('m151030_193220_alter_table__cms_tree',1446248164),('m151110_193220_alter_table__cms_content',1447185422),('m151113_113220_alter_table__cms_site_and_lang',1448206538),('m151215_193220_alter_table__cms_content',1450698752),('m151221_093837_addI18nTables',1455529587),('m160215_093837__create_table__cms_dashboard',1455882076),('m160216_093837__create_table__cms_dashboard_widget',1455882084),('m160221_193220__alter_table__cms_tree',1457470054),('m160222_193220__alter_table__cms_content',1457470061),('m160222_203220__alter_table__cms_content',1457470066),('m160313_203220__alter_table__cms_storage_file',1458397396),('m160315_093837__create_table__cms_user2cms_content_elements',1458397400),('m160319_093837__drop_table__cms_session',1458397400);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `reviews2_message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews2_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `processed_at` int(11) DEFAULT NULL,
  `element_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `dignity` text,
  `disadvantages` text,
  `comments` text,
  `rating` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `page_url` text,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  `site_code` char(15) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `published_at` (`published_at`),
  KEY `processed_at` (`processed_at`),
  KEY `processed_by` (`processed_by`),
  KEY `status` (`status`),
  KEY `rating` (`rating`),
  KEY `element_id` (`element_id`),
  KEY `content_id` (`content_id`),
  KEY `ip` (`ip`),
  KEY `site_code` (`site_code`),
  KEY `user_name` (`user_name`),
  KEY `user_phone` (`user_phone`),
  KEY `user_email` (`user_email`),
  KEY `user_city` (`user_city`),
  CONSTRAINT `reviews2_message_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews2_message_processed_by` FOREIGN KEY (`processed_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Отзывы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews2_message`
--

LOCK TABLES `reviews2_message` WRITE;
/*!40000 ALTER TABLE `reviews2_message` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `reviews2_message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `source_message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_message`
--

LOCK TABLES `source_message` WRITE;
/*!40000 ALTER TABLE `source_message` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `source_message` VALUES (1,'app','Superuser'),(2,'app','Unauthorized user'),(3,'app','Admin'),(4,'app','Manager (access to the administration)'),(5,'app','Editor (access to the administration)'),(6,'app','Registered user'),(7,'app','Confirmed user'),(8,'app','Access to system administration'),(9,'app','Access to the site control panel'),(10,'app','The ability to create records'),(11,'app','The ability to edit view files'),(12,'app','Updating data records'),(13,'app','Updating data own records'),(14,'app','Updating additional data records'),(15,'app','Updating additional data own records'),(16,'app','Deleting records'),(17,'app','Deleting own records'),(18,'app','Access to personal files'),(19,'app','Access to the public files'),(20,'app','Access to all files'),(21,'app','Content'),(22,'app','Sections'),(23,'app','File manager'),(24,'app','File storage'),(25,'app','Settings'),(26,'app','Product settings'),(27,'app','Sites'),(28,'app','Languages'),(29,'app','Database of translations'),(30,'app','Section markers'),(31,'app','Server file storage'),(32,'app','Settings sections'),(33,'app','Content settings'),(34,'app','Module settings'),(35,'app','Agents'),(36,'app','Users and Access'),(37,'app','User management'),(38,'app','User properties'),(39,'app','The base of {email} addresses'),(40,'app','Base phones'),(41,'app','Social profiles'),(42,'app','Roles'),(43,'app','Privileges'),(44,'app','Searching'),(45,'app','Statistic'),(46,'app','Jump list'),(47,'app','Phrase list'),(48,'app','Instruments'),(49,'app','Checking system'),(50,'app','Information'),(51,'app','Sending {email}'),(52,'app','Clearing temporary data'),(53,'app','Work to database'),(54,'app','{ssh} console'),(55,'app','Code generator'),(56,'app','Marketplace'),(57,'app','Catalog'),(58,'app','Installed'),(59,'app','Install{s}Delete'),(60,'app','Updated platforms'),(61,'app','Additionally'),(62,'app','Checking permission'),(63,'app','Checking role'),(64,'app','Управление привилегиями'),(65,'app','Job to database'),(66,'app','Выберите опцию'),(67,'app','Выберите несколько опций'),(68,'app','Результатов не найдено'),(69,'app','ID'),(70,'app','Src'),(71,'app','Cluster File'),(72,'app','Original FileName'),(73,'app','Linked To Value'),(74,'app','Toggle Dropdow'),(75,'app','The combination of Cluster ID and Cluster Src has already been taken.'),(76,'app','да'),(77,'app','нет'),(78,'app','Show Counter'),(79,'app','Show Counter Start'),(80,'app','Description Short Type'),(81,'app','Description Full Type'),(82,'app','The current version {cms} '),(83,'app','Watch to {site} (opens in new window)'),(84,'app','Скрытое поле'),(85,'app','Отправить'),(86,'app','\"Testing the system (Progress\"'),(87,'app','Access to edit dashboards'),(88,'app','Dashboards'),(89,'app','Cms User ID'),(90,'app','Columns Settings'),(91,'app','Cms Dashboard ID'),(92,'app','cms_dashboard_column'),(93,'app','Are you sure you want to delete this desktop?'),(94,'app','Content Type'),(95,'app','Name One Element'),(96,'app','Шаблон META TITLE'),(97,'app','Шаблон META KEYWORDS'),(98,'app','Шаблон META DESCRIPTION'),(99,'app','Включить управление доступом к элементам'),(100,'app','Property Type'),(101,'app','List Type'),(102,'app','Multiple Cnt'),(103,'app','Seo'),(104,'app','SEO'),(105,'app','The combination of Code and Pid has already been taken.'),(106,'app','Этот параметр влияет на адрес страницы, будте внимательно при его редактировании.'),(107,'app','Showing all elements of type \'{name}\' associated with this section. Taken into account only the main binding.'),(108,'app','Auth Key'),(109,'app','Password Hash'),(110,'app','Password Reset Token'),(111,'app','Email'),(112,'app','Группы'),(113,'app','Provider'),(114,'app','Provider Identifier'),(115,'app','Provider Data'),(116,'app','Unexpected Phone Number Format'),(117,'app','Email адреса'),(118,'app','Телефоны'),(119,'app','User Ids'),(120,'app','Связь с формой'),(121,'app','Property ID'),(122,'app','Def'),(123,'app','Desktop'),(124,'app','Dashboard'),(125,'app','Add dashboard'),(126,'app','Add widget'),(127,'app','Delete'),(128,'app','Created By'),(129,'app','Updated By'),(130,'app','Created At'),(131,'app','Updated At'),(132,'app','Name'),(133,'app','Priority'),(134,'app','Number of columns'),(135,'app','Save'),(136,'app','Component'),(137,'app','Component Settings'),(138,'app','Basic widgets'),(139,'app','Information about SkeekS CMS'),(140,'app','Short info'),(141,'app','Disk space'),(142,'app','The list of content items'),(143,'app','Free place'),(144,'app','Number of users'),(145,'app','At percent ratio'),(146,'app','Free'),(147,'app','Used'),(148,'app','Total at server'),(149,'app','Basic module {cms}, without it nothing will work and the whole world will collapse.'),(150,'app','To main page of admin area'),(151,'app','To main page of site'),(152,'app','Interface language'),(153,'app','Clear cache and temporary files'),(154,'app','Project settings'),(155,'app','Your profile'),(156,'app','Profile'),(157,'app','To block'),(158,'app','Exit'),(159,'app','Close menu'),(160,'app','Open menu'),(161,'app','Setting the admin panel'),(162,'app','Authorization through social networks'),(163,'app','Managing Roles'),(164,'app','Information about the system'),(165,'app','Testing send email messages from site'),(166,'app','Deleting temporary files'),(167,'app','Go to site {cms}'),(168,'app','Go to site of the developer'),(169,'app','The ability to manage user groups');
/*!40000 ALTER TABLE `source_message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Sat, 19 Mar 2016 21:03:53 +0300
