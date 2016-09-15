-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 21 2016 г., 20:14
-- Версия сервера: 5.5.47
-- Версия PHP: 5.4.45-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `aunexumsafe`
--

DELIMITER $$
--
-- Функции
--
CREATE DEFINER=`root`@`localhost` FUNCTION `returnNumericOnly`(`str` VARCHAR(1000)) RETURNS varchar(1000) CHARSET utf8
BEGIN
  DECLARE counter INT DEFAULT 0;
  DECLARE strLength INT DEFAULT 0;
  DECLARE strChar VARCHAR(1000) DEFAULT '' ;
  DECLARE retVal VARCHAR(1000) DEFAULT '';
  SET strLength = LENGTH(str);
  WHILE strLength > 0 DO
    SET counter = counter+1;
    SET strChar = SUBSTRING(str,counter,1);
    IF strChar REGEXP('[0-9]+') = 1
      THEN SET retVal = CONCAT(retVal,strChar);
    END IF;
    SET strLength = strLength -1;
    SET strChar = NULL;
  END WHILE;
RETURN retVal;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `street` tinytext NOT NULL,
  `zip` varchar(30) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1387 ;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `customer_id`, `name`, `is_default`, `organization`, `contact_person`, `street`, `zip`, `city`, `country_id`) VALUES
(40, 2, 'Main address', 1, 'LEMON', 'Artem Kramov', 'Sikorskogo, 1A', '38800', 'Kiev', 1),
(44, 4, 'Main address', 1, 'LEMON', 'Artem Kramov', 'Sikorskogo, 1A', '38800', 'Kiev', 1),
(1240, 20, 'fgdfg', 0, '', '', 'fgdfg', 'dfgdfg', 'dfg', 1),
(1274, 22, 'Bert Hebbrecht', 0, 'Bert Hebbrecht Automation BVBA', 'Bert Hebbrecht', 'Spoorlaan 2', '9090', 'Melle', 155),
(1280, 23, 'F.H. Huijink', 0, 'F.H. Huijink Beheer BV', 'F.H. Huijink', 'Impact 60', '6921 RZ', 'Duiven', 155),
(1286, 18, 'Main address', 1, '', '', 'Street', '43', 'Poltava', 1),
(1355, 19, 'Main address', 1, '', '', 'Street', '2332', 'Kiev', 20),
(1374, 17, 'Main address', 1, 'LEMON', 'Artem Kramov', 'Sikorskogo, 1A', '38800', 'Kiev', 227),
(1376, 21, 'A.C.M.R. Berentzen-Persoon', 0, '', '', 'Buerweg 41', '1861 CH', 'Bergen', 155),
(1386, 1, 'dfgdfgdfg', 0, '', '', 'dfsd', '56456', 'gdfgdfg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1465208482),
('admin', '7', 1457030690),
('admin', '8', 1457030722),
('customer', '30', 1467798325),
('employee', '10', 1464244325),
('employee', '11', 1457110756),
('employee', '12', 1457110796),
('employee', '13', 1457110836),
('employee', '14', 1457110869),
('employee', '15', 1457514681),
('employee', '16', 1457110935),
('employee', '17', 1457110968),
('employee', '18', 1457110999),
('employee', '19', 1457111027),
('employee', '2', 1457030671),
('employee', '20', 1457111064),
('employee', '21', 1457111114),
('employee', '22', 1457111144),
('employee', '23', 1457111200),
('employee', '24', 1457111229),
('employee', '25', 1457111272),
('employee', '26', 1457514817),
('employee', '27', 1457609530),
('employee', '28', 1457622928),
('employee', '29', 1458058257),
('employee', '7', 1457030690),
('employee', '9', 1457030749),
('manager', '31', 1468305320),
('sales_organization', '32', 1466521658);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `parent_id`) VALUES
('admin', 1, 'Administrator', NULL, NULL, 1457028578, 1468496198, NULL),
('customer', 1, 'Customer', NULL, NULL, 1457028597, 1468306818, NULL),
('customers/customers', 2, 'Customer management', NULL, NULL, 1464349249, 1467819953, ''),
('customers/customers/generate-confirm-pdf', 2, 'Customer storage PDF', NULL, NULL, 1466172229, 1466172229, 'customers/customers'),
('customers/customers/index', 2, 'Customer list (manager)', NULL, NULL, 1467461141, 1467648281, 'customers/customers'),
('customers/customers/update', 2, 'Customer update', 'isItself', NULL, 1467471135, 1467648289, 'customers/customers'),
('customers/customers/validate', 2, 'Customer update (validation)', NULL, NULL, 1467471287, 1467648306, 'customers/customers'),
('customers/customers/view', 2, 'Customer view', 'isItself', NULL, 1467465200, 1467648322, 'customers/customers'),
('dashboard/default/index', 2, 'Dashboard', NULL, NULL, 1468306058, 1468306516, ''),
('i18n', 2, 'Translation management', NULL, NULL, 1464245784, 1464245784, NULL),
('invoices/invoice-statuses', 2, 'Invoice status management', NULL, NULL, 1466596525, 1467648340, 'invoices/invoices'),
('invoices/invoices', 2, 'Invoice management', NULL, NULL, 1466603076, 1466603076, NULL),
('invoices/invoices/delete', 2, 'Invoice delete', NULL, NULL, 1467646491, 1467646623, 'invoices/invoices'),
('invoices/invoices/generate-pdf', 2, 'Invoice PDF generation', NULL, NULL, 1468305720, 1468305720, 'invoices/invoices'),
('invoices/invoices/index', 2, 'Invoice list', NULL, NULL, 1466663888, 1467646641, 'invoices/invoices'),
('invoices/invoices/update', 2, 'Invoice update', 'isAuthor', NULL, 1467469605, 1467646653, 'invoices/invoices'),
('invoices/invoices/view', 2, 'Invoice view', 'isAuthor', NULL, 1466664768, 1467646665, 'invoices/invoices'),
('manager', 1, 'Manager', NULL, NULL, 1464245080, 1468306832, NULL),
('permit/access', 2, 'Role and permission management', NULL, NULL, 1457031451, 1457031915, NULL),
('products/bullion-type', 2, 'Bullion type management', NULL, NULL, 1465199832, 1467648385, 'products/products'),
('products/bullion-type-description', 2, 'Bullion type description management', NULL, NULL, 1465305218, 1467648412, 'products/products'),
('products/locations', 2, 'Location management', NULL, NULL, 1465199441, 1467648421, 'products/products'),
('products/products', 2, 'Products management', NULL, NULL, 1465389945, 1465389945, NULL),
('products/products/index', 2, 'Products list', NULL, NULL, 1466062609, 1467648432, 'products/products'),
('products/products/view', 2, 'Products view item', 'isAuthorManyToMany', NULL, 1466065286, 1467648441, 'products/products'),
('reports', 2, 'Report management', NULL, NULL, 1467899181, 1467899181, ''),
('settings', 2, 'Settings management', NULL, NULL, 1467648490, 1467819771, ''),
('settings/brands', 2, 'Brand management', NULL, NULL, 1465308163, 1467648516, 'settings'),
('settings/currencies', 2, 'Currency management', NULL, NULL, 1466605394, 1467648528, 'settings'),
('settings/salutations', 2, 'Salutations management', NULL, NULL, 1468496185, 1468496185, 'settings'),
('settings/templates', 2, 'Template management', NULL, NULL, 1465215892, 1467648539, 'settings'),
('settings/vat', 2, 'VAT management', NULL, NULL, 1466517326, 1467648549, 'settings'),
('users', 2, 'User management', NULL, NULL, 1457028692, 1457031410, NULL),
('users/users/change-password', 2, 'Change password', NULL, NULL, 1457105560, 1467648581, 'users'),
('users/users/update', 2, 'Update own profile', NULL, NULL, 1464271347, 1467648597, 'users');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'customers/customers'),
('customer', 'customers/customers/generate-confirm-pdf'),
('manager', 'customers/customers/index'),
('sales_organization', 'customers/customers/index'),
('customer', 'customers/customers/update'),
('customer', 'customers/customers/validate'),
('customer', 'customers/customers/view'),
('manager', 'customers/customers/view'),
('admin', 'dashboard/default/index'),
('customer', 'dashboard/default/index'),
('manager', 'dashboard/default/index'),
('admin', 'i18n'),
('admin', 'invoices/invoice-statuses'),
('admin', 'invoices/invoices'),
('manager', 'invoices/invoices/generate-pdf'),
('customer', 'invoices/invoices/index'),
('manager', 'invoices/invoices/index'),
('customer', 'invoices/invoices/view'),
('manager', 'invoices/invoices/view'),
('admin', 'permit/access'),
('admin', 'products/bullion-type'),
('admin', 'products/bullion-type-description'),
('admin', 'products/locations'),
('admin', 'products/products'),
('customer', 'products/products/index'),
('manager', 'products/products/index'),
('customer', 'products/products/view'),
('manager', 'products/products/view'),
('admin', 'reports'),
('employee', 'reports/jobs/create'),
('employee', 'reports/jobs/project-employee'),
('admin', 'settings/brands'),
('admin', 'settings/currencies'),
('admin', 'settings/salutations'),
('admin', 'settings/templates'),
('admin', 'settings/vat'),
('admin', 'users'),
('customer', 'users/users/change-password'),
('employee', 'users/users/change-password'),
('manager', 'users/users/change-password'),
('sales_organization', 'users/users/change-password');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_rule`
--

INSERT INTO `auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('isAuthor', 'O:19:"app\\rbac\\AuthorRule":3:{s:4:"name";s:8:"isAuthor";s:9:"createdAt";i:1466665166;s:9:"updatedAt";i:1466665166;}', 1466665166, 1466665166),
('isAuthorManyToMany', 'O:29:"app\\rbac\\AuthorManyToManyRule":3:{s:4:"name";s:18:"isAuthorManyToMany";s:9:"createdAt";i:1467467624;s:9:"updatedAt";i:1467467624;}', 1467467624, 1467467624),
('isItself', 'O:19:"app\\rbac\\ItselfRule":3:{s:4:"name";s:8:"isItself";s:9:"createdAt";i:1467465859;s:9:"updatedAt";i:1467465859;}', 1467465859, 1467465859);

-- --------------------------------------------------------

--
-- Структура таблицы `average_price`
--

