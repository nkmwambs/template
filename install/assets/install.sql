-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci NOT NULL,
  `russian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8_unicode_ci NOT NULL,
  `greek` longtext COLLATE utf8_unicode_ci NOT NULL,
  `german` longtext COLLATE utf8_unicode_ci NOT NULL,
  `italian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thai` longtext COLLATE utf8_unicode_ci NOT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `latin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `korean` longtext COLLATE utf8_unicode_ci NOT NULL,
  `swahili` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1,	'system_name',	'Techsys Template'),
(2,	'system_title',	'Techsys Template'),
(3,	'address',	'Kilifi'),
(4,	'phone',	'0711808071'),
(5,	'paypal_email',	'admin@techsys.com'),
(6,	'currency',	'Kes.'),
(7,	'system_email',	'admin@techsys.com'),
(20,	'active_sms_service',	'disabled'),
(11,	'language',	'english'),
(12,	'text_align',	'left-to-right'),
(13,	'clickatell_user',	''),
(14,	'clickatell_password',	''),
(15,	'clickatell_api_id',	''),
(16,	'skin_colour',	'Green'),
(17,	'twilio_account_sid',	''),
(18,	'twilio_auth_token',	''),
(19,	'twilio_sender_phone_number',	'');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(5) NOT NULL COMMENT '1=Admin',
  `authentication_key` varchar(100) NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`users_id`, `name`, `email`, `password`, `level`, `authentication_key`) VALUES
(1,	'Nicodemus Karisa',	'admin@techsys.com',	'@TechsysInc',	1,	'');


DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- 2017-01-30 13:17:47