CREATE TABLE IF NOT EXISTS `average_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metal` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `date_created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Дамп данных таблицы `average_price`
--

INSERT INTO `average_price` (`id`, `metal`, `amount`, `date_created`) VALUES
(5, 'gold', 1239.71, '2016-07-06'),
(6, 'silver', 18.462, '2016-07-06'),
(7, 'platinum', 951.1, '2016-07-06'),
(8, 'palladium', 537.905, '2016-07-06'),
(13, 'gold', 1228.5, '2016-07-07'),
(14, 'silver', 18.0038, '2016-07-07'),
(15, 'platinum', 967.905, '2016-07-07'),
(16, 'palladium', 540.69, '2016-07-07'),
(17, 'gold', 1225.21, '2016-07-08'),
(18, 'silver', 17.8187, '2016-07-08'),
(19, 'platinum', 979.7, '2016-07-08'),
(20, 'palladium', 548.49, '2016-07-08'),
(21, 'gold', 1225.21, '2016-07-09'),
(22, 'silver', 17.8187, '2016-07-09'),
(23, 'platinum', 979.7, '2016-07-09'),
(24, 'palladium', 548.49, '2016-07-09'),
(25, 'gold', 1225.21, '2016-07-10'),
(26, 'silver', 17.8187, '2016-07-10'),
(27, 'platinum', 979.7, '2016-07-10'),
(28, 'palladium', 548.49, '2016-07-10'),
(29, 'gold', 1229.17, '2016-07-11'),
(30, 'silver', 18.5266, '2016-07-11'),
(31, 'platinum', 975.38, '2016-07-11'),
(32, 'palladium', 546.645, '2016-07-11'),
(33, 'gold', 1214.07, '2016-07-12'),
(34, 'silver', 18.3532, '2016-07-12'),
(35, 'platinum', 987.32, '2016-07-12'),
(36, 'palladium', 559.78, '2016-07-12'),
(37, 'gold', 1211.24, '2016-07-13'),
(38, 'silver', 18.3073, '2016-07-13'),
(39, 'platinum', 987.165, '2016-07-13'),
(40, 'palladium', 563.84, '2016-07-13'),
(41, 'gold', 1192.12, '2016-07-14'),
(42, 'silver', 18.2301, '2016-07-14'),
(43, 'platinum', 986, '2016-07-14'),
(44, 'palladium', 577.235, '2016-07-14'),
(45, 'gold', 1196, '2016-07-15'),
(46, 'silver', 18.0839, '2016-07-15'),
(47, 'platinum', 974.8, '2016-07-15'),
(48, 'palladium', 576.51, '2016-07-15'),
(49, 'gold', 1196, '2016-07-16'),
(50, 'silver', 18.0839, '2016-07-16'),
(51, 'platinum', 974.8, '2016-07-16'),
(52, 'palladium', 576.51, '2016-07-16'),
(53, 'gold', 1196, '2016-07-17'),
(54, 'silver', 18.0839, '2016-07-17'),
(55, 'platinum', 974.8, '2016-07-17'),
(56, 'palladium', 576.51, '2016-07-17'),
(57, 'gold', 1203.1, '2016-07-18'),
(58, 'silver', 17.8397, '2016-07-18'),
(59, 'platinum', 983.37, '2016-07-18'),
(60, 'palladium', 580.675, '2016-07-18'),
(61, 'gold', 1205.38, '2016-07-19'),
(62, 'silver', 18.0774, '2016-07-19'),
(63, 'platinum', 980.55, '2016-07-19'),
(64, 'palladium', 575.76, '2016-07-19'),
(65, 'gold', 1200.17, '2016-07-20'),
(66, 'silver', 17.8896, '2016-07-20'),
(67, 'platinum', 985.285, '2016-07-20'),
(68, 'palladium', 584.565, '2016-07-20'),
(69, 'gold', 1199.86, '2016-07-21'),
(70, 'silver', 17.5547, '2016-07-21'),
(71, 'platinum', 977.27, '2016-07-21'),
(72, 'palladium', 591.82, '2016-07-21');

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Brand 1'),
(2, 'Brand 2'),
(3, 'Royal Canadian Mint'),
(4, 'Umicore'),
(5, 'Kamenogorsk');

-- --------------------------------------------------------

--
-- Структура таблицы `bullion_type`
--

CREATE TABLE IF NOT EXISTS `bullion_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `metal_parse_slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `bullion_type`
--

INSERT INTO `bullion_type` (`id`, `name`, `metal_parse_slug`) VALUES
(1, 'Silver', 'silver'),
(2, 'Gold', 'gold'),
(3, 'Platinum', 'platinum');

-- --------------------------------------------------------

--
-- Структура таблицы `bullion_type_description`
--

CREATE TABLE IF NOT EXISTS `bullion_type_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bullion_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bullion_type_id` (`bullion_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `bullion_type_description`
--

INSERT INTO `bullion_type_description` (`id`, `name`, `bullion_type_id`) VALUES
(1, 'Gold description 1', 2),
(2, 'Silver description 1', 1),
(3, 'Gold description 2', 2),
(4, 'Silver description 2', 1),
(5, 'BTW vrije zilverbaar 100 tr/oz', 1),
(6, 'Goudbaar 100 gram', 2),
(7, 'Goudbaar 250 gram', 2),
(8, 'BTW vrije zilverbaar 1.000 tr/oz', 1),
(9, 'Goudbaar 1 kilogram', 2),
(10, 'Zilverbaar 1 kilogram', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=247 ;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'YU', 'Yugoslavia'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `iso_4217` varchar(10) NOT NULL,
  `sign` varchar(10) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `name`, `iso_4217`, `sign`, `is_default`) VALUES
(1, 'Euro', 'EUR', '€', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bank_account_number` varchar(255) NOT NULL,
  `bank_account_name` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `date_registrated` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_data_uploaded` tinyint(1) NOT NULL,
  `incasso` tinyint(1) NOT NULL DEFAULT '0',
  `company` varchar(10) NOT NULL DEFAULT 'A',
  `date_start_paid` date DEFAULT NULL,
  `salutation_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `user_id`, `number`, `name`, `bank_account_number`, `bank_account_name`, `notes`, `date_registrated`, `is_active`, `is_data_uploaded`, `incasso`, `company`, `date_start_paid`, `salutation_id`) VALUES
(1, 30, 'G0000000001', 'Artem Kramov', 'BG80BNBG96611020345678', 'NB1235453', '', '2016-07-06', 1, 1, 1, 'G', '2016-07-21', 3),
(17, NULL, 'H0000000002', 'Kramov Artem', 'BG80BNBG96611020345678', 'gfhfgh', '', '2016-06-14', 1, 0, 0, 'H', '2016-07-05', 1),
(18, NULL, 'A0000000003', 'Name', 'BG80BNBG96611020345678', '<<', '', '2016-06-10', 1, 0, 0, 'A', NULL, 1),
(19, NULL, 'G0000000004', 'Customer New', 'AL47212110090000000235698741', 'VVV', 'Good customer', '2016-06-09', 1, 0, 0, 'G', '2016-07-14', 1),
(21, NULL, 'G0000000005', 'A.C.M.R. Berentzen-Persoon', 'NL03INGB0007088047', 'ACMR Berentzen-Persoon e.o JJM Berentzen', '', '2014-11-26', 1, 0, 1, 'G', '2014-12-30', 1),
(22, NULL, 'G0000000006', 'Bert Hebbrecht', 'BE92736007823823', 'Bert Hebbrecht', '', '2016-01-01', 1, 0, 1, 'G', '2016-01-01', 1),
(23, NULL, 'H0000000007', 'F.H. Huijink', 'NL44RABO0314892206', 'F.J. Huijink Beheer BV', '', '2016-06-01', 1, 0, 1, 'H', '2016-06-23', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `customer_product`
--

CREATE TABLE IF NOT EXISTS `customer_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Дамп данных таблицы `customer_product`
--

INSERT INTO `customer_product` (`id`, `customer_id`, `product_id`, `date_created`) VALUES
(48, 17, 1, '2016-07-06 21:00:00'),
(49, 17, 8, '2016-07-06 21:00:00'),
(50, 21, 9, '2016-07-19 22:00:00'),
(51, 21, 10, '2016-07-19 22:00:00'),
(52, 21, 11, '2016-07-19 22:00:00'),
(53, 21, 12, '2016-07-19 22:00:00'),
(54, 21, 13, '2016-07-19 22:00:00'),
(58, 22, 15, '2016-07-19 22:00:00'),
(59, 22, 16, '2016-07-19 22:00:00'),
(60, 23, 17, '2016-07-12 12:05:02'),
(61, 23, 18, '2016-07-12 12:05:02'),
(73, 17, 23, '2016-07-20 22:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_product_track`
--

CREATE TABLE IF NOT EXISTS `customer_product_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `operation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `customer_product_track`
--

INSERT INTO `customer_product_track` (`id`, `customer_id`, `product_id`, `date_created`, `operation`) VALUES
(8, 19, 14, '2016-07-14', 'in'),
(9, 19, 14, '2016-07-14', 'out'),
(10, 1, 14, '2016-07-15', 'in'),
(11, 1, 14, '2016-07-15', 'out'),
(12, 1, 19, '2016-07-15', 'in'),
(14, 1, 21, '2016-07-15', 'in'),
(15, 1, 14, '2016-07-15', 'in'),
(16, 17, 22, '2016-07-18', 'in'),
(17, 1, 14, '2016-07-18', 'out'),
(18, 22, 14, '2016-06-01', 'in'),
(19, 22, 14, '2016-07-02', 'out'),
(20, 1, 14, '2016-07-18', 'in'),
(21, 17, 23, '2016-07-21', 'in'),
(22, 1, 14, '2016-07-21', 'out');

-- --------------------------------------------------------

--
-- Структура таблицы `date_weight`
--

CREATE TABLE IF NOT EXISTS `date_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `weight` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Дамп данных таблицы `date_weight`
--

INSERT INTO `date_weight` (`id`, `date_created`, `weight`, `customer_id`) VALUES
(1, '2016-07-12', 0.0311, 1),
(2, '2016-07-12', 0.0531, 17),
(3, '2016-07-12', 0.02, 18),
(4, '2016-07-12', 0, 19),
(5, '2016-07-11', 0.02, 1),
(6, '2016-07-10', 0.05, 1),
(7, '2016-07-09', 0.04, 1),
(8, '2016-07-08', 0.08, 1),
(9, '2016-07-14', 0, 1),
(10, '2016-07-14', 0.0531, 17),
(11, '2016-07-14', 0, 18),
(12, '2016-07-14', 0, 19),
(13, '2016-07-14', 9.6809, 21),
(14, '2016-07-14', 62.2064, 22),
(15, '2016-07-14', 6, 23),
(16, '2016-07-15', 3.1103, 1),
(17, '2016-07-15', 0.0531, 17),
(18, '2016-07-15', 0, 18),
(19, '2016-07-15', 0, 19),
(20, '2016-07-15', 9.6809, 21),
(21, '2016-07-15', 62.2064, 22),
(22, '2016-07-15', 6, 23),
(23, '2016-07-16', 3.1103, 1),
(24, '2016-07-16', 0.0531, 17),
(25, '2016-07-16', 0, 18),
(26, '2016-07-16', 0, 19),
(27, '2016-07-16', 9.6809, 21),
(28, '2016-07-16', 62.2064, 22),
(29, '2016-07-16', 6, 23),
(30, '2016-07-17', 3.1103, 1),
(31, '2016-07-17', 0.0531, 17),
(32, '2016-07-17', 0, 18),
(33, '2016-07-17', 0, 19),
(34, '2016-07-17', 9.6809, 21),
(35, '2016-07-17', 62.2064, 22),
(36, '2016-07-17', 6, 23),
(37, '2016-07-18', 3.1103, 1),
(38, '2016-07-18', 0.0531, 17),
(39, '2016-07-18', 0, 18),
(40, '2016-07-18', 0, 19),
(41, '2016-07-18', 9.6809, 21),
(42, '2016-07-18', 62.2064, 22),
(43, '2016-07-18', 6, 23),
(44, '2016-07-19', 3.1103, 1),
(45, '2016-07-19', 0.0531, 17),
(46, '2016-07-19', 0, 18),
(47, '2016-07-19', 0, 19),
(48, '2016-07-19', 9.6809, 21),
(49, '2016-07-19', 62.207, 22),
(50, '2016-07-19', 6, 23),
(51, '2016-07-20', 3.1103, 1),
(52, '2016-07-20', 0.0531, 17),
(53, '2016-07-20', 0, 18),
(54, '2016-07-20', 0, 19),
(55, '2016-07-20', 9.6809, 21),
(56, '2016-07-20', 62.207, 22),
(57, '2016-07-20', 6, 23),
(58, '2016-07-21', 0, 1),
(59, '2016-07-21', 1.0531, 17),
(60, '2016-07-21', 0, 18),
(61, '2016-07-21', 0, 19),
(62, '2016-07-21', 9.6809, 21),
(63, '2016-07-21', 62.207, 22),
(64, '2016-07-21', 6, 23);

-- --------------------------------------------------------

--
-- Структура таблицы `digital_file`
--

CREATE TABLE IF NOT EXISTS `digital_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Дамп данных таблицы `digital_file`
--

INSERT INTO `digital_file` (`id`, `customer_id`, `filename`) VALUES
(189, 19, 'uploads/customers/19/2016-1234.jpg'),
(192, 1, 'uploads/customers/1/Vovk.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1965 ;

--
-- Дамп данных таблицы `email`
--

INSERT INTO `email` (`id`, `email`, `customer_id`) VALUES
(1865, 'contact@goudstandaard.com', 22),
(1871, 'contact@goudstandaard.com', 23),
(1882, 'akramov@lemon.ua', 18),
(1883, 'artemkramov@gmial.com', 18),
(1939, 'akramov@lemon.ua', 19),
(1952, 'contact@goudstandaard.com', 21),
(1963, 'artem@test.com', 1),
(1964, 'aret@vb.ty', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `status_id` (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп данных таблицы `invoice`
--

INSERT INTO `invoice` (`id`, `customer_id`, `date_created`, `status_id`, `currency_id`) VALUES
(45, 1, '2016-07-07 10:16:34', 1, 1),
(66, 21, '2016-07-20 07:51:16', 1, 1),
(67, 22, '2016-07-20 07:51:16', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `invoice_line`
--

CREATE TABLE IF NOT EXISTS `invoice_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `amount_excl_vat` double NOT NULL,
  `amount_vat` double NOT NULL,
  `amount_average_price` double NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '1',
  `date_start_storage` date NOT NULL,
  `date_out_of_storage` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- Дамп данных таблицы `invoice_line`
--

INSERT INTO `invoice_line` (`id`, `invoice_id`, `amount_excl_vat`, `amount_vat`, `amount_average_price`, `product_id`, `currency_id`, `date_start_storage`, `date_out_of_storage`) VALUES
(173, 66, 6, 0, 1810.7428123974, 9, 1, '2016-03-20', NULL),
(174, 66, 6, 0, 1810.7428123974, 10, 1, '2016-03-20', NULL),
(175, 66, 6, 0, 1810.7428123974, 11, 1, '2016-03-20', NULL),
(176, 66, 9.7, 2.04, 3901.018484701, 12, 1, '2016-03-20', NULL),
(177, 66, 24.25, 5.09, 9752.5462117524, 13, 1, '2016-03-20', NULL),
(181, 67, 0.6, 0, 18107.719212102, 15, 1, '2016-03-20', NULL),
(182, 67, 0.6, 0, 18107.719212102, 16, 1, '2016-03-20', NULL),
(183, 45, 81.8, 17.18, 18.462, 1, 1, '2016-05-02', NULL),
(184, 45, 12.3, 0, 20, 15, 1, '2016-07-12', NULL),
(185, 45, 234, 1, 34234, 15, 1, '2016-07-19', NULL),
(186, 45, 435, 4, 657567, 1, 1, '2016-07-18', NULL),
(187, 45, 34234, 34, 234234, 18, 1, '2016-07-26', '2016-07-28');

-- --------------------------------------------------------

--
-- Структура таблицы `invoice_sent_queue`
--

CREATE TABLE IF NOT EXISTS `invoice_sent_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `invoice_id_2` (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `invoice_sent_queue`
--

INSERT INTO `invoice_sent_queue` (`id`, `invoice_id`, `status`, `date_created`) VALUES
(3, 45, 1, '2016-07-07 10:17:01'),
(4, 45, 1, '2016-07-12 13:49:19'),
(5, 45, 1, '2016-07-19 14:58:15'),
(6, 45, 1, '2016-07-19 15:51:25'),
(7, 45, 1, '2016-07-20 07:48:03');

-- --------------------------------------------------------

--
-- Структура таблицы `invoice_status`
--

CREATE TABLE IF NOT EXISTS `invoice_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `invoice_status`
--

INSERT INTO `invoice_status` (`id`, `alias`, `name`) VALUES
(1, 'concept', 'Concept'),
(2, 'send', 'Send'),
(3, 'paid', 'Paid');

-- --------------------------------------------------------

--
-- Структура таблицы `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `name`, `method`) VALUES
(1, 'send invoices', 'crSendInvoices'),
(2, 'search invoices', 'crSearchInvoices'),
(3, 'update average price per metal', 'crUpdateAveragePrice'),
(5, 'update value per day', 'crUpdateWeightPerDate');

-- --------------------------------------------------------

--
-- Структура таблицы `lang`
--

CREATE TABLE IF NOT EXISTS `lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `local` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default` smallint(6) NOT NULL DEFAULT '0',
  `date_update` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `lang`
--

INSERT INTO `lang` (`id`, `url`, `local`, `name`, `default`, `date_update`, `date_create`) VALUES
(1, 'en', 'en-EN', 'English', 0, 1463386881, 1463386881),
(3, 'nl', 'nl-NL', 'Dutch', 1, 1463386881, 1463386881);

-- --------------------------------------------------------

--
-- Структура таблицы `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `location`
--

INSERT INTO `location` (`id`, `name`, `country_id`) VALUES
(1, 'RCCS', 155),
(2, 'Zurich', 211);

-- --------------------------------------------------------

--
-- Структура таблицы `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `manager`
--

INSERT INTO `manager` (`id`, `user_id`, `name`) VALUES
(1, 31, 'DDD');

-- --------------------------------------------------------

--
-- Структура таблицы `manager_customer`
--

CREATE TABLE IF NOT EXISTS `manager_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `manager_customer`
--

INSERT INTO `manager_customer` (`id`, `manager_id`, `customer_id`) VALUES
(7, 1, 1),
(8, 1, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(1, 'en', 'Translations'),
(1, 'nl', 'Translations'),
(1, 'ua', 'Переклади'),
(2, 'en', 'Translated'),
(2, 'nl', NULL),
(2, 'ua', 'Перекладено'),
(3, 'en', 'Not translated'),
(3, 'nl', NULL),
(3, 'ua', 'Не перекладено'),
(4, 'en', 'Update'),
(4, 'nl', NULL),
(4, 'ua', 'Оновити'),
(5, 'en', 'Updated'),
(5, 'nl', NULL),
(5, 'ua', 'Оновлено'),
(6, 'en', 'Back to list'),
(6, 'nl', NULL),
(6, 'ua', 'Назад до списку'),
(7, 'en', 'Sign in'),
(7, 'nl', NULL),
(7, 'ua', 'Ввійти'),
(8, 'en', 'Sign in to start your session'),
(8, 'nl', NULL),
(8, 'ua', 'Ввійіть для початку роботи сессії'),
(125, 'ua', 'Значення "{attribute}" повинно бути рівним "{compareValueOrAttribute}".'),
(126, 'ua', 'Значення "{attribute}" повинно бути більшим значення "{compareValueOrAttribute}".'),
(127, 'ua', 'Значення "{attribute}" повинно бути більшим або дорівнювати значенню "{compareValueOrAttribute}".'),
(128, 'ua', 'Значення "{attribute}" повинно бути меншим значення "{compareValueOrAttribute}".'),
(129, 'ua', 'Значення "{attribute}" повинно бути меншим або дорівнювати значенню "{compareValueOrAttribute}".'),
(130, 'ua', 'Значення "{attribute}" не повинно бути рівним "{compareValueOrAttribute}".'),
(131, 'ua', '(не задано)'),
(132, 'ua', 'Виникла внутрішня помилка сервера.'),
(133, 'ua', 'Ви впевнені, що хочете видалити цей елемент?'),
(134, 'ua', 'Видалити'),
(135, 'ua', 'Помилка'),
(136, 'ua', 'Завантаження файлу не вдалося.'),
(137, 'ua', 'Головна'),
(138, 'ua', 'Отримано невірне значення для параметра "{param}".'),
(139, 'ua', 'Необхідно увійти'),
(140, 'ua', 'Відсутні обовʼязкові аргументи: {params}'),
(141, 'ua', 'Відсутні обовʼязкові параметри: {params}'),
(142, 'ua', 'Ні'),
(143, 'ua', 'Нічого не знайдено.'),
(144, 'ua', 'Дозволені файли лише з наступними MIME-типами: {mimeTypes}.'),
(145, 'ua', 'Дозволені файли лише з наступними розширеннями: {extensions}.'),
(146, 'ua', 'Сторінка не знайдена.'),
(147, 'ua', 'Будь ласка, виправте наступні помилки:'),
(148, 'ua', 'Будь ласка, завантажте файл.'),
(149, 'ua', 'Показані <b>{begin, number}-{end, number}</b> із <b>{totalCount, number}</b> {totalCount, plural, one{запису} other{записів}}.'),
(150, 'ua', 'Файл "{file}" не є зображенням.'),
(151, 'ua', 'Файл "{file}" занадто великий. Розмір не повинен перевищувати {formattedLimit}.'),
(152, 'ua', 'Файл "{file}" занадто малий. Розмір повинен бути більше, ніж {formattedLimit}.'),
(153, 'ua', 'Невірний формат значення "{attribute}".'),
(154, 'ua', 'Зображення "{file}" занадто велике. Висота не повинна перевищувати {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(155, 'ua', 'Зображення "{file}" занадто велике. Ширина не повинна перевищувати {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(156, 'ua', 'Зображення "{file}" занадто мале. Висота повинна бути більше, ніж {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(157, 'ua', 'Зображення "{file}" занадто мале. Ширина повинна бути більше, ніж {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(158, 'ua', 'Представлення "{name}" не знайдено.'),
(159, 'ua', 'Невірний код перевірки.'),
(160, 'ua', 'Всього <b>{count, number}</b> {count, plural, one{запис} few{записи} many{записів} other{записи}}.'),
(161, 'ua', 'Не вдалося перевірити передані дані.'),
(162, 'ua', 'Невідома опція : --{name}'),
(163, 'ua', 'Оновити'),
(164, 'ua', 'Переглянути'),
(165, 'ua', 'Так'),
(166, 'ua', 'Вам не дозволено виконувати дану дію.'),
(167, 'ua', 'Ви не можете завантажувати більше {limit, number} {limit, plural, one{файла} few{файлів} many{файлів} other{файла}}.'),
(168, 'ua', 'через {delta, plural, =1{день} one{# день} few{# дні} many{# днів} other{# дні}}'),
(169, 'ua', 'через {delta, plural, =1{хвилину} one{# хвилину} few{# хвилини} many{# хвилин} other{# хвилини}}'),
(170, 'ua', 'через {delta, plural, =1{місяць} one{# місяць} few{# місяці} many{# місяців} other{# місяці}}'),
(171, 'ua', 'через {delta, plural, =1{секунду} one{# секунду} few{# секунди} many{# секунд} other{# секунди}}'),
(172, 'ua', 'через {delta, plural, =1{рік} one{# рік} few{# роки} many{# років} other{# роки}}'),
(173, 'ua', 'через {delta, plural, =1{годину} one{# годину} few{# години} many{# годин} other{# години}}'),
(174, 'ua', 'саме зараз'),
(175, 'ua', 'введене значення'),
(176, 'ua', 'Значення «{value}» для «{attribute}» вже зайнято.'),
(177, 'ua', 'Необхідно заповнити "{attribute}".'),
(178, 'ua', 'Значення «{attribute}» містить неправильну маску підмережі.'),
(179, 'ua', 'Значення "{attribute}" не вірне.'),
(180, 'ua', 'Значення "{attribute}" не є правильним URL.'),
(181, 'ua', 'Значення "{attribute}" не є правильною email адресою.'),
(182, 'ua', 'Значення «{attribute}» не входить в список дозволених діапазонів адрес.'),
(183, 'ua', 'Значення "{attribute}" має бути рівним "{requiredValue}".'),
(184, 'ua', 'Значення "{attribute}" має бути числом.'),
(185, 'ua', 'Значення "{attribute}" має бути текстовим рядком.'),
(186, 'ua', 'Значення «{attribute}» повинно бути правильною IP адресою.'),
(187, 'ua', 'Значення «{attribute}» повинно бути IP адресою з підмережею.'),
(188, 'ua', 'Значення "{attribute}" має бути цілим числом.'),
(189, 'ua', 'Значення "{attribute}" має дорівнювати "{true}" або "{false}".'),
(190, 'ua', 'Значення "{attribute}" не повинно перевищувати {max}.'),
(191, 'ua', 'Значення "{attribute}" має бути більшим {min}.'),
(192, 'ua', 'Значення «{attribute}» не повинно бути підмережею.'),
(193, 'ua', 'Значення «{attribute}» не повинно бути IPv4 адресою.'),
(194, 'ua', 'Значення «{attribute}» не повинно бути IPv6 адресою.'),
(195, 'ua', 'Значення "{attribute}" повинно містити мінімум {min, number} {min, plural, one{символ} few{символа} many{символів} other{символа}}.'),
(196, 'ua', 'Значення "{attribute}" повинно містити максимум {max, number} {max, plural, one{символ} few{символа} many{символів} other{символа}}.'),
(197, 'ua', 'Значення "{attribute}" повинно містити {length, number} {length, plural, one{символ} few{символа} many{символів} other{символа}}.'),
(198, 'ua', '{delta, plural, one{# день} few{# дні} many{# днів} other{# днів}}'),
(199, 'ua', '{delta, plural, one{# година} few{# години} many{# годин} other{# годин}}'),
(200, 'ua', '{delta, plural, one{# хвилина} few{# хвилини} many{# хвилин} other{# хвилин}}'),
(201, 'ua', '{delta, plural, one{# місяць} few{# місяця} many{# місяців} other{# місяців}}'),
(202, 'ua', '{delta, plural, one{# секунда} few{# секунди} many{# секунд} other{# секунд}}'),
(203, 'ua', '{delta, plural, one{# рік} few{# роки} many{# років} other{# років}}'),
(204, 'ua', '{delta, plural, =1{день} one{день} few{# дні} many{# днів} other{# дні}} тому'),
(205, 'ua', '{delta, plural, =1{хвилину} one{# хвилину} few{# хвилини} many{# хвилин} other{# хвилини}} тому'),
(206, 'ua', '{delta, plural, =1{місяць} one{# місяць} few{# місяці} many{# місяців} other{# місяці}} тому'),
(207, 'ua', '{delta, plural, =1{секунду} one{# секунду} few{# секунди} many{# секунд} other{# секунди}} тому'),
(208, 'ua', '{delta, plural, =1{рік} one{# рік} few{# роки} many{# років} other{# роки}} тому'),
(209, 'ua', '{delta, plural, =1{година} one{# година} few{# години} many{# годин} other{# години}} тому'),
(210, 'ua', '{nFormatted} Б'),
(211, 'ua', '{nFormatted} Гб'),
(212, 'ua', '{nFormatted} ГіБ'),
(213, 'ua', '{nFormatted} Кб'),
(214, 'ua', '{nFormatted} КіБ'),
(215, 'ua', '{nFormatted} Мб'),
(216, 'ua', '{nFormatted} МіБ'),
(217, 'ua', '{nFormatted} Пб'),
(218, 'ua', '{nFormatted} ПіБ'),
(219, 'ua', '{nFormatted} Тб'),
(220, 'ua', '{nFormatted} ТіБ'),
(221, 'ua', '{nFormatted} {n, plural, one{байт} few{байта} many{байтів} other{байта}}'),
(222, 'ua', '{nFormatted} {n, plural, one{гібібайт} few{гібібайта} many{гібібайтів} other{гібібайта}}'),
(223, 'ua', '{nFormatted} {n, plural, one{гігабайт} few{гігабайта} many{гігабайтів} other{гігабайта}}'),
(224, 'ua', '{nFormatted} {n, plural, one{кібібайт} few{кібібайта} many{кібібайтів} other{кібібайта}}'),
(225, 'ua', '{nFormatted} {n, plural, one{кілобайт} few{кілобайта} many{кілобайтів} other{кілобайта}}'),
(226, 'ua', '{nFormatted} {n, plural, one{мебібайт} few{мебібайта} many{мебібайтів} other{мебібайта}}'),
(227, 'ua', '{nFormatted} {n, plural, one{мегабайт} few{мегабайта} many{мегабайтів} other{мегабайта}}'),
(228, 'ua', '{nFormatted} {n, plural, one{пебібайт} few{пебібайта} many{пебібайтів} other{пебібайта}}'),
(229, 'ua', '{nFormatted} {n, plural, one{петабайт} few{петабайта} many{петабайтів} other{петабайта}}'),
(230, 'ua', '{nFormatted} {n, plural, one{тебібайт} few{тебібайта} many{тебібайтів} other{тебібайта}}'),
(231, 'ua', '{nFormatted} {n, plural, one{терабайт} few{терабайта} many{терабайтів} other{терабайта}}'),
(232, 'en', 'ID'),
(232, 'nl', 'ID'),
(232, 'ua', 'ID'),
(233, 'en', 'Category'),
(233, 'nl', NULL),
(233, 'ua', 'Категорія'),
(234, 'en', 'Message'),
(234, 'nl', NULL),
(234, 'ua', 'Повідомлення'),
(239, 'en', 'Status'),
(239, 'nl', NULL),
(239, 'ua', 'Статус'),
(240, 'en', ''),
(240, 'nl', NULL),
(240, 'ua', 'Меню'),
(241, 'en', ''),
(241, 'nl', 'Importen'),
(241, 'ua', 'Імпорт'),
(242, 'en', ''),
(242, 'nl', NULL),
(242, 'ua', 'Працівники'),
(243, 'en', ''),
(243, 'nl', 'Gebruikers'),
(243, 'ua', 'Користувачі'),
(244, 'en', ''),
(244, 'nl', NULL),
(244, 'ua', 'Вхід'),
(245, 'en', ''),
(245, 'nl', NULL),
(245, 'ua', 'Керування проектами'),
(246, 'en', ''),
(246, 'nl', NULL),
(246, 'ua', 'Проекти'),
(247, 'en', ''),
(247, 'nl', ''),
(247, 'ua', 'Задачі'),
(248, 'en', ''),
(248, 'nl', NULL),
(248, 'ua', 'Керування звітами'),
(249, 'en', NULL),
(249, 'nl', NULL),
(249, 'ua', NULL),
(250, 'en', ''),
(250, 'nl', NULL),
(250, 'ua', 'Звіти по працівникам'),
(251, 'en', ''),
(251, 'nl', NULL),
(251, 'ua', 'Звіти по проектам'),
(252, 'nl', '(niet ingesteld)'),
(253, 'nl', 'Er is een interne serverfout opgetreden.'),
(254, 'nl', 'Weet je zeker dat je dit item wilt verwijderen?'),
(255, 'nl', 'Verwijderen'),
(256, 'nl', 'Fout'),
(257, 'nl', 'Bestand uploaden mislukt.'),
(258, 'nl', 'Home'),
(259, 'nl', 'Ongeldige gegevens ontvangen voor parameter "{param}".'),
(260, 'nl', 'Inloggen verplicht'),
(261, 'nl', 'Ontbrekende vereiste argumenten: {params}'),
(262, 'nl', 'Ontbrekende vereiste parameters: {params}'),
(263, 'nl', 'Nee'),
(264, 'nl', 'Geen resultaten gevonden'),
(265, 'nl', 'Alleen bestanden met de volgende MIME types zijn toegestaan: {mimeTypes}'),
(266, 'nl', 'Alleen bestanden met de volgende extensies zijn toegestaan: {extensions}.'),
(267, 'nl', 'Pagina niet gevonden.'),
(268, 'nl', 'Corrigeer de volgende fouten:'),
(269, 'nl', 'Upload een bestand.'),
(270, 'nl', 'Resultaat <b>{begin, number}-{end, number}</b> van <b>{totalCount, number}</b> {totalCount, plural, one{item} other{items}}.'),
(271, 'nl', 'Het bestand "{file}" is geen afbeelding.'),
(272, 'nl', 'Het bestand "{file}" is te groot. Het kan niet groter zijn dan {formattedLimit}.'),
(273, 'nl', 'Het bestand "{file}" is te klein. Het kan niet kleiner zijn dan {formattedLimit}.'),
(274, 'nl', 'Het formaat van {attribute} is ongeldig'),
(275, 'nl', 'De afbeelding "{file}" is te groot. Het mag maximaal {limit, number} {limit, plural, one{pixel} other{pixels}} hoog zijn.'),
(276, 'nl', 'De afbeelding "{file}" is te groot. Het mag maximaal {limit, number} {limit, plural, one{pixel} other{pixels}} breed zijn.'),
(277, 'nl', 'De afbeelding "{file}" is te klein. Het moet minimaal {limit, number} {limit, plural, one{pixel} other{pixels}} hoog zijn.'),
(278, 'nl', 'De afbeelding "{file}" is te klein. Het moet minimaal {limit, number} {limit, plural, one{pixel} other{pixels}} breed zijn.'),
(279, 'nl', 'De gevraagde view "{view}" werd niet gevonden.'),
(280, 'nl', 'De verificatiecode is onjuist.'),
(281, 'nl', 'Totaal <b>{count, number}</b> {count, plural, one{item} other{items}}.'),
(282, 'nl', 'Het is niet mogelijk uw verstrekte gegevens te verifiëren.'),
(283, 'nl', 'Onbekende optie: --{name}'),
(284, 'nl', 'Bewerk'),
(285, 'nl', 'Bekijk'),
(286, 'nl', 'Ja'),
(287, 'nl', 'U bent niet gemachtigd om deze actie uit te voeren.'),
(288, 'nl', 'U kunt maximaal {limit, number} {limit, plural, one{ander bestand} other{andere bestander}} uploaden.'),
(289, 'nl', 'binnen {delta, plural, =1{een dag} other{# dagen}}'),
(290, 'nl', 'binnen {delta, plural, =1{een minuut} other{# minuten}}'),
(291, 'nl', 'binnen {delta, plural, =1{een maand} other{# maanden}}'),
(292, 'nl', 'binnen {delta, plural, =1{een seconde} other{# seconden}}'),
(293, 'nl', 'binnen {delta, plural, =1{een jaar} other{# jaren}}'),
(294, 'nl', 'binnen {delta, plural, =1{een uur} other{# uur}}'),
(295, 'nl', 'zojuist'),
(296, 'nl', 'de invoerwaarde'),
(297, 'nl', '{attribute} "{value}" is reeds in gebruik.'),
(298, 'nl', '{attribute} mag niet leeg zijn.'),
(299, 'nl', '{attribute} is ongeldig.'),
(300, 'nl', '{attribute} is geen geldige URL.'),
(301, 'nl', '{attribute} is geen geldig emailadres.'),
(302, 'nl', '{attribute} moet "{requiredValue}" zijn.'),
(303, 'nl', '{attribute} moet een getal zijn.'),
(304, 'nl', '{attribute} moet een string zijn.'),
(305, 'nl', '{attribute} moet een geheel getal zijn.'),
(306, 'nl', '{attribute} moet "{true}" of "{false}" zijn.'),
(307, 'nl', '{attribute} moet groter zijn dan "{compareValue}".'),
(308, 'nl', '{attribute} moet groter dan of gelijk aan "{compareValue}" zijn.'),
(309, 'nl', '{attribute} moet minder zijn dan "{compareValue}".'),
(310, 'nl', '{attribute} moet minder dan of gelijk aan "{compareValue}" zijn.'),
(311, 'nl', '{attribute} mag niet groter zijn dan {max}.'),
(312, 'nl', '{attribute} mag niet kleiner zijn dan {min}.'),
(313, 'nl', '{attribute} moet exact herhaald worden.'),
(314, 'nl', '{attribute} mag niet gelijk zijn aan "{compareValue}".'),
(315, 'nl', '{attribute} moet minstens {min, number} {min, plural, one{karakter} other{karakters}} bevatten.'),
(316, 'nl', '{attribute} mag maximaal {max, number} {max, plural, one{karakter} other{karakters}} bevatten.'),
(317, 'nl', '{attribute} moet precies {min, number} {min, plural, one{karakter} other{karakters}} bevatten.'),
(318, 'nl', '{delta, plural, =1{een dag} other{# dagen}} geleden'),
(319, 'nl', '{delta, plural, =1{een minuut} other{# minuten}} geleden'),
(320, 'nl', '{delta, plural, =1{een maand} other{# maanden}} geleden'),
(321, 'nl', '{delta, plural, =1{een seconde} other{# seconden}} geleden'),
(322, 'nl', '{delta, plural, =1{een jaar} other{# jaren}} geleden'),
(323, 'nl', '{delta, plural, =1{een uur} other{# uren}} geleden'),
(324, 'nl', '{nFormatted} B'),
(325, 'nl', '{nFormatted} GB'),
(326, 'nl', '{nFormatted} GiB'),
(327, 'nl', '{nFormatted} KB'),
(328, 'nl', '{nFormatted} KiB'),
(329, 'nl', '{nFormatted} MB'),
(330, 'nl', '{nFormatted} MiB'),
(331, 'nl', '{nFormatted} PB'),
(332, 'nl', '{nFormatted} PiB'),
(333, 'nl', '{nFormatted} TB'),
(334, 'nl', '{nFormatted} TiB'),
(335, 'nl', '{nFormatted} {n, plural, =1{byte} other{bytes}}'),
(336, 'nl', '{nFormatted} {n, plural, =1{gibibyte} other{gibibytes}}'),
(337, 'nl', '{nFormatted} {n, plural, =1{gigabyte} other{gigabytes}}'),
(338, 'nl', '{nFormatted} {n, plural, =1{kibibyte} other{kibibytes}}'),
(339, 'nl', '{nFormatted} {n, plural, =1{kilobyte} other{kilobytes}}'),
(340, 'nl', '{nFormatted} {n, plural, =1{mebibyte} other{mebibytes}}'),
(341, 'nl', '{nFormatted} {n, plural, =1{megabyte} other{megabytes}}'),
(342, 'nl', '{nFormatted} {n, plural, =1{pebibyte} other{pebibytes}}'),
(343, 'nl', '{nFormatted} {n, plural, =1{petabyte} other{petabytes}}'),
(344, 'nl', '{nFormatted} {n, plural, =1{tebibyte} other{tebibytes}}'),
(345, 'nl', '{nFormatted} {n, plural, =1{terabyte} other{terabytes}}'),
(346, 'en', NULL),
(346, 'nl', NULL),
(347, 'en', NULL),
(347, 'nl', NULL),
(348, 'en', ''),
(348, 'nl', 'Gebruiker'),
(349, 'en', ''),
(349, 'nl', 'Gebruikersnaam'),
(350, 'en', NULL),
(350, 'nl', NULL),
(351, 'en', NULL),
(351, 'nl', NULL),
(352, 'en', NULL),
(352, 'nl', NULL),
(353, 'en', NULL),
(353, 'nl', NULL),
(354, 'en', NULL),
(354, 'nl', NULL),
(355, 'en', NULL),
(355, 'nl', NULL),
(356, 'en', NULL),
(356, 'nl', NULL),
(357, 'en', NULL),
(357, 'nl', NULL),
(358, 'en', NULL),
(358, 'nl', NULL),
(359, 'en', NULL),
(359, 'nl', NULL),
(360, 'en', NULL),
(360, 'nl', NULL),
(361, 'en', NULL),
(361, 'nl', NULL),
(362, 'en', NULL),
(362, 'nl', NULL),
(363, 'en', NULL),
(363, 'nl', NULL),
(364, 'en', NULL),
(364, 'nl', NULL),
(365, 'en', ''),
(365, 'nl', 'Rollen'),
(366, 'en', NULL),
(366, 'nl', NULL),
(367, 'en', NULL),
(367, 'nl', NULL),
(368, 'en', NULL),
(368, 'nl', NULL),
(369, 'en', 'Bank account number'),
(369, 'nl', 'Bank account number'),
(370, 'en', 'Bank account name'),
(370, 'nl', 'Bank account name'),
(371, 'en', NULL),
(371, 'nl', NULL),
(372, 'en', 'Date registrated'),
(372, 'nl', 'Date registrated'),
(373, 'en', 'Customers'),
(373, 'nl', 'Klanten'),
(374, 'en', 'Customer'),
(374, 'nl', 'Klant'),
(375, 'en', NULL),
(375, 'nl', NULL),
(376, 'en', NULL),
(376, 'nl', NULL),
(377, 'en', NULL),
(377, 'nl', NULL),
(378, 'en', NULL),
(378, 'nl', NULL),
(379, 'en', NULL),
(379, 'nl', NULL),
(380, 'en', NULL),
(380, 'nl', NULL),
(381, 'en', NULL),
(381, 'nl', NULL),
(382, 'en', NULL),
(382, 'nl', NULL),
(383, 'en', NULL),
(383, 'nl', NULL),
(384, 'en', NULL),
(384, 'nl', NULL),
(385, 'en', NULL),
(385, 'nl', NULL),
(386, 'en', NULL),
(386, 'nl', NULL),
(387, 'en', NULL),
(387, 'nl', NULL),
(388, 'en', NULL),
(388, 'nl', NULL),
(389, 'en', NULL),
(389, 'nl', NULL),
(390, 'en', 'Is active'),
(390, 'nl', 'Is active'),
(391, 'en', NULL),
(391, 'nl', NULL),
(392, 'en', NULL),
(392, 'nl', NULL),
(393, 'en', 'All data uploaded'),
(393, 'nl', 'All data uploaded'),
(394, 'en', NULL),
(394, 'nl', NULL),
(395, 'en', NULL),
(395, 'nl', NULL),
(396, 'en', NULL),
(396, 'nl', NULL),
(397, 'en', 'Bullion types'),
(397, 'nl', 'Bullion types'),
(398, 'en', 'Bullion type'),
(398, 'nl', 'Bullion type'),
(399, 'en', NULL),
(399, 'nl', NULL),
(400, 'en', NULL),
(400, 'nl', NULL),
(401, 'en', NULL),
(401, 'nl', NULL),
(402, 'en', NULL),
(402, 'nl', NULL),
(403, 'en', NULL),
(403, 'nl', NULL),
(404, 'en', NULL),
(404, 'nl', NULL),
(405, 'en', NULL),
(405, 'nl', NULL),
(406, 'en', NULL),
(406, 'nl', NULL),
(407, 'en', 'Company EN'),
(407, 'nl', ''),
(408, 'en', NULL),
(408, 'nl', NULL),
(409, 'en', NULL),
(409, 'nl', NULL),
(410, 'en', NULL),
(410, 'nl', NULL),
(411, 'en', NULL),
(411, 'nl', NULL),
(412, 'en', NULL),
(412, 'nl', NULL),
(413, 'en', NULL),
(413, 'nl', NULL),
(414, 'en', NULL),
(414, 'nl', NULL),
(415, 'en', 'Pallet/Sealbagnummer'),
(415, 'nl', 'Pallet/Sealbagnummer'),
(416, 'en', NULL),
(416, 'nl', NULL),
(417, 'en', 'Weight amount'),
(417, 'nl', 'Weight amount'),
(418, 'en', NULL),
(418, 'nl', NULL),
(419, 'en', NULL),
(419, 'nl', NULL),
(420, 'en', NULL),
(420, 'nl', NULL),
(421, 'en', NULL),
(421, 'nl', NULL),
(422, 'en', 'troy ounces'),
(422, 'nl', 'troy ounces'),
(423, 'en', NULL),
(423, 'nl', NULL),
(424, 'en', 'Nothing selected'),
(424, 'nl', 'Nothing selected'),
(425, 'en', 'No results found.'),
(425, 'nl', 'No results found.'),
(426, 'en', NULL),
(426, 'nl', NULL),
(427, 'en', NULL),
(427, 'nl', NULL),
(428, 'en', NULL),
(428, 'nl', NULL),
(429, 'en', NULL),
(429, 'nl', NULL),
(430, 'en', NULL),
(430, 'nl', NULL),
(431, 'en', NULL),
(431, 'nl', NULL),
(432, 'en', NULL),
(432, 'nl', NULL),
(433, 'en', NULL),
(433, 'nl', NULL),
(434, 'en', NULL),
(434, 'nl', NULL),
(435, 'en', NULL),
(435, 'nl', NULL),
(436, 'en', NULL),
(436, 'nl', NULL),
(437, 'en', NULL),
(437, 'nl', NULL),
(438, 'en', NULL),
(438, 'nl', NULL),
(439, 'en', NULL),
(439, 'nl', NULL),
(440, 'en', NULL),
(440, 'nl', NULL),
(441, 'en', NULL),
(441, 'nl', NULL),
(442, 'en', NULL),
(442, 'nl', NULL),
(443, 'en', NULL),
(443, 'nl', NULL),
(444, 'en', NULL),
(444, 'nl', NULL),
(445, 'en', NULL),
(445, 'nl', NULL),
(446, 'en', NULL),
(446, 'nl', NULL),
(447, 'en', NULL),
(447, 'nl', NULL),
(448, 'en', NULL),
(448, 'nl', NULL),
(449, 'en', NULL),
(449, 'nl', NULL),
(450, 'en', NULL),
(450, 'nl', NULL),
(451, 'en', NULL),
(451, 'nl', NULL),
(452, 'en', NULL),
(452, 'nl', NULL),
(453, 'en', NULL),
(453, 'nl', NULL),
(454, 'en', NULL),
(454, 'nl', NULL),
(455, 'en', NULL),
(455, 'nl', NULL),
(456, 'en', NULL),
(456, 'nl', NULL),
(457, 'en', NULL),
(457, 'nl', NULL),
(458, 'en', NULL),
(458, 'nl', NULL),
(459, 'en', NULL),
(459, 'nl', NULL),
(460, 'en', NULL),
(460, 'nl', NULL),
(461, 'en', NULL),
(461, 'nl', NULL),
(462, 'en', NULL),
(462, 'nl', NULL),
(463, 'en', NULL),
(463, 'nl', NULL),
(464, 'en', NULL),
(464, 'nl', NULL),
(465, 'en', NULL),
(465, 'nl', NULL),
(466, 'en', NULL),
(466, 'nl', NULL),
(467, 'en', NULL),
(467, 'nl', NULL),
(468, 'en', NULL),
(468, 'nl', NULL),
(469, 'en', NULL),
(469, 'nl', NULL),
(470, 'en', NULL),
(470, 'nl', NULL),
(471, 'en', NULL),
(471, 'nl', NULL),
(472, 'en', NULL),
(472, 'nl', NULL),
(473, 'en', NULL),
(473, 'nl', NULL),
(474, 'en', NULL),
(474, 'nl', NULL),
(475, 'en', NULL),
(475, 'nl', NULL),
(476, 'en', NULL),
(476, 'nl', NULL),
(477, 'en', NULL),
(477, 'nl', NULL),
(478, 'en', NULL),
(478, 'nl', NULL),
(479, 'en', NULL),
(479, 'nl', NULL),
(480, 'en', NULL),
(480, 'nl', NULL),
(481, 'en', NULL),
(481, 'nl', NULL),
(482, 'en', NULL),
(482, 'nl', NULL),
(483, 'en', NULL),
(483, 'nl', NULL),
(484, 'en', NULL),
(484, 'nl', NULL),
(485, 'en', NULL),
(485, 'nl', NULL),
(486, 'en', NULL),
(486, 'nl', NULL),
(487, 'en', NULL),
(487, 'nl', NULL),
(488, 'en', NULL),
(488, 'nl', NULL),
(489, 'en', NULL),
(489, 'nl', NULL),
(490, 'en', NULL),
(490, 'nl', NULL),
(491, 'en', NULL),
(491, 'nl', NULL),
(492, 'en', NULL),
(492, 'nl', NULL),
(493, 'en', NULL),
(493, 'nl', NULL),
(494, 'en', NULL),
(494, 'nl', NULL),
(495, 'en', NULL),
(495, 'nl', NULL),
(496, 'en', NULL),
(496, 'nl', NULL),
(497, 'en', NULL),
(497, 'nl', NULL),
(498, 'en', NULL),
(498, 'nl', NULL),
(499, 'en', NULL),
(499, 'nl', NULL),
(500, 'en', NULL),
(500, 'nl', NULL),
(501, 'en', NULL),
(501, 'nl', NULL),
(502, 'en', NULL),
(502, 'nl', NULL),
(503, 'en', NULL),
(503, 'nl', NULL),
(504, 'en', NULL),
(504, 'nl', NULL),
(505, 'en', NULL),
(505, 'nl', NULL),
(506, 'en', NULL),
(506, 'nl', NULL),
(507, 'en', NULL),
(507, 'nl', NULL),
(508, 'en', NULL),
(508, 'nl', NULL),
(509, 'en', NULL),
(509, 'nl', NULL),
(510, 'en', NULL),
(510, 'nl', NULL),
(511, 'en', NULL),
(511, 'nl', NULL),
(512, 'en', NULL),
(512, 'nl', NULL),
(513, 'en', NULL),
(513, 'nl', NULL),
(514, 'en', NULL),
(514, 'nl', NULL),
(515, 'en', NULL),
(515, 'nl', NULL),
(516, 'en', NULL),
(516, 'nl', NULL),
(517, 'en', 'Click and drag in the plot area to zoom in'),
(517, 'nl', 'Click and drag in the plot area to zoom in'),
(518, 'en', 'Pinch the chart to zoom in'),
(518, 'nl', 'Pinch the chart to zoom in'),
(519, 'en', 'Reset zoom'),
(519, 'nl', 'Reset zoom'),
(527, 'en', NULL),
(527, 'nl', NULL),
(528, 'en', 'Salutation'),
(528, 'nl', 'Aanhef'),
(529, 'en', ''),
(529, 'nl', 'Aanhef'),
(530, 'en', ''),
(530, 'nl', 'Aanhef'),
(531, 'en', ''),
(531, 'nl', 'Percentage fijn edelmetaal'),
(532, 'en', NULL),
(532, 'nl', NULL),
(533, 'en', NULL),
(533, 'nl', NULL),
(534, 'en', NULL),
(534, 'nl', NULL),
(535, 'en', NULL),
(535, 'nl', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1455877224),
('m130524_201442_init', 1455877230),
('m140506_102106_rbac_init', 1457026314),
('m160220_100848_add_new_field_to_user', 1455963027),
('m160516_081703_lang', 1463386881),
('m160516_095736_lang_translations', 1463393919);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `bullion_type_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bullion_description_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `pallet` varchar(255) DEFAULT NULL,
  `bar_number` varchar(255) DEFAULT NULL,
  `weight_amount` double NOT NULL,
  `weight_measure` varchar(10) NOT NULL,
  `percentage` double NOT NULL,
  `date_registrated` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `vat` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  KEY `bullion_type_id` (`bullion_type_id`),
  KEY `bullion_description_id` (`bullion_description_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `location_id`, `bullion_type_id`, `amount`, `bullion_description_id`, `brand_id`, `pallet`, `bar_number`, `weight_amount`, `weight_measure`, `percentage`, `date_registrated`, `is_active`, `vat`) VALUES
(1, 1, 1, 8, 4, 1, '34', '333', 31.1, 'gramm', 100, '2016-06-09', 1, NULL),
(8, 1, 2, 23, 3, 1, '23', '2', 22, 'gramm', 0.07, '2016-06-01', 1, NULL),
(9, 2, 1, 1, 5, 3, 'PAL/0005', '168624', 100, 'troy', 100, '2016-07-20', 1, NULL),
(10, 2, 1, 1, 5, 3, 'PAL/0005', '168625', 100, 'troy', 100, '2016-07-20', 1, NULL),
(11, 2, 1, 1, 5, 3, 'PAL/0005', '168626', 100, 'troy', 100, '2016-07-20', 1, NULL),
(12, 1, 2, 2, 6, 4, '90861559', '', 100, 'gramm', 100, '2016-07-20', 1, NULL),
(13, 1, 2, 1, 7, 4, '90861559', '', 250, 'gramm', 100, '2016-07-20', 1, NULL),
(14, 2, 1, 1, 5, 3, 'PAL/0005', '168628', 100, 'troy', 100, '2016-07-20', 1, NULL),
(15, 2, 1, 1, 8, 5, 'PAL/0001', '20100209-05', 1000, 'troy', 0.9999, '2016-07-20', 1, NULL),
(16, 2, 1, 1, 8, 5, 'PAL/0001', '20100209-06', 1000, 'troy', 0.9999, '2016-07-20', 1, NULL),
(17, 1, 2, 1, 9, 4, '90861506', 'M04113', 1000, 'gramm', 100, '2016-06-23', 1, NULL),
(18, 1, 1, 5, 10, 4, '2404966', '490137,490127,490124,490699,479711', 5000, 'gramm', 100, '2016-06-23', 1, NULL),
(23, 1, 1, 1, 10, 3, 'ghfdhgfhgfghf', 'ytuytuyt', 1000, 'gramm', 50, '2016-07-21', 1, 35);

-- --------------------------------------------------------

--
-- Структура таблицы `salutation`
--

CREATE TABLE IF NOT EXISTS `salutation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `salutation`
--

INSERT INTO `salutation` (`id`, `name`) VALUES
(1, 'Dhr.'),
(2, 'Mevr.'),
(3, 'Dr.'),
(4, 'Ir.');

-- --------------------------------------------------------

--
-- Структура таблицы `source_message`
--

CREATE TABLE IF NOT EXISTS `source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=536 ;

--
-- Дамп данных таблицы `source_message`
--

INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
(1, 'common/modules/i18n', 'Translations'),
(2, 'common/modules/i18n', 'Translated'),
(3, 'common/modules/i18n', 'Not translated'),
(4, 'common/modules/i18n', 'Update'),
(5, 'common/modules/i18n', 'Updated'),
(6, 'common/modules/i18n', 'Back to list'),
(7, 'common/modules/i18n', 'Sign in'),
(8, 'common/modules/i18n', 'Sign in to start your session'),
(232, 'common/modules/i18n', 'Id'),
(233, 'common/modules/i18n', 'Category'),
(234, 'common/modules/i18n', 'Message'),
(239, 'common/modules/i18n', 'Status'),
(240, 'common/modules/i18n', 'Menu'),
(241, 'common/modules/i18n', 'Import'),
(242, 'common/modules/i18n', 'Employees'),
(243, 'common/modules/i18n', 'Users'),
(244, 'common/modules/i18n', 'Login'),
(245, 'common/modules/i18n', 'Projects management'),
(246, 'common/modules/i18n', 'Projects'),
(247, 'common/modules/i18n', 'Tasks'),
(248, 'common/modules/i18n', 'Reports management'),
(249, 'common/modules/i18n', 'Day tasks'),
(250, 'common/modules/i18n', 'Employee reports'),
(251, 'common/modules/i18n', 'Project reports'),
(252, 'yii', '(not set)'),
(253, 'yii', 'An internal server error occurred.'),
(254, 'yii', 'Are you sure you want to delete this item?'),
(255, 'yii', 'Delete'),
(256, 'yii', 'Error'),
(257, 'yii', 'File upload failed.'),
(258, 'yii', 'Home'),
(259, 'yii', 'Invalid data received for parameter "{param}".'),
(260, 'yii', 'Login Required'),
(261, 'yii', 'Missing required arguments: {params}'),
(262, 'yii', 'Missing required parameters: {params}'),
(263, 'yii', 'No'),
(264, 'yii', 'No results found.'),
(265, 'yii', 'Only files with these MIME types are allowed: {mimeTypes}.'),
(266, 'yii', 'Only files with these extensions are allowed: {extensions}.'),
(267, 'yii', 'Page not found.'),
(268, 'yii', 'Please fix the following errors:'),
(269, 'yii', 'Please upload a file.'),
(270, 'yii', 'Showing <b>{begin, number}-{end, number}</b> of <b>{totalCount, number}</b> {totalCount, plural, one{item} other{items}}.'),
(271, 'yii', 'The file "{file}" is not an image.'),
(272, 'yii', 'The file "{file}" is too big. Its size cannot exceed {formattedLimit}.'),
(273, 'yii', 'The file "{file}" is too small. Its size cannot be smaller than {formattedLimit}.'),
(274, 'yii', 'The format of {attribute} is invalid.'),
(275, 'yii', 'The image "{file}" is too large. The height cannot be larger than {limit, number} {limit, plural, one{pixel} other{pixels}}.'),
(276, 'yii', 'The image "{file}" is too large. The width cannot be larger than {limit, number} {limit, plural, one{pixel} other{pixels}}.'),
(277, 'yii', 'The image "{file}" is too small. The height cannot be smaller than {limit, number} {limit, plural, one{pixel} other{pixels}}.'),
(278, 'yii', 'The image "{file}" is too small. The width cannot be smaller than {limit, number} {limit, plural, one{pixel} other{pixels}}.'),
(279, 'yii', 'The requested view "{name}" was not found.'),
(280, 'yii', 'The verification code is incorrect.'),
(281, 'yii', 'Total <b>{count, number}</b> {count, plural, one{item} other{items}}.'),
(282, 'yii', 'Unable to verify your data submission.'),
(283, 'yii', 'Unknown option: --{name}'),
(284, 'yii', 'Update'),
(285, 'yii', 'View'),
(286, 'yii', 'Yes'),
(287, 'yii', 'You are not allowed to perform this action.'),
(288, 'yii', 'You can upload at most {limit, number} {limit, plural, one{file} other{files}}.'),
(289, 'yii', 'in {delta, plural, =1{a day} other{# days}}'),
(290, 'yii', 'in {delta, plural, =1{a minute} other{# minutes}}'),
(291, 'yii', 'in {delta, plural, =1{a month} other{# months}}'),
(292, 'yii', 'in {delta, plural, =1{a second} other{# seconds}}'),
(293, 'yii', 'in {delta, plural, =1{a year} other{# years}}'),
(294, 'yii', 'in {delta, plural, =1{an hour} other{# hours}}'),
(295, 'yii', 'just now'),
(296, 'yii', 'the input value'),
(297, 'yii', '{attribute} "{value}" has already been taken.'),
(298, 'yii', '{attribute} cannot be blank.'),
(299, 'yii', '{attribute} is invalid.'),
(300, 'yii', '{attribute} is not a valid URL.'),
(301, 'yii', '{attribute} is not a valid email address.'),
(302, 'yii', '{attribute} must be "{requiredValue}".'),
(303, 'yii', '{attribute} must be a number.'),
(304, 'yii', '{attribute} must be a string.'),
(305, 'yii', '{attribute} must be an integer.'),
(306, 'yii', '{attribute} must be either "{true}" or "{false}".'),
(307, 'yii', '{attribute} must be greater than "{compareValue}".'),
(308, 'yii', '{attribute} must be greater than or equal to "{compareValue}".'),
(309, 'yii', '{attribute} must be less than "{compareValue}".'),
(310, 'yii', '{attribute} must be less than or equal to "{compareValue}".'),
(311, 'yii', '{attribute} must be no greater than {max}.'),
(312, 'yii', '{attribute} must be no less than {min}.'),
(313, 'yii', '{attribute} must be repeated exactly.'),
(314, 'yii', '{attribute} must not be equal to "{compareValue}".'),
(315, 'yii', '{attribute} should contain at least {min, number} {min, plural, one{character} other{characters}}.'),
(316, 'yii', '{attribute} should contain at most {max, number} {max, plural, one{character} other{characters}}.'),
(317, 'yii', '{attribute} should contain {length, number} {length, plural, one{character} other{characters}}.'),
(318, 'yii', '{delta, plural, =1{a day} other{# days}} ago'),
(319, 'yii', '{delta, plural, =1{a minute} other{# minutes}} ago'),
(320, 'yii', '{delta, plural, =1{a month} other{# months}} ago'),
(321, 'yii', '{delta, plural, =1{a second} other{# seconds}} ago'),
(322, 'yii', '{delta, plural, =1{a year} other{# years}} ago'),
(323, 'yii', '{delta, plural, =1{an hour} other{# hours}} ago'),
(324, 'yii', '{nFormatted} B'),
(325, 'yii', '{nFormatted} GB'),
(326, 'yii', '{nFormatted} GiB'),
(327, 'yii', '{nFormatted} KB'),
(328, 'yii', '{nFormatted} KiB'),
(329, 'yii', '{nFormatted} MB'),
(330, 'yii', '{nFormatted} MiB'),
(331, 'yii', '{nFormatted} PB'),
(332, 'yii', '{nFormatted} PiB'),
(333, 'yii', '{nFormatted} TB'),
(334, 'yii', '{nFormatted} TiB'),
(335, 'yii', '{nFormatted} {n, plural, =1{byte} other{bytes}}'),
(336, 'yii', '{nFormatted} {n, plural, =1{gibibyte} other{gibibytes}}'),
(337, 'yii', '{nFormatted} {n, plural, =1{gigabyte} other{gigabytes}}'),
(338, 'yii', '{nFormatted} {n, plural, =1{kibibyte} other{kibibytes}}'),
(339, 'yii', '{nFormatted} {n, plural, =1{kilobyte} other{kilobytes}}'),
(340, 'yii', '{nFormatted} {n, plural, =1{mebibyte} other{mebibytes}}'),
(341, 'yii', '{nFormatted} {n, plural, =1{megabyte} other{megabytes}}'),
(342, 'yii', '{nFormatted} {n, plural, =1{pebibyte} other{pebibytes}}'),
(343, 'yii', '{nFormatted} {n, plural, =1{petabyte} other{petabytes}}'),
(344, 'yii', '{nFormatted} {n, plural, =1{tebibyte} other{tebibytes}}'),
(345, 'yii', '{nFormatted} {n, plural, =1{terabyte} other{terabytes}}'),
(346, 'common/modules/i18n', 'Online'),
(347, 'common/modules/i18n', 'Create '),
(348, 'common/modules/i18n', 'User'),
(349, 'common/modules/i18n', 'Username'),
(350, 'common/modules/i18n', 'Authkey'),
(351, 'common/modules/i18n', 'Passwordhash'),
(352, 'common/modules/i18n', 'Passwordresettoken'),
(353, 'common/modules/i18n', 'Email'),
(354, 'common/modules/i18n', 'Createdat'),
(355, 'common/modules/i18n', 'Updatedat'),
(356, 'common/modules/i18n', 'Logo'),
(359, 'common/modules/i18n', 'Create'),
(360, 'common/modules/i18n', 'New Password'),
(361, 'common/modules/i18n', 'New Password Repeat'),
(363, 'common/modules/i18n', 'Delete'),
(364, 'common/modules/i18n', 'Are you sure you want to delete this item?'),
(365, 'common/modules/i18n', 'Roles'),
(366, 'common/modules/i18n', 'Userid'),
(367, 'common/modules/i18n', 'Number'),
(368, 'common/modules/i18n', 'Name'),
(369, 'common/modules/i18n', 'Bankaccountnumber'),
(370, 'common/modules/i18n', 'Bankaccountname'),
(371, 'common/modules/i18n', 'Notes'),
(372, 'common/modules/i18n', 'Dateregistrated'),
(373, 'common/modules/i18n', 'Customers'),
(374, 'common/modules/i18n', 'Customer'),
(375, 'common/modules/i18n', 'Customer data'),
(376, 'common/modules/i18n', 'Products'),
(377, 'common/modules/i18n', 'Invoices'),
(378, 'common/modules/i18n', 'Emails'),
(379, 'common/modules/i18n', 'Role'),
(380, 'common/modules/i18n', 'Addresses'),
(381, 'common/modules/i18n', 'Organization'),
(382, 'common/modules/i18n', 'Contact person'),
(383, 'common/modules/i18n', 'Street'),
(384, 'common/modules/i18n', 'Zip'),
(385, 'common/modules/i18n', 'City'),
(386, 'common/modules/i18n', 'Country'),
(387, 'common/modules/i18n', 'Default'),
(388, 'common/modules/i18n', 'Digital files'),
(389, 'common/modules/i18n', 'File'),
(390, 'common/modules/i18n', 'Isactive'),
(391, 'common/modules/i18n', 'Not active'),
(392, 'common/modules/i18n', 'Active'),
(393, 'common/modules/i18n', 'Isdatauploaded'),
(394, 'common/modules/i18n', 'Add data uploaded'),
(395, 'common/modules/i18n', 'Locations'),
(396, 'common/modules/i18n', 'Location'),
(397, 'common/modules/i18n', 'Bullion Types'),
(398, 'common/modules/i18n', 'Bullion Type'),
(399, 'common/modules/i18n', 'Incasso'),
(400, 'common/modules/i18n', 'Other'),
(401, 'common/modules/i18n', 'Translation'),
(402, 'common/modules/i18n', 'Alias'),
(403, 'common/modules/i18n', 'Text'),
(404, 'common/modules/i18n', 'Templates'),
(405, 'common/modules/i18n', 'Template'),
(406, 'common/modules/i18n', 'Settings'),
(407, 'common/modules/i18n', 'Company'),
(408, 'common/modules/i18n', 'Bullion type descriptions'),
(410, 'common/modules/i18n', 'Bullion type description'),
(411, 'common/modules/i18n', 'Brands'),
(412, 'common/modules/i18n', 'Brand'),
(413, 'common/modules/i18n', 'Amount'),
(414, 'common/modules/i18n', 'Description'),
(415, 'common/modules/i18n', 'Pallet'),
(416, 'common/modules/i18n', 'Bar number'),
(417, 'javascript', 'Weight amount'),
(418, 'common/modules/i18n', 'Weight measure'),
(419, 'common/modules/i18n', 'Percentage'),
(420, 'common/modules/i18n', 'Product'),
(421, 'common/modules/i18n', 'gramms'),
(422, 'common/modules/i18n', 'troys'),
(423, 'common/modules/i18n', 'Storage'),
(424, 'javascript', 'Nothing selected'),
(425, 'javascript', 'No results found.'),
(426, 'common/modules/i18n', 'Change password'),
(427, 'common/modules/i18n', 'Generate PDF'),
(428, 'common/modules/i18n', 'Customer number'),
(429, 'common/modules/i18n', 'Confirm document'),
(430, 'common/modules/i18n', 'VATs'),
(431, 'common/modules/i18n', 'VAT'),
(432, 'common/modules/i18n', 'Invoice statuses'),
(433, 'common/modules/i18n', 'Invoice status'),
(434, 'common/modules/i18n', 'Date created'),
(435, 'common/modules/i18n', 'Invoice'),
(436, 'common/modules/i18n', 'ISO 4217'),
(437, 'common/modules/i18n', 'Sign'),
(438, 'common/modules/i18n', 'Currencies'),
(439, 'common/modules/i18n', 'Currency'),
(440, 'common/modules/i18n', 'Change status to:'),
(441, 'common/modules/i18n', 'Apply'),
(442, 'common/modules/i18n', 'Choose at least one item'),
(443, 'common/modules/i18n', 'Operation is done successfully.'),
(444, 'common/modules/i18n', 'Yes'),
(445, 'common/modules/i18n', 'No'),
(446, 'common/modules/i18n', 'Date end'),
(447, 'common/modules/i18n', 'Customer ID'),
(448, 'common/modules/i18n', 'Invoice number'),
(449, 'common/modules/i18n', 'Date start'),
(450, 'common/modules/i18n', 'Storage code'),
(451, 'common/modules/i18n', 'Storage description'),
(452, 'common/modules/i18n', 'Storage amount'),
(453, 'common/modules/i18n', 'Storage date start'),
(454, 'common/modules/i18n', 'Storage date end'),
(455, 'common/modules/i18n', 'Storage percentage'),
(456, 'common/modules/i18n', 'Storage price'),
(457, 'common/modules/i18n', 'Storage basis'),
(458, 'common/modules/i18n', 'Invoice subtotal'),
(459, 'common/modules/i18n', 'Invoice VAT'),
(460, 'common/modules/i18n', 'Invoice total'),
(461, 'common/modules/i18n', 'Lines'),
(462, 'common/modules/i18n', 'No lines for this invoice'),
(463, 'common/modules/i18n', 'Managers'),
(464, 'common/modules/i18n', 'Manager'),
(465, 'common/modules/i18n', 'Profile'),
(466, 'db_rbac', 'Access rules'),
(467, 'db_rbac', 'Add new rule'),
(468, 'db_rbac', 'Rule'),
(469, 'db_rbac', 'Description'),
(470, 'common/modules/i18n', 'db_rbac'),
(471, 'common/modules/i18n', 'Add new rule'),
(472, 'common/modules/i18n', 'Rule'),
(473, 'common/modules/i18n', 'Access rules'),
(474, 'db_rbac', 'New rule'),
(475, 'db_rbac', 'Text description'),
(476, 'db_rbac', 'Allowed access'),
(477, 'db_rbac', '\n            * Format module/controller/action<br>\n            site/article - access to the page site/article<br>\n            site - access to any action of the controller site'),
(478, 'db_rbac', 'Save'),
(479, 'common/modules/i18n', 'New rule'),
(480, 'common/modules/i18n', 'Allowed access'),
(481, 'common/modules/i18n', '\n            * Format module/controller/action<br>\n            site/article - access to the page site/article<br>\n            site - access to any action of the controller site'),
(482, 'common/modules/i18n', 'Save'),
(483, 'common/modules/i18n', 'Edit rule: '),
(484, 'common/modules/i18n', 'Edit rule'),
(485, 'common/modules/i18n', 'Text description'),
(486, 'common/modules/i18n', 'Create rule'),
(487, 'common/modules/i18n', 'Role management'),
(488, 'common/modules/i18n', 'Add role'),
(489, 'common/modules/i18n', 'Allowed accesses'),
(490, 'common/modules/i18n', 'Create role'),
(491, 'db_rbac', 'Role management'),
(492, 'db_rbac', 'Edit'),
(493, 'common/modules/i18n', 'Role name'),
(494, 'common/modules/i18n', 'Role with such name already exists: '),
(495, 'common/modules/i18n', 'Edit role: '),
(496, 'common/modules/i18n', 'Parent permission'),
(497, 'common/modules/i18n', 'Rule with such name already exists: '),
(498, 'common/modules/i18n', 'Datestartpaid'),
(499, 'common/modules/i18n', 'Date start storage'),
(500, 'common/modules/i18n', 'Metal slug'),
(501, 'common/modules/i18n', 'Amount excluding VAT'),
(502, 'common/modules/i18n', 'Amount VAT'),
(503, 'common/modules/i18n', 'Average price'),
(504, 'common/modules/i18n', 'No invoices for this customer'),
(505, 'common/modules/i18n', 'Tariffs'),
(506, 'common/modules/i18n', 'Tariffs, %'),
(507, 'common/modules/i18n', 'Report document'),
(508, 'common/modules/i18n', 'Total'),
(509, 'common/modules/i18n', 'Subtotal'),
(510, 'common/modules/i18n', 'Total in storage'),
(511, 'common/modules/i18n', 'Value'),
(512, 'common/modules/i18n', 'Dashboard'),
(513, 'common/modules/i18n', 'Report per metal'),
(514, 'common/modules/i18n', 'Reports'),
(515, 'common/modules/i18n', 'Report per customer'),
(516, 'common/modules/i18n', 'Report per date'),
(517, 'javascript', 'Click and drag in the plot area to zoom in'),
(518, 'javascript', 'Pinch the chart to zoom in'),
(519, 'javascript', 'Reset zoom'),
(527, 'common/modules/i18n', 'Weight amount'),
(528, 'common/modules/i18n', 'Salutationid'),
(529, 'common/modules/i18n', 'Salutation'),
(530, 'common/modules/i18n', 'Salutations'),
(531, 'common/modules/i18n', 'Percentage fine bullion'),
(532, 'common/modules/i18n', 'Productdetails'),
(533, 'common/modules/i18n', 'Set VAT manually:'),
(534, 'common/modules/i18n', 'Date out of storage'),
(535, 'common/modules/i18n', 'Storage date out');

-- --------------------------------------------------------

--
-- Структура таблицы `tariff`
--

CREATE TABLE IF NOT EXISTS `tariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `bullion_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `bullion_type_id` (`bullion_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=505 ;

--
-- Дамп данных таблицы `tariff`
--

INSERT INTO `tariff` (`id`, `value`, `customer_id`, `bullion_type_id`) VALUES
(181, 1, 22, 1),
(182, 0.75, 22, 2),
(183, 1, 22, 3),
(199, 1, 23, 1),
(200, 0.75, 23, 2),
(201, 0.75, 23, 3),
(211, 1, 18, 1),
(212, 1, 18, 2),
(213, 1, 18, 3),
(418, 1, 19, 1),
(419, 0.5, 19, 2),
(420, 0.75, 19, 3),
(475, 0.4, 17, 1),
(476, 0.34, 17, 2),
(477, 0.65, 17, 3),
(481, 1, 21, 1),
(482, 0.75, 21, 2),
(483, 0.75, 21, 3),
(502, 1, 1, 1),
(503, 0.5, 1, 2),
(504, 0.75, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `job_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `crontab` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `name`, `job_id`, `status`, `crontab`) VALUES
(1, 'Send invoices', 1, 'done', '* * * * *'),
(2, 'Search for new invoices', 2, 'done', '0 0 1 * * '),
(3, 'Update average price for metals', 3, 'done', '0 */2 * * *'),
(5, 'Update weight per day', 5, 'done', '*/10 * * * *');

-- --------------------------------------------------------

--
-- Структура таблицы `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `footer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `template`
--

INSERT INTO `template` (`id`, `name`, `alias`, `text`, `footer`) VALUES
(1, 'Template for confirmation of storage ', 'confirm', '<div><img style="float: right;" src="https://media.licdn.com/media/p/7/000/1fd/026/2a44bf5.png" alt="" width="261" height="75" /></div>\r\n<div style="clear: both;">&nbsp;</div>\r\n<div style="text-align: center;">\r\n<h3>BEVESTIGING<br />BEWAARNEMING EDELMETALEN</h3>\r\n</div>\r\n<p><strong>Registratienummer: [CONFIRM_NUMBER]<br /></strong></p>\r\n<p>AunexumSafe, gevestigd te Heerhugowaard, aan de W.M. Dudokweg 14 (1703DB). geregistreed in het handelsregister van de Kamer van Koophandel en Fabreken te Amsterdam onder nummer 851078488, ten deze rechtsgeldig vertegenwoordigd haar directeur V. Kersten, hierna te noemen <strong>AunexumSafe</strong><strong>;</strong></p>\r\n<p>en</p>\r\n<p>[CUSTOMER_NAME] &nbsp;wonende in [CUSTOMER_COUNTRY] te [CUSTOMER_CITY] aan de [CUSTOMER_STREET] ([CUSTOMER_ZIP]) hierna te noemen <strong>''Client''</strong>.</p>\r\n<p>Zijn overeengekomen dat AunexumSafe namens client edelmetalen in bewaring heeft, conform de onderstaande specificatie.</p>\r\n<table class="table-confirm" width="100%">\r\n<tbody>\r\n<tr style="height: 26px;">\r\n<th style="text-align: left; height: 26px; width: 16.6874%;" valign="top">LOCATIE</th>\r\n<th style="text-align: left; height: 26px; width: 13.325%;" valign="top">AANTAL</th>\r\n<th style="text-align: left; height: 26px; width: 12.4533%;" valign="top">Pallet/Sealbag</th>\r\n<th style="text-align: left; height: 26px; width: 17.1233%;" valign="top">PRODUCTOMSCHRIJVING</th>\r\n<th style="text-align: left; height: 26px; width: 16.5629%;" valign="top">KENMERK</th>\r\n<th style="text-align: left; height: 26px; width: 12.391%;" valign="top">DATUM<br />BEWAARNEMING</th>\r\n<th style="text-align: left; height: 26px; width: 8.71731%;" valign="top">DATUM UIT BEWAARNEMING</th>\r\n</tr>\r\n<tr id="template-line" style="height: 13.7188px;">\r\n<td style="height: 13.7188px; width: 16.6874%;">[PRODUCT_LOCATION_ID]</td>\r\n<td style="height: 13.7188px; width: 13.325%;">[PRODUCT_AMOUNT]</td>\r\n<td style="height: 13.7188px; width: 12.4533%;">[PRODUCT_PALLET]</td>\r\n<td style="height: 13.7188px; width: 17.1233%;">[PRODUCT_DESCRIPTION]</td>\r\n<td style="height: 13.7188px; width: 16.5629%;">[PRODUCT_BAR_NUMBER]</td>\r\n<td style="height: 13.7188px; width: 12.391%;">[PRODUCT_DATE_REGISTRATED]</td>\r\n<td style="height: 13.7188px; width: 8.71731%;">[PRODUCT_DATE_OUT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;AunexsumSafe brengt client een bewaarloon in rekening van:</p>\r\n<ul>\r\n<li>Goud: 0,50%(code) per jaar over de varvangingswaarde, exclusief BTW</li>\r\n<li>Zilver: 1,00%(code) per jaar over de varvangingswaarde, exclusief BTW</li>\r\n</ul>\r\n<p>&nbsp;Het bewaarlon wordt per kwartaal achteraf door AunexumSafe aan client gefactureerd, waarbij de gemiddelde aanwezige vervangingswaarde in dat betreffende kwartaal als grondslag wordt gebruikt.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em>Client heeft zich, bij het aangaan van de overeenkomst reeds akkord verklaard met de Algemene Voorwaarden van AunexumSafe. Deze zijn tevens in te zien op de website van AunexumSafe of desgewenst op verzoek per post of per e-mail door AunexSafe aan client ter hand te stellen.</em></p>\r\n<p>&nbsp;</p>', ''),
(2, 'Template for e-mail that''s send with invoice', 'invoiceEmail', '<p>Dear [CUSTOMER_NAME],</p>\r\n<p>We inform you about Invoice #[INVOICE_NUMBER]. You must pay [INVOICE_TOTAL].</p>\r\n<p>&nbsp;</p>\r\n<p>Please pay.</p>', ''),
(3, 'Template for invoice ', 'invoice', '<div><img style="float: left; display: block;" src="https://i.ytimg.com/vi/5COci7_mpmw/mqdefault.jpg" alt="" width="200" height="113" />\r\n<div style="float: right; text-align: right; line-height: 2;">\r\n<p>Goudstandaard B.V.<br />W.M.Dudpkweg 14<br />1703 DB Heerhogowaard<br />T +31(0)237630404<br />Chamber of Commerce: 53931718<br />VAT number: NL851078515B01</p>\r\n</div>\r\n<div style="clear: both;">[CUSTOMER_NAME]</div>\r\n<div style="clear: both;">[CUSTOMER_NUMBER]</div>\r\n<div style="clear: both;">[CUSTOMER_BANK_ACCOUNT_NUMBER]</div>\r\n<div style="clear: both;">&nbsp;</div>\r\n<div style="clear: both;">[CUSTOMER_COUNTRY]</div>\r\n<div style="clear: both;">[CUSTOMER_CITY]</div>\r\n<div style="clear: both;">[CUSTOMER_STREET]</div>\r\n<div style="clear: both;">[CUSTOMER_ZIP]</div>\r\n<div style="clear: both;">&nbsp;</div>\r\n<div style="clear: both;">&nbsp;</div>\r\n<div style="clear: both;">&nbsp;</div>\r\n<div>&nbsp;\r\n<table class="table-invoice-head" width="100%">\r\n<tbody>\r\n<tr class="lined" style="height: 13px;">\r\n<td style="height: 13px;" colspan="2"><strong>FACTUUR</strong></td>\r\n<td style="text-align: right; height: 13px;">&nbsp;<strong>Heerhugowaard, [INVOICE_END_DATE]<br /></strong></td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;" width="30%"><strong>Debiteurnummer</strong></td>\r\n<td style="height: 13px;" width="30%">[CUSTOMER_ID]</td>\r\n<td style="height: 13px;" width="40%">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Factuurnummer</td>\r\n<td style="height: 13px;">[INVOICE_NUMBER]</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Referentie</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Periode</td>\r\n<td style="height: 13px;">[INVOICE_START_DATE] tot en met [INVOICE_END_DATE]</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="lined" style="height: 13px;">\r\n<td style="height: 13px;">Inzake</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<table class="table-invoice-lines" style="margin-top: 20px;" width="100%">\r\n<tbody>\r\n<tr class="lined-invoice" style="height: 13px;">\r\n<td style="height: 13px;" width="10%"><strong>#</strong></td>\r\n<td style="height: 13px;" width="10%"><strong>Code</strong></td>\r\n<td style="height: 13px;" width="15%"><strong>Omschrijving</strong></td>\r\n<td style="height: 13px;" width="10%"><strong>Grondslag*</strong></td>\r\n<td style="height: 13px;" width="15%"><strong>Periode van</strong></td>\r\n<td style="height: 13px;" width="10%"><strong>t/m</strong></td>\r\n<td style="height: 13px;" width="15%"><strong>Date out of storage</strong></td>\r\n<td style="height: 13px;" width="5%"><strong>% p.j.</strong></td>\r\n<td style="text-align: right; height: 13px;" width="10%"><strong>Bedrag</strong></td>\r\n</tr>\r\n<tr id="template-line">\r\n<td style="height: 13px;">[INVOICE_LINE_AMOUNT]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_BAR_NUMBER]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_DESCRIPTION]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_BASIS]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_DATE_START]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_DATE_END]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_DATE_OUT_OF_STORAGE]</td>\r\n<td style="height: 13px;">[INVOICE_LINE_PERCENTAGE]</td>\r\n<td style="height: 13px; text-align: right;">[INVOICE_LINE_PRICE]</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px; text-align: right;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;" colspan="2">Subtotaal</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px; text-align: right;">[INVOICE_SUBTOTAL]&nbsp;</td>\r\n</tr>\r\n<tr class="lined-invoice" style="height: 13px;">\r\n<td style="height: 13px;" colspan="2">BTW</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px; text-align: right;">[INVOICE_VAT_TOTAL]&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;" colspan="2"><strong>Totaal</strong></td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px; text-align: right;">[INVOICE_TOTAL]&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em>*Grondslag is gemiddelde koers in gefactureerd kwartal in EUR per kilogram.</em></p>\r\n<p>&nbsp;</p>\r\n<p>Wij zullen dit bedrag binnen 14 dagen na factuurdatum middels een automatisch incasso van uw rekening afschrijven.</p>', '<div style="font-size: 0.9em;">\r\n<p style="text-align: center;">Goudstandaard | W.M.Dudokweg 14 | 1703 DB Heerhugowaard | Chamber of Commerce: 53931718</p>\r\n<p style="text-align: center;">VAT number: NL851078515801 | ABN AMRO: 468764488 | IBAN: NL98ABNA0468764488 | BIC: ABNANL2A</p>\r\n</div>');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `logo`) VALUES
(1, 'admin', 'V-Cym0VAr8UvLBmmLSHJID6XlMaqaXyZ', '$2y$13$wx3ceUtuQVUiwXhZUn9N2.ClZq2jF/JymqR4JZZLHI0abmLtmGly.', NULL, 'akramov@lemon.ua', 10, 1455877362, 1465208482, NULL),
(30, 'akramov', '', '$2y$13$UG/VR624lzyd5b4nyuIH1uklh6LHk3hDFdm4ZdPbC3s.sbMx2CgNS', NULL, 'artemkramov@gmail.com', 10, 1464245955, 1467798324, ''),
(31, 'manager', '', '$2y$13$2X7hisGy99ZZRTjKqcCTsuSRPGORI90M9PlkBRD128KGBjwV9W6BS', NULL, 'test@mail.ru', 10, 1464677424, 1467461862, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `vat`
--

CREATE TABLE IF NOT EXISTS `vat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` double NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `vat`
--

INSERT INTO `vat` (`id`, `name`, `country_id`) VALUES
(1, 21, 155);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Ограничения внешнего ключа таблицы `bullion_type_description`
--
ALTER TABLE `bullion_type_description`
  ADD CONSTRAINT `bullion_type_description_ibfk_1` FOREIGN KEY (`bullion_type_id`) REFERENCES `bullion_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_product`
--
ALTER TABLE `customer_product`
  ADD CONSTRAINT `customer_product_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `invoice_line`
--
ALTER TABLE `invoice_line`
  ADD CONSTRAINT `invoice_line_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `invoice_sent_queue`
--
ALTER TABLE `invoice_sent_queue`
  ADD CONSTRAINT `invoice_sent_queue_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`bullion_type_id`) REFERENCES `bullion_type` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`bullion_description_id`) REFERENCES `bullion_type_description` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Ограничения внешнего ключа таблицы `tariff`
--
ALTER TABLE `tariff`
  ADD CONSTRAINT `tariff_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tariff_ibfk_2` FOREIGN KEY (`bullion_type_id`) REFERENCES `bullion_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
