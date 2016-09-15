-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 14 2016 г., 22:07
-- Версия сервера: 5.6.17
-- Версия PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `jenadin_new`
--


-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `street` tinytext NOT NULL,
  `building` varchar(10) NOT NULL,
  `flat` varchar(10) DEFAULT NULL,
  `zip` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `first_name`, `last_name`, `phone`, `country_id`, `city`, `region`, `street`, `building`, `flat`, `zip`, `user_id`) VALUES
(2, 'Артем', 'Крамов', '(050) 149-31-32', 1, 'Чутове', 'Полтавська', 'Полтавський шлях', '87', '', '38800', 30),
(80, 'Артем', 'Крамов', '(768) 678-68-76', 5, '12', 'ffdgdfg', 'klkljklj', '3', '', '4534534', NULL),
(81, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', 1),
(82, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(83, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(84, 'Daniel1', 'fdgdfg', '0546456456', 1, 'апра', '456546', 'арпар', '7', '', '67', NULL),
(85, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(86, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(87, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(88, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(89, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(90, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(91, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(92, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(93, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(94, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(95, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(96, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(97, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(98, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(99, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(100, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(101, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(102, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(103, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(104, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(105, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(106, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(107, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(108, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(109, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(110, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(111, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(112, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(113, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(114, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(115, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(116, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(117, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(118, 'АРтем', 'Крамов', '(050) 149-34-32', 1, 'Kis', 'Dnipro', 'JJKKJKJ', '34', '', '5456456', NULL),
(119, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(120, 'xfgdf gdflgj dlkfjglkdfjg lkdfjgldfjg ', 'dfgj dlfkgjlkdfjglkdfjg lkdfjg ldfjglkfjg', '(645) 645-64-56', 1, 'dfgdfgdfg', 'fgdfgdfgdfg', 'dfgdfgdfg', 'dfg', '', 'dfgdfgdfg', 40),
(121, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(122, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(123, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL),
(124, 'Daniel', 'Agger', '(453) 534-53-45', 1, 'Pereyaslav', 'Kievskaya', 'Grushevskogo', '87', '', '38800', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `apps_countries`
--

CREATE TABLE IF NOT EXISTS `apps_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=247 ;

--
-- Дамп данных таблицы `apps_countries`
--

INSERT INTO `apps_countries` (`id`, `country_code`, `country_name`) VALUES
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
('admin', '1', 1470000223),
('admin', '32', 1469962054),
('admin', '33', 1469996415),
('admin', '34', 1469996479),
('admin', '7', 1457030690),
('admin', '8', 1457030722),
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
('employee', '9', 1457030749);

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
('admin', 1, 'Administrator', NULL, NULL, 1457028578, 1472991546, NULL),
('content', 2, 'Content management', NULL, NULL, 1469903227, 1469903227, ''),
('content/posts', 2, 'Posts management', NULL, NULL, 1469903256, 1469903256, 'content'),
('dashboard/default/index', 2, 'Dashboard', NULL, NULL, 1468306058, 1468306516, ''),
('i18n', 2, 'Translation management', NULL, NULL, 1464245784, 1464245784, NULL),
('permit/access', 2, 'Role and permission management', NULL, NULL, 1457031451, 1457031915, NULL),
('products', 2, 'Shop management', NULL, NULL, 1470493916, 1470493916, ''),
('products/categories', 2, 'Category management', NULL, NULL, 1470493949, 1470493949, 'products'),
('products/characteristic-groups', 2, 'Characteristic group management', NULL, NULL, 1470571801, 1470571801, 'products'),
('products/characteristics', 2, 'Characteristic management', NULL, NULL, 1470583744, 1470583744, 'products'),
('products/email-settings', 2, 'Email setting management', NULL, NULL, 1472546012, 1472546012, 'products/products'),
('products/email-templates', 2, 'Email templates management', NULL, NULL, 1472497313, 1472537484, 'products/products'),
('products/kits', 2, 'Kit management', NULL, NULL, 1471679008, 1471679008, 'products/products'),
('products/orders', 2, 'Order management', NULL, NULL, 1472463630, 1472463630, 'products/products'),
('products/payment-types', 2, 'Payment type management', NULL, NULL, 1472473845, 1472473845, 'products/products'),
('products/products', 2, 'Products management', NULL, NULL, 1465389945, 1465389945, NULL),
('products/products/index', 2, 'Products list', NULL, NULL, 1466062609, 1467648432, 'products/products'),
('products/products/view', 2, 'Products view item', 'isAuthorManyToMany', NULL, 1466065286, 1467648441, 'products/products'),
('products/sales', 2, 'Sales management', NULL, NULL, 1472887378, 1472887378, 'products/products'),
('settings', 2, 'Settings management', NULL, NULL, 1467648490, 1467819771, ''),
('settings/brands', 2, 'Brand management', NULL, NULL, 1465308163, 1467648516, 'settings'),
('settings/contact-form-settings/index', 2, 'Contact form settings list', NULL, NULL, 1470330678, 1470330678, 'settings'),
('settings/contact-form-settings/update', 2, 'Contact form settings update', NULL, NULL, 1470330545, 1470330545, 'settings'),
('settings/contact-form-settings/view', 2, 'Contact form settings view', NULL, NULL, 1470330524, 1470330524, 'settings'),
('settings/currencies', 2, 'Currency management', NULL, NULL, 1466605394, 1467648528, 'settings'),
('settings/settings', 2, 'Setting components management', NULL, NULL, 1472991531, 1472991531, 'settings'),
('settings/social-links', 2, 'Social links management', NULL, NULL, 1470214931, 1470214931, 'settings'),
('settings/stocks', 2, 'Stock management', NULL, NULL, 1470330620, 1470330620, 'settings'),
('settings/templates', 2, 'Template management', NULL, NULL, 1465215892, 1467648539, 'settings'),
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
('admin', 'content'),
('admin', 'content/posts'),
('sales_organization', 'customers/customers/index'),
('admin', 'dashboard/default/index'),
('admin', 'i18n'),
('admin', 'permit/access'),
('admin', 'products/categories'),
('admin', 'products/characteristic-groups'),
('admin', 'products/characteristics'),
('admin', 'products/email-settings'),
('admin', 'products/email-templates'),
('admin', 'products/kits'),
('admin', 'products/orders'),
('admin', 'products/payment-types'),
('admin', 'products/products'),
('admin', 'products/sales'),
('employee', 'reports/jobs/create'),
('employee', 'reports/jobs/project-employee'),
('admin', 'settings/brands'),
('admin', 'settings/contact-form-settings/index'),
('admin', 'settings/contact-form-settings/update'),
('admin', 'settings/contact-form-settings/view'),
('admin', 'settings/currencies'),
('admin', 'settings/settings'),
('admin', 'settings/social-links'),
('admin', 'settings/stocks'),
('admin', 'settings/templates'),
('admin', 'users'),
('employee', 'users/users/change-password'),
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
(1, 'Brand 2'),
(2, 'Brand 2'),
(3, 'Royal Canadian Mint'),
(4, 'Umicore'),
(5, 'Kamenogorsk');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `created_at`, `updated_at`, `sort`, `parent_id`, `enabled`, `alias`, `image`) VALUES
(7, 1470559023, 1473688701, 0, NULL, 1, 'bruki-legensy-shorty', NULL),
(10, 1473688680, 1473688680, 2, NULL, 1, 'verhnyaya-odejda', NULL),
(11, 1473688747, 1473688747, 3, NULL, 1, 'kardigany-i-nakidki', NULL),
(12, 1473688782, 1473688804, 4, NULL, 1, 'odejda-dlya-sporta', NULL),
(13, 1473689020, 1473689026, 5, NULL, 1, 'platya-ubki-sarafany', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categorylang`
--

CREATE TABLE IF NOT EXISTS `categorylang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `categorylang`
--

INSERT INTO `categorylang` (`id`, `title`, `category_id`, `language`) VALUES
(13, 'Pants, leggings, shorts', 7, 'en'),
(14, 'Брюки, легенсы, шорты', 7, 'ru'),
(15, 'Брюки, легінси, шорти', 7, 'ua'),
(22, 'Top wear', 10, 'en'),
(23, 'Верхняя одежда', 10, 'ru'),
(24, 'Верхній одяг', 10, 'ua'),
(25, 'Cardigans', 11, 'en'),
(26, 'Кардиганы и накидки', 11, 'ru'),
(27, 'Кардигани', 11, 'ua'),
(28, 'Sport wear', 12, 'en'),
(29, 'Одежда для спорта', 12, 'ru'),
(30, 'Одежа для спорту', 12, 'ua'),
(31, 'Dresses, skirts, tunics', 13, 'en'),
(32, 'Платья, юбки, сарафаны', 13, 'ru'),
(33, 'Сукні, юбки, сарафани', 13, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `characteristic`
--

CREATE TABLE IF NOT EXISTS `characteristic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `characteristic_group_id` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `characteristic`
--

INSERT INTO `characteristic` (`id`, `created_at`, `updated_at`, `characteristic_group_id`, `sort`, `alias`) VALUES
(1, 1470584460, 1472930691, 2, 0, 'jenadin'),
(2, 1470585523, 1472930713, 2, 1, 'jenadin-vesna-leto-2016'),
(3, 1470590178, 1472931073, 2, 2, 'jenadin-osen-zima-2015-2016'),
(7, 1470590378, 1472931081, 2, 3, 'tio'),
(8, 1470590414, 1472931090, 2, 4, 'tio-vesna-leto-2016'),
(9, 1470590512, 1472931093, 2, 5, 'tio-osen-zima-2015-2016'),
(10, 1470590569, 1472931114, 1, 0, 'korichnevyy'),
(11, 1470590590, 1472931115, 1, 1, 'siniy'),
(12, 1470590614, 1472931116, 1, 2, 'seryy'),
(13, 1470590635, 1472931119, 1, 3, 'jeltyy'),
(14, 1470590682, 1472931122, 1, 4, 'oranjevyy'),
(15, 1470590705, 1470592763, 1, 5, ''),
(16, 1470590729, 1470593029, 1, 6, ''),
(17, 1470590766, 1470593030, 1, 7, ''),
(18, 1470590800, 1470593030, 1, 8, ''),
(19, 1470590842, 1470593030, 1, 9, ''),
(20, 1470590874, 1470593030, 1, 10, ''),
(21, 1470590902, 1470592764, 1, 11, ''),
(22, 1470590966, 1470593257, 3, 0, ''),
(23, 1470591194, 1470593257, 3, 1, ''),
(24, 1470591215, 1470593257, 3, 2, ''),
(25, 1470591249, 1470593257, 3, 3, ''),
(26, 1470591267, 1470593257, 3, 4, ''),
(27, 1470591287, 1470593257, 3, 5, ''),
(28, 1470591306, 1470593257, 3, 6, ''),
(29, 1470591345, 1470593257, 3, 7, ''),
(30, 1470591398, 1470593257, 3, 8, ''),
(31, 1470591416, 1470593257, 3, 9, ''),
(32, 1470591435, 1470593257, 3, 10, ''),
(33, 1470591457, 1470593258, 3, 11, ''),
(34, 1470591501, 1470593258, 3, 12, '');

-- --------------------------------------------------------

--
-- Структура таблицы `characteristiclang`
--

CREATE TABLE IF NOT EXISTS `characteristiclang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characteristic_id` int(11) NOT NULL,
  `language` varchar(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `characteristic_group_id` (`characteristic_id`),
  KEY `characteristic_id` (`characteristic_id`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Дамп данных таблицы `characteristiclang`
--

INSERT INTO `characteristiclang` (`id`, `characteristic_id`, `language`, `title`) VALUES
(1, 1, 'en', 'JENADIN'),
(2, 1, 'ru', 'JENADIN'),
(3, 1, 'ua', 'JENADIN'),
(4, 2, 'en', 'Jenadin spring-summer 2016'),
(5, 2, 'ru', 'Jenadin весна-лето 2016'),
(6, 2, 'ua', 'Jenadin весна-літо 2016'),
(7, 3, 'en', 'JENADIN fall-winter 2015-2016'),
(8, 3, 'ru', 'JENADIN осень-зима 2015-2016'),
(9, 3, 'ua', 'JENADIN осінь-зима 2015-2016'),
(13, 7, 'en', 'TIO'),
(14, 7, 'ru', 'TIO'),
(15, 7, 'ua', 'TIO'),
(16, 8, 'en', 'TIO spring-summer 2016'),
(17, 8, 'ru', 'TIO весна-лето 2016'),
(18, 8, 'ua', 'TIO весна-літо 2016'),
(19, 9, 'en', 'TIO fall-winter 2015-2016'),
(20, 9, 'ru', 'TIO осень-зима 2015-2016'),
(21, 9, 'ua', 'TIO осінь-зима 2015-2016'),
(22, 10, 'en', 'brown'),
(23, 10, 'ru', 'коричневый'),
(24, 10, 'ua', 'коричневий'),
(25, 11, 'en', 'blue'),
(26, 11, 'ru', 'синий'),
(27, 11, 'ua', 'синій'),
(28, 12, 'en', 'gray'),
(29, 12, 'ru', 'серый'),
(30, 12, 'ua', 'сірий'),
(31, 13, 'en', 'yellow'),
(32, 13, 'ru', 'желтый'),
(33, 13, 'ua', 'жовтий'),
(34, 14, 'en', 'orange'),
(35, 14, 'ru', 'оранжевый'),
(36, 14, 'ua', 'оранжевий'),
(37, 15, 'en', 'red'),
(38, 15, 'ru', 'красный'),
(39, 15, 'ua', 'червоний'),
(40, 16, 'en', 'pink'),
(41, 16, 'ru', 'розовый'),
(42, 16, 'ua', 'рожевий'),
(43, 17, 'en', 'violet'),
(44, 17, 'ru', 'фиолетовый'),
(45, 17, 'ua', 'фіолетовий'),
(46, 18, 'en', 'green'),
(47, 18, 'ru', 'зеленый'),
(48, 18, 'ua', 'зелений'),
(49, 19, 'en', 'white'),
(50, 19, 'ru', 'белый'),
(51, 19, 'ua', 'білий'),
(52, 20, 'en', 'black'),
(53, 20, 'ru', 'черный'),
(54, 20, 'ua', 'чорний'),
(55, 21, 'en', 'melange'),
(56, 21, 'ru', 'меланж'),
(57, 21, 'ua', 'меланж'),
(58, 22, 'en', '130x160'),
(59, 22, 'ru', '130x160'),
(60, 22, 'ua', '130x160'),
(61, 23, 'en', 'One size'),
(62, 23, 'ru', 'One size'),
(63, 23, 'ua', 'One size'),
(64, 24, 'en', 'XS'),
(65, 24, 'ru', 'XS'),
(66, 24, 'ua', 'XS'),
(67, 25, 'en', 'XS-S'),
(68, 25, 'ru', 'XS-S'),
(69, 25, 'ua', 'XS-S'),
(70, 26, 'en', 'S'),
(71, 26, 'ru', 'S'),
(72, 26, 'ua', 'S'),
(73, 27, 'en', 'S-M'),
(74, 27, 'ru', 'S-M'),
(75, 27, 'ua', 'S-M'),
(76, 28, 'en', 'M'),
(77, 28, 'ru', 'M'),
(78, 28, 'ua', 'M'),
(79, 29, 'en', 'M-L'),
(80, 29, 'ru', 'M-L'),
(81, 29, 'ua', 'M-L'),
(82, 30, 'en', 'L'),
(83, 30, 'ru', 'L'),
(84, 30, 'ua', 'L'),
(85, 31, 'en', 'L-XL'),
(86, 31, 'ru', 'L-XL'),
(87, 31, 'ua', 'L-XL'),
(88, 32, 'en', 'XL'),
(89, 32, 'ru', 'XL'),
(90, 32, 'ua', 'XL'),
(91, 33, 'en', 'XL-XXL'),
(92, 33, 'ru', 'XL-XXL'),
(93, 33, 'ua', 'XL-XXL'),
(94, 34, 'en', 'XXL'),
(95, 34, 'ru', 'XXL'),
(96, 34, 'ua', 'XXL');

-- --------------------------------------------------------

--
-- Структура таблицы `characteristic_group`
--

CREATE TABLE IF NOT EXISTS `characteristic_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `characteristic_group`
--

INSERT INTO `characteristic_group` (`id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 1470572153, 1470589854, 'color'),
(2, 1470572207, 1470589865, 'collection'),
(3, 1470572230, 1470589874, 'size');

-- --------------------------------------------------------

--
-- Структура таблицы `characteristic_grouplang`
--

CREATE TABLE IF NOT EXISTS `characteristic_grouplang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characteristic_group_id` int(11) NOT NULL,
  `language` varchar(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `characteristic_group_id` (`characteristic_group_id`),
  KEY `characteristic_group_id_2` (`characteristic_group_id`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `characteristic_grouplang`
--

INSERT INTO `characteristic_grouplang` (`id`, `characteristic_group_id`, `language`, `title`) VALUES
(1, 1, 'en', 'Color'),
(2, 1, 'ru', 'Цвет'),
(3, 1, 'ua', 'Колір'),
(4, 2, 'en', 'Collection'),
(5, 2, 'ru', 'Коллекция'),
(6, 2, 'ua', 'Колекція'),
(7, 3, 'en', 'Size'),
(8, 3, 'ru', 'Размер'),
(9, 3, 'ua', 'Розмір');

-- --------------------------------------------------------

--
-- Структура таблицы `contact_form_setting`
--

CREATE TABLE IF NOT EXISTS `contact_form_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `contact_form_setting`
--

INSERT INTO `contact_form_setting` (`id`, `to`, `from`, `subject`, `body`) VALUES
(1, 'artemkramov@gmail.com', 'shop@jenadin.com.ua', 'Данные с контактной формы', '<p>From: [CONTACT_FORM_NAME]&nbsp;&lt;[CONTACT_FORM_EMAIL]&gt;</p>\r\n<p>&nbsp;</p>\r\n<p>Message body:</p>\r\n<p>[CONTACT_FORM_MESSAGE]</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_ru` varchar(60) DEFAULT NULL,
  `title_ua` varchar(60) DEFAULT NULL,
  `title_be` varchar(60) DEFAULT NULL,
  `title_en` varchar(60) DEFAULT NULL,
  `title_es` varchar(60) DEFAULT NULL,
  `title_pt` varchar(60) DEFAULT NULL,
  `title_de` varchar(60) DEFAULT NULL,
  `title_fr` varchar(60) DEFAULT NULL,
  `title_it` varchar(60) DEFAULT NULL,
  `title_pl` varchar(60) DEFAULT NULL,
  `title_ja` varchar(60) DEFAULT NULL,
  `title_lt` varchar(60) DEFAULT NULL,
  `title_lv` varchar(60) DEFAULT NULL,
  `title_cz` varchar(60) DEFAULT NULL,
  `iso` varchar(2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=236 ;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `title_ru`, `title_ua`, `title_be`, `title_en`, `title_es`, `title_pt`, `title_de`, `title_fr`, `title_it`, `title_pl`, `title_ja`, `title_lt`, `title_lv`, `title_cz`, `iso`, `currency_id`) VALUES
(1, 'Украина', 'Україна', 'Украіна', 'Ukraine', 'Ucrania', 'Ucrânia', 'Ukraine', 'Ukraine', 'Ucraina', 'Ukraina', 'ウクライナ', 'Ukraina', 'Ukraina', 'Ukrajina', 'ua', 1),
(2, 'Россия', 'Росiя', 'Расея', 'Russia', 'Rusia', 'Rússia', 'Russland', 'Russie', 'Russia', 'Rosja', 'ロシア', 'Rusija', 'Krievija', 'Rusko', 'ru', 2),
(3, 'Беларусь', 'Бiлорусь', 'Беларусь', 'Belarus', 'Bielorrusia', 'Bielorrússia', 'Weißrussland', 'Belorus', 'Bielorussia', 'Białoruś', 'ベラルーシ', 'Baltarusija', 'Baltkrievija', 'Bělorusko', 'by', 2),
(4, 'Казахстан', 'Казахстан', 'Казахстан', 'Kazakhstan', 'Kazajistán', 'Cazaquistão', 'Kasachstan', 'Kazakhstan', 'Kazakistan', 'Kazachstan', 'カザフスタン', 'Kazachstanas', 'Kazahstāna', 'Kazachstán', 'kz', 2),
(5, 'Азербайджан', 'Азербайджан', 'Азэрбайджан', 'Azerbaijan', 'Azerbaiyán', 'Azerbaijão', 'Aserbaidschan', 'Azerbaïdjan', 'Azerbaijan', 'Azerbejdżan', 'アゼルバイジャン', 'Azerbaidžanas', 'Azerbaidžāna', 'Ázerbajdžán', 'az', 2),
(6, 'Армения', 'Вiрменiя', 'Арменія', 'Armenia', 'Armenia', 'Arménia', 'Armenien', 'Arménie', 'Armenia', 'Armenia', 'アルメニア', 'Armėnija', 'Armēnija', 'Arménie', 'am', 2),
(7, 'Грузия', 'Грузiя', 'Грузія', 'Georgia', 'Georgia', 'Geórgia', 'Georgien', 'Géorgie', 'Georgia', 'Gruzja', 'グルジア', 'Gruzija', 'Gruzija', 'Gruzie', 'ge', 2),
(8, 'Израиль', 'Iзраїль', 'Ізраіль', 'Israel', 'Israel', 'Israel', 'Israel', 'Israël', 'Israele', 'Izrael', 'イスラエル', 'Izraelis', 'Izraela', 'Izrael', 'il', 2),
(9, 'США', 'США', 'ЗША', 'USA', 'EE.UU.', 'EUA', 'USA', 'USA', 'Stati Uniti', 'USA', 'アメリカ合衆国', 'JAV', 'ASV', 'USA', 'us', 2),
(10, 'Канада', 'Канада', 'Канада', 'Canada', 'Canadá', 'Canadá', 'Kanada', 'Canada', 'Canada', 'Kanada', 'カナダ', 'Kanada', 'Kanāda', 'Kanada', 'ca', 2),
(11, 'Кыргызстан', 'Киргизстан', 'Кыргызтан', 'Kyrgyzstan', 'Kirguistán', 'Quirguistão', 'Kirgisistan', 'Kirghizstan', 'Kyrgyzstan', 'Kirgistan', 'キルギスタン', 'Kirgizija', 'Kirgizstāna', 'Kyrgyzstán', 'kg', 2),
(12, 'Латвия', 'Латвiя', 'Латвія', 'Latvia', 'Letonia', 'Letónia', 'Lettland', 'Lettonie', 'Lettonia', 'Łotwa', 'ラトヴィア', 'Latvija', 'Latvija', 'Lotyšsko', 'lv', 2),
(13, 'Литва', 'Литва', 'Летува', 'Lithuania', 'Lituania', 'Lituânia', 'Litauen', 'Lituanie', 'Lituania', 'Litwa', 'リトアニア', 'Lietuva', 'Lietuva', 'Litva', 'lt', 2),
(14, 'Эстония', 'Естонiя', 'Эстонія', 'Estonia', 'Estonia', 'Estónia', 'Estland', 'Estonie', 'Estonia', 'Estonia', 'エストニア', 'Estija', 'Igaunija', 'Estonsko', 'ee', 2),
(15, 'Молдова', 'Молдова', 'Малдова', 'Moldova', 'Moldavia', 'Moldávia', 'Moldavien', 'Moldavie', 'Moldavia', 'Mołdawia', 'モルドバ', 'Moldova', 'Moldova', 'Moldavsko', 'md', 2),
(16, 'Таджикистан', 'Таджикистан', 'Таджыкістан', 'Tajikistan', 'Tadjikistán', 'Tadjiquistão', 'Tadschikistan', 'Tadjikistan', 'Tajikistan', 'Tadżykistan', 'タジキスタン', 'Tadžikistanas', 'Tadžikistāna', 'Tádžikistán', 'tj', 2),
(17, 'Туркменистан', 'Туркменістан', 'Туркмэністан', 'Turkmenistan', 'Turkmenistán', 'Turquemenistão', 'Turkmenistan', 'Turkménistan', 'Turkmenistan', 'Turkmenistan', 'トルクメニスタン', 'Turkmėnistanas', 'Turkmenistāna', 'Turkmenistán', 'tm', 2),
(18, 'Узбекистан', 'Узбекистан', 'Узбэкістан', 'Uzbekistan', 'Uzbekistán', 'Uzbequistão', 'Usbekistan', 'Ouzbékistan', 'Uzbekistan', 'Uzbekistan', 'ウズベキスタン', 'Uzbekistanas', 'Uzbekistāna', 'Uzbekistán', 'uz', 2),
(19, 'Австралия', 'Австралiя', 'Аўстралія', 'Australia', 'Australia', 'Austrália', 'Australien', 'Australie', 'Australia', 'Australia', 'オーストラリア', 'Australija', 'Austrālija', 'Austrálie', 'au', 2),
(20, 'Австрия', 'Австрiя', 'Аўстрыя', 'Austria', 'Austria', 'Áustria', 'Österreich', 'Autriche', 'Austria', 'Austria', 'オーストリア', 'Austrija', 'Austrija', 'Rakousko', 'at', 2),
(21, 'Албания', 'Албанiя', 'Альбанія', 'Albania', 'Albania', 'Albânia', 'Albanien', 'Albanie', 'Albania', 'Albania', 'アルバニア', 'Albanija', 'Albānija', 'Albánie', 'al', 2),
(22, 'Алжир', 'Алжир', 'Альжыр', 'Algeria', 'Argelia', 'Argélia', 'Algerien', 'Algérie', 'Algeria', 'Algeria', 'アルジェリア', 'Alžyras', 'Alžīrija', 'Alžírsko', 'dz', 2),
(23, 'Американское Самоа', 'Американське Самоа', 'Амэрыканскае Самоа', 'American Samoa', 'Samoa Americana', 'Samoa Americana', 'Amerikanisch Samoa', 'Samoa américaines', 'Samoa Americana', 'Samoa Amerykańskie', 'アメリカ領サモア', 'Amerikos Samoa', 'Amerikas Samoa', 'Americká Samoa', 'ds', 2),
(24, 'Ангилья', 'Ангілья', 'Анґілья', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'アンギラ', 'Angilija', 'Angilja', 'Anguilla', 'ai', 2),
(25, 'Ангола', 'Ангола', 'Ангола', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'アンゴラ', 'Angola', 'Angola', 'Angola', 'ao', 2),
(26, 'Андорра', 'Андорра', 'Андора', 'Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorre', 'Andorra', 'Andorra', 'アンドラ', 'Andora', 'Andora', 'Andorra', 'ad', 2),
(27, 'Антигуа и Барбуда', 'Антiгуа i Барбуда', 'Антыгуа і Барбуда', 'Antigua and Barbuda', 'Antigua y Barbuda', 'Antígua e Barbuda', 'Antigua und Barbuda', 'Antigua et Barbuda', 'Antigua e Barbuda', 'Antigua i Barbuda', 'アンティグア・バーブーダ', 'Antikva ir Barbuda', 'Antigva un Barbuda', 'Antigua a Barbuda', 'ag', 2),
(28, 'Аргентина', 'Аргентина', 'Аргентына', 'Argentina', 'Argentina', 'Argentina', 'Argentinien', 'Argentine', 'Argentina', 'Argentyna', 'アルゼンチン', 'Argentina', 'Argentīna', 'Argentina', 'ar', 2),
(29, 'Аруба', 'Аруба', 'Аруба', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'アルバ', 'Aruba', 'Aruba', 'Aruba', 'aw', 2),
(30, 'Афганистан', 'Афганiстан', 'Аўганістан', 'Afghanistan', 'Afganistán', 'Afeganistão', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afganistan', 'アフガニスタン', 'Afganistanas', 'Afganistāna', 'Afghánistán', 'af', 2),
(31, 'Багамы', 'Багами', 'Багамы', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahama', 'バハマ', 'Bahamai', 'Bahamu salas', 'Bahamy', 'bs', 2),
(32, 'Бангладеш', 'Бангладеш', 'Бангладэш', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesch', 'Bengladesh', 'Bangladesh', 'Bangladesz', 'バングラディシュ', 'Bangladešas', 'Bangladeša', 'Bangladéš', 'bd', 2),
(33, 'Барбадос', 'Барбадос', 'Барбадос', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbades', 'Barbados', 'Barbados', 'バルバドス', 'Barbadosas', 'Barbadosa', 'Barbados', 'bb', 2),
(34, 'Бахрейн', 'Бахрейн', 'Бахрэйн', 'Bahrain', 'Bahréin', 'Bahrein', 'Bahrain', 'Bahreïn', 'Bahrain', 'Bahrain', 'バーレーン', 'Bahreinas', 'Bahreina', 'Bahrajn', 'bh', 2),
(35, 'Белиз', 'Белiз', 'Бэліз', 'Belize', 'Belice', 'Belize', 'Belize', 'Bélize', 'Belize', 'Belize', 'ベリーズ', 'Belizas', 'Belīza', 'Belize', 'bz', 2),
(36, 'Бельгия', 'Бельгiя', 'Бэльгія', 'Belgium', 'Bélgica', 'Bélgica', 'Belgien', 'Belgique', 'Belgio', 'Belgia', 'ベルギー', 'Belgija', 'Beļģija', 'Belgie', 'be', 2),
(37, 'Бенин', 'Бенiн', 'Бэнін', 'Benin', 'Benín', 'Benin', 'Benin', 'Bénin', 'Benin', 'Benin', 'ベナン', 'Beninas', 'Benīna', 'Benin', 'bj', 2),
(38, 'Бермуды', 'Бермуди', 'Бэрмуды', 'Bermuda', 'Bermudas', 'Bermudas', 'Bermudas', 'Bermudes', 'Bermuda', 'Bermudy', 'バミューダ', 'Bermudai', 'Bermudu salas', 'Bermudské ostrovy', 'bm', 2),
(39, 'Болгария', 'Болгарiя', 'Баўгарыя', 'Bulgaria', 'Bulgaria', 'Bulgária', 'Bulgarien', 'Bulgarie', 'Bulgaria', 'Bułgaria', 'ブルガリア', 'Bulgarija', 'Bulgārija', 'Bulharsko', 'bg', 2),
(40, 'Боливия', 'Болiвiя', 'Балівія', 'Bolivia', 'Bolivia', 'Bolívia', 'Bolivien', 'Bolivie', 'Bolivia', 'Boliwia', 'ボリビア', 'Bolivija', 'Bolīvija', 'Bolívie', 'bo', 2),
(41, 'Босния и Герцеговина', 'Боснiя i Герцеговина', 'Босьнія й Герцаґавіна', 'Bosnia and Herzegovina', 'Bosnia y Herzegovina', 'Bósnia e Herzegovina', 'Bosnien-Herzegowina', 'Bosnie Herzégovine', 'Bosnia Herzegovina', 'Bośnia and Herzegowina', 'ボスニア・ヘルツェゴビナ', 'Bosnija ir Hercegovina', 'Bosnija un Hercogovīna', 'Bosna a Hercegovina', 'ba', 2),
(42, 'Ботсвана', 'Ботсвана', 'Батсвана', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'ボツワナ', 'Botsvana', 'Botstvana', 'Botswana', 'bw', 2),
(43, 'Бразилия', 'Бразилiя', 'Бразылія', 'Brazil', 'Brasil', 'Brasil', 'Brasilien', 'Brésil', 'Brasile', 'Brazylia', 'ブラジル', 'Brazilija', 'Brazīlija', 'Brazílie', 'br', 2),
(44, 'Бруней-Даруссалам', 'Бруней-Дарусалам', 'Брунэй-Дарусалам', 'Brunei Darussalam', 'Brunéi', 'Brunei Darussalam', 'Brunei Darussalam', 'Bruneï', 'Brunei Darussalam', 'Brunei', 'ブルネイ・ダルサラーム', 'Brunėjaus Dar Es Salamas', 'Bruneja', 'Brunej', 'bn', 2),
(45, 'Буркина-Фасо', 'Буркина-Фасо', 'Буркіна-Фасо', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'ブルキナファソ', 'Burkina Faso', 'Burkinafaso', 'Burkina Faso', 'bf', 2),
(46, 'Бурунди', 'Бурундi', 'Бурундзі', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'ブルンジ', 'Burundis', 'Burundi', 'Burundi', 'bi', 2),
(47, 'Бутан', 'Бутан', 'Бутан', 'Bhutan', 'Bután', 'Butão', 'Bhutan', 'Bouthan', 'Bhutan', 'Bhutan', 'ブータン', 'Butanas', 'Butāna', 'Bhútán', 'bt', 2),
(48, 'Вануату', 'Вануату', 'Вануату', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'バヌアツ', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'vu', 2),
(49, 'Великобритания', 'Великобританiя', 'Вялікабрытанія', 'United Kingdom', 'Gran Bretaña', 'Reino Unido', 'Großbritannien', 'Grande-Bretagne', 'Regno Unito', 'Wielka Brytania', 'イギリス', 'Didžioji Britanija', 'Apvienotā Karaliste', 'Velká Británie', 'gb', 2),
(50, 'Венгрия', 'Угорщина', 'Вугоршчына', 'Hungary', 'Hungría', 'Hungria', 'Ungarn', 'Hongrie', 'Ungheria', 'Węgry', 'ハンガリー', 'Vengrija', 'Ungārija', 'Maďarsko', 'hu', 2),
(51, 'Венесуэла', 'Венесуела', 'Вэнэсуэла', 'Venezuela', 'Venezuela', 'Venezuela', 'Venezuela', 'Vénézuela', 'Venezuela', 'Wenezuela', 'ベネズエラ', 'Venesuela', 'Venesuela', 'Venezuela', 've', 2),
(52, 'Виргинские острова, Британские', 'Вiргiнськi острови, Британськi', 'Віргінскія выспы, Брытанскія', 'British Virgin Islands', 'Islas Vírgenes Británicas', 'Ilhas Virgens Britânicas', 'Britische Jungferninseln', 'Iles Vierges Britanniques', 'Isole Virgin Britanniche', 'Brytyjskie Wyspy Dziewicze', 'イギリス領ヴァージン諸島', 'Mergelių salos, Didžioji Britanija', 'Virdžīnijas salas, Apvienotā Karaliste', 'Britské Panenské ostrovy', 'vg', 2),
(53, 'Виргинские острова, США', 'Вiргiнськi острови, США', 'Віргінскія выспы, ЗША', 'US Virgin Islands', 'Islas Virginia (EE.UU.)', 'Ilhas Virgens Americanas', 'US Jungferninseln', 'Iles Vierges Américaines', 'Isole Virgin degli Stati Uniti', 'Amerykańskie Wyspy Dziewicze', 'アメリカ領ヴァージン諸島', 'Mergelių salos, JAV', 'Virdžīnijas salas, ASV', 'Americké Panenské ostrovy', 'vi', 2),
(54, 'Восточный Тимор', 'Схiдний Тимор', 'Усходні Тымор', 'East Timor', 'Timor Oriental', 'Timor-Leste', 'Ost Timor', 'Timor oriental', 'Timor Est', 'Wschodni Timor', '東ティモール', 'Rytų Timoras', 'Austrumu Timora', 'Východní Timor', 'tp', 2),
(55, 'Вьетнам', 'В''єтнам', 'Віетнам', 'Vietnam', 'Vietnam', 'Vietname', 'Vietnam', 'Vietnam', 'Vietnam', 'Wietnam', 'ヴェトナム', 'Vietnamas', 'Vjetnama', 'Vietnam', 'vn', 2),
(56, 'Габон', 'Габон', 'Габон', 'Gabon', 'Gabón', 'Gabão', 'Gabon', 'Gabon', 'Gabon', 'Gabon', 'ガボン', 'Gabonas', 'Gabona', 'Gabon', 'ga', 2),
(57, 'Гаити', 'Гаїтi', 'Гаіці', 'Haiti', 'Haití', 'Haiti', 'Haiti', 'Haïti', 'Haiti', 'Haiti', 'ハイチ', 'Haitis', 'Haiti', 'Haiti', 'ht', 2),
(58, 'Гайана', 'Гайана', 'Гаяна', 'Guyana', 'Guyana', 'Guiana', 'Guyana', 'Guyana', 'Guyana', 'Gujana', 'ガイアナ', 'Gajana', 'Gajana', 'Guyana', 'gy', 2),
(59, 'Гамбия', 'Гамбiя', 'Гамбія', 'Gambia', 'Gambia', 'Gâmbia', 'Gambia', 'Gambie', 'Gambia', 'Gambia', 'ガンビア', 'Gambija', 'Gambija', 'Gambie', 'gm', 2),
(60, 'Гана', 'Гана', 'Гана', 'Ghana', 'Ghana', 'Gana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', 'ガーナ', 'Gana', 'Gana', 'Ghana', 'gh', 2),
(61, 'Гваделупа', 'Гваделупа', 'Ґўадэлюпа', 'Guadeloupe', 'Guadalupe (Francia)', 'Guadalupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupa', 'グアドループ', 'Gvadelupa', 'Gvadelupa', 'Guadeloupe', 'gp', 2),
(62, 'Гватемала', 'Гватемала', 'Гватэмала', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'グアテマラ', 'Gvatemala', 'Gvatemala', 'Guatemala', 'gt', 2),
(63, 'Гвинея', 'Гвiнея', 'Гвінэя', 'Guinea', 'Guinea', 'Guiné', 'Guinea', 'Guinée', 'Guinea', 'Gwinea', 'ギニア', 'Gvinėja', 'Gvineja', 'Guinea', 'gn', 2),
(64, 'Гвинея-Бисау', 'Гвiнея-Бiсау', 'Гвінэя-Бісава', 'Guinea-Bissau', 'Guinea-Bissau', 'Guiné-Bissau', 'Guinea-Bissau', 'Guinée Bissau', 'Guinea-Bissau', 'Gwinea-Bissau', 'ギニア・ビサウ', 'Gvinėja Bisau', 'Gvineja-Bisava', 'Guinea-Bissau', 'gw', 2),
(65, 'Германия', 'Нiмеччина', 'Нямеччына', 'Germany', 'Alemania', 'Alemanha', 'Deutschland', 'Allemagne', 'Germania', 'Niemcy', 'ドイツ', 'Vokietija', 'Vācija', 'Německo', 'de', 2),
(66, 'Гибралтар', 'Гiбралтар', 'Гібралтар', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibilterra', 'Gibraltar', 'ジブラルタル', 'Gibraltaras', 'Gibraltāra', 'Gibraltar', 'gi', 2),
(67, 'Гондурас', 'Гондурас', 'Гандурас', 'Honduras', 'Honduras', 'Gordura', 'Honduras', 'Honduras', 'Honduras', 'Honduras', 'ホンジュラス', 'Hondūras', 'Gondurasa', 'Honduras', 'hn', 2),
(68, 'Гонконг', 'Гонконг', 'Ганконг', 'Hong Kong', 'Hong Kong', 'Hong Kong', 'Hong Kong', 'Hong Kong', 'Hong Kong', 'Hong Kong', '香港', 'Honkongas', 'Gonkonga', 'Hongkong', 'hk', 2),
(69, 'Гренада', 'Гренада', 'Грэнада', 'Grenada', 'Granada', 'Granada', 'Grenada', 'Grenade', 'Grenada', 'Grenada', 'グレナダ', 'Grenada', 'Granāda', 'Grenada', 'gd', 2),
(70, 'Гренландия', 'Гренландiя', 'Грэнляндыя', 'Greenland', 'Groenlandia', 'Gronelândia<br>', 'Grönland', 'Groenland', 'Groenlandia', 'Grenlandia', 'グリーンランド', 'Grenlandija', 'Grenlande', 'Grónsko', 'gl', 2),
(71, 'Греция', 'Грецiя', 'Грэцыя', 'Greece', 'Grecia', 'Grécia', 'Griechenland', 'Grèce', 'Grecia', 'Grecja', 'ギリシャ', 'Graikija', 'Grieķija', 'Řecko', 'gr', 2),
(72, 'Гуам', 'Гуам', 'Гуам', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'グアム', 'Guamas', 'Guama', 'Guam', 'gu', 2),
(73, 'Дания', 'Данiя', 'Данія', 'Denmark', 'Dinamarca', 'Dinamarca', 'Dänemark', 'Danemark', 'Danimarca', 'Dania', 'デンマーク', 'Danija', 'Dānija', 'Dánsko', 'dk', 2),
(74, 'Доминика', 'Домiнiка', 'Дамініка', 'Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominique', 'Dominica', 'Dominika', 'ドミニカ', 'Dominika', 'Dominika', 'Dominika', 'dm', 2),
(75, 'Доминиканская Республика', 'Домiнiканська Республiка', 'Дамініканская Рэспубліка', 'Dominican Republic', 'República Dominicana', 'República Dominicana', 'Dominikanische Republik', 'République dominicaine', 'Repubblica Domenicana', 'Dominikana', 'ドミニカ共和国', 'Dominikos Respublika', 'Dominikānas Republika', 'Dominikánská republika', 'do', 2),
(76, 'Египет', 'Єгипет', 'Эгіпэт', 'Egypt', 'Egipto', 'Egito', 'Ägypten', 'Egypte', 'Egitto', 'Egipt', 'エジプト', 'Egiptas', 'Ēģipte', 'Egypt', 'eg', 2),
(77, 'Замбия', 'Замбiя', 'Замбія', 'Zambia', 'Zambia', 'Zâmbia', 'Sambia', 'Zambie', 'Egitto', 'Zambia', 'ザンビア', 'Zambija', 'Zambija', 'Zambie', 'zm', 2),
(78, 'Западная Сахара', 'Захiдна Сахара', 'Заходняя Сахара', 'Western Sahara', 'Sáhara Occidental', 'Saara Ocidental', 'Westsahara', 'Sahara occidental', 'Sahara Occidentale', 'Sahara Zachodnia', '西サハラ', 'Vakarų Sachara', 'Rietumsahāra', 'Západní Sahara', 'eh', 2),
(79, 'Зимбабве', 'Зiмбабве', 'Зімбабвэ', 'Zimbabwe', 'Zimbabue', 'Zimbabwe', 'Simbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'ジンバブエ', 'Zimbabvė', 'Zimbabve', 'Zimbabwe', 'zw', 2),
(80, 'Индия', 'Iндiя', 'Індыя', 'India', 'India', 'Índia', 'Indien', 'Inde', 'India', 'Indie', 'インド', 'Indija', 'Indija', 'Indie', 'in', 2),
(81, 'Индонезия', 'Iндонезiя', 'Інданэзія', 'Indonesia', 'Indonesia', 'Indonésia', 'Indonesien', 'Indonésie', 'Indonesia', 'Indonezja', 'インドネシア', 'Indonezija', 'Indonēzija', 'Indonésie', 'id', 2),
(82, 'Иордания', 'Йорданiя', 'Іярданія', 'Jordan', 'Jordania', 'Jordânia', 'Jordanien', 'Jordanie', 'Giordania', 'Jordania', 'ヨルダン', 'Jordanija', 'Jordānija', 'Jordánsko', 'jo', 2),
(83, 'Ирак', 'Iрак', 'Ірак', 'Iraq', 'Irak', 'Iraque', 'Irak', 'Irak', 'Iraq', 'Irak', 'イラク', 'Irakas', 'Irāka', 'Irák', 'iq', 2),
(84, 'Иран', 'Iран', 'Іран', 'Iran', 'Irán', 'Irão', 'Iran', 'Iran', 'Iran', 'Iran', 'イラン', 'Iranas', 'Irāna', 'Írán', '', 2),
(85, 'Ирландия', 'Iрландiя', 'Ірляндыя', 'Ireland', 'Irlanda', 'Irlanda', 'Irland', 'Irlande', 'Irlanda', 'Irlandia', 'アイルランド', 'Airija', 'Īrija', 'Irsko', 'ie', 2),
(86, 'Исландия', 'Iсландiя', 'Ісьляндыя', 'Iceland', 'Islandia', 'Islândia', 'Island', 'Islande', 'Islanda', 'Islandia', 'アイスランド', 'Islandija', 'Īslande', 'Island', 'is', 2),
(87, 'Испания', 'Iспанiя', 'Гішпанія', 'Spain', 'España', 'Espanha', 'Spanien', 'Espagne', 'Spagna', 'Hiszpania', 'スペイン', 'Ispanija', 'Spānija', 'Španělsko', 'es', 2),
(88, 'Италия', 'Iталiя', 'Італія', 'Italy', 'Italia', 'Itália', 'Italien', 'Italie', 'Italia', 'Włochy', 'イタリア', 'Italija', 'Itālija', 'Itálie', 'it', 2),
(89, 'Йемен', 'Йемен', 'Емэн', 'Yemen', 'Yemen', 'Iémen', 'Jemen', 'Yémen', 'Yemen', 'Jemen', 'イエメン', 'Jemenas', 'Jemena', 'Jemen', 'ye', 2),
(90, 'Кабо-Верде', 'Кабо-Верде', 'Каба-Вэрдэ', 'Cape Verde', 'Cabo Verde', 'Cabo Verde', 'Kap Verde', 'Cap Vert', 'Cabo Verde', 'Cape Verde', 'カーボベルデ', 'Žaliasis Kyšulys', 'Kaboverde', 'Kapverdy', 'cv', 2),
(91, 'Камбоджа', 'Камбоджа', 'Камбоджа', 'Cambodia', 'Camboya', 'Camboja', 'Kambodscha', 'Cambodge', 'Cambogia', 'Kambodża', 'カンボジア', 'Kambodža', 'Kambodža', 'Kambodža', 'kh', 2),
(92, 'Камерун', 'Камерун', 'Камэрун', 'Cameroon', 'Camerún', 'Camarões', 'Kamerun', 'Cameroun', 'Camerun', 'Kamerun', 'カメルーン', 'Kamerūnas', 'Kameruna', 'Kamerun', 'cm', 2),
(93, 'Катар', 'Катар', 'Катар', 'Qatar', 'Qatar', 'Qatar', 'Katar', 'Qatar', 'Qatar', 'Katar', 'カタール', 'Kataras', 'Katāra', 'Katar', 'qa', 2),
(94, 'Кения', 'Кенiя', 'Кенія', 'Kenya', 'Kenia', 'Quénia', 'Kenia', 'Kenya', 'Kenia', 'Kenia', 'ケニア', 'Kenija', 'Kēnija', 'Keňa', 'ke', 2),
(95, 'Кипр', 'Кiпр', 'Кіпар', 'Cyprus', 'Chipre', 'Chipre', 'Zypern', 'Chypre', 'Cipro', 'Cypr', 'キプロス', 'Kipras', 'Kipra', 'Kypr', 'cy', 2),
(96, 'Кирибати', 'Кiрiбатi', 'Кірыбаты', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'キリバス', 'Kiribatis', 'Ķiribati', 'Kiribati', 'ki', 2),
(97, 'Китай', 'Китай', 'Кітай', 'China', 'China', 'China', 'China', 'Chine', 'Cina', 'Chiny', '中国', 'Kinija', 'Ķīna', 'Čína', 'cn', 2),
(98, 'Колумбия', 'Колумбiя', 'Калюмбія', 'Colombia', 'Colombia', 'Colômbia', 'Kolumbien', 'Colombie', 'Colombia', 'Kolumbia', 'コロンビア', 'Kolumbija', 'Kolumbija', 'Kolumbie', 'co', 2),
(99, 'Коморы', 'Комори', 'Каморы', 'Comoros', 'Comoras', 'Comores', 'Komoren', 'Comores', 'Comoros', 'Komory', 'コモロ諸島', 'Komorai', 'Komoru salas', 'Komory', 'km', 2),
(100, 'Конго', 'Конго', 'Конга', 'Congo', 'Congo', 'Congo', 'Kongo', 'Congo', 'Congo', 'Kongo', 'コンゴ', 'Kongas', 'Kongo', 'Kongo (Brazzaville)', 'cg', 2),
(101, 'Конго, демократическая республика', 'Конго, демократична республiка', 'Конга, дэмакратычная рэспубліка', 'Congo, Democratic Republic', 'República Democrática del Congo', 'República Democrática do Congo', 'Kongo, Demokratische Republik', 'République démocratique du Congo', 'Congo, Repubblica Democratica', 'Demokratyczna Republika Konga', 'コンゴ民主共和国', 'Kongo Demokratinė Respublika', 'Kongo Demokrātiskā Republika', 'Demokratická republika Kongo', 'cd', 2),
(102, 'Коста-Рика', 'Коста-Рiка', 'Коста-Рыка', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'コスタリカ', 'Kosta Rika', 'Kostarika', 'Kostarika', 'cr', 2),
(103, 'Кот д`Ивуар', 'Кот-д''iвуар', 'Кот д`Івуар', 'Côte d`Ivoire', 'Costa de Marfil', 'Costa do Marfim', 'Elfenbeinküste', 'Côte d''Ivoire', 'Costa d''Avorio', 'Wybrzeże Kości Słoniowej', 'コートジボアール', 'Dramblio Kaulo Krantas', 'Kotdivuāra', 'Pobřeží slonoviny', 'ci', 2),
(104, 'Куба', 'Куба', 'Куба', 'Cuba', 'Cuba', 'Cuba', 'Kuba', 'Cuba', 'Cuba', 'Kuba', 'キューバ', 'Kuba', 'Kuba', 'Kuba', 'cu', 2),
(105, 'Кувейт', 'Кувейт', 'Кувэйт', 'Kuwait', 'Kuwait', 'Kuwait<br>', 'Kuwait', 'Koweït', 'Kuwait', 'Kuwejt', 'クウェート', 'Kuveitas', 'Kuveita', 'Kuvajt', 'kw', 2),
(106, 'Лаос', 'Лаос', 'Ляос', 'Laos', 'Laos', 'Laos', 'Laos', 'Laos', 'Laos', 'Laos', 'ラオス', 'Laosas', 'Laosa', 'Laos', 'la', 2),
(107, 'Лесото', 'Лесото', 'Лесота', 'Lesotho', 'Lesoto', 'Lesoto', 'Lesotho', 'Leshoto', 'Lesotho', 'Lesotho', 'レソト', 'Lesotas', 'Lesoto', 'Lesotho', 'ls', 2),
(108, 'Либерия', 'Лiберiя', 'Лібэрыя', 'Liberia', 'Liberia', 'Libéria', 'Liberia', 'Libéria', 'Liberia', 'Liberia', 'リベリア', 'Liberija', 'Libērija', 'Libérie', 'lr', 2),
(109, 'Ливан', 'Лiван', 'Лібан', 'Lebanon', 'Líbano', 'Líbano', 'Libanon', 'Liban', 'Libano', 'Liban', 'レバノン', 'Libanas', 'Livāna', 'Libanon', 'lb', 2),
(110, 'Ливия', 'Лiвiя', 'Лібія', 'Libya', 'Libia', 'Líbia', 'Libyen', 'Lybie', 'Libia', 'Libia', 'リビア', 'Libija ', 'Lībija', 'Lybie', 'ly', 2),
(111, 'Лихтенштейн', 'Лiхтенштейн', 'Ліхтэнштайн', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'リヒテンシュタイン', 'Lichtenšteinas', 'Lihtenšteina', 'Lichtenštejnsko', 'li', 2),
(112, 'Люксембург', 'Люксембург', 'Люксэмбург', 'Luxembourg', 'Luxemburgo', 'Luxemburgo', 'Luxemburg', 'Luxembourg', 'Lussemburgo', 'Luxembourg', 'ルクセンブルク', 'Liuksemburgas', 'Luksemburga', 'Lucembursko', 'lu', 2),
(113, 'Маврикий', 'Маврикiй', 'Маўрыцы', 'Mauritius', 'Mauricio', 'Maurícia', 'Mauritius', 'Maurice', 'Mauritius', 'Mauritius', 'モーリシャス', 'Mauricijus', 'Mavrikija', 'Mauricius', 'mu', 2),
(114, 'Мавритания', 'Мавританiя', 'Маўрытанія', 'Mauritania', 'Mauritania', 'Mauritânia', 'Mauretanien', 'Mauritanie', 'Mauritania', 'Mauretania', 'モーリタニア', 'Mauritanija', 'Mavritānija', 'Mauritánie', 'mr', 2),
(115, 'Мадагаскар', 'Мадагаскар', 'Мадагаскар', 'Madagascar', 'Madagascar', 'Madagáscar', 'Madagaskar', 'Madagascar', 'Madagascar', 'Madagaskar', 'マダガスカル', 'Madagaskaras', 'Madagaskāra', 'Madagaskar', 'mg', 2),
(116, 'Макао', 'Макао', 'Макаа', 'Macau', 'Macao', 'Macau', 'Macao', 'Macao', 'Macao', 'Makao', 'マカオ', 'Macao', 'Makao', 'Macao', 'mo', 2),
(117, 'Македония', 'Македонiя', 'Македонія', 'Macedonia', 'Macedonia', 'Macedónia', 'Mazedonien', 'Macédoine', 'Macedonia', 'Macedonia', 'マケドニア', 'Makedonija', 'Makedonija', 'Makedonie', 'mk', 2),
(118, 'Малави', 'Малавi', 'Малаві', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'マラウィ', 'Malavis<br>', 'Malavi', 'Malawi', 'mw', 2),
(119, 'Малайзия', 'Малайзiя', 'Малайзія', 'Malaysia', 'Malasia', 'Malásia', 'Malaysia', 'Malaisie', 'Malesia', 'Malezja', 'マレーシア', 'Malaizija', 'Malaizija', 'Malajsie', 'my', 2),
(120, 'Мали', 'Малi', 'Малі', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'マリ', 'Malis', 'Mali', 'Mali', 'ml', 2),
(121, 'Мальдивы', 'Мальдiви', 'Мальдывы', 'Maldives', 'Maldivas', 'Maldivas', 'Malediven', 'Maldives', 'Maldive', 'Malediwy', 'モルジブ', 'Maldyvai', 'Maldīvas', 'Maledivy', 'mv', 2),
(122, 'Мальта', 'Мальта', 'Мальта', 'Malta', 'Malta', 'Malta', 'Malta', 'Malte', 'Malta', 'Malta', 'マルタ', 'Malta', 'Malta', 'Malta', 'mt', 2),
(123, 'Марокко', 'Марокко', 'Марока', 'Morocco', 'Marruecos', 'Marrocos', 'Marokko', 'Maroc', 'Marocco', 'Maroko', 'モロッコ', 'Marokas', 'Maroka', 'Maroko', 'ma', 2),
(124, 'Мартиника', 'Мартинiка', 'Мартыніка', 'Martinique', 'Martinica', 'Martinica', 'Martinique', 'Martinique', 'Martinique', 'Martynika', 'マルティニク', 'Martinika', 'Martinika', 'Martinik', 'mq', 2),
(125, 'Маршалловы Острова', 'Маршаловi острови', 'Маршалавыя Выспы', 'Marshall Islands', 'Islas Marshall', 'Ilhas Marshall', 'Marshallinseln', 'Iles Marshall', 'Isole Marshall', 'Wyspy Marshalla', 'マーシャル諸島', 'Maršalų salos', 'Maršalu salas', 'Marhallovy ostrovy', 'mh', 2),
(126, 'Мексика', 'Мексика', 'Мэксыка', 'Mexico', 'México', 'México', 'Mexiko', 'Mexique', 'Messico', 'Meksyk', 'メキシコ', 'Meksika', 'Meksika', 'Mexiko', 'mx', 2),
(127, 'Микронезия, федеративные штаты', 'Мiкронезiя, федеративнi штати', 'Мікранэзія, фэдэратыўныя штаты', 'Micronesia', 'Estados Federados de Micronesia', 'Micronésia', 'Mikronesien', 'Etats fédérés de Micronésie', 'Micronesia', 'Mikronezja', 'ミクロネシア連邦', 'Mikronezijos Federacinės Valstijos', 'Mikronēzija', 'Mikronésie', 'fm', 2),
(128, 'Мозамбик', 'Мозамбiк', 'Мазамбік', 'Mozambique', 'Mozambique', 'Moçambique', 'Mosambik', 'Mozambique', 'Mozambico', 'Mozambik', 'モザンビーク', 'Mozambikas', 'Mozambika', 'Mosambik', 'mz', 2),
(129, 'Монако', 'Монако', 'Манака', 'Monaco', 'Mónaco', 'Mónaco', 'Monaco', 'Monaco', 'Monaco', 'Monako', 'モナコ', 'Monakas', 'Monako', 'Monako', 'mc', 2),
(130, 'Монголия', 'Монголiя', 'Манголія', 'Mongolia', 'Mongolia', 'Mongólia', 'Mongolei', 'Mongolie', 'Mongolia', 'Mongolia', 'モンゴル', 'Mongolija', 'Mongolija', 'Mongolsko', 'mn', 2),
(131, 'Монтсеррат', 'Монтсеррат', 'Мантсэрат', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'モントセラト', 'Monseratas', 'Montserrata', 'Montserrat', 'ms', 2),
(132, 'Мьянма', 'М''янма', 'М''янма', 'Myanmar', 'Birmania', 'Mianmar', 'Myanmar', 'Birmanie', 'Myanmar', 'Birma', 'ミャンマー', 'Birma', 'Mjanma', 'Myanmar', 'mm', 2),
(133, 'Намибия', 'Намiбiя', 'Намібія', 'Namibia', 'Namibia', 'Namíbia', 'Namibia', 'Namibie', 'Namibia', 'Namibia', 'ナミビア', 'Namibija', 'Namībija', 'Namibie', 'na', 2),
(134, 'Науру', 'Науру', 'Навуру', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'ナウル', 'Nauru', 'Nauru', 'Nauru', 'nr', 2),
(135, 'Непал', 'Непал', 'Нэпал', 'Nepal', 'Nepal', 'Nepal', 'Nepal', 'Népal', 'Nepal', 'Nepal', 'ネパール', 'Nepalas', 'Nepāla', 'Nepál', 'np', 2),
(136, 'Нигер', 'Нiгер', 'Нігер', 'Niger', 'Níger', 'Níger', 'Niger', 'Niger', 'Niger', 'Niger', 'ニジェール', 'Nigeris', 'Nigera', 'Niger', 'ne', 2),
(137, 'Нигерия', 'Нiгерiя', 'Нігерыя', 'Nigeria', 'Nigeria', 'Nigéria', 'Nigeria', 'Nigéria', 'Nigeria', 'Nigeria', 'ナイジェリア', 'Nigerija', 'Nigērija', 'Nigérie', 'ng', 2),
(138, 'Кюрасао', 'Кюрасао', 'Кюрасаа', 'Curaçao', 'Antillas Holandesas', 'Curaçao', 'Niederländische Antillen', 'Antilles Néerlandaises', 'Antille Olandesi', 'Curacao', 'キュラソー島', 'Kiurasao ', 'Nīderlandes Antilas', 'Curaçao', 'cw', 2),
(139, 'Нидерланды', 'Нiдерланди', 'Нідэрлянды', 'Netherlands', 'Holanda', 'Países Baixos', 'Niederlande', 'Pays-Bas', 'Olanda', 'Holandia', 'オランダ', 'Nyderlandai', 'Nīderlande', 'Nizozemsko', 'nl', 2),
(140, 'Никарагуа', 'Нiкарагуа', 'Нікарагуа', 'Nicaragua', 'Nicaragua', 'Nicarágua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nikaragua', 'ニカラグア', 'Nikaragva', 'Nikaragva', 'Nikaragua', 'ni', 2),
(141, 'Ниуэ', 'Нiуе', 'Нівуэ', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'ニウエ', 'Niue<br>', 'Niue', 'Niue', 'nu', 2),
(142, 'Новая Зеландия', 'Нова Зеландiя', 'Новая Зэляндыя', 'New Zealand', 'Nueva Zelanda', 'Nova Zelândia', 'Neuseeland', 'Nouvelle Zélande', 'Nuova Zelanda', 'Nowa Zelandia', 'ニュージーランド', 'Naujoji Zelandija', 'Jaunzelande', 'Nový Zéland', 'nz', 2),
(143, 'Новая Каледония', 'Нова Каледонiя', 'Новая Каледонія', 'New Caledonia', 'Nueva Caledonia', 'Nova Caledónia', 'Neukaledonien', 'Nouvelle Calédonie', 'Nuova Caledonia', 'Nowa Kaledonia', 'ニューカレドニア', 'Naujoji Kaledonija', 'Jaunkaledonija', 'Nová Kaledonie', 'nc', 2),
(144, 'Норвегия', 'Норвегiя', 'Нарвэгія', 'Norway', 'Noruega', 'Noruega', 'Norwegen', 'Norvège', 'Norvegia', 'Norwegia', 'ノルウェー', 'Norvegija', 'Norvēģija', 'Norsko', 'no', 2),
(145, 'Объединенные Арабские Эмираты', 'Об''єднанi Арабськi Емiрати', 'Аб''яднаныя Арабскія Эміраты', 'United Arab Emirates', 'Emiratos Árabes Unidos', 'Emirados Árabes Unidos', 'Vereinigte Arabische Emirate', 'Emirats Arabes Unis', 'Emirati Arabi Uniti', 'Zjednoczone Emiraty Arabskie', 'アラブ首長国連邦', 'Jungtiniai Arabų Emyratai', 'Apvienotie Arābu Emirati', 'Spojené arabské emiráty', 'ae', 2),
(146, 'Оман', 'Оман', 'Аман', 'Oman', 'Omán', 'Omã', 'Oman', 'Oman', 'Oman', 'Oman', 'オマーン', 'Omanas', 'Omāna', 'Omán', 'om', 2),
(147, 'Остров Мэн', 'Острiв Мен', 'Выспа Мэн', 'Isle of Man', 'Islas Man', 'Ilha de Man', 'Insel Man', 'Ile de Man', 'Isola di Man', 'Isle of Man', 'マン島', 'Meno sala', 'Mēna', 'Ostrov Man', 'im', 2),
(148, 'Остров Норфолк', 'Острiв Норфолк', 'Выспа Норфалк', 'Norfolk Island', 'Islas Norfolk', 'Ilha Norfolk', 'Norfolkinsel', 'Ile Norfolk', 'Isola di Norfolk', 'Wyspa Norfolk', 'ノーフォーク諸島', 'Norfolko sala', 'Norfolka', 'Ostrov Norfolk', 'nf', 2),
(149, 'Острова Кайман', 'Острови Кайман', 'Выспы Кайман', 'Cayman Islands', 'Islas Caimán', 'Ilhas Caimão', 'Kaimaninseln', 'Iles Caïman', 'Isole Cayman', 'Kajmany', 'ケイマン諸島', 'Kaimanų salos', 'Kaimana salas', 'Kajmanské ostrovy', 'ky', 2),
(150, 'Острова Кука', 'Острови Кука', 'Выспы Кука', 'Cook Islands', 'Islas Cook', 'Ilha Cook', 'Cook-Inseln', 'Iles Cook', 'Isole Cook', 'Wyspy Cooka', 'クック諸島', 'Kuko salos', 'Kūka salas', 'Cookovy ostrovy', 'ck', 2),
(151, 'Острова Теркс и Кайкос', 'Острови Теркс i Кайкос', 'Выспы Тэркс і Кайкос', 'Turks and Caicos Islands', 'Islas Turcas y Caicos', 'Ilhas Turcas e Caicos', 'Turks- und Caicos Inseln', 'Iles Turques et Caïques', 'Isole Turks e Caicos', 'Turks i Caicos', 'タークス・カイコス諸島', 'Terkso ir Kaikoso salos', 'Tērksas un Kaikosas', 'Ostrovy Turks a Caicos', 'tc', 2),
(152, 'Пакистан', 'Пакистан', 'Пакістан', 'Pakistan', 'Pakistán', 'Paquistão', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'パキスタン', 'Pakistanas', 'Pakistāna', 'Pákistán', 'pk', 2),
(153, 'Палау', 'Палау', 'Палаў', 'Palau', 'Palaos', 'Palau', 'Palau', 'Palaos', 'Palau', 'Palau', 'パラウ', 'Palau', 'Palava', 'Palau', 'pw', 2),
(154, 'Палестинская автономия', 'Палестинська автономiя', 'Палестынская аўтаномія', 'Palestine', 'Palestina', 'Autoridade Nacional Palestiniana', 'Palestina', 'Palestine', 'ANP', 'Palestyna', 'パレスティナ自治区', 'Palestinos teritorija', 'Palestīnas autonomija', 'Palestina', 'ps', 2),
(155, 'Панама', 'Панама', 'Панама', 'Panama', 'Panamá', 'Panamá', 'Panama', 'Panama', 'Panama', 'Panama', 'パナマ', 'Panama', 'Panama', 'Panama', 'pa', 2),
(156, 'Папуа - Новая Гвинея', 'Папуа - Нова Гвiнея', 'Папуа - Новая Ґвінэя', 'Papua New Guinea', 'Papúa Nueva Guinea', 'Papua-Nova Guiné', 'Papua-Neuguinea', 'Papouasie-Nouvelle Guinée', 'Papua Nuova Guinea', 'Papua Nowa Gwinea', 'パプア・ニューギニア', 'Papua - Naujoji Gvinėja', 'Papua Jaungvineja', 'Papua Nová Guinea', 'pg', 2),
(157, 'Парагвай', 'Парагвай', 'Параґвай', 'Paraguay', 'Paraguay', 'Paraguai', 'Paraguay', 'Paraguay', 'Paraguay', 'Paragwaj', 'パラグアイ', 'Paragvajus', 'Paragvaja', 'Paraguay', 'py', 2),
(158, 'Перу', 'Перу', 'Пэру', 'Peru', 'Perú', 'Peru', 'Peru', 'Pérou', 'Peru', 'Peru', 'ペルー', 'Peru', 'Peru', 'Peru', 'pe', 2),
(159, 'Питкерн', 'Пiткерн', 'Піткэрн', 'Pitcairn Islands', 'Islas Pitcairn', 'Ilhas Pitcairn', 'Pitcairn-Inseln', 'Iles Pitcairn', 'Isole Pitcairn', 'Wyspy Pitcairn', 'ピトケアン諸島', 'Pitkernas', 'Pitkerna', 'Pitcairnovy ostrovy', 'pn', 2),
(160, 'Польша', 'Польща', 'Польшча', 'Poland', 'Polonia', 'Polónia', 'Polen', 'Pologne', 'Polonia', 'Polska', 'ポーランド', 'Lenkija', 'Polija', 'Polsko', 'pl', 2),
(161, 'Португалия', 'Португалiя', 'Партугалія', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portogallo', 'Portugalia', 'ポルトガル', 'Portugalija', 'Portugāle', 'Portugalsko', 'pt', 2),
(162, 'Пуэрто-Рико', 'Пуерто-Рiко', 'Пуэрта-Рыка', 'Puerto Rico', 'Puerto Rico', 'Porto Rico', 'Puerto Rico', 'Porto Rico', 'Puerto Rico', 'Puerto Rico', 'プエルトリコ', 'Puerto Rikas', 'Puerto Riko', 'Portoriko', 'pr', 2),
(163, 'Реюньон', 'Реюньон', 'Рэюньён', 'Réunion', 'Reunión', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'レユニオン', 'Reunionas', 'Reinjona', 'Réunion', 're', 2),
(164, 'Руанда', 'Руанда', 'Руанда', 'Rwanda', 'Ruanda', 'Ruanda', 'Ruanda', 'Rwanda', 'Ruanda', 'Rwanda', 'ルアンダ', 'Ruanda', 'Ruanda', 'Rwanda', 'rw', 2),
(165, 'Румыния', 'Румунiя', 'Румынія', 'Romania', 'Rumanía', 'Roménia', 'Rumänien', 'Roumanie', 'Romania', 'Rumunia', 'ルーマニア', 'Rumunija', 'Rumānija', 'Rumunsko', 'ro', 2),
(166, 'Сальвадор', 'Сальвадор', 'Сальвадор', 'El Salvador', 'El Salvador', 'Salvador', 'El Salvador', 'Salvador', 'El Salvador', 'Salwador', 'サルバドール', 'Salvadoras', 'Salvadora', 'Salvador', 'sv', 2),
(167, 'Самоа', 'Самоа', 'Самоа', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'サモア', 'Samoa', 'Samoa', 'Samoa', 'ws', 2),
(168, 'Сан-Марино', 'Сан-Марiно', 'Сан-Марына', 'San Marino', 'San Marino', 'San Marino', 'San Marino', 'Saint-Marin', 'San Marino', 'San Marino', 'サンマリノ', 'San Marinas', 'Sanmarino', 'San Marino', 'sm', 2),
(169, 'Сан-Томе и Принсипи', 'Сан-Томе i Прiнсiпi', 'Сан-Тамэ й Прынсыпі', 'São Tomé and Príncipe', 'Santo Tomé y Príncipe', 'São Tomé e Príncipe', 'São Tomé und Príncipe', 'Sao-Tomé et Principe', 'São Tomé e Príncipe', 'Wyspy São Tomé i Książęca', 'サントメ・プリンシペ', 'San Tomė ir Prinsipė', 'San Tome un Prinsipi', 'Svatý Tomáš a Princův ostrov', 'st', 2),
(170, 'Саудовская Аравия', 'Саудiвська Аравiя', 'Саудаўская Арабія', 'Saudi Arabia', 'Arabia Saudí', 'Arábia Saudita', 'Saudi Arabien', 'Arabie Saoudite', 'Arabia Saudita', 'Arabia Saudyjska', 'サウジアラビア', 'Saudo Arabija', 'Sauda Arābija', 'Saúdská Arábie', 'sa', 2),
(171, 'Свазиленд', 'Свазiленд', 'Свазылэнд', 'Swaziland', 'Suazilandia', 'Suazilândia', 'Swasiland', 'Swaziland', 'Swaziland', 'Swaziland', 'スワジランド', 'Svazilendas', 'Svazilenda', 'Svazijsko', 'sz', 2),
(172, 'Святая Елена', 'Святої Єлени', 'Сьвятая Алена', 'Saint Helena', 'Santa Helena', 'Santa Elena', 'St. Helena', 'Sainte Hélène', 'Sant''Elena', 'Wyspa Św. Heleny', 'セントヘレナ', 'ŠV. Elenos sala', 'Svētās Helēnas Sala', 'Svatá Helena', 'sh', 2),
(173, 'Северная Корея', 'Пiвнiчна Корея', 'Паўночная Карэя', 'North Korea', 'Corea del Norte', 'Coreia do Norte', 'Nordkorea', 'Corée du Nord', 'Corea del Nord', 'Korea Północna', '北朝鮮', 'Šiaurės Korėja', 'Ziemeļkoreja', 'Severní Korea', 'kp', 2),
(174, 'Северные Марианские острова', 'Пiвнiчнi Марiанськi острови', 'Паўночныя Марыянскія выспы', 'Northern Mariana Islands', 'Islas Marianas del Norte', 'Ilhas Marianas', 'Nördliche Marianen', 'Iles Mariannes du Nord', 'Isole Northern Mariana', 'Wyspy Północnej Mariany', '北マリアナ諸島', 'Šiaurės Marianų salos', 'Ziemeļu Marianas Salas', 'Mariánské ostrovy', 'mp', 2),
(175, 'Сейшелы', 'Сейшели', 'Сэйшэлы', 'Seychelles', 'Seychelles', 'Seicheles', 'Seychellen', 'Seychelles', 'Seychelles', 'Seszele', 'セイシェル', 'Seišeliai', 'Seišelu salas', 'Seychely', 'sc', 2),
(176, 'Сенегал', 'Сенегал', 'Сэнэгал', 'Senegal', 'Senegal', 'Senegal', 'Senegal', 'Sénégal', 'Senegal', 'Senegal', 'セネガル', 'Senegalas<br>', 'Senegāla', 'Senegal', 'sn', 2),
(177, 'Сент-Винсент', 'Сент-Вiнсент', 'Сэнт-Вінцэнт', 'Saint Vincent and the Grenadines', 'San Vicente', 'São Vicente', 'St. Vincent und die Grenadinen', 'Saint-Vincent', 'Saint Vincent e Grenadines', 'Saint Vincent i Grenadyny', 'セントビンセント', 'Sent Vincentas', 'Sentvinsenta', 'Svatý Vincent a Grenadiny', 'vc', 2),
(178, 'Сент-Китс и Невис', 'Сент-Китс i Невiс', 'Сэнт-Кітз і Нэвіс', 'Saint Kitts and Nevis', 'San Cristóbal y Nieves', 'São Cristóvão e Nevis', 'St. Kitts und Nevis', 'Saint-Christophe et Niévès', 'Saint Kitts e Nevis', 'Saint Kitts i Nevis', 'クリストファー・ネイビス', 'Sent Kitsas ir Nevis', 'Sentkitsa un Nevisa', 'Svatý Kryštof a Nevis', 'kn', 2),
(179, 'Сент-Люсия', 'Сент-Люсiя', 'Сэнт-Люсія', 'Saint Lucia', 'Santa Lucía', 'Santa Lúcia', 'St. Lucia', 'Sainte-Lucie', 'Saint Lucia', 'Santa Lucia', 'セントルシア', 'Sent Liucija', 'Sentlusija', 'Svatá Lucie', 'lc', 2),
(180, 'Сент-Пьер и Микелон', 'Сент-Пьєр i Мiкелон', 'Сэн-П’ер і Мікелён', 'Saint Pierre and Miquelon', 'San Pedro y Miguelón', 'Saint-Pierre e Miquelon', 'Saint-Pierre und Miquelon', 'Saint-Pierre et Miquelon', 'Saint Pierre e Miquelon', 'Saint Pierre i Miquelon', 'サンピエール島・ミクロン島', 'Sen Pjeras ir Mikelonas', 'Senpjēra un Mikelona', 'Saint-Pierre a Miquelon', 'pm', 2),
(181, 'Сербия', 'Сербiя', 'Сэрбія', 'Serbia', 'Serbia', 'Sérvia', 'Serbien', 'Serbie', 'Serbia', 'Serbia', 'セルビア', 'Serbija', 'Serbija', 'Srbsko', 'rs', 2),
(182, 'Сингапур', 'Сiнгапур', 'Сынґапур', 'Singapore', 'Singapur', 'Singapura', 'Singapur', 'Singapour', 'Singapore', 'Singapur', 'シンガポール', 'Singapūras', 'Singapūra', 'Singapur', 'sg', 2),
(183, 'Сирийская Арабская Республика', 'Сiрiйська Арабська Республiка', 'Сырыйская Арабская Рэспубліка', 'Syria', 'Siria', 'República Árabe da Síria', 'Syrien', 'Syrie', 'Siria', 'Syria', 'シリア・アラブ共和国', 'Sirija', 'Sīrija', 'Sýrie', 'sy', 2),
(184, 'Словакия', 'Словаччина', 'Славаччына', 'Slovakia', 'Eslovaquia', 'Eslováquia', 'Slowakei', 'Slovaquie', 'Slovacchia', 'Słowacja', 'スロヴァキア', 'Slovakija', 'Slovākija', 'Slovensko', 'sk', 2),
(185, 'Словения', 'Словенiя', 'Славенія', 'Slovenia', 'Eslovenia', 'Eslovénia', 'Slowenien', 'Slovénie', 'Slovenia', 'Słowenia', 'スロベニア', 'Slovėnija', 'Slovēnija', 'Slovinsko', 'si', 2),
(186, 'Соломоновы Острова', 'Соломоновi Острови', 'Саламонавы выспы', 'Solomon Islands', 'Islas Salomón', 'Ilhas Salomão', 'Salomoninseln', 'Iles Salomon', 'Isole Solomon', 'Wyspy Solomona', 'ソロモン諸島', 'Saliamono salos', 'Zālamanu salas', 'Šalomounovy ostrovy', 'sb', 2),
(187, 'Сомали', 'Сомалi', 'Самалі', 'Somalia', 'Somalia', 'Somália', 'Somalia', 'Somalie', 'Somalia', 'Somalia', 'ソマリア', 'Somalis', 'Somali', 'Somálsko', 'so', 2),
(188, 'Судан', 'Судан', 'Судан', 'Sudan', 'Sudán', 'Sudão', 'Sudan', 'Soudan', 'Sudan', 'Sudan', 'スーダン', 'Sudanas', 'Sudāna', 'Súdán', 'sd', 2),
(189, 'Суринам', 'Сурiнам', 'Сурынам', 'Suriname', 'Surinam', 'Suriname', 'Suriname', 'Surinam', 'Suriname', 'Surinam', 'スリナム', 'Surinamas', 'Surinama', 'Surinam', 'sr', 2),
(190, 'Сьерра-Леоне', 'Сьєрра-Леоне', 'Сьера-Леонэ', 'Sierra Leone', 'Sierra Leona', 'Serra Leoa', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'シエラレオネ', 'Siera Leonė', 'Sjero-Leone', 'Sierra Leone', 'sl', 2),
(191, 'Таиланд', 'Таїланд', 'Тайлянд', 'Thailand', 'Tailandia', 'Tailândia', 'Thailand', 'Thaïlande', 'Tailandia', 'Tajlandia', 'タイ', 'Tailandas', 'Tailanda', 'Thajsko', 'th', 2),
(192, 'Тайвань', 'Тайвань', 'Тайвань', 'Taiwan', 'Taiwan', 'Taiwan', 'Taiwan', 'Taïwan', 'Taiwan', 'Tajwan', '台湾', 'Taivanas', 'Taivāna', 'Tchaj-wan', 'tw', 2),
(193, 'Танзания', 'Танзанiя', 'Танзанія', 'Tanzania', 'Tanzania', 'Tanzânia', 'Tansania', 'Tanzanie', 'Tanzania', 'Tanzania', 'タンザニア', 'Tanzanija', 'Tanzānija', 'Tanzanie', 'tz', 2),
(194, 'Того', 'Того', 'Тога', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', 'トーゴ', 'Togas', 'Togo', 'Togo', 'tg', 2),
(195, 'Токелау', 'Токелау', 'Такелаў', 'Tokelau', 'Tokelau', 'Tokelau', 'Tokelau', 'Tokelau', 'Tokelau', 'Tokelau', 'トケラウ', 'Tokelau', 'Tokelava', 'Tokelau', 'tk', 2),
(196, 'Тонга', 'Тонга', 'Тонга', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'トンガ', 'Tongas', 'Tonga', 'Tonga', 'to', 2),
(197, 'Тринидад и Тобаго', 'Тринiдад i Тобаго', 'Трынідад і Табага', 'Trinidad and Tobago', 'Trinidad y Tobago', 'Trinidad e Tobago', 'Trinidad und Tobago', 'Trinité et Tobago', 'Trinidad e Tobago', 'Trinidad and Tobago', 'トリニダード・トバゴ', 'Trinidadas ir Tobagas', 'Trindada un Tobago', 'Trinidad a Tobago', 'tt', 2),
(198, 'Тувалу', 'Тувалу', 'Тувалу', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'ツバル', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'tv', 2),
(199, 'Тунис', 'Тунiс', 'Туніс', 'Tunisia', 'Túnez', 'Tunísia', 'Tunesien', 'Tunisie', 'Tunisia', 'Tunezja', 'チュニス', 'Tunisas', 'Tunisija', 'Tunisko', 'tn', 2),
(200, 'Турция', 'Туреччина', 'Турэччына', 'Turkey', 'Turquía', 'Turquia', 'Türkei', 'Turquie', 'Turchia', 'Turcja', 'トルコ', 'Turkija', 'Turcija', 'Turecko', 'tr', 2),
(201, 'Уганда', 'Уганда', 'Уганда', 'Uganda', 'Uganda', 'Uganda', 'Uganda', 'Ouganda', 'Uganda', 'Uganda', 'ウガンダ', 'Uganda', 'Uganda', 'Uganda', 'ug', 2),
(202, 'Уоллис и Футуна', 'Уоллiс i Футуна', 'Ўоліс і Футуна', 'Wallis and Futuna', 'Wallis y Futuna', 'Wallis e Futuna', 'Wallis und Futuna', 'Wallis et Futuna', 'Wallis e Futuna', 'Wallis i Futuna', 'ウォリス・フツナ', 'Vallisas ir Futuna', 'Volisa un Futuna', 'Wallis a Futuna', 'wf', 2),
(203, 'Уругвай', 'Уругвай', 'Уруґвай', 'Uruguay', 'Uruguay', 'Uruguai', 'Uruguay', 'Uruguay', 'Uruguay', 'Urugwaj', 'ウルグアイ', 'Urugvajus', 'Urugvaja', 'Uruguay', 'uy', 2),
(204, 'Фарерские острова', 'Фарерськi острови', 'Фарэрскія выспы', 'Faroe Islands', 'Islas Feroe', 'Ilhas Feroe', 'Färöer', 'Iles Féroé', 'Isole Faroe', 'Wyspy Owcze', 'フェロー諸島', 'Farerų salos', 'Fāru salas', 'Faerské ostrovy', 'fo', 2),
(205, 'Фиджи', 'Фiджi', 'Фіджы', 'Fiji', 'Fiyi', 'Fiji', 'Fidschi', 'Fidji', 'Fiji', 'Fidżi', 'フィジー', 'Fidžis', 'Fidži', 'Fidži', 'fj', 2),
(206, 'Филиппины', 'Фiлiппiни', 'Філіпіны', 'Philippines', 'Filipinas', 'Filipinas', 'Philippinen', 'Philippines', 'Filippine', 'Filipiny', 'フィリピン', 'Filipinai', 'Filipīnas', 'Filipíny', 'ph', 2),
(207, 'Финляндия', 'Фiнляндiя', 'Фінляндыя', 'Finland', 'Finlandia', 'Finlândia', 'Finnland', 'Finlande', 'Finlandia', 'Finlandia', 'フィンランド', 'Suomija', 'Somija', 'Finsko', 'fi', 2),
(208, 'Фолклендские острова', 'Фолклендськi острови', 'Фальклэндзкія выспы', 'Falkland Islands', 'Islas Malvinas', 'Ilhas Malvinas', 'Falkland Inseln', 'Iles Malouines', 'Isole Falkland/Malvinas', 'Wyspy Falklandzkie', 'フォークランド諸島', 'Folklendų salos', 'Folklendas salas', 'Falklandské ostrovy', 'fk', 2),
(209, 'Франция', 'Францiя', 'Францыя', 'France', 'Francia', 'França', 'Frankreich', 'France', 'Francia', 'Francja', 'フランス', 'Prancūzija', 'Francija', 'Francie', 'fr', 2),
(210, 'Французская Гвиана', 'Французька Гвiана', 'Француская Гвіяна', 'French Guiana', 'Guayana Francesa', 'Guiana Francesa', 'Französisch-Guayana', 'Guyane française', 'Guiana Francese', 'Gujana Francuska', 'フランス領ガイアナ', 'Prancūzijos Gviana', 'Franču Gviāna', 'Francouzská Guyana', 'gf', 2),
(211, 'Французская Полинезия', 'Французька Полiнезiя', 'Француская Палінэзія', 'French Polynesia', 'Polinesia Francesa', 'Polinésia Francesa', 'Französisch Polynesien', 'Polynésie française', 'Polinesia Francese', 'Polinezja Francuska', 'フランス領ポリネシア', 'Prancūzijos Polinezija', 'Fraņču Polinēzija', 'Francouzská Polynésie', 'pf', 2),
(212, 'Хорватия', 'Хорватiя', 'Харватыя', 'Croatia', 'Croacia', 'Croácia', 'Kroatien', 'Croatie', 'Croazia', 'Chorwacja', 'クロアチア', 'Kroatija', 'Horvātija', 'Chorvatsko', 'hr', 2);
INSERT INTO `country` (`id`, `title_ru`, `title_ua`, `title_be`, `title_en`, `title_es`, `title_pt`, `title_de`, `title_fr`, `title_it`, `title_pl`, `title_ja`, `title_lt`, `title_lv`, `title_cz`, `iso`, `currency_id`) VALUES
(213, 'Центрально-Африканская Республика', 'Центрально-Aфриканська Республiка', 'Цэнтральна-Афрыканская Рэспубліка', 'Central African Republic', 'República Centroafricana', 'República Centro-Africana', 'Zentralafrikanische Republik', 'République centrafricaine', 'Repubblica Centro Africana', 'Republika Środkowo-Afrykańska', '中央アフリカ共和国', 'Centrinės Afrikos Respublika', 'Centrālāfrikas Republika', 'Středoafrická republika', 'cf', 2),
(214, 'Чад', 'Чад', 'Чад', 'Chad', 'Chad', 'Chade', 'Tschad', 'Tchad', 'Chad', 'Czad', 'チャド', 'Čadas', 'Čada', 'Čad', 'td', 2),
(215, 'Чехия', 'Чехiя', 'Чэхія', 'Czech Republic', 'Chequia', 'República Checa', 'Tschechische Republik', 'République tchèque', 'Repubblica Ceca', 'Czechy', 'チェコ', 'Čekija', 'Čehija', 'Česká republika', 'cz', 2),
(216, 'Чили', 'Чилi', 'Чылі', 'Chile', 'Chile', 'Chile', 'Chile', 'Chili', 'Cile', 'Chile', 'チリ', 'Čilė', 'Čīle', 'Chile', 'cl', 2),
(217, 'Швейцария', 'Швейцарiя', 'Швайцарыя', 'Switzerland', 'Suiza', 'Suíça', 'Schweiz', 'Suisse', 'Svizzera', 'Szwajcaria', 'スイス', 'Šveicarija', 'Šveice', 'Švýcarsko', 'ch', 2),
(218, 'Швеция', 'Швецiя', 'Швэцыя', 'Sweden', 'Suecia', 'Suécia', 'Schweden', 'Suède', 'Svezia', 'Szwecja', 'スウェーデン', 'Švedija', 'Zviedrija', 'Švédsko', 'se', 2),
(219, 'Шпицберген и Ян Майен', 'Шпiцберген i Ян Майен', 'Шпіцбэрґен і Ян Маен', 'Svalbard and Jan Mayen', 'Spitsbergen y Jan Mayen', 'Spitsbergen  e Jan Mayen', 'Svalbard und Jan Mayen', 'Spitzberg et Jan Mayen', 'Svalbard e Jan Mayen', 'Svalbard i Jan Mayen', 'スピッツベルゲン島・ヤンマイエン島', 'Svalbardo ir Jan Majen salos', 'Špicbergena', 'Špicberky a Jan Mayen', 'sj', 2),
(220, 'Шри-Ланка', 'Шрi-Ланка', 'Шры-Лянка', 'Sri Lanka', 'Sri-Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'スリランカ', 'Šri Lanka', 'Šrilanka', 'Srí Lanka', 'lk', 2),
(221, 'Эквадор', 'Еквадор', 'Эквадор', 'Ecuador', 'Ecuador', 'Equador', 'Ecuador', 'Equateur', 'Ecuador', 'Ekwador', 'エクアドル', 'Ekvadoras', 'Ekvadora', 'Ekvádor', 'ec', 2),
(222, 'Экваториальная Гвинея', 'Екваторiальна Гвiнея', 'Экватарыяльная Гвінэя', 'Equatorial Guinea', 'Guinea Ecuatorial', 'Guiné Equatorial', 'Äquatorialguinea', 'Guinée équatoriale', 'Guinea Equatoriale', 'Gwinea Równikowa', '赤道ギニア', 'Pusiaujo Gvinėja', 'Ekvotoriāla Gvineja', 'Rovníková Guinea', 'gq', 2),
(223, 'Эритрея', 'Ерiтрея', 'Эрытрэя', 'Eritrea', 'Eritrea', 'Eritreia', 'Eritrea', 'Erythrée', 'Eritrea', 'Erytrea', 'エリトリア', 'Eritrėja', 'Eritreja', 'Eritrea', 'er', 2),
(224, 'Эфиопия', 'Ефiопiя', 'Этыёпія', 'Ethiopia', 'Etiopía', 'Etiópia', 'Äthiopien', 'Ethiopie', 'Etiopia', 'Etiopia', 'エチオピア', 'Etiopija', 'Etiopija', 'Etiopie', 'et', 2),
(226, 'Южная Корея', 'Пiвденна Корея', 'Паўднёвая Карэя', 'South Korea', 'Corea del Sur', 'Coreia do Sul', 'Südkorea', 'Corée du Sud', 'Corea del Sud', 'Korea Południowa', '大韓民国', 'Pietų Korėja', 'Dienvidkoreja', 'Jižní Korea', 'kr', 2),
(227, 'Южно-Африканская Республика', 'Пiвденно-Африканська Республiка', 'Паўднёва-Афрыканская Рэспубліка', 'South Africa', 'República de Sudáfrica', 'República da África do Sul', 'Südafrika', 'Afrique du Sud', 'Sud Africa', 'RPA', '南アフリカ共和国', 'Pietų Afrikos Respublika', 'Dienvidāfrikas Republika', 'Jihoafrická republika', 'za', 2),
(228, 'Ямайка', 'Ямайка', 'Ямайка', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaika', 'Jamaïque', 'Giamaica', 'Jamajka', 'ジャマイカ', 'Jamaika', 'Jamaika', 'Jamajka', 'jm', 2),
(229, 'Япония', 'Японiя', 'Японія', 'Japan', 'Japón', 'Japão', 'Japan', 'Japon', 'Giappone', 'Japonia', '日本', 'Japonija', 'Japāna', 'Japonsko', 'jp', 2),
(230, 'Черногория', 'Чорногорiя', 'Чарнагорыя', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Monténégro', 'Montenegro', 'Czarnogóra', 'モンテネグロ', 'Juodkalnija', 'Melnkalne', 'Černá Hora', 'me', 2),
(231, 'Джибути', 'Джiбутi', 'Джыбуці', 'Djibouti', 'Yibuti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Dżibuti', 'ジブチ', 'Džibutis', 'Džibuti', 'Džibutsko', 'dj', 2),
(232, 'Южный Судан', 'Південний Судан', 'Паўднёвы Судан', 'South Sudan', 'Sudán del Sur', 'Sudão do Sul', 'Republik Südsudan', 'République du Soudan du Sud', 'Repubblica del Sudan del Sud', 'Sudan Południowy', '南スーダン', 'Pietų Sudanas ', 'South Sudan', 'Jižní Súdán', 'ss', 2),
(233, 'Ватикан', 'Ватикан', 'Ватыкан', 'Vatican', 'Vaticano', 'Vaticano', 'Vatikan', 'Vatican', 'Vaticano', 'Watykan', 'ヴァチカン', 'Vatikanas', 'Vatican', 'Vatikán', 'va', 2),
(234, 'Синт-Мартен', 'Сінт-Мартен', 'Сінт-Мартэн', 'Sint Maarten', 'Sint Maarten', 'São Martinho (Caraíbas)', 'Sint Maarten', 'Saint-Martin', 'Sint Maarten', 'Saint Martin', 'シント・マールテン', 'Sint Martenas ', 'Sint Maarten', 'Sint Maarten', 'mf', 2),
(235, 'Бонайре, Синт-Эстатиус и Саба', 'Бонайре, Сінт-Естатіус і Саба', 'Банайрэ, Сінт-Эстатыюс і Саба', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, San Eustaquio y Saba', 'Bonaire, Santo Eustáquio e Saba ', 'Bonaire, Sint Eustatius und Saba', 'Bonaire, Saint-Eustache et Saba', 'Bonaire, Sint Eustatius e Saba', 'Bonaire, Sint Eustatius i Saba', 'BES諸島', 'Bonairė, Sint Estatijus ir Saba', 'Bonaire, Sint Eustatius and Saba', 'Karibské Nizozemsko', 'bq', 2);

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
  `show_after_price` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `name`, `iso_4217`, `sign`, `is_default`, `show_after_price`) VALUES
(1, 'Гривня', 'UAH', '₴', 1, 1),
(2, 'Евро', 'EUR', '€', 0, 0);

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
-- Структура таблицы `email_setting`
--

CREATE TABLE IF NOT EXISTS `email_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_from` varchar(255) NOT NULL,
  `email_from` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `email_setting`
--

INSERT INTO `email_setting` (`id`, `subject_from`, `email_from`) VALUES
(1, 'Jenadin', 'artemkramov@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `email_settinglang`
--

CREATE TABLE IF NOT EXISTS `email_settinglang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_setting_id` int(11) NOT NULL,
  `footer` text NOT NULL,
  `language` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_setting_id` (`email_setting_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `email_settinglang`
--

INSERT INTO `email_settinglang` (`id`, `email_setting_id`, `footer`, `language`) VALUES
(1, 1, '<p style="font-size: 14px; color: #000;">We will answer your questions. Tel .: +38 (050) 411 75 43</p>\r\n<p style="font-size: 14px; color: #000;">Mon-Fri: 9:00 to 18:00<br />Weekend: Output</p>', 'en'),
(2, 1, '<p style="font-size: 14px; color: #000;">Ответим на ваши вопросы. Тел.: +38 (050) 411 75 43</p>\r\n<p style="font-size: 14px; color: #000;">Пн-Пт: с 9:00 до 18:00<br />Сб-Вс: выходной</p>', 'ru'),
(3, 1, '<p style="font-size: 14px; color: #000;">Відповімо на ваші запитання. Тел.: +38 (050) 411 75 43</p>\r\n<p style="font-size: 14px; color: #000;">Пн-Пт: З 9:00 до 18:00<br />Сб-Вс: Вихідний</p>', 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `receivers` text,
  `alias` varchar(255) NOT NULL,
  `for_customer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `email_template`
--

INSERT INTO `email_template` (`id`, `name`, `description`, `enabled`, `receivers`, `alias`, `for_customer`) VALUES
(1, 'Новый заказ', 'Письма с деталями заказов отправляются по списку получателей в момент приёма новых заказов.', 1, 'artemkramov@gmail.com, chutovo_kram@i.ua', 'new-order', 0),
(2, 'Заказ в обработке', 'Это уведомление содержит детали заказа и отправляется клиенту после оплаты.', 1, '', 'processing-order', 1),
(3, 'Выполненный заказ', 'Письма о завершении отправляются клиентам во время пометки заказов как выполненные и обычно отражают факт успешной доставки.', 1, NULL, 'completed-order', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `email_templatelang`
--

CREATE TABLE IF NOT EXISTS `email_templatelang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_template_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `language` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_template_id` (`email_template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `email_templatelang`
--

INSERT INTO `email_templatelang` (`id`, `email_template_id`, `subject`, `language`) VALUES
(1, 1, 'New order', 'en'),
(2, 1, 'Новый заказ', 'ru'),
(3, 1, 'Нове замовлення', 'ua'),
(4, 2, 'Thank you for your order ', 'en'),
(5, 2, 'Спасибо за Ваш заказ', 'ru'),
(6, 2, 'Дякуємо за Ваше замовлення', 'ua'),
(7, 3, 'Your order is completed', 'en'),
(8, 3, 'Ваш заказ завершен.', 'ru'),
(9, 3, 'Ваше замовлення завершене.', 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `exchange_rate`
--

CREATE TABLE IF NOT EXISTS `exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ccy` varchar(10) NOT NULL,
  `base_ccy` varchar(10) NOT NULL,
  `buy` double NOT NULL,
  `sale` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ccy` (`ccy`,`base_ccy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Дамп данных таблицы `exchange_rate`
--

INSERT INTO `exchange_rate` (`id`, `ccy`, `base_ccy`, `buy`, `sale`) VALUES
(1, 'EUR', 'UAH', 27.75487, 27.49367),
(2, 'RUR', 'UAH', 0.38289, 0.38309),
(3, 'USD', 'UAH', 24.81659, 24.81826),
(4, 'BTC', 'USD', 566.225, 625.8276),
(5, 'EUR', 'UAH', 27.71566, 27.75487),
(6, 'RUR', 'UAH', 0.38261, 0.38289),
(7, 'USD', 'UAH', 24.85041, 24.81659),
(8, 'BTC', 'USD', 559.6154, 618.5222),
(9, 'EUR', 'UAH', 28.49599, 28.28997),
(10, 'RUR', 'UAH', 0.39609, 0.39205),
(11, 'USD', 'UAH', 25.17091, 25.08866),
(12, 'BTC', 'USD', 544.9141, 602.2735),
(13, 'EUR', 'UAH', 28.49599, 28.28997),
(14, 'RUR', 'UAH', 0.39609, 0.39205),
(15, 'USD', 'UAH', 25.17091, 25.08866),
(16, 'BTC', 'USD', 545.021, 602.3916),
(17, 'EUR', 'UAH', 28.49599, 28.28997),
(18, 'RUR', 'UAH', 0.39609, 0.39205),
(19, 'USD', 'UAH', 25.17091, 25.08866),
(20, 'BTC', 'USD', 545.021, 602.3916),
(21, 'EUR', 'UAH', 28.49599, 28.28997),
(22, 'RUR', 'UAH', 0.39609, 0.39205),
(23, 'USD', 'UAH', 25.17091, 25.08866),
(24, 'BTC', 'USD', 545.002, 602.3706),
(25, 'EUR', 'UAH', 28.49599, 28.28997),
(26, 'RUR', 'UAH', 0.39609, 0.39205),
(27, 'USD', 'UAH', 25.17091, 25.08866),
(28, 'BTC', 'USD', 545.002, 602.3706),
(29, 'EUR', 'UAH', 28.49599, 28.28997),
(30, 'RUR', 'UAH', 0.39609, 0.39205),
(31, 'USD', 'UAH', 25.17091, 25.08866),
(32, 'BTC', 'USD', 545.002, 602.3706),
(33, 'EUR', 'UAH', 28.49599, 28.28997),
(34, 'RUR', 'UAH', 0.39609, 0.39205),
(35, 'USD', 'UAH', 25.17091, 25.08866),
(36, 'BTC', 'USD', 544.9461, 602.3089),
(37, 'EUR', 'UAH', 28.49599, 28.28997),
(38, 'RUR', 'UAH', 0.39609, 0.39205),
(39, 'USD', 'UAH', 25.17091, 25.08866),
(40, 'BTC', 'USD', 544.8215, 602.1711);

-- --------------------------------------------------------

--
-- Структура таблицы `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `name`, `method`) VALUES
(6, 'Update exchange rate', 'crUpdateExchangeRate'),
(7, 'Send queued novelties', 'crSendQueuedNovelties');

-- --------------------------------------------------------

--
-- Структура таблицы `kit`
--

CREATE TABLE IF NOT EXISTS `kit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `kit`
--

INSERT INTO `kit` (`id`, `created_at`, `updated_at`, `name`, `image`) VALUES
(1, 1471680210, 1471858272, 'Первый комплект', '/uploads/kits/1/710298_ou_pp.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `kit_product`
--

CREATE TABLE IF NOT EXISTS `kit_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kit_id` (`kit_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `kit_product`
--

INSERT INTO `kit_product` (`id`, `kit_id`, `product_id`) VALUES
(42, 1, 4),
(43, 1, 14);

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
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `lang`
--

INSERT INTO `lang` (`id`, `url`, `local`, `name`, `default`, `date_update`, `date_create`, `currency_id`) VALUES
(1, 'en', 'en_EN', 'English', 0, 1463386881, 1463386881, 2),
(4, 'ru', 'ru_RU', 'Русский', 1, 1463386881, 1463386881, 1),
(5, 'ua', 'uk_UA', 'Українська', 0, 1463386881, 1463386881, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `magazine`
--

CREATE TABLE IF NOT EXISTS `magazine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `magazine`
--

INSERT INTO `magazine` (`id`, `created_at`, `updated_at`, `image`) VALUES
(1, 1473172427, 1473172732, '/uploads/magazines/1/714595_in_xl.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `magazinelang`
--

CREATE TABLE IF NOT EXISTS `magazinelang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magazine_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `magazine_id` (`magazine_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `magazinelang`
--

INSERT INTO `magazinelang` (`id`, `magazine_id`, `language`, `title`) VALUES
(1, 1, 'en', 'STOLL Capsule Collection Autumn 2016 - WOVEN STITCHES'),
(2, 1, 'ru', 'STOLL Capsule Collection Autumn 2016 - WOVEN STITCHES'),
(3, 1, 'ua', 'STOLL Capsule Collection Autumn 2016 - WOVEN STITCHES');

-- --------------------------------------------------------

--
-- Структура таблицы `magazine_item`
--

CREATE TABLE IF NOT EXISTS `magazine_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magazine_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magazine_id` (`magazine_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `magazine_item`
--

INSERT INTO `magazine_item` (`id`, `magazine_id`, `image`, `sort`) VALUES
(29, 1, '/uploads/magazine-items/1/1-large.jpg', NULL),
(30, 1, '/uploads/magazine-items/1/2-large.jpg', NULL),
(31, 1, '/uploads/magazine-items/1/3-large.jpg', NULL),
(32, 1, '/uploads/magazine-items/1/4-large.jpg', NULL),
(33, 1, '/uploads/magazine-items/1/5-large.jpg', NULL),
(34, 1, '/uploads/magazine-items/1/6-large.jpg', NULL),
(35, 1, '/uploads/magazine-items/1/7-large.jpg', NULL),
(36, 1, '/uploads/magazine-items/1/8-large.jpg', NULL),
(37, 1, '/uploads/magazine-items/1/IMG_2543.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `sort` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `bean_type` varchar(255) DEFAULT NULL,
  `bean_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `menu_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_type_id` (`menu_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `created_at`, `updated_at`, `sort`, `parent_id`, `bean_type`, `bean_id`, `url`, `enabled`, `menu_type_id`) VALUES
(4, 1470075960, 1472761619, 6, NULL, 'post', 7, NULL, 1, 1),
(5, 1470141825, 1472930367, 1, NULL, 'post', 11, 'novelties', 1, 1),
(6, 1470141863, 1472761815, 2, NULL, 'post', 10, NULL, 1, 1),
(7, 1470141892, 1472761619, 4, NULL, 'post', 9, NULL, 1, 1),
(8, 1470141958, 1472761730, 5, NULL, 'post', 8, NULL, 1, 1),
(9, 1470141985, 1473699489, 3, NULL, 'post', 7, '#', 1, 1),
(14, 1471080202, 1471082205, 0, NULL, 'post', 7, NULL, 1, 2),
(15, 1471082177, 1471082205, 1, NULL, 'post', 7, NULL, 1, 2),
(16, 1471096701, 1471097621, 2, NULL, 'post', 10, NULL, 1, 2),
(17, 1471096925, 1471097621, 3, NULL, 'post', 7, NULL, 1, 2),
(18, 1471097049, 1471097621, 4, NULL, 'post', 7, NULL, 1, 2),
(19, 1471097238, 1471097621, 5, NULL, 'post', 7, NULL, 1, 2),
(20, 1471097288, 1471097621, 6, NULL, 'post', 7, NULL, 1, 2),
(21, 1471097351, 1471097621, 7, NULL, 'post', 7, NULL, 1, 2),
(22, 1471097391, 1471097621, 8, NULL, 'post', 7, NULL, 1, 2),
(23, 1471097428, 1471097622, 9, NULL, 'post', 7, NULL, 1, 2),
(24, 1471097512, 1471097622, 10, NULL, 'post', 7, NULL, 1, 2),
(25, 1472761472, 1472911130, 0, NULL, 'post', 7, 'sale', 1, 1),
(26, 1472798746, 1472798746, NULL, 7, 'post', 7, NULL, 1, 1),
(27, 1472798843, 1472798843, 2, 7, 'post', 7, NULL, 1, 1),
(28, 1472798948, 1472798948, NULL, 8, 'post', 7, NULL, 1, 1),
(29, 1472799041, 1472799041, NULL, 8, 'post', 7, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `menulang`
--

CREATE TABLE IF NOT EXISTS `menulang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`menu_id`),
  KEY `language` (`language`),
  KEY `menu_id` (`menu_id`),
  KEY `menu_id_2` (`menu_id`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Дамп данных таблицы `menulang`
--

INSERT INTO `menulang` (`id`, `menu_id`, `language`, `title`) VALUES
(10, 4, 'en', 'Contacs'),
(11, 4, 'ru', 'Контакты'),
(12, 4, 'ua', 'Контакти'),
(13, 5, 'en', 'News'),
(14, 5, 'ru', 'Новинки'),
(15, 5, 'ua', 'Новинки'),
(16, 6, 'en', 'Collections'),
(17, 6, 'ru', 'Коллекции'),
(18, 6, 'ua', 'Колекції'),
(19, 7, 'en', 'Partners'),
(20, 7, 'ru', 'Партнерам'),
(21, 7, 'ua', 'Партнерам'),
(22, 8, 'en', 'Services'),
(23, 8, 'ru', 'Услуги'),
(24, 8, 'ua', 'Послуги'),
(25, 9, 'en', 'Shop'),
(26, 9, 'ru', 'Магазин'),
(27, 9, 'ua', 'Магазин'),
(40, 14, 'en', 'Useful information'),
(41, 14, 'ru', 'Полезная информация'),
(42, 14, 'ua', 'Корисна інформація'),
(43, 15, 'en', 'Customer service'),
(44, 15, 'ru', 'Обслуживание клиентов'),
(45, 15, 'ua', 'Обслуговування клієнтів'),
(46, 16, 'en', 'Delivery'),
(47, 16, 'ru', 'Доставка'),
(48, 16, 'ua', 'Доставка'),
(49, 17, 'en', 'Exchange and return'),
(50, 17, 'ru', 'Обмен и возврат'),
(51, 17, 'ua', 'Обмін і повернення'),
(52, 18, 'en', 'Payment'),
(53, 18, 'ru', 'Оплата'),
(54, 18, 'ua', 'Оплата'),
(55, 19, 'en', 'Questions and answers'),
(56, 19, 'ru', 'Вопросы и ответы'),
(57, 19, 'ua', 'Питання і відповіді'),
(58, 20, 'en', 'About us'),
(59, 20, 'ru', 'О нас'),
(60, 20, 'ua', 'Про нас'),
(61, 21, 'en', 'Career'),
(62, 21, 'ru', 'Карьера'),
(63, 21, 'ua', 'Кар''єра'),
(64, 22, 'en', 'Branches'),
(65, 22, 'ru', 'Филиалы'),
(66, 22, 'ua', 'Філіали'),
(67, 23, 'en', 'Advertising'),
(68, 23, 'ru', 'Реклама'),
(69, 23, 'ua', 'Реклама'),
(70, 24, 'en', 'Terms & conditions'),
(71, 24, 'ru', 'Правила и условия'),
(72, 24, 'ua', 'Правила і умови'),
(73, 25, 'en', 'Sale'),
(74, 25, 'ru', 'Распродажа'),
(75, 25, 'ua', 'Розпродаж'),
(76, 26, 'en', 'For wholesalers'),
(77, 26, 'ru', 'Для оптовиков'),
(78, 26, 'ua', 'Для оптовиків'),
(79, 27, 'en', 'Products catalog'),
(80, 27, 'ru', 'Каталог изделий'),
(81, 27, 'ua', 'Каталог виробів'),
(82, 28, 'en', 'Model creation'),
(83, 28, 'ru', 'Создание моделей'),
(84, 28, 'ua', 'Створення моделей'),
(85, 29, 'en', 'Production services'),
(86, 29, 'ru', 'Услуги по производству'),
(87, 29, 'ua', 'Послуги по виробництву');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_type`
--

CREATE TABLE IF NOT EXISTS `menu_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `alias`) VALUES
(1, 'Header', 'header'),
(2, 'Footer', 'footer');

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
(252, 'ru', '(не задано)'),
(252, 'ua', '(не задано)'),
(253, 'ru', 'Возникла внутренняя ошибка сервера.'),
(253, 'ua', 'Виникла внутрішня помилка сервера.'),
(254, 'ru', 'Вы уверены, что хотите удалить этот элемент?'),
(254, 'ua', 'Ви впевнені, що хочете видалити цей елемент?'),
(255, 'ru', 'Удалить'),
(255, 'ua', 'Видалити'),
(256, 'ru', 'Ошибка'),
(256, 'ua', 'Помилка'),
(257, 'ru', 'Загрузка файла не удалась.'),
(257, 'ua', 'Завантаження файлу не вдалося.'),
(258, 'ru', 'Главная'),
(258, 'ua', 'Головна'),
(259, 'ru', 'Неправильное значение параметра "{param}".'),
(259, 'ua', 'Отримано невірне значення для параметра "{param}".'),
(260, 'ru', 'Требуется вход.'),
(260, 'ua', 'Необхідно увійти'),
(261, 'ru', 'Отсутствуют обязательные аргументы: {params}'),
(261, 'ua', 'Відсутні обовʼязкові аргументи: {params}'),
(262, 'ru', 'Отсутствуют обязательные параметры: {params}'),
(262, 'ua', 'Відсутні обовʼязкові параметри: {params}'),
(263, 'ru', 'Нет'),
(263, 'ua', 'Ні'),
(264, 'ru', 'Ничего не найдено.'),
(264, 'ua', 'Нічого не знайдено.'),
(265, 'ru', 'Разрешена загрузка файлов только со следующими MIME-типами: {mimeTypes}.'),
(265, 'ua', 'Дозволені файли лише з наступними MIME-типами: {mimeTypes}.'),
(266, 'ru', 'Разрешена загрузка файлов только со следующими расширениями: {extensions}.'),
(266, 'ua', 'Дозволені файли лише з наступними розширеннями: {extensions}.'),
(267, 'ru', 'Страница не найдена.'),
(267, 'ua', 'Сторінка не знайдена.'),
(268, 'ru', 'Исправьте следующие ошибки:'),
(268, 'ua', 'Будь ласка, виправте наступні помилки:'),
(269, 'ru', 'Загрузите файл.'),
(269, 'ua', 'Будь ласка, завантажте файл.'),
(270, 'ru', 'Показаны записи <b>{begin, number}-{end, number}</b> из <b>{totalCount, number}</b>.'),
(270, 'ua', 'Показані <b>{begin, number}-{end, number}</b> із <b>{totalCount, number}</b> {totalCount, plural, one{запису} other{записів}}.'),
(271, 'ru', 'Файл «{file}» не является изображением.'),
(271, 'ua', 'Файл "{file}" не є зображенням.'),
(272, 'ru', 'Файл «{file}» слишком большой. Размер не должен превышать {formattedLimit}.'),
(272, 'ua', 'Файл "{file}" занадто великий. Розмір не повинен перевищувати {formattedLimit}.'),
(273, 'ru', 'Файл «{file}» слишком маленький. Размер должен быть более {formattedLimit}.'),
(273, 'ua', 'Файл "{file}" занадто малий. Розмір повинен бути більше, ніж {formattedLimit}.'),
(274, 'ru', 'Неверный формат значения «{attribute}».'),
(274, 'ua', 'Невірний формат значення "{attribute}".'),
(275, 'ru', 'Файл «{file}» слишком большой. Высота не должна превышать {limit, number} {limit, plural, one{пиксель} few{пикселя} many{пикселей} other{пикселя}}.'),
(275, 'ua', 'Зображення "{file}" занадто велике. Висота не повинна перевищувати {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(276, 'ru', 'Файл «{file}» слишком большой. Ширина не должна превышать {limit, number} {limit, plural, one{пиксель} few{пикселя} many{пикселей} other{пикселя}}.'),
(276, 'ua', 'Зображення "{file}" занадто велике. Ширина не повинна перевищувати {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(277, 'ru', 'Файл «{file}» слишком маленький. Высота должна быть более {limit, number} {limit, plural, one{пиксель} few{пикселя} many{пикселей} other{пикселя}}.'),
(277, 'ua', 'Зображення "{file}" занадто мале. Висота повинна бути більше, ніж {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(278, 'ru', 'Файл «{file}» слишком маленький. Ширина должна быть более {limit, number} {limit, plural, one{пиксель} few{пикселя} many{пикселей} other{пикселя}}.'),
(278, 'ua', 'Зображення "{file}" занадто мале. Ширина повинна бути більше, ніж {limit, number} {limit, plural, one{піксель} few{пікселя} many{пікселів} other{пікселя}}.'),
(279, 'ru', 'Запрашиваемый файл представления "{name}" не найден.'),
(279, 'ua', 'Представлення "{name}" не знайдено.'),
(280, 'ru', 'Неправильный проверочный код.'),
(280, 'ua', 'Невірний код перевірки.'),
(281, 'ru', 'Всего <b>{count, number}</b> {count, plural, one{запись} few{записи} many{записей} other{записи}}.'),
(281, 'ua', 'Всього <b>{count, number}</b> {count, plural, one{запис} few{записи} many{записів} other{записи}}.'),
(282, 'ru', 'Не удалось проверить переданные данные.'),
(282, 'ua', 'Не вдалося перевірити передані дані.'),
(283, 'ru', 'Неизвестная опция: --{name}'),
(283, 'ua', 'Невідома опція : --{name}'),
(284, 'ru', 'Редактировать'),
(284, 'ua', 'Оновити'),
(285, 'ru', 'Просмотр'),
(285, 'ua', 'Переглянути'),
(286, 'ru', 'Да'),
(286, 'ua', 'Так'),
(287, 'ru', 'Вам не разрешено производить данное действие.'),
(287, 'ua', 'Вам не дозволено виконувати дану дію.'),
(288, 'ru', 'Вы не можете загружать более {limit, number} {limit, plural, one{файла} few{файлов} many{файлов} other{файла}}.'),
(288, 'ua', 'Ви не можете завантажувати більше {limit, number} {limit, plural, one{файла} few{файлів} many{файлів} other{файла}}.'),
(289, 'ru', 'через {delta, plural, =1{день} one{# день} few{# дня} many{# дней} other{# дня}}'),
(289, 'ua', 'через {delta, plural, =1{день} one{# день} few{# дні} many{# днів} other{# дні}}'),
(290, 'ru', 'через {delta, plural, =1{минуту} one{# минуту} few{# минуты} many{# минут} other{# минуты}}'),
(290, 'ua', 'через {delta, plural, =1{хвилину} one{# хвилину} few{# хвилини} many{# хвилин} other{# хвилини}}'),
(291, 'ru', 'через {delta, plural, =1{месяц} one{# месяц} few{# месяца} many{# месяцев} other{# месяца}}'),
(291, 'ua', 'через {delta, plural, =1{місяць} one{# місяць} few{# місяці} many{# місяців} other{# місяці}}'),
(292, 'ru', 'через {delta, plural, =1{секунду} one{# секунду} few{# секунды} many{# секунд} other{# секунды}}'),
(292, 'ua', 'через {delta, plural, =1{секунду} one{# секунду} few{# секунди} many{# секунд} other{# секунди}}'),
(293, 'ru', 'через {delta, plural, =1{год} one{# год} few{# года} many{# лет} other{# года}}'),
(293, 'ua', 'через {delta, plural, =1{рік} one{# рік} few{# роки} many{# років} other{# роки}}'),
(294, 'ru', 'через {delta, plural, =1{час} one{# час} few{# часа} many{# часов} other{# часа}}'),
(294, 'ua', 'через {delta, plural, =1{годину} one{# годину} few{# години} many{# годин} other{# години}}'),
(295, 'ru', 'прямо сейчас'),
(295, 'ua', 'саме зараз'),
(296, 'ru', 'введённое значение'),
(296, 'ua', 'введене значення'),
(297, 'ru', 'Значение «{value}» для «{attribute}» уже занято.'),
(297, 'ua', 'Значення «{value}» для «{attribute}» вже зайнято.'),
(298, 'ru', 'Необходимо заполнить «{attribute}».'),
(298, 'ua', 'Необхідно заповнити "{attribute}".'),
(299, 'ru', 'Значение «{attribute}» неверно.'),
(299, 'ua', 'Значення "{attribute}" не вірне.'),
(300, 'ru', 'Значение «{attribute}» не является правильным URL.'),
(300, 'ua', 'Значення "{attribute}" не є правильним URL.'),
(301, 'ru', 'Значение «{attribute}» не является правильным email адресом.'),
(301, 'ua', 'Значення "{attribute}" не є правильною email адресою.'),
(302, 'ru', 'Значение «{attribute}» должно быть равно «{requiredValue}».'),
(302, 'ua', 'Значення "{attribute}" має бути рівним "{requiredValue}".'),
(303, 'ru', 'Значение «{attribute}» должно быть числом.'),
(303, 'ua', 'Значення "{attribute}" має бути числом.'),
(304, 'ru', 'Значение «{attribute}» должно быть строкой.'),
(304, 'ua', 'Значення "{attribute}" має бути текстовим рядком.'),
(305, 'ru', 'Значение «{attribute}» должно быть целым числом.'),
(305, 'ua', 'Значення "{attribute}" має бути цілим числом.'),
(306, 'ru', 'Значение «{attribute}» должно быть равно «{true}» или «{false}».'),
(306, 'ua', 'Значення "{attribute}" має дорівнювати "{true}" або "{false}".'),
(311, 'ru', 'Значение «{attribute}» не должно превышать {max}.'),
(311, 'ua', 'Значення "{attribute}" не повинно перевищувати {max}.'),
(312, 'ru', 'Значение «{attribute}» должно быть не меньше {min}.'),
(312, 'ua', 'Значення "{attribute}" має бути більшим {min}.'),
(315, 'ru', 'Значение «{attribute}» должно содержать минимум {min, number} {min, plural, one{символ} few{символа} many{символов} other{символа}}.'),
(315, 'ua', 'Значення "{attribute}" повинно містити мінімум {min, number} {min, plural, one{символ} few{символа} many{символів} other{символа}}.'),
(316, 'ru', 'Значение «{attribute}» должно содержать максимум {max, number} {max, plural, one{символ} few{символа} many{символов} other{символа}}.'),
(316, 'ua', 'Значення "{attribute}" повинно містити максимум {max, number} {max, plural, one{символ} few{символа} many{символів} other{символа}}.'),
(317, 'ru', 'Значение «{attribute}» должно содержать {length, number} {length, plural, one{символ} few{символа} many{символов} other{символа}}.'),
(317, 'ua', 'Значення "{attribute}" повинно містити {length, number} {length, plural, one{символ} few{символа} many{символів} other{символа}}.'),
(318, 'ru', '{delta, plural, =1{день} one{# день} few{# дня} many{# дней} other{# дня}} назад'),
(318, 'ua', '{delta, plural, =1{день} one{день} few{# дні} many{# днів} other{# дні}} тому'),
(319, 'ru', '{delta, plural, =1{минуту} one{# минуту} few{# минуты} many{# минут} other{# минуты}} назад'),
(319, 'ua', '{delta, plural, =1{хвилину} one{# хвилину} few{# хвилини} many{# хвилин} other{# хвилини}} тому'),
(320, 'ru', '{delta, plural, =1{месяц} one{# месяц} few{# месяца} many{# месяцев} other{# месяца}} назад'),
(320, 'ua', '{delta, plural, =1{місяць} one{# місяць} few{# місяці} many{# місяців} other{# місяці}} тому'),
(321, 'ru', '{delta, plural, =1{секунду} one{# секунду} few{# секунды} many{# секунд} other{# секунды}} назад'),
(321, 'ua', '{delta, plural, =1{секунду} one{# секунду} few{# секунди} many{# секунд} other{# секунди}} тому'),
(322, 'ru', '{delta, plural, =1{год} one{# год} few{# года} many{# лет} other{# года}} назад'),
(322, 'ua', '{delta, plural, =1{рік} one{# рік} few{# роки} many{# років} other{# роки}} тому'),
(323, 'ru', '{delta, plural, =1{час} one{# час} few{# часа} many{# часов} other{# часа}} назад'),
(323, 'ua', '{delta, plural, =1{година} one{# година} few{# години} many{# годин} other{# години}} тому'),
(324, 'ru', '{nFormatted} Б'),
(324, 'ua', '{nFormatted} Б'),
(325, 'ru', '{nFormatted} ГБ'),
(325, 'ua', '{nFormatted} Гб'),
(326, 'ru', '{nFormatted} ГиБ'),
(326, 'ua', '{nFormatted} ГіБ'),
(327, 'ru', '{nFormatted} КБ'),
(327, 'ua', '{nFormatted} Кб'),
(328, 'ru', '{nFormatted} КиБ'),
(328, 'ua', '{nFormatted} КіБ'),
(329, 'ru', '{nFormatted} МБ'),
(329, 'ua', '{nFormatted} Мб'),
(330, 'ru', '{nFormatted} МиБ'),
(330, 'ua', '{nFormatted} МіБ'),
(331, 'ru', '{nFormatted} ПБ'),
(331, 'ua', '{nFormatted} Пб'),
(332, 'ru', '{nFormatted} ПиБ'),
(332, 'ua', '{nFormatted} ПіБ'),
(333, 'ru', '{nFormatted} ТБ'),
(333, 'ua', '{nFormatted} Тб'),
(334, 'ru', '{nFormatted} ТиБ'),
(334, 'ua', '{nFormatted} ТіБ'),
(335, 'ru', '{nFormatted} {n, plural, one{байт} few{байта} many{байтов} other{байта}}'),
(335, 'ua', '{nFormatted} {n, plural, one{байт} few{байта} many{байтів} other{байта}}'),
(336, 'ru', '{nFormatted} {n, plural, one{гибибайт} few{гибибайта} many{гибибайтов} other{гибибайта}}'),
(336, 'ua', '{nFormatted} {n, plural, one{гібібайт} few{гібібайта} many{гібібайтів} other{гібібайта}}'),
(337, 'ru', '{nFormatted} {n, plural, one{гигабайт} few{гигабайта} many{гигабайтов} other{гигабайта}}'),
(337, 'ua', '{nFormatted} {n, plural, one{гігабайт} few{гігабайта} many{гігабайтів} other{гігабайта}}'),
(338, 'ru', '{nFormatted} {n, plural, one{кибибайт} few{кибибайта} many{кибибайтов} other{кибибайта}}'),
(338, 'ua', '{nFormatted} {n, plural, one{кібібайт} few{кібібайта} many{кібібайтів} other{кібібайта}}'),
(339, 'ru', '{nFormatted} {n, plural, one{килобайт} few{килобайта} many{килобайтов} other{килобайта}}'),
(339, 'ua', '{nFormatted} {n, plural, one{кілобайт} few{кілобайта} many{кілобайтів} other{кілобайта}}'),
(340, 'ru', '{nFormatted} {n, plural, one{мебибайт} few{мебибайта} many{мебибайтов} other{мебибайта}}'),
(340, 'ua', '{nFormatted} {n, plural, one{мебібайт} few{мебібайта} many{мебібайтів} other{мебібайта}}'),
(341, 'ru', '{nFormatted} {n, plural, one{мегабайт} few{мегабайта} many{мегабайтов} other{мегабайта}}'),
(341, 'ua', '{nFormatted} {n, plural, one{мегабайт} few{мегабайта} many{мегабайтів} other{мегабайта}}'),
(342, 'ru', '{nFormatted} {n, plural, one{пебибайт} few{пебибайта} many{пебибайтов} other{пебибайта}}'),
(342, 'ua', '{nFormatted} {n, plural, one{пебібайт} few{пебібайта} many{пебібайтів} other{пебібайта}}'),
(343, 'ru', '{nFormatted} {n, plural, one{петабайт} few{петабайта} many{петабайтов} other{петабайта}}'),
(343, 'ua', '{nFormatted} {n, plural, one{петабайт} few{петабайта} many{петабайтів} other{петабайта}}'),
(344, 'ru', '{nFormatted} {n, plural, one{тебибайт} few{тебибайта} many{тебибайтов} other{тебибайта}}'),
(344, 'ua', '{nFormatted} {n, plural, one{тебібайт} few{тебібайта} many{тебібайтів} other{тебібайта}}'),
(345, 'ru', '{nFormatted} {n, plural, one{терабайт} few{терабайта} many{терабайтов} other{терабайта}}'),
(345, 'ua', '{nFormatted} {n, plural, one{терабайт} few{терабайта} many{терабайтів} other{терабайта}}'),
(537, 'en', ''),
(537, 'nl', NULL),
(537, 'ru', 'Переводы'),
(537, 'ua', 'Переклади'),
(538, 'en', 'ID'),
(538, 'nl', NULL),
(538, 'ru', 'ID'),
(538, 'ua', 'ID'),
(538, 'uk', NULL),
(539, 'en', ''),
(539, 'nl', NULL),
(539, 'ru', 'Сообщение'),
(539, 'ua', 'Повідомлення'),
(540, 'en', ''),
(540, 'nl', NULL),
(540, 'ru', 'Категория'),
(540, 'ua', 'Категорія'),
(541, 'en', ''),
(541, 'nl', NULL),
(541, 'ru', 'Статус'),
(541, 'ua', 'Статус'),
(541, 'uk', NULL),
(542, 'en', ''),
(542, 'nl', NULL),
(542, 'ru', 'Переведено'),
(542, 'ua', 'Перекладено'),
(543, 'en', ''),
(543, 'nl', NULL),
(543, 'ru', 'Не переведено'),
(543, 'ua', 'Не перекладено'),
(544, 'en', NULL),
(544, 'nl', NULL),
(544, 'ru', NULL),
(544, 'ua', NULL),
(545, 'en', ''),
(545, 'nl', NULL),
(545, 'ru', 'Меню'),
(545, 'ua', 'Меню'),
(546, 'en', NULL),
(546, 'nl', NULL),
(546, 'ru', NULL),
(546, 'ua', NULL),
(547, 'en', ''),
(547, 'nl', NULL),
(547, 'ru', 'Профиль'),
(547, 'ua', 'Профіль'),
(548, 'en', ''),
(548, 'nl', NULL),
(548, 'ru', 'Пользователи'),
(548, 'ua', 'Користувачі'),
(549, 'en', ''),
(549, 'nl', NULL),
(549, 'ru', 'Данные продукта'),
(549, 'ua', 'Дані продукту'),
(550, 'en', ''),
(550, 'nl', NULL),
(550, 'ru', 'Бренды'),
(550, 'ua', 'Бренди'),
(551, 'en', ''),
(551, 'nl', NULL),
(551, 'ru', 'Логин'),
(551, 'ua', 'Логін'),
(552, 'en', ''),
(552, 'nl', NULL),
(552, 'ru', 'Настройки'),
(552, 'ua', 'Налаштування'),
(553, 'en', ''),
(553, 'nl', NULL),
(553, 'ru', 'Шаблоны'),
(553, 'ua', 'Шаблони'),
(554, 'en', ''),
(554, 'nl', NULL),
(554, 'ru', 'Валюта'),
(554, 'ua', 'Валюта'),
(555, 'en', ''),
(555, 'nl', NULL),
(555, 'ru', 'Обновить'),
(555, 'ua', 'Оновити'),
(556, 'en', ''),
(556, 'nl', NULL),
(556, 'ru', 'Перевод'),
(556, 'ua', 'Переклад'),
(557, 'en', ''),
(557, 'nl', NULL),
(557, 'ru', 'Назад к списку'),
(557, 'ua', 'Назад до списку'),
(558, 'ru', 'Значение «{attribute}» должно быть равно «{compareValueOrAttribute}».'),
(558, 'ua', 'Значення "{attribute}" повинно бути рівним "{compareValueOrAttribute}".'),
(559, 'ru', 'Значение «{attribute}» должно быть больше значения «{compareValueOrAttribute}».'),
(559, 'ua', 'Значення "{attribute}" повинно бути більшим значення "{compareValueOrAttribute}".'),
(560, 'ru', 'Значение «{attribute}» должно быть больше или равно значения «{compareValueOrAttribute}».'),
(560, 'ua', 'Значення "{attribute}" повинно бути більшим або дорівнювати значенню "{compareValueOrAttribute}".'),
(561, 'ru', 'Значение «{attribute}» должно быть меньше значения «{compareValueOrAttribute}».'),
(561, 'ua', 'Значення "{attribute}" повинно бути меншим значення "{compareValueOrAttribute}".'),
(562, 'ru', 'Значение «{attribute}» должно быть меньше или равно значения «{compareValueOrAttribute}».'),
(562, 'ua', 'Значення "{attribute}" повинно бути меншим або дорівнювати значенню "{compareValueOrAttribute}".'),
(563, 'ru', 'Значение «{attribute}» не должно быть равно «{compareValueOrAttribute}».'),
(563, 'ua', 'Значення "{attribute}" не повинно бути рівним "{compareValueOrAttribute}".'),
(564, 'ru', 'Значение «{attribute}» содержит неверную маску подсети.'),
(564, 'ua', 'Значення «{attribute}» містить неправильну маску підмережі.'),
(565, 'ru', 'Значение «{attribute}» не входит в список разрешенных диапазонов адресов.'),
(565, 'ua', 'Значення «{attribute}» не входить в список дозволених діапазонів адрес.'),
(566, 'ru', 'Значение «{attribute}» должно быть правильным IP адресом.'),
(566, 'ua', 'Значення «{attribute}» повинно бути правильною IP адресою.'),
(567, 'ru', 'Значение «{attribute}» должно быть IP адресом с подсетью.'),
(567, 'ua', 'Значення «{attribute}» повинно бути IP адресою з підмережею.'),
(568, 'ru', 'Значение «{attribute}» не должно быть подсетью.'),
(568, 'ua', 'Значення «{attribute}» не повинно бути підмережею.'),
(569, 'ru', 'Значение «{attribute}» не должно быть IPv4 адресом.'),
(569, 'ua', 'Значення «{attribute}» не повинно бути IPv4 адресою.'),
(570, 'ru', 'Значение «{attribute}» не должно быть IPv6 адресом.'),
(570, 'ua', 'Значення «{attribute}» не повинно бути IPv6 адресою.'),
(571, 'ru', '{delta, plural, one{# день} few{# дня} many{# дней} other{# дней}}'),
(571, 'ua', '{delta, plural, one{# день} few{# дні} many{# днів} other{# днів}}'),
(572, 'ru', '{delta, plural, one{# час} few{# часа} many{# часов} other{# часов}}'),
(572, 'ua', '{delta, plural, one{# година} few{# години} many{# годин} other{# годин}}'),
(573, 'ru', '{delta, plural, one{# минута} few{# минуты} many{# минут} other{# минут}}'),
(573, 'ua', '{delta, plural, one{# хвилина} few{# хвилини} many{# хвилин} other{# хвилин}}'),
(574, 'ru', '{delta, plural, one{# месяц} few{# месяца} many{# месяцев} other{# месяцев}}'),
(574, 'ua', '{delta, plural, one{# місяць} few{# місяця} many{# місяців} other{# місяців}}'),
(575, 'ru', '{delta, plural, one{# секунда} few{# секунды} many{# секунд} other{# секунд}}'),
(575, 'ua', '{delta, plural, one{# секунда} few{# секунди} many{# секунд} other{# секунд}}'),
(576, 'ru', '{delta, plural, one{# год} few{# года} many{# лет} other{# лет}}'),
(576, 'ua', '{delta, plural, one{# рік} few{# роки} many{# років} other{# років}}'),
(577, 'en', ''),
(577, 'ru', 'Обновлено'),
(577, 'ua', 'Оновлено'),
(578, 'en', ''),
(578, 'ru', 'Создать'),
(578, 'ua', 'Створити'),
(579, 'en', ''),
(579, 'ru', 'Пользователь'),
(579, 'ua', 'Користувач'),
(579, 'uk', NULL),
(580, 'en', ''),
(580, 'ru', 'Имя пользователя'),
(580, 'ua', 'Ім''я користувача'),
(581, 'en', NULL),
(581, 'ru', NULL),
(581, 'ua', NULL),
(581, 'uk', NULL),
(582, 'en', NULL),
(582, 'ru', NULL),
(582, 'ua', NULL),
(583, 'en', NULL),
(583, 'ru', NULL),
(583, 'ua', NULL),
(584, 'en', NULL),
(584, 'ru', NULL),
(584, 'ua', NULL),
(585, 'en', ''),
(585, 'ru', 'Создан'),
(585, 'ua', 'Створений'),
(585, 'uk', NULL),
(586, 'en', ''),
(586, 'ru', 'Обновлен'),
(586, 'ua', 'Оновлений'),
(586, 'uk', NULL),
(587, 'en', NULL),
(587, 'ru', NULL),
(587, 'ua', NULL),
(588, 'en', ''),
(588, 'ru', 'Новый пароль'),
(588, 'ua', 'Новий пароль'),
(589, 'en', ''),
(589, 'ru', 'Новый пароль (повторение)'),
(589, 'ua', 'Новий пароль (повторення)'),
(590, 'en', ''),
(590, 'ru', 'Роль'),
(590, 'ua', 'Роль'),
(591, 'en', 'Delete'),
(591, 'ru', 'Удалить'),
(591, 'ua', 'Видалити'),
(592, 'en', ''),
(592, 'ru', 'Вы уверены, что хотите удалить эту запись?'),
(592, 'ua', 'Ви впевнені, що хочете видалити цей запис?'),
(593, 'en', ''),
(593, 'ru', 'Роли'),
(593, 'ua', 'Ролі'),
(594, 'en', ''),
(594, 'ru', 'Бренд'),
(594, 'ua', 'Бренд'),
(595, 'en', ''),
(595, 'ru', 'Название'),
(595, 'ua', 'Назва'),
(596, 'en', ''),
(596, 'ru', 'Создать'),
(596, 'ua', 'Створити'),
(597, 'en', ''),
(597, 'ru', 'Шаблон'),
(597, 'ua', 'Шаблон'),
(598, 'en', ''),
(598, 'ru', 'Алиас'),
(598, 'ua', 'Аліас'),
(599, 'en', ''),
(599, 'ru', 'Текст'),
(599, 'ua', 'Текст'),
(600, 'en', ''),
(600, 'ru', 'Валюты'),
(600, 'ua', 'Валюти'),
(601, 'en', ''),
(601, 'ru', 'По умлочанию'),
(601, 'ua', 'За замовченням'),
(602, 'en', ''),
(602, 'ru', 'Нет'),
(602, 'ua', 'Ні'),
(603, 'en', ''),
(603, 'ru', 'Да'),
(603, 'ua', 'Так'),
(604, 'en', NULL),
(604, 'ru', NULL),
(604, 'ua', NULL),
(605, 'en', ''),
(605, 'ru', 'Вход'),
(605, 'ua', 'Вхід'),
(606, 'en', ''),
(606, 'ru', 'Логин'),
(606, 'ua', 'Логін'),
(606, 'uk', NULL),
(607, 'en', ''),
(607, 'ru', 'Войдите для начала Вашей сессии'),
(607, 'ua', 'Ввійдіть для початку Вашої сесії'),
(608, 'en', 'Sign out'),
(608, 'ru', 'Выход'),
(608, 'ua', 'Вихід'),
(609, 'en', 'Enabled'),
(609, 'ru', 'Включено'),
(609, 'ua', 'Ввімкнено'),
(610, 'en', NULL),
(610, 'ru', NULL),
(610, 'ua', NULL),
(611, 'en', NULL),
(611, 'ru', NULL),
(611, 'ua', NULL),
(612, 'en', NULL),
(612, 'ru', NULL),
(612, 'ua', NULL),
(613, 'en', NULL),
(613, 'ru', NULL),
(613, 'ua', NULL),
(614, 'en', NULL),
(614, 'ru', NULL),
(614, 'ua', NULL),
(615, 'en', NULL),
(615, 'ru', NULL),
(615, 'ua', NULL),
(616, 'en', NULL),
(616, 'ru', NULL),
(616, 'ua', NULL),
(617, 'en', NULL),
(617, 'ru', NULL),
(617, 'ua', NULL),
(618, 'en', NULL),
(618, 'ru', NULL),
(618, 'ua', NULL),
(619, 'en', ''),
(619, 'ru', 'Сохранить'),
(619, 'ua', 'Зберегти'),
(620, 'en', ''),
(620, 'ru', 'Операция проведена успешно.'),
(620, 'ua', 'Операція проведена успішно.'),
(621, 'en', NULL),
(621, 'ru', NULL),
(621, 'ua', NULL),
(622, 'en', NULL),
(622, 'ru', NULL),
(622, 'ua', NULL),
(623, 'en', NULL),
(623, 'ru', NULL),
(623, 'ua', NULL),
(624, 'en', NULL),
(624, 'ru', NULL),
(624, 'ua', NULL),
(625, 'en', NULL),
(625, 'ru', NULL),
(625, 'ua', NULL),
(626, 'en', NULL),
(626, 'ru', NULL),
(626, 'ua', NULL),
(627, 'en', ''),
(627, 'ru', 'Записи'),
(627, 'ua', 'Записи'),
(628, 'en', ''),
(628, 'ru', 'Запись'),
(628, 'ua', 'Запис'),
(629, 'en', NULL),
(629, 'ru', NULL),
(629, 'ua', NULL),
(630, 'en', NULL),
(630, 'ru', NULL),
(630, 'ua', NULL),
(631, 'en', NULL),
(631, 'ru', NULL),
(631, 'ua', NULL),
(632, 'en', NULL),
(632, 'ru', NULL),
(632, 'ua', NULL),
(633, 'en', ''),
(633, 'ru', 'Страна'),
(633, 'ua', 'Країна'),
(633, 'uk', NULL),
(634, 'en', ''),
(634, 'ru', 'Населенный пункт'),
(634, 'ua', 'Населений пункт'),
(634, 'uk', NULL),
(635, 'en', ''),
(635, 'ru', 'Улица'),
(635, 'ua', 'Вулиця'),
(635, 'uk', NULL),
(636, 'en', ''),
(636, 'ru', 'Почтовый индекс'),
(636, 'ua', 'Поштовий індекс'),
(636, 'uk', NULL),
(637, 'en', NULL),
(637, 'ru', NULL),
(637, 'ua', NULL),
(638, 'en', NULL),
(638, 'ru', NULL),
(638, 'ua', NULL),
(639, 'en', NULL),
(639, 'ru', NULL),
(639, 'ua', NULL),
(640, 'en', NULL),
(640, 'ru', NULL),
(640, 'ua', NULL),
(641, 'en', NULL),
(641, 'ru', NULL),
(641, 'ua', NULL),
(642, 'en', NULL),
(642, 'ru', NULL),
(642, 'ua', NULL),
(643, 'en', NULL),
(643, 'ru', NULL),
(643, 'ua', NULL),
(644, 'en', NULL),
(644, 'ru', NULL),
(644, 'ua', NULL),
(645, 'en', NULL),
(645, 'ru', NULL),
(645, 'ua', NULL),
(646, 'en', NULL),
(646, 'ru', NULL),
(646, 'ua', NULL),
(647, 'en', NULL),
(647, 'ru', NULL),
(647, 'ua', NULL),
(648, 'en', NULL),
(648, 'ru', NULL),
(648, 'ua', NULL),
(649, 'en', NULL),
(649, 'ru', NULL),
(649, 'ua', NULL),
(650, 'en', NULL),
(650, 'ru', NULL),
(650, 'ua', NULL),
(651, 'en', NULL),
(651, 'ru', NULL),
(651, 'ua', NULL),
(652, 'en', NULL),
(652, 'ru', NULL),
(652, 'ua', NULL),
(653, 'en', NULL),
(653, 'ru', NULL),
(653, 'ua', NULL),
(654, 'en', NULL),
(654, 'ru', NULL),
(654, 'ua', NULL),
(655, 'en', NULL),
(655, 'ru', NULL),
(655, 'ua', NULL),
(656, 'en', NULL),
(656, 'ru', NULL),
(656, 'ua', NULL),
(657, 'en', NULL),
(657, 'ru', NULL),
(657, 'ua', NULL),
(658, 'en', 'Title'),
(658, 'ru', 'Заголовок'),
(658, 'ua', 'Заголовок'),
(659, 'en', 'Content'),
(659, 'ru', 'Контент'),
(659, 'ua', 'Контент'),
(660, 'en', 'Sort'),
(660, 'ru', 'Порядок'),
(660, 'ua', 'Порядок'),
(661, 'en', ''),
(661, 'ru', 'Родительський элемент'),
(661, 'ua', 'Батьківський елемент'),
(662, 'en', ''),
(662, 'ru', 'Тип сущности'),
(662, 'ua', 'Тип сутності'),
(663, 'en', ''),
(663, 'ru', 'Сущность'),
(663, 'ua', 'Сутність'),
(664, 'en', ''),
(664, 'ru', 'Введите URL вручную:'),
(664, 'ua', 'Введіть URL власноруч:'),
(665, 'en', 'Sort action'),
(665, 'ru', 'Сортировать'),
(665, 'ua', 'Сортувати'),
(666, 'en', ''),
(666, 'ru', 'Социальные сети'),
(666, 'ua', 'Соціальні мережі'),
(667, 'en', ''),
(667, 'ru', 'Социальная сеть'),
(667, 'ua', 'Соціальна мережа'),
(668, 'en', 'Page not found'),
(668, 'ru', 'Страница не найдена'),
(668, 'ua', 'Сторінку не знайдено'),
(669, 'en', ''),
(669, 'ru', 'Ошибка случилась в результате обработки Вашего запроса. '),
(669, 'ua', 'Помилка сталася в результаті обробки Вашого запиту.'),
(670, 'en', ''),
(670, 'ru', 'Напишите нам, если Вы думаете, что это серверная ошибка. Спасибо.'),
(670, 'ua', 'Напишіть нам, якщо Ви вважаєте, що це серверна помилка. Дякуємо.'),
(671, 'en', ''),
(671, 'ru', 'Склады'),
(671, 'ua', 'Склади'),
(672, 'en', ''),
(672, 'ru', 'Склад'),
(672, 'ua', 'Склад'),
(673, 'en', ''),
(673, 'ru', 'Где купить'),
(673, 'ua', 'Де купити'),
(674, 'en', ''),
(674, 'ru', 'Напишите нам'),
(674, 'ua', 'Напишіть нам'),
(675, 'en', ''),
(675, 'ru', 'Ваше имя'),
(675, 'ua', 'Ваше ім''я'),
(676, 'en', ''),
(676, 'ru', 'Ваш email'),
(676, 'ua', 'Ваш email'),
(677, 'en', ''),
(677, 'ru', 'Ваше сообщение'),
(677, 'ua', 'Ваше повідомлення'),
(678, 'en', ''),
(678, 'ru', 'Отправить'),
(678, 'ua', 'Відправити'),
(679, 'en', ''),
(679, 'ru', 'Адресат'),
(679, 'ua', 'Адресат'),
(680, 'en', ''),
(680, 'ru', 'Отправитель'),
(680, 'ua', 'Відправник'),
(681, 'en', ''),
(681, 'ru', 'Тема'),
(681, 'ua', 'Тема'),
(682, 'en', ''),
(682, 'ru', 'Настройки контактной формы'),
(682, 'ua', 'Налаштування контактної форми'),
(683, 'en', ''),
(683, 'ru', 'Контактная форма'),
(683, 'ua', 'Контактна форма'),
(684, 'en', ''),
(684, 'ru', 'Настройка контактной формы'),
(684, 'ua', 'Налаштування контактної форми'),
(685, 'en', ''),
(685, 'ru', 'Ваше сообщение успешно отправлено. Спасибо.'),
(685, 'ua', 'Ваше повідомлення успішно відправлене. Дякуємо.'),
(686, 'en', ''),
(686, 'ru', 'Слайдеры'),
(686, 'ua', 'Слайдери'),
(687, 'en', ''),
(687, 'ru', 'Слайдер'),
(687, 'ua', 'Слайдер'),
(688, 'en', ''),
(688, 'ru', 'Изображения'),
(688, 'ua', 'Зображення'),
(689, 'en', ''),
(689, 'ru', 'Изображение'),
(689, 'ua', 'Зображення'),
(690, 'en', NULL),
(690, 'ru', NULL),
(690, 'ua', NULL),
(691, 'en', NULL),
(691, 'ru', NULL),
(691, 'ua', NULL),
(692, 'en', ''),
(692, 'ru', 'Главная страница'),
(692, 'ua', 'Головна сторінка'),
(693, 'en', ''),
(693, 'ru', 'Родительская категория'),
(693, 'ua', 'Батьківська категорія'),
(694, 'en', ''),
(694, 'ru', 'Категории'),
(694, 'ua', 'Категорії'),
(695, 'en', ''),
(695, 'ru', 'Магазин'),
(695, 'ua', 'Магазин'),
(696, 'en', ''),
(696, 'ru', 'Группы характеристик'),
(696, 'ua', 'Групи характеристик'),
(697, 'en', ''),
(697, 'ru', 'Группа характеристик'),
(697, 'ua', 'Група характеристик'),
(698, 'en', ''),
(698, 'ru', 'Характеристики'),
(698, 'ua', 'Характеристики'),
(699, 'en', ''),
(699, 'ru', 'Характеристика'),
(699, 'ua', 'Характеристика'),
(700, 'en', ''),
(700, 'ru', 'Артикул'),
(700, 'ua', 'Артикул'),
(701, 'en', ''),
(701, 'ru', 'Цена'),
(701, 'ua', 'Ціна'),
(702, 'en', ''),
(702, 'ru', 'На складе'),
(702, 'ua', 'На складі'),
(703, 'en', ''),
(703, 'ru', 'Товары'),
(703, 'ua', 'Товари'),
(704, 'en', ''),
(704, 'ru', 'Товар'),
(704, 'ua', 'Товар'),
(704, 'uk', NULL),
(705, 'en', ''),
(705, 'ru', 'Выберите'),
(705, 'ua', 'Виберіть'),
(706, 'en', ''),
(706, 'ru', 'Простой товар'),
(706, 'ua', 'Простий товар'),
(707, 'en', ''),
(707, 'ru', 'Вариативный продукт'),
(707, 'ua', 'Варіативний продукт'),
(708, 'en', ''),
(708, 'ru', 'Тип'),
(708, 'ua', 'Тип'),
(709, 'en', ''),
(709, 'ru', 'Вариации'),
(709, 'ua', 'Варіації'),
(710, 'en', NULL),
(710, 'ru', NULL),
(710, 'ua', NULL),
(711, 'en', ''),
(711, 'ru', 'Галерея'),
(711, 'ua', 'Галерея'),
(712, 'en', ''),
(712, 'ru', 'Категории товаров'),
(712, 'ua', 'Категорії товарів'),
(713, 'en', ''),
(713, 'ru', 'Фильтр'),
(713, 'ua', 'Фільтр'),
(714, 'en', ''),
(714, 'ru', 'Категории товаров'),
(714, 'ua', 'Категорії товарів'),
(715, 'en', ''),
(715, 'ru', 'Просмотреть'),
(715, 'ua', 'Переглянути'),
(716, 'en', ''),
(716, 'ru', 'Нет в наличии'),
(716, 'ua', 'Немає в наявності'),
(717, 'en', ''),
(717, 'ru', 'Типы меню'),
(717, 'ua', 'Типи меню'),
(718, 'en', ''),
(718, 'ru', 'Тип меню'),
(718, 'ua', 'Тип меню'),
(719, 'en', ''),
(719, 'ru', 'Полезная информация'),
(719, 'ua', 'Корисна інформація'),
(719, 'uk', NULL),
(720, 'en', 'Clear'),
(720, 'ru', 'Очистить'),
(720, 'ua', 'Очистити'),
(721, 'en', 'result(s)'),
(721, 'ru', 'результат(а)'),
(721, 'ua', 'результат(и)'),
(722, 'en', ''),
(722, 'ru', 'Количество товаров:'),
(722, 'ua', 'Кількість товарів:'),
(723, 'en', ''),
(723, 'ru', 'Цена по спаданию'),
(723, 'ua', 'Ціна за спаданням'),
(724, 'en', ''),
(724, 'ru', 'Цена по возрастанию'),
(724, 'ua', 'Ціна за зростанням'),
(725, 'en', ''),
(725, 'ru', 'Сортировать по'),
(725, 'ua', 'Сортувати по'),
(726, 'en', ''),
(726, 'ru', 'Краткое описание'),
(726, 'ua', 'Короткий опис'),
(727, 'en', ''),
(727, 'ru', 'Показывать после цены'),
(727, 'ua', 'Показувати після ціни'),
(728, 'en', ''),
(728, 'ru', 'Добавить в корзину'),
(728, 'ua', 'Додати до кошику'),
(729, 'en', ''),
(729, 'ru', 'Выберите размер'),
(729, 'ua', 'Оберіть розмір'),
(730, 'en', ''),
(730, 'ru', 'Количество'),
(730, 'ua', 'Кількість'),
(731, 'en', ''),
(731, 'ru', 'Необходимо выбрать размер'),
(731, 'ua', 'Необхідно обрати розмір'),
(732, 'en', ''),
(732, 'ru', 'Необходимо ввести количество'),
(732, 'ua', 'Необхідно ввести кількість'),
(733, 'en', ''),
(733, 'ru', 'Добавить к избранным'),
(733, 'ua', 'Додати до бажаних'),
(734, 'en', ''),
(734, 'ru', 'Вход в личный кабинет'),
(734, 'ua', 'Вхід в особистий кабінет'),
(735, 'en', ''),
(735, 'ru', 'Пароль'),
(735, 'ua', 'Пароль'),
(736, 'en', ''),
(736, 'ru', 'Запомнить меня'),
(736, 'ua', 'Запам''ятати мене'),
(737, 'en', ''),
(737, 'ru', 'Вход'),
(737, 'ua', 'Вхід'),
(738, 'en', NULL),
(738, 'ru', NULL),
(738, 'ua', NULL),
(739, 'en', ''),
(739, 'ru', 'Забыли пароль?'),
(739, 'ua', 'Забули пароль?'),
(740, 'en', ''),
(740, 'ru', 'Неверный логин или пароль.'),
(740, 'ua', 'Невірний логін чи пароль.'),
(741, 'en', ''),
(741, 'ru', 'Регистрация'),
(741, 'ua', 'Реєстрація'),
(741, 'uk', NULL),
(742, 'en', ''),
(742, 'ru', 'Этот логин уже используется.'),
(742, 'ua', 'Цей логін вже використовується.'),
(743, 'en', ''),
(743, 'ru', 'Этот email уже используется.'),
(743, 'ua', 'Цей email вже використовується.'),
(744, 'en', ''),
(744, 'ru', 'Я хочу получать новости от Jenadin'),
(744, 'ua', 'Я хочу отримувати новини від Jenadin'),
(745, 'en', ''),
(745, 'ru', 'Подписка'),
(745, 'ua', 'Підписка'),
(746, 'en', ''),
(746, 'ru', 'Оставайтесь с нами'),
(746, 'ua', 'Залишайтеся з нами'),
(746, 'uk', NULL),
(747, 'en', ''),
(747, 'ru', 'Подписаться на новости'),
(747, 'ua', 'Підписатися на новини'),
(747, 'uk', NULL),
(748, 'en', ''),
(748, 'ru', 'Новости'),
(748, 'ua', 'Новини'),
(749, 'en', ''),
(749, 'ru', 'Новость'),
(749, 'ua', 'Новини'),
(750, 'en', ''),
(750, 'ru', 'Вы уверены, что хотите разослать новость?'),
(750, 'ua', 'Ви впевнені, що хочете розіслати новину?'),
(751, 'en', ''),
(751, 'ru', 'Видео'),
(751, 'ua', 'Відео'),
(752, 'en', ''),
(752, 'ru', 'Удалить'),
(752, 'ua', 'Видалити'),
(753, 'en', ''),
(753, 'ru', 'Комплекты'),
(753, 'ua', 'Комплекти'),
(754, 'en', ''),
(754, 'ru', 'Комплект'),
(754, 'ua', 'Комплект'),
(755, 'en', NULL),
(755, 'ru', NULL),
(755, 'ua', NULL),
(756, 'en', ''),
(756, 'ru', 'Как носить'),
(756, 'ua', 'Як носити'),
(757, 'en', ''),
(757, 'ru', 'Вам также может понравиться'),
(757, 'ua', 'Вам також може сподобатися'),
(758, 'en', ''),
(758, 'ru', 'Корзина'),
(758, 'ua', 'Кошик'),
(758, 'uk', NULL),
(759, 'en', ''),
(759, 'ru', 'Продолжить покупки'),
(759, 'ua', 'Продовжити покупки'),
(760, 'en', ''),
(760, 'ru', 'Цена за товар:'),
(760, 'ua', 'Ціна за товар:'),
(761, 'en', ''),
(761, 'ru', 'Сумма:'),
(761, 'ua', 'Сума:'),
(762, 'en', ''),
(762, 'ru', 'Корзина успешно обновлена.'),
(762, 'ua', 'Кошик успішно оновлено.'),
(763, 'en', ''),
(763, 'ru', 'В корзине нет товаров.'),
(763, 'ua', 'У кошику немає товарів.'),
(764, 'en', ''),
(764, 'ru', 'Сумма в корзине'),
(764, 'ua', 'Сума в кошику'),
(765, 'en', ''),
(765, 'ru', 'Итого'),
(765, 'ua', 'Разом'),
(765, 'uk', NULL),
(766, 'en', ''),
(766, 'ru', 'Оформить заказ'),
(766, 'ua', 'Оформити замовлення'),
(767, 'en', NULL),
(767, 'ru', NULL),
(767, 'ua', NULL),
(768, 'en', ''),
(768, 'ru', 'Размера нет на складе.'),
(768, 'ua', 'Розміру немає на складі.'),
(769, 'en', ''),
(769, 'ru', 'Сброс пароля'),
(769, 'ua', 'Скидання пароля'),
(770, 'en', 'Please fill out your email. A link to reset password will be sent there.'),
(770, 'ru', 'Пожалуйста, введите email. Ссылка для сброса пароля будет отправлена на этот адрес.'),
(770, 'ua', 'Будь ласка, введіть email. Посилання для скидування паролю буде відправлене на цю адресу.'),
(771, 'en', ''),
(771, 'ru', 'Сброс пароля для Jenadin'),
(771, 'ua', 'Скидання пароля для Jenadin'),
(772, 'en', ''),
(772, 'ru', 'Привет'),
(772, 'ua', 'Привіт'),
(773, 'en', ''),
(773, 'ru', 'Следуйте за ссылкой ниже для сброса пароля.'),
(773, 'ua', 'Слідуйте за посиланням нижче для скидування пароля.'),
(774, 'en', ''),
(774, 'ru', 'Нет пользователя с таким email.'),
(774, 'ua', 'Немає користувача з таким email.'),
(775, 'en', ''),
(775, 'ru', 'Проверьте email для дальнейших инструкций.'),
(775, 'ua', 'Перевірте email для подальших інструкцій.'),
(776, 'en', ''),
(776, 'ru', 'Сбросить пароль'),
(776, 'ua', 'Скинуть пароль'),
(777, 'en', ''),
(777, 'ru', 'Пожалуйста, выберите новый пароль:'),
(777, 'ua', 'Будь ласка, виберіть новий пароль:'),
(778, 'en', ''),
(778, 'ru', 'Новый пароль был сохранен.'),
(778, 'ua', 'Новий пароль був збережений.'),
(779, 'en', 'Hello, %s. (%s). From your account dashboard you can view your recent orders, manage your shipping and billing addresses and edit your password and account details.'),
(779, 'ru', 'Здравствуйте, %s (%s). В консоли вашего аккаунта вы можете просматривать недавние заказы, настроить адрес доставки и реквизиты оплаты, а также изменить пароль и анкету.'),
(779, 'ua', 'Привіт %s. (%s). В консолі Вашого акаунту Ви можете переглядати замовлення, налаштувати адресу доставки та реквізити оплати, а також змінити пароль і анкету.'),
(780, 'en', ''),
(780, 'ru', 'Выход'),
(780, 'ua', 'Вихід'),
(781, 'en', ''),
(781, 'ru', 'Детали профиля'),
(781, 'ua', 'Деталі профіля'),
(782, 'en', ''),
(782, 'ru', 'Адрес'),
(782, 'ua', 'Адреса'),
(783, 'en', ''),
(783, 'ru', 'Просмотр или редактирование даных пользователя.'),
(783, 'ua', 'Перегляд чи редагування даних користувача.'),
(784, 'en', ''),
(784, 'ru', 'Редактирование даных о адресе.'),
(784, 'ua', 'Редагування даних про адресу.'),
(785, 'en', ''),
(785, 'ru', 'Избранное'),
(785, 'ua', 'Вибране'),
(785, 'uk', NULL),
(786, 'en', ''),
(786, 'ru', 'Заказы'),
(786, 'ua', 'Замовлення'),
(787, 'en', ''),
(787, 'ru', 'Просмотр истории заказов.'),
(787, 'ua', 'Перегляд історії замовлень.'),
(788, 'en', ''),
(788, 'ru', 'Просмотр избранных товаров.'),
(788, 'ua', 'Перегляд вибраних товарів.'),
(789, 'en', ''),
(789, 'ru', 'Назад к просмотру профиля'),
(789, 'ua', 'Назад до перегляду профілю'),
(790, 'en', ''),
(790, 'ru', 'Профиль успешно обновлен.'),
(790, 'ua', 'Профіль успішно оновлений.'),
(791, 'en', ''),
(791, 'ru', 'Адрес'),
(791, 'ua', 'Адреса'),
(791, 'uk', NULL),
(792, 'en', ''),
(792, 'ru', 'Имя'),
(792, 'ua', 'Ім''я'),
(792, 'uk', NULL),
(793, 'en', ''),
(793, 'ru', 'Фамилия'),
(793, 'ua', 'Прізвище'),
(793, 'uk', NULL),
(794, 'en', ''),
(794, 'ru', 'Телефон'),
(794, 'ua', 'Телефон'),
(794, 'uk', NULL),
(795, 'en', ''),
(795, 'ru', 'Область'),
(795, 'ua', 'Область'),
(795, 'uk', NULL),
(796, 'en', ''),
(796, 'ru', 'Дом'),
(796, 'ua', 'Будинок'),
(796, 'uk', NULL),
(797, 'en', ''),
(797, 'ru', 'Квартира'),
(797, 'ua', 'Квартира'),
(797, 'uk', NULL),
(798, 'en', ''),
(798, 'ru', 'Адрес успешно обновлен.'),
(798, 'ua', 'Адреса успішно оновлена.'),
(799, 'en', ''),
(799, 'ru', 'Товар был успешно удален с избранных.'),
(799, 'ua', 'Товар був успішно видалений з вибраних.'),
(800, 'en', 'There is no product in your wish list.'),
(800, 'ru', 'В списке избранных нет товаров.'),
(800, 'ua', 'У списку вибраних немає товарів.'),
(801, 'en', ''),
(801, 'ru', 'Примечание'),
(801, 'ua', 'Замітка'),
(801, 'uk', NULL),
(802, 'en', ''),
(802, 'ru', 'Тип платежа'),
(802, 'ua', 'Тип платежу'),
(802, 'uk', NULL),
(803, 'en', ''),
(803, 'ru', 'Заказ'),
(803, 'ua', 'Замовлення'),
(804, 'en', ''),
(804, 'ru', 'Оформление заказа'),
(804, 'ua', 'Оформлення замовлення'),
(804, 'uk', NULL),
(805, 'en', ''),
(805, 'ru', 'Детали оплаты'),
(805, 'ua', 'Деталі замовлення'),
(805, 'uk', NULL),
(806, 'en', ''),
(806, 'ru', 'Ваш заказ'),
(806, 'ua', 'Ваше замовлення'),
(806, 'uk', NULL),
(807, 'en', ''),
(807, 'ru', 'Общая цена'),
(807, 'ua', 'Загальна ціна'),
(807, 'uk', NULL),
(808, 'en', ''),
(808, 'ru', 'Типы платежа'),
(808, 'ua', 'Типи платежу'),
(809, 'en', ''),
(809, 'ru', 'Разместить заказ'),
(809, 'ua', 'Розмістити замовлення'),
(809, 'uk', NULL),
(810, 'en', ''),
(810, 'ru', 'Получатели'),
(810, 'ua', 'Отримувачі'),
(811, 'en', ''),
(811, 'ru', 'Тема письма'),
(811, 'ua', 'Тема листа'),
(812, 'en', ''),
(812, 'ru', 'Шаблоны писем'),
(812, 'ua', 'Шаблони листів'),
(813, 'en', ''),
(813, 'ru', 'Шаблон письма'),
(813, 'ua', 'Шаблон листа'),
(814, 'en', ''),
(814, 'ru', 'Просмотр письма'),
(814, 'ua', 'Перегляд листа'),
(815, 'en', NULL),
(815, 'ru', NULL),
(815, 'ua', NULL),
(816, 'en', ''),
(816, 'ru', 'Имя "От кого"'),
(816, 'ua', 'Ім''я "Від кого"'),
(817, 'en', ''),
(817, 'ru', 'Адрес отправителя'),
(817, 'ua', 'Адреса відправника'),
(818, 'en', NULL),
(818, 'ru', NULL),
(818, 'ua', NULL),
(819, 'en', ''),
(819, 'ru', 'Настройки email'),
(819, 'ua', 'Налаштування email'),
(820, 'en', ''),
(820, 'ru', 'Настройка email'),
(820, 'ua', 'Налаштування email'),
(821, 'en', 'You have received an order from %s %s. The order is as follows:'),
(821, 'ru', 'Вы получили заказ от %s %s. Детали заказа:'),
(821, 'ua', 'Ви отримали замовлення від %s %s. Деталі замовлення:'),
(822, 'en', ''),
(822, 'ru', 'Информация о клиенте'),
(822, 'ua', 'Інформація про клієнта'),
(823, 'en', ''),
(823, 'ru', 'Спасибо!'),
(823, 'ua', 'Дякуємо!'),
(824, 'en', ''),
(824, 'ru', 'Ваш заказ принят!'),
(824, 'ua', 'Ваше замовлення прийняте!'),
(825, 'en', ''),
(825, 'ru', 'Наш менеджер свяжется с вами'),
(825, 'ua', 'Наш менеджер зв''яжеться з вами'),
(826, 'en', 'Hi there. Your recent order on Jenadin has been completed. Your order details are shown below for your reference:'),
(826, 'ru', 'Здравствуйте. Ваш недавний заказ от Jenadin был выполнен. Информация о заказе предоставлена ниже для вашего удобства:'),
(826, 'ua', 'Привіт. Ваше нещодавнє замовлення від Jenadin було завершено. Деталі Вашого замовлення, наведені нижче для вашої довідки:'),
(827, 'en', ''),
(827, 'ru', 'Ваш заказ успешно принят!'),
(827, 'ua', 'Ваше замовлення успішно прийняте!'),
(828, 'en', ''),
(828, 'ru', 'Номер'),
(828, 'ua', 'Номер'),
(829, 'en', ''),
(829, 'ru', 'В обработке'),
(829, 'ua', 'В обробці'),
(830, 'en', ''),
(830, 'ru', 'Оплачен'),
(830, 'ua', 'Оплачений'),
(831, 'en', ''),
(831, 'ru', 'Отказан'),
(831, 'ua', 'Відмовлений'),
(832, 'en', ''),
(832, 'ru', 'Ничего не выбрано'),
(832, 'ua', 'Нічого не вибрано'),
(833, 'en', ''),
(833, 'ru', 'Позиции'),
(833, 'ua', 'Позиції'),
(834, 'en', ''),
(834, 'ru', 'Ваша корзина пуста.'),
(834, 'ua', 'Ваш кошик пустий.'),
(835, 'en', ''),
(835, 'ru', 'Открыть меню'),
(835, 'ua', 'Відкрити меню'),
(835, 'uk', NULL),
(836, 'en', ''),
(836, 'ru', 'Поиск'),
(836, 'ua', 'Пошук'),
(836, 'uk', NULL),
(837, 'en', ''),
(837, 'ru', 'Назад'),
(837, 'ua', 'Назад'),
(837, 'uk', NULL),
(838, 'en', ''),
(838, 'ru', 'Мой кабинет'),
(838, 'ua', 'Мій кабінет'),
(838, 'uk', NULL),
(839, 'en', NULL),
(839, 'ru', NULL),
(839, 'ua', NULL),
(840, 'en', NULL),
(840, 'ru', NULL),
(840, 'ua', NULL),
(841, 'en', ''),
(841, 'ru', 'Процент, %'),
(841, 'ua', 'Відсоток, %'),
(842, 'en', '');
INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(842, 'ru', 'Акции'),
(842, 'ua', 'Акції'),
(843, 'en', ''),
(843, 'ru', 'Акция'),
(843, 'ua', 'Акція'),
(844, 'en', ''),
(844, 'ru', 'Загрузить товары с коллекции:'),
(844, 'ua', 'Завантажити товари з колеції:'),
(845, 'en', NULL),
(845, 'ru', 'Вы уверены, что хотите добавить выбраную коллекцию?'),
(845, 'ua', 'Ви впевнені, що хочете додати обрану колекцію?'),
(846, 'en', 'Sale'),
(846, 'ru', 'Распродажа'),
(846, 'ua', 'Розпродаж'),
(847, 'en', ''),
(847, 'ru', 'Новинка'),
(847, 'ua', 'Новинка'),
(848, 'en', 'Novelties'),
(848, 'ru', 'Новинки'),
(848, 'ua', 'Новинки'),
(849, 'en', 'Novelty'),
(849, 'ru', 'Новинка'),
(849, 'ua', 'Новинка'),
(850, 'en', ''),
(850, 'ru', 'Размер и характеристики'),
(850, 'ua', 'Розмір і характеристики'),
(851, 'en', ''),
(851, 'ru', 'Примечания производителя'),
(851, 'ua', 'Замітки виробника'),
(852, 'en', ''),
(852, 'ru', 'Иконка'),
(852, 'ua', 'Іконка'),
(853, 'en', ''),
(853, 'ru', 'Таблица размеров'),
(853, 'ua', 'Таблиця розмірів'),
(854, 'en', 'Basket'),
(854, 'ru', 'Корзина'),
(854, 'ua', 'Кошик'),
(855, 'en', 'You have added the product to the basket:'),
(855, 'ru', 'Вы добавили товар в корзину:'),
(855, 'ua', 'Ви додали товар у кошик:'),
(856, 'en', ''),
(856, 'ru', 'Успешно добавлено'),
(856, 'ua', 'Успішно додано'),
(857, 'en', ''),
(857, 'ru', 'В ожидании оплаты'),
(857, 'ua', 'В очікуванні оплати'),
(858, 'en', 'Congratulations! You have placed your order. Below is the link to proceed the payment.'),
(858, 'ru', 'Поздравляем! Вы разместили заказ. Ниже ссылка для оплаты заказа.'),
(858, 'ua', 'Вітаємо! Ви розмістили своє замовлення. Нижче посилання для оплати замовлення. '),
(859, 'en', ''),
(859, 'ru', 'Результаты поиска:'),
(859, 'ua', 'Результати пошуку:'),
(860, 'en', NULL),
(860, 'ru', NULL),
(860, 'ua', NULL),
(861, 'en', ''),
(861, 'ru', 'Нет результатов, задовольняющих запрос:'),
(861, 'ua', 'Немає результатів, які задовольняють запит:'),
(862, 'en', ''),
(862, 'ru', 'Журналы'),
(862, 'ua', 'Журнали'),
(863, 'en', ''),
(863, 'ru', 'Журнал'),
(863, 'ua', 'Журнал'),
(864, 'en', ''),
(864, 'ru', 'Страницы'),
(864, 'ua', 'Сторінки'),
(865, 'en', ''),
(865, 'ru', 'Дата заказа'),
(865, 'ua', 'Дата замовлення'),
(866, 'en', NULL),
(866, 'ru', NULL),
(866, 'ua', NULL),
(867, 'en', ''),
(867, 'ru', 'Персональные данные'),
(867, 'ua', 'Персональні дані'),
(868, 'en', ''),
(868, 'ru', 'Данные о заказе'),
(868, 'ua', 'Дані замовлення'),
(869, 'en', ''),
(869, 'ru', 'Назад к списку заказов'),
(869, 'ua', 'Назад до списку замовлень'),
(870, 'en', 'Nothing was found.'),
(870, 'ru', 'Ничего не найдено.'),
(870, 'ua', 'Нічого не знайдено.'),
(871, 'en', ''),
(871, 'ru', 'SEO описание для категории товара'),
(871, 'ua', 'SEO опис для категорії товару'),
(872, 'en', NULL),
(872, 'ru', NULL),
(872, 'ua', NULL),
(873, 'en', NULL),
(873, 'ru', NULL),
(873, 'ua', NULL),
(874, 'en', NULL),
(874, 'ru', NULL),
(874, 'ua', NULL),
(875, 'en', NULL),
(875, 'ru', NULL),
(875, 'ua', NULL),
(876, 'en', NULL),
(876, 'ru', NULL),
(876, 'ua', NULL),
(877, 'en', NULL),
(877, 'ru', NULL),
(877, 'ua', NULL),
(878, 'en', 'You have added the product to the basket:'),
(878, 'ru', 'Вы добавили товар в корзину:'),
(878, 'ua', 'Ви додали товар у кошик:'),
(879, 'en', NULL),
(879, 'ru', NULL),
(879, 'ua', NULL),
(880, 'en', NULL),
(880, 'ru', NULL),
(880, 'ua', NULL),
(881, 'en', NULL),
(881, 'ru', NULL),
(881, 'ua', NULL);

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
-- Структура таблицы `novelty`
--

CREATE TABLE IF NOT EXISTS `novelty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `novelty`
--

INSERT INTO `novelty` (`id`, `created_at`, `updated_at`, `title`, `content`, `send`) VALUES
(1, 1471598432, 1471601282, 'Новость от Jenadin!!!', '<p>Текст текст текст</p>', 1),
(2, 1472635946, 1472635946, 'Новая коллекция', '<p>Тест</p>', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `noveltylang`
--

CREATE TABLE IF NOT EXISTS `noveltylang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `novelty_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `language` varchar(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `novelty_id` (`novelty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `novelty_queue`
--

CREATE TABLE IF NOT EXISTS `novelty_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `novelty_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `novelty_id` (`novelty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `novelty_queue`
--

INSERT INTO `novelty_queue` (`id`, `novelty_id`, `status`) VALUES
(4, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notes` text,
  `status` varchar(255) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `email`, `address_id`, `user_id`, `notes`, `status`, `payment_type_id`, `created_at`, `updated_at`) VALUES
(25, 'artemkramov@yahoo.com', 80, 1, '', 'concept', 2, 1472653037, 1473090770),
(26, 'artemkramov@yahoo.com', 82, 1, '', 'concept', 2, 1472653449, 1472653629),
(27, 'artemkramov@yahoo.com', 83, 1, '', 'concept', 2, 1472654172, 1472654172),
(28, 'artemkramov@yahoo.com', 84, NULL, '', 'paid', 2, 1472654637, 1472655662),
(29, 'artemkramov@yahoo.com', 85, 1, '', 'concept', 3, 1472655766, 1472661473),
(30, 'artemkramov@yahoo.com', 86, 1, '', 'concept', 2, 1472910868, 1472910868),
(31, 'artemkramov@yahoo.com', 87, 1, '', 'concept', 3, 1473071986, 1473071986),
(32, 'artemkramov@yahoo.com', 88, 1, '', 'concept', 3, 1473072147, 1473072147),
(33, 'artemkramov@yahoo.com', 89, 1, '', 'concept', 3, 1473072163, 1473072163),
(34, 'artemkramov@yahoo.com', 90, 1, '', 'waited', 3, 1473073351, 1473073357),
(35, 'artemkramov@yahoo.com', 91, 1, '', 'waited', 3, 1473073650, 1473073654),
(36, 'artemkramov@yahoo.com', 92, 1, '', 'waited', 3, 1473073666, 1473073670),
(37, 'artemkramov@yahoo.com', 93, 1, '', 'waited', 3, 1473073872, 1473073873),
(38, 'artemkramov@yahoo.com', 94, 1, '', 'waited', 3, 1473073939, 1473073940),
(39, 'artemkramov@yahoo.com', 95, 1, '', 'waited', 3, 1473074100, 1473074101),
(40, 'artemkramov@yahoo.com', 96, 1, '', 'waited', 3, 1473075790, 1473075791),
(41, 'artemkramov@yahoo.com', 97, 1, '', 'waited', 3, 1473075856, 1473075857),
(42, 'artemkramov@yahoo.com', 98, 1, '', 'waited', 3, 1473075917, 1473075918),
(43, 'artemkramov@yahoo.com', 99, 1, '', 'waited', 3, 1473076486, 1473076487),
(44, 'artemkramov@yahoo.com', 100, 1, '', 'waited', 3, 1473076745, 1473076745),
(45, 'artemkramov@yahoo.com', 101, 1, '', 'waited', 3, 1473077038, 1473077039),
(46, 'artemkramov@yahoo.com', 102, 1, '', 'waited', 3, 1473077909, 1473077910),
(47, 'artemkramov@yahoo.com', 103, 1, '', 'waited', 3, 1473077999, 1473078000),
(48, 'artemkramov@yahoo.com', 104, 1, '', 'concept', 2, 1473078302, 1473078302),
(49, 'artemkramov@yahoo.com', 105, 1, '', 'waited', 3, 1473078323, 1473078325),
(50, 'artemkramov@yahoo.com', 106, 1, '', 'waited', 3, 1473078565, 1473078566),
(51, 'artemkramov@yahoo.com', 107, 1, '', 'waited', 3, 1473078691, 1473078691),
(52, 'artemkramov@yahoo.com', 108, 1, '', 'waited', 3, 1473078816, 1473078816),
(53, 'artemkramov@yahoo.com', 109, 1, '', 'paid', 3, 1473080039, 1473082451),
(54, 'artemkramov@yahoo.com', 110, 1, '', 'waited', 3, 1473082673, 1473082678),
(55, 'artemkramov@yahoo.com', 111, 1, '', 'paid', 3, 1473083181, 1473084971),
(56, 'artemkramov@yahoo.com', 112, 1, '', 'waited', 3, 1473084441, 1473084446),
(57, 'artemkramov@yahoo.com', 113, 1, '', 'waited', 3, 1473084622, 1473084626),
(58, 'artemkramov@yahoo.com', 114, 1, '', 'waited', 3, 1473084720, 1473084725),
(59, 'artemkramov@yahoo.com', 115, 1, '', 'waited', 3, 1473084893, 1473084898),
(60, 'artemkramov@yahoo.com', 116, 1, '', 'paid', 3, 1473085082, 1473085239),
(61, 'artemkramov@yahoo.com', 117, 1, '', 'concept', 2, 1473091859, 1473091859),
(62, 'artemkramov@gmail.com', 118, NULL, 'Nice product', 'concept', 2, 1473165682, 1473165682),
(63, 'artemkramov@yahoo.com', 119, 1, 'Тщеуы', 'concept', 2, 1473605321, 1473605321),
(64, 'artemkramov@yahoo.com', 121, 1, '', 'waited', 3, 1473703703, 1473703710),
(65, 'artemkramov@yahoo.com', 122, 1, '', 'concept', 2, 1473777512, 1473777512),
(66, 'artemkramov@yahoo.com', 123, 1, '', 'concept', 2, 1473781617, 1473781617),
(67, 'artemkramov@yahoo.com', 124, 1, '', 'concept', 2, 1473786296, 1473786296);

-- --------------------------------------------------------

--
-- Структура таблицы `order_item`
--

CREATE TABLE IF NOT EXISTS `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `characteristic_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `characteristic_id` (`characteristic_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=209 ;

--
-- Дамп данных таблицы `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `characteristic_id`, `count`, `price`, `currency_id`) VALUES
(194, 61, 4, 28, 2, 2900.00, 1),
(196, 63, 4, 24, 1, 2900.00, 1),
(197, 64, 11, 26, 1, 5280.00, 1),
(198, 64, 14, 23, 2, 5920.00, 1),
(199, 65, 16, 28, 1, 3083.00, 1),
(200, 65, 15, 27, 2, 3400.00, 1),
(201, 65, 17, 26, 1, 3083.00, 1),
(202, 65, 12, 23, 3, 7650.00, 1),
(203, 65, 11, 24, 17, 5280.00, 1),
(204, 65, 11, 26, 17, 5280.00, 1),
(205, 65, 14, 23, 4, 5920.00, 1),
(206, 66, 10, 26, 2, 1935.00, 1),
(207, 67, 4, 30, 1, 2610.00, 1),
(208, 67, 17, 26, 6, 3083.00, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `payment_type`
--

CREATE TABLE IF NOT EXISTS `payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `payment_type`
--

INSERT INTO `payment_type` (`id`, `created_at`, `updated_at`, `alias`) VALUES
(2, 1472474797, 1472474826, 'cash-delivery'),
(3, 1472474995, 1472474995, 'liqpay');

-- --------------------------------------------------------

--
-- Структура таблицы `payment_typelang`
--

CREATE TABLE IF NOT EXISTS `payment_typelang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `language` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_type_id` (`payment_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `payment_typelang`
--

INSERT INTO `payment_typelang` (`id`, `payment_type_id`, `title`, `content`, `language`) VALUES
(1, 2, 'Cash on delivery', '<p>Cash on delivery order</p>', 'en'),
(2, 2, 'Наложенный платеж', '<p>Оплата наличными при доставке заказа</p>', 'ru'),
(3, 2, 'Накладна плата', '<p>Оплата готівкою при доставці замовлення</p>', 'ua'),
(4, 3, 'Payment via Visa / MasterCard (LiqPay)', '<p>Pay with LiqPay payment system</p>', 'en'),
(5, 3, 'Оплата через Visa / MasterCard (LiqPay)', '<p>Оплата через платежную систему LiqPay</p>', 'ru'),
(6, 3, 'Оплата через Visa / MasterCard (LiqPay)', '<p>Оплата через платіжну систему LiqPay</p>', 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(255) NOT NULL,
  `template` varchar(20) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `created_at`, `updated_at`, `enabled`, `alias`, `template`, `default`) VALUES
(7, 1469967549, 1470396630, 1, 'contacts', 'content', 0),
(8, 1470226905, 1472054176, 1, 'services', 'content', 0),
(9, 1470229969, 1470230517, 1, 'partners', 'content', 0),
(10, 1470231842, 1470233485, 1, 'delivery-and-payment', 'content', 0),
(11, 1470240526, 1470300594, 1, 'info', 'content', 0),
(12, 1470297947, 1470297973, 0, 'about-us', 'content', 0),
(13, 1470298147, 1470298147, 0, 'clothes-take-care', 'content', 0),
(14, 1470298396, 1470298513, 0, 'table-sizes', 'content', 0),
(15, 1470398188, 1470401479, 1, 'main', 'content-main', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `postlang`
--

CREATE TABLE IF NOT EXISTS `postlang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `postlang`
--

INSERT INTO `postlang` (`id`, `post_id`, `language`, `title`, `content`) VALUES
(16, 7, 'en', 'Contacts', '<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="contact-form wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1457444242684">\r\n<div class="wpb_wrapper">\r\n<p><strong>Factory Address:</strong></p>\r\n<p>Konoplianskaia str., 18<br /> c. Kiev, 04074</p>\r\n<p><strong>PHONES:</strong></p>\r\n<p>Retail:<br /> +38 (050) 411 75 43 &ndash; Tatiana<br /> tanya@jenadin.com.ua</p>\r\n<p>Wholesale:<br /> +38 (050) 469 08 08 &ndash; Tamila<br /> tamila@jenadin.com.ua</p>\r\n<p>Services and manufacture:<br /> +38 (050) 331 74 65 &ndash; Irina<br /> irina@jenadin.com.ua</p>\r\n<p>Cooperation and PR:<br /> +38 (050) 335 80 66<br /> info@jenadin.com.ua</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">&nbsp;</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1461402199563">\r\n<div class="wpb_wrapper">\r\n<p><strong>OPERATION MODE:</strong></p>\r\n<p>Mon-Fri: 9:00 to 18:00<br /> Weekend: Output</p>\r\n<p>Please coordinate your visit with your administrator:</p>\r\n<p>+38 (050) 411 75 43</p>\r\n<p><a href="../../../en/info?block=where-to-buy" target="__blank"><strong>WHERE TO BUY?</strong></a></p>\r\n</div>\r\n</div>\r\n<div id="wpcf7-f3944-p112-o1" class="wpcf7" dir="ltr" lang="en-US">\r\n<div class="screen-reader-response">&nbsp;</div>\r\n[contact-form]</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(17, 7, 'ru', 'Контакты', '<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="contact-form wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1457444242684">\r\n<div class="wpb_wrapper">\r\n<p><strong>АДРЕС ФАБРИКИ И ШОУ-РУМА:</strong></p>\r\n<p>ул. Коноплянская, 18<br /> г. Киев, 04074</p>\r\n<p><strong>КОНТАКТЫ:</strong></p>\r\n<p>Розница:<br /> +38 (050) 411 75 43 &mdash; Татьяна<br /> tanya@jenadin.com.ua</p>\r\n<p>Опт:<br /> +38 (050) 469 08 08 &mdash; Тамила<br /> tamila@jenadin.com.ua</p>\r\n<p>Услуги и производство:<br /> +38 (050) 331 74 65 &mdash; Ирина<br /> irina@jenadin.com.ua</p>\r\n<p>По вопросам сотрудничества и PR:<br /> +38 (050) 335 80 66<br /> info@jenadin.com.ua</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">&nbsp;</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1461402096683">\r\n<div class="wpb_wrapper">\r\n<p><strong>РЕЖИМ РАБОТЫ:</strong></p>\r\n<p>Пн-Пт: С 9:00 до 18:00<br /> Сб-Вс: Выходной</p>\r\n<p>Пожалуйста согласовывайте время визита по телефону:</p>\r\n<p>+38 (050) 411 75 43</p>\r\n<p><a href="../../../ru/info?block=where-to-buy" target="__blank"><strong>ГДЕ КУПИТЬ?</strong></a></p>\r\n</div>\r\n</div>\r\n<div id="wpcf7-f12-p112-o1" class="wpcf7" dir="ltr" lang="ru-RU">\r\n<div class="screen-reader-response">&nbsp;</div>\r\n[contact-form]</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(18, 7, 'ua', 'Контакти', '<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="contact-form wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1457444242684">\r\n<div class="wpb_wrapper">\r\n<p><strong>АДРЕСА ФАБРИКИ І ШОУ-РУМУ:</strong></p>\r\n<p>вул. Коноплянська, 18<br /> м. Київ, 04074</p>\r\n<p><strong>КОНТАКТИ:</strong></p>\r\n<p>Роздріб:<br /> +38 (050) 411 75 43 &ndash; Тетяна<br /> tanya@jenadin.com.ua</p>\r\n<p>Опт:<br /> +38 (050) 469 08 08 &ndash; Таміла<br /> tamila@jenadin.com.ua</p>\r\n<p>Послуги і виробництво:<br /> +38 (050) 331 74 65 &ndash; Ірина<br /> irina@jenadin.com.ua</p>\r\n<p>З питань співпраці та PR:<br /> +38 (050) 335 80 66<br /> info@jenadin.com.ua</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">&nbsp;</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1461402164895">\r\n<div class="wpb_wrapper">\r\n<p><strong>РЕЖИМ РОБОТИ:</strong></p>\r\n<p>Пн-Пт: З 9:00 до 18:00<br /> Сб-Вс: Вихідний</p>\r\n<p>Будь ласка погоджуйте час візиту за телефоном:</p>\r\n<p>+38 (050) 411 75 43</p>\r\n<p><a href="../../../ua/info?block=where-to-buy" target="__blank"><strong>ДЕ КУПИТИ?</strong></a></p>\r\n</div>\r\n</div>\r\n<div id="wpcf7-f3941-p112-o1" class="wpcf7" dir="ltr" lang="uk">\r\n<div class="screen-reader-response">&nbsp;</div>\r\n[contact-form]</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(19, 8, 'en', 'Services', '<div class="vc_row wpb_row vc_row-fluid">&nbsp;</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone size-full wp-image-247" src="../../../uploads/4.png" sizes="(max-width: 170px) 100vw, 170px" alt="4" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">We develop programs according to our clients&rsquo; designs and manufacturing unique models.</p>\r\n<p style="text-align: center;">We offer a customized approach.</p>\r\n<p style="text-align: center;">We are ready to bring your ideas to life! Let&rsquo;s create soft, warm, gentle and wonderful garments together!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone size-full wp-image-245" src="../../../uploads/2.png" sizes="(max-width: 170px) 100vw, 170px" alt="2" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">All clothe are knitted using the modern German equipment.</p>\r\n<p style="text-align: center;">We knit garments on a by-order basis using &nbsp;the customer&rsquo;s yarn.</p>\r\n<p style="text-align: center;">We will be glad to help you to choose &nbsp;the yarn, and your customers will be delighted with their new clothes.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone size-full wp-image-263" src="../../../uploads/clothes17.png" sizes="(max-width: 170px) 100vw, 170px" alt="clothes17" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Finished pieces are treated according to European technologies and standards.<br /> All the production stages, from the design of a model to the delivery of finished garments to the customers, are carried out under the strict &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(but gentle))) control.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone size-full wp-image-244" src="../../../uploads/1.png" sizes="(max-width: 170px) 100vw, 170px" alt="1" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Our team consists of young, creative, highly qualified specialists with the wide experience in knitting. And most importantly &ndash; we put our hearts and souls into our work (and yes, the secret ingredient of Jenadin garments is love!). We bet you will feel it when you put your new clothes on!<br /> We are always ready to learn, grow and develop &ndash; for you!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-6">&nbsp;</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-6">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">If you have any questions about the production services, please, feel free to contact us by phone</p>\r\n<p style="text-align: center;"><strong><span style="color: #afb86f;">+38&nbsp;050&nbsp;331 74 65</span></strong> or e-mail <span style="color: #afb86f;"><strong>irina@jenadin.com.ua</strong></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(20, 8, 'ru', 'Услуги', '<div class="vc_row wpb_row vc_row-fluid partners-row-header">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1443810424166 wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<h4 style="text-align: center;"><span style="color: #808000;">Принимаем индивидуальные оптовые заказы на изготовление трикотажной продукции</span></h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid partners-row-class vc_custom_1440667623668">\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977223364 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="aligncenter wp-image-247 size-full" src="../../../uploads/4.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Мы разрабатываем программы по эскизам заказчика, изготовляя уникальные модели и конструкции.</p>\r\n<p style="text-align: center;">К каждому заказу индивидуальный подход.</p>\r\n<p style="text-align: center;">Мы готовы воплотить в жизнь ваши идеи и задумки &ndash; давайте создавать мягкие, теплые, нежные и прекрасные вещи вместе!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977167723 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="aligncenter wp-image-245 size-full" src="../../../uploads/2.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Все изделия вяжутся на современном немецком оборудовании.</p>\r\n<p style="text-align: center;">Вяжем&nbsp; изделия на заказ из пряжи заказчика.</p>\r\n<p style="text-align: center;">С удовольствием поможем выбрать пряжу для ваc &ndash; и ваши клиенты придут в восторг от своей новой одежды.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977205440 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-263 size-full" src="../../../uploads/clothes17.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Готовые&nbsp; изделия проходят качественную обработку, согласно европейским технологиям и нормам.</p>\r\n<p style="text-align: center;">Все производственные этапы, начиная с разработки модели и заканчивая поставкой готовой продукции клиенту, осуществляются под строгим (но нежным))) контролем.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977148091 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-244 size-full" src="../../../uploads/1.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Наша команда &ndash; это молодые креативные высококвалифицированные специалисты с большим опытом работы в трикотажном производстве. А главное &ndash; мы вкладываем душу в нашу работу (и да, секретный ингредиент вещей Jenadin &ndash; любовь!). Спорим, вы почувствуете это, надев свою обновку?</p>\r\n<p style="text-align: center;"><strong>И мы всегда готовы учиться, становиться лучше и развиваться &ndash; для вас!</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-6">&nbsp;</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-6">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>По всем вопросам предоставления услуг производства обращайтесь по телефону <span style="color: #808000;"><strong>+38 050 331 74 65</strong></span> или электронной почте <span style="color: #808000;"><strong>irina@jenadin.com.ua&nbsp;</strong></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(21, 8, 'ua', 'Послуги', '<div class="vc_row wpb_row vc_row-fluid partners-row-header">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1443810424166 wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<h4 style="text-align: center;"><span style="color: #808000;">Приймаємо індивідуальні оптові замовлення на виготовлення трикотажної продукції</span></h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid partners-row-class vc_custom_1440667623668">\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977223364 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="aligncenter wp-image-247 size-full" src="../../../uploads/4.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Ми розробляємо програми за ескізами замовника, виготовляючи унікальні моделі та конструкції.</p>\r\n<p style="text-align: center;">Індивідуальний підхід до кожного замовлення.</p>\r\n<p style="text-align: center;">Ми готові втілити в життя ваші ідеї та задумки &ndash; створюймо м&rsquo;які, теплі, ніжні та прекрасні речі разом!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977167723 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="aligncenter wp-image-245 size-full" src="../../../uploads/2.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Усі вироби в&rsquo;яжуться на сучасному німецькому обладнанні.</p>\r\n<p style="text-align: center;">В&rsquo;яжемо вироби на замовлення з пряжі замовника.</p>\r\n<p style="text-align: center;">Із задоволенням допоможемо обрати &nbsp;пряжу для вас &ndash; і ваші клієнти будуть у захваті від свого нового одягу.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977205440 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-263 size-full" src="../../../uploads/clothes17.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Готові вироби проходять якісну обробку, згідно з європейськими технологіями та нормами.</p>\r\n<p style="text-align: center;">Усі виробничі етапи, починаючи з розробки моделі та закінчуючи постачанням готової продукції клієнту, здійснюються під суворим (але ніжним))) контролем.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-3">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  vc_custom_1441977148091 wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-244 size-full" src="../../../uploads/1.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;">Наша команда &ndash; це молоді креативні висококваліфіковані фахівці з великим досвідом роботи в трикотажному виробництві. А головне &ndash; ми вкладаємо душу в нашу роботу (і так, секретний інгредієнт речей Jenadin &ndash; любов!). Впевнені що, ви відчуєте це, надівши свою обновку.</p>\r\n<p style="text-align: center;"><strong>І ми завжди готові вчитися, ставати кращими та розвиватися &ndash; для вас!</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-6">&nbsp;</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-6">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>З усіх питань надання послуг виробництва звертайтеся за телефоном <span style="color: #808000;"><strong>+38 050 331 74 65</strong></span> або електронною поштою <span style="color: #808000;"><strong>irina@jenadin.com.ua </strong></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(22, 9, 'en', 'Partnership', '<div class="vc_row wpb_row vc_row-fluid" style="width: 150%; margin: 0px 0px 0px -25%;">\r\n<div class="wpb_column vc_column_container vc_col-sm-12" style="padding: 0px;">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_single_image wpb_content_element vc_align_center">\r\n<div class="wpb_wrapper">\r\n<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img attachment-full" src="../../../uploads/img111.jpg" sizes="(max-width: 1776px) 100vw, 1776px" alt="img111" width="1776" height="413" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2>With pleasure: We knit &ndash; you wear!</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h4>We invite to cooperation customers looking for a reliable supplier of high quality knitted outerwear!</h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: left;"><strong>Dear Partners!</strong></p>\r\n<p style="text-align: left;">Of course, you know that nowadays domestic producers are loved and appreciated in Ukraine. We are exactly such a producer! Your customers will appreciate the fact that Ukraine can produce beautiful and fashionable garments.</p>\r\n<p style="text-align: left;">We are glad to cooperate with those, who are looking for a reliable<a class="hPmFZ60g8 " title="Нажмите, чтобы продолжить, Advertise" href="#35587807"> supplier<img src="http://cdncache-a.akamaihd.net/items/it/img/arrow-10x10.png" /></a> of high-quality knitwear!</p>\r\n<p style="text-align: left;">We are sure that you want to please your customers with high-quality and stylish clothes, just as we do.</p>\r\n<p style="text-align: left;">We will be glad to answer all your questions</p>\r\n<p style="text-align: left;">by phone <strong><span style="color: #afb86f;">+38&nbsp;050&nbsp;469 08 08</span></strong> or e-mail <strong><span style="color: #afb86f;">tamila@jenadin.com.ua</span></strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(23, 9, 'ru', 'Партнерам', '<div class="vc_row wpb_row vc_row-fluid" style="width: 150%; margin: 0px 0px 0px -25%;">\r\n<div class="wpb_column vc_column_container vc_col-sm-12" style="padding: 0px;">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_single_image wpb_content_element vc_align_center">\r\n<div class="wpb_wrapper">\r\n<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img attachment-full" src="../../../uploads/new-bg-1.jpg" sizes="(max-width: 1776px) 100vw, 1776px" alt="new-bg" width="1776" height="413" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid services-class">\r\n<div class="services-header wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2><span style="color: #b0bb3b;">With pleasure: We knit &ndash; you wear!</span></h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h4>Приглашаем к сотрудничеству тех, кто ищет надёжного поставщика качественного трикотажа!</h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>Дорогие партнеры!</p>\r\n<p>Конечно, вы знаете, что сейчас в Украине любят и ценят отечественного производителя. Он перед вами! Вашим клиентам обязательно понравится, что&nbsp; Украина может делать красивые и модные вещи.</p>\r\n<p>&nbsp;</p>\r\n<p>Мы рады сотрудничать с теми кто кто ищет надёжного поставщика качественного трикотажа!</p>\r\n<p>Уверены, что вы так же хотите радовать ваших клиентов качественной и стильной одеждой, как и мы.</p>\r\n<p>Так же с радостью ответим на все Ваши вопросы &nbsp;по телефону&nbsp;<span style="color: #808000;"><strong>+38 050 469 08 08</strong></span> или пишите на почту <span style="color: #808000;"><strong>tamila@jenadin.com.ua</strong></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(24, 9, 'ua', 'Партнерам', '<div class="vc_row wpb_row vc_row-fluid" style="width: 1349px; margin: 0px 0px 0px -25%; position: relative; left: 180.5px; box-sizing: border-box; padding-left: 0px; padding-right: 0px;" data-vc-full-width="true" data-vc-full-width-init="true">\r\n<div class="wpb_column vc_column_container vc_col-sm-12" style="padding: 0px;">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_single_image wpb_content_element vc_align_center">\r\n<div class="wpb_wrapper">\r\n<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img attachment-full" src="../../../uploads/img111.jpg" sizes="(max-width: 1776px) 100vw, 1776px" alt="img111" width="1776" height="413" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row-full-width">&nbsp;</div>\r\n<div class="vc_row wpb_row vc_row-fluid services-class">\r\n<div class="services-header wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2>With pleasure: We knit &ndash; you wear!</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h4>Запрошуємо до співпраці тих, хто шукає надійного постачальника якісного трикотажу!</h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>Дорогі партнери!</p>\r\n<p>Звичайно, ви знаєте, що зараз в Україні люблять і цінують вітчизняного виробника. Він перед вами! Вашим клієнтам обов&rsquo;язково сподобається, що Україна може робити красиві і модні речі.</p>\r\n<p>&nbsp;</p>\r\n<p>Ми раді співпрацювати з тими хто шукає надійного постачальника якісного трикотажу!</p>\r\n<p>Впевнені, що ви так само хочете радувати ваших клієнтів якісним і стильним одягом, як і ми.</p>\r\n<p>Так само з радістю відповімо на всі Ваші запитання за телефоном <span style="color: #808000;"><strong>+38 050 469 08 08</strong></span> або пишіть на пошту <span style="color: #808000;"><strong>tamila@jenadin.com.ua</strong></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(25, 10, 'en', 'Delivery and payment', '<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<h2 style="text-align: center;">Delivery and payment</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone size-full wp-image-269" src="../../../uploads/transport643.png" sizes="(max-width: 170px) 100vw, 170px" alt="transport643" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom">\r\n<div class="wpb_wrapper">\r\n<p>Free of charge delivery all over Ukraine.</p>\r\n<p>Cash payment upon delivery or at depots.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-268 size-full" src="../../../uploads/pack3.png" sizes="(max-width: 170px) 100vw, 170px" alt="" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom">\r\n<div class="wpb_wrapper">\r\n<p>Express delivery within 3-5 days (in Kiev only).</p>\r\n<p>We deliver orders through Ukraine by &ldquo;Nova Poshta&rdquo; and &ldquo;Delivery&rdquo; within 3-5 days. Please, specify the nearest depot in the&nbsp; checkout form.</p>\r\n<p>Visit our showroom upon preliminary agreement of the time of your visit. Its address is&nbsp; 18 Konoplianskaia str., 18 on any working day from 9 a.m. to 6 p.m.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone size-full wp-image-270" src="../../../uploads/update22.png" sizes="(max-width: 170px) 100vw, 170px" alt="update22" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom">\r\n<div class="wpb_wrapper">\r\n<p>You can return or exchange a product within 14 days since the purchase under condition that a product retains marketable appearance and all enclosed elements, at the buyer&rsquo;s expense.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(26, 10, 'ru', 'Доставка и оплата', '<div class="vc_row wpb_row vc_row-fluid delivery-class-header">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<h2 style="text-align: center;">ДОСТАВКА И ОПЛАТА</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid delivery-class">\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-269 size-full" src="../../../uploads/transport643.png" sizes="(max-width: 170px) 100vw, 170px" alt="transport643" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p><a class="PQ16rBQ0tt8 " title="Нажмите, чтобы продолжить, Advertise" href="#72123"> Бесплатная доставка<img src="http://cdncache-a.akamaihd.net/items/it/img/arrow-10x10.png" /></a>по всей Украине.</p>\r\n<p>Курьерская доставка в течение 3-5 дней (только по Киеву).&nbsp;Заказы по Украине отправляем &laquo;Новой почтой&raquo; и &laquo;Delivery&raquo; в течение 3-5 дней. Для этого необходимо указать в форме заказа удобный для Вас номер пункта выдачи.</p>\r\n<p>Оплата наличными курьеру или в пункте выдачи службы доставки.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p><img class="aligncenter wp-image-268 size-full" src="../../../uploads/pack3.png" sizes="(max-width: 170px) 100vw, 170px" alt="pack3" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p>Вы можете приехать к нам в шоу-рум, предварительно договорившись о времени Вашего визита, на ул. Коноплянскую, 18, в любой будний день с 9:00 до 18:00.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p><img class="aligncenter wp-image-270 size-full" src="../../../uploads/update22.png" sizes="(max-width: 170px) 100vw, 170px" alt="update22" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p>Возврат или обмен осуществляется в течение 14 дней с момента покупки, при условии сохранения товарного вида и всех сопроводительных элементов, за счёт покупателя.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(27, 10, 'ua', 'Доставка та оплата', '<div class="vc_row wpb_row vc_row-fluid delivery-class-header">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2 style="text-align: center;">ДОСТАВКА ТА ОПЛАТА</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid delivery-class">\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p style="text-align: center;"><img class="alignnone wp-image-269 size-full" src="../../../uploads/transport643.png" sizes="(max-width: 170px) 100vw, 170px" alt="transport643" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>Безкоштовна доставка по всій Україні.</p>\r\n<p>Кур&rsquo;єрська доставка протягом 3-5 днів (лише по Києву). Замовлення по Україні відправляємо &ldquo;Новою поштою&rdquo; та &ldquo;Delivery&rdquo; протягом 3-5 днів. Для цього необхідно вказати у формі замовлення зручний для Вас номер пункту видачі.</p>\r\n<p>Оплата готівкою кур&rsquo;єру або в пункті видачі служби доставки.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p><img class="aligncenter wp-image-268 size-full" src="../../../uploads/pack3.png" sizes="(max-width: 170px) 100vw, 170px" alt="pack3" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>Ви можете приїхати до нас в шоу-рум, попередньо домовившись про час Вашого візиту, на вул. Коноплянску, 18, в будь-який будній день з 9:00 до 18:00.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="wpb_column vc_column_container vc_col-sm-4">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_appear wpb_start_animation">\r\n<div class="wpb_wrapper">\r\n<p><img class="aligncenter wp-image-270 size-full" src="../../../uploads/update22.png" sizes="(max-width: 170px) 100vw, 170px" alt="update22" width="170" height="170" /></p>\r\n</div>\r\n</div>\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<p>Повернення або обмін здійснюється протягом 14 днів з моменту покупки, за умови збереження товарного вигляду та всіх супровідних елементів, за рахунок покупця.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="comments">&nbsp;</div>\r\n<p>&nbsp;</p>'),
(28, 11, 'en', 'Info', '<div class="vc_row wpb_row vc_row-fluid" style="width: 150%; margin: 0px 0px 0px -25%;">\r\n<div class="wpb_column vc_column_container vc_col-sm-12" style="padding: 0px;">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_single_image wpb_content_element vc_align_center">\r\n<div class="wpb_wrapper">\r\n<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img attachment-full" src="../../../uploads/img111.jpg" sizes="(max-width: 1776px) 100vw, 1776px" alt="img111" width="1776" height="413" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2 style="text-align: center;">INFO</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(29, 11, 'ru', 'Инфо', '<div class="vc_row wpb_row vc_row-fluid" style="width: 150%; margin: 0px 0px 0px -25%;">\r\n<div class="wpb_column vc_column_container vc_col-sm-12" style="padding: 0px;">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_single_image wpb_content_element vc_align_center">\r\n<div class="wpb_wrapper">\r\n<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img attachment-full" src="../../../uploads/img111.jpg" sizes="(max-width: 1776px) 100vw, 1776px" alt="img111" width="1776" height="413" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2 style="text-align: center;">ИНФО</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(30, 11, 'ua', 'Інфо', '<div class="vc_row wpb_row vc_row-fluid" style="width: 150%; margin: 0px 0px 0px -25%;">\r\n<div class="wpb_column vc_column_container vc_col-sm-12" style="padding: 0px;">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_single_image wpb_content_element vc_align_center">\r\n<div class="wpb_wrapper">\r\n<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img attachment-full" src="../../../uploads/img111.jpg" sizes="(max-width: 1776px) 100vw, 1776px" alt="img111" width="1776" height="413" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vc_row wpb_row vc_row-fluid">\r\n<div class="wpb_column vc_column_container vc_col-sm-12">\r\n<div class="wpb_wrapper">\r\n<div class="wpb_text_column wpb_content_element ">\r\n<div class="wpb_wrapper">\r\n<h2 style="text-align: center;">ІНФО</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(31, 12, 'en', 'About us', '<p>When a reference technology meets the highest quality yarn, delicate seamless Jenadin clothes are born. We are sure that you will share our passion for the gentle and soft dresses, cardigans, skirts and &hellip; many other models of our factory, as it is so hard to imagine more pleasant materials for your body than the finest, transpiring, warm merino, delicate cashmere, rayon, and natural cotton!</p>\r\n<p>Jenadin is the first Ukrainian manufacturer of unique seamless garments of high-quality yarn. Quality, comfort and beauty &ndash; these are 3 words that can describe our clothes. When creating our factory, we sincerely wanted that Ukrainian women could afford to wear high-quality clothes &ndash; and here they are.</p>\r\n<p>What is the exclusivity of seamless clothes? Its concept is unique &ndash; <strong>&ldquo;Maximum comfort: seams do not bother, do not twist, and the clothes perfectly fit!&rdquo;</strong> It is quite difficult to make such clothes, and owing to the innovative technology, the seamless clothes are equaled with garments created manually around the world.</p>\r\n<p>The key to creating of a perfect garment is its material. We purchase raw materials for our collections in Italy, as only there they produce the yarn that is reference in the fashion world.</p>\r\n<p>Our target client is a woman, who appreciates quality, comfort and at the same time keeps on top of the fashion trends of the season. We believe it is all about you &nbsp;Welcome for new clothes! And let your life be as gentle as Jenadin clothes</p>'),
(32, 12, 'ru', 'О нас', '<p>Когда эталонная технология встречается с пряжей высочайшего качества, рождаются нежнейшие бесшовные вещи Jenadin. Мы уверены, что вы разделите с нами страсть к нежным и мягким платьям, кардиганам, юбкам и&hellip; многим другим моделям нашей фабрики &ndash; ведь тяжело себе представить более приятные материалы для вашего тела, чем тончайший дышащий теплый меринос, нежнейший кашемир, вискоза, натуральный хлопок!</p>\r\n<p>Jenadin &minus; первый в Украине производитель уникальных бесшовных изделий из высококачественной пряжи. Качество, комфорт и красота &ndash; вот 3 слова, которыми можно описать одежду нашей фабрики. Создавая фабрику, мы искренне хотели, чтобы украинские женщины могли себе позволить носить качественные вещи &ndash; и вот, они перед вами.</p>\r\n<p>В чем эксклюзивность бесшовной одежды? Ее концепция уникальна &ndash; <strong>&laquo;Максимальный комфорт: швы не мешают, не перекручиваются, а вещи идеально садятся по фигуре!&raquo;</strong> Создавать такие вещи достаточно сложно, и благодаря инновационной технологии бесшовную одежду во всем мире приравнивают к вещам, созданным вручную.</p>\r\n<p>Ключ к созданию идеальной вещи &ndash; это ее материал. Сырьё для своих коллекций мы закупаем в Италии, ведь только там производят пряжу, которая является эталоном в мире моды.</p>\r\n<p>Наш клиент &ndash; это женщина, которая ценит качество, комфорт и при этом следит за модными тенденциями сезона. Мы уверены, что речь о вас &nbsp;Добро пожаловать за обновками! И пусть ваша жизнь будет такой же нежной, как вещи от Jenadin</p>');
INSERT INTO `postlang` (`id`, `post_id`, `language`, `title`, `content`) VALUES
(33, 12, 'ua', 'Про нас', '<p>Коли еталонна технологія зустрічається з пряжею найвищої якості, народжуються найніжніші безшовні речі Jenadin. Ми впевнені, що ви розділите з нами пристрасть до ніжних і м&rsquo;яких суконь, кардиганів, спідниць&hellip;та багатьох інших моделей нашої фабрики &ndash; адже важко собі уявити більш приємні матеріали для вашого тіла, ніж найтонший дихаючий теплий меринос, найніжніший кашемір, віскоза, натуральна бавовна!</p>\r\n<p>Jenadin &minus; перший в Україні виробник унікальних безшовних виробів з високоякісної пряжі. Якість, комфорт і краса &ndash; ось 3 слова, якими можна описати одяг нашої фабрики. Створюючи фабрику, ми щиро хотіли, щоб українські жінки могли собі дозволити носити якісні речі &ndash; і ось вони перед вами.</p>\r\n<p>У чому ексклюзивність безшовного одягу? Його концепція унікальна <strong>&laquo;Максимальний комфорт: шви не заважають, не перекручуються, а речі ідеально лягають по фігурі!&raquo;</strong> Створювати такі речі досить складно, і завдяки інноваційним технологіям безшовний одяг у всьому світі прирівнюють до речей, створених вручну.</p>\r\n<p>Ключ до створення ідеальної речі &ndash; це її матеріал. Сировину для своїх колекцій ми закуповуємо в Італії, адже тільки там виробляють пряжу, яка є еталоном в світі моди.</p>\r\n<p>Наш клієнт &ndash; це жінка, яка цінує якість, комфорт і при цьому стежить за модними тенденціями сезону. Ми впевнені, що це саме ви &ndash; ласкаво просимо за обновками! І нехай ваше життя буде таке ж ніжне, як речі від Jenadin</p>'),
(34, 13, 'en', 'How to take care of your clothes', '<p>We knit beautiful and comfortable pieces for you, and we want you to enjoy them as long as possible. Here&rsquo;s how to take care of them:</p>\r\n<p>Wash the clothes (by hand or in the machine) at the temperature of 40 degrees and lower. If you choose machine washing, then select the &ldquo;Wool&rdquo; or &ldquo;Delicate&rdquo; mode.</p>\r\n<p>It is advisable to wash them separately from other clothes.</p>\r\n<p>When washing the pieces, use either soap solution or special-purpose liquid agents, which contain no bleaching agents, alkalis or colored beads.</p>\r\n<p>When hand washing, do not stretch or twist the knitwear.</p>\r\n<p>Dry the knitwear by straightening (not stretching) it lengthwise on a horizontal surface.</p>\r\n<p>If necessary, the knitwear can be ironed &ndash; on the inner side using a not very hot iron.</p>\r\n<p>Wear our clothes with pleasure and as long as possible!</p>'),
(35, 13, 'ru', 'Уход за вещами', '<p>Мы вяжем для вас красивые и удобные вещи и хотим, чтобы вы наслаждались ими как можно дольше. Вот как за ними нужно ухаживать:</p>\r\n<ul>\r\n<li>Температура любой стирки (и ручной, и машинной) должна быть не более 40 градусов. Если это стиральная машинка, то &nbsp;выбирайте режим &laquo;Шерсть&raquo; или &laquo;Деликатный&raquo;.</li>\r\n<li>&nbsp;Желательно&nbsp; стирать их отдельно от другой одежды.</li>\r\n<li>Используйте для стирки либо мыльный раствор, либо специальные жидкие средства, обязательно не содержащие отбеливателей, щелочей и цветных гранул.</li>\r\n<li>При ручной стирке не стоит растягивать или сжимать вязаные вещи.</li>\r\n<li>Сушите вязаные вещи предварительно расправив (но не растянув) по длине, на горизонтальной поверхности.</li>\r\n<li>По необходимости вязаные вещи можно&nbsp;гладить &ndash; с изнаночной стороны и не очень горячим утюгом.</li>\r\n</ul>\r\n<p>Носите наши вещи с удовольствием &ndash; и как можно дольше!</p>'),
(36, 13, 'ua', 'Догляд за речами', '<p>Ми в&rsquo;яжемо для вас красиві і зручні речі та хочемо, щоб ви насолоджувалися ними як найдовше. Ось як за ними потрібно доглядати:</p>\r\n<ul>\r\n<li>Температура будь-якого прання (і ручного і машинного) повинна бути не більше 40 градусів. Якщо це пральна машинка, то обирайте режим &laquo;Вовна&raquo; або &laquo;Делікатний&raquo;.</li>\r\n<li>Бажано прати їх окремо від іншого одягу.</li>\r\n<li>Використовуйте для прання або мильний розчин, або спеціальні рідкі засоби, обов&rsquo;язково які не містять відбілювачів, лугів і кольорових гранул.</li>\r\n<li>При ручному пранні не варто розтягувати або стискати в&rsquo;язані речі.</li>\r\n<li>Сушіть в&rsquo;язані речі попередньо розправивши (але не розтягнувши) по довжині, на горизонтальній поверхні.</li>\r\n<li>За необхідності в&rsquo;язані речі можна прасувати &ndash; з виворітного боку і не дуже гарячою праскою.</li>\r\n</ul>\r\n<p>Носіть наші речі з задоволенням &ndash; і як найдовше!</p>'),
(37, 14, 'en', 'Size table', '<p><img src="../../../uploads/table-size-eng.jpg" alt="" width="789" height="321" /></p>'),
(38, 14, 'ru', 'Таблица размеров', '<p><img src="../../../uploads/table-sizes.jpg" alt="" width="789" height="321" /></p>'),
(39, 14, 'ua', 'Таблиця розмірів', '<p><img src="../../../uploads/table-sizes-ua.png" alt="" width="789" height="321" /></p>'),
(40, 15, 'en', 'Main page', '<p>English</p>'),
(41, 15, 'ru', 'Главная страница', '<p>Русский</p>'),
(42, 15, 'ua', 'Головна сторінка', '<p>Українська</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `enabled` int(11) NOT NULL,
  `vendor_code` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `in_stock` tinyint(1) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `image_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `created_at`, `updated_at`, `enabled`, `vendor_code`, `sort`, `price`, `in_stock`, `alias`, `type`, `currency_id`, `video`, `is_new`, `image_color`) VALUES
(4, 1471105941, 1473879569, 1, '16-111201', NULL, 2900, 1, 'cardigan-capuchino-16-111201', 'simple', 1, '/uploads/products/4/video/Marc Jacobs Distressed striped cashmere sweater NET-A-PORTER.mp4', 0, '/uploads/products/icons/4/blue-white.png'),
(10, 1473690118, 1473690157, 1, '15-012102', NULL, 1935, 1, 'bruki-black-15-012102', 'simple', 1, '', 0, NULL),
(11, 1473690481, 1473690709, 1, '16-012104', NULL, 5280, 1, 'bruki-gray-16-012104', 'simple', 1, '', 0, NULL),
(12, 1473691393, 1473691431, 1, '16-012003', NULL, 7650, 1, 'palto-gray-16-012003', 'simple', 1, '', 0, NULL),
(13, 1473691887, 1473691887, 1, '15-011804', NULL, 4281, 1, 'jaket-blue-15-011804', 'simple', 1, '', 0, NULL),
(14, 1473692549, 1473692549, 1, '16-010611', NULL, 5920, 1, 'kimono-red-16-010611', 'simple', 1, '', 0, NULL),
(15, 1473693216, 1473693216, 1, '15-010605', NULL, 3400, 1, 'plate-black-15-010605', 'simple', 1, '', 0, NULL),
(16, 1473693648, 1473695183, 1, '16-100503', NULL, 3425, 1, 'ubka-blue-16-100503', 'simple', 1, '', 0, '/uploads/products/icons/d2d92120-c86a-4632-a9e9-cc71ab317851/blue.png'),
(17, 1473694169, 1473694169, 1, '16-100503', NULL, 3425, 1, 'ubka-white-16-100503', 'simple', 1, '', 0, '/uploads/products/icons//white.png'),
(18, 1473695700, 1473695721, 1, '16-100603', NULL, 3320, 1, 'plate-redwhite-16-100603', 'simple', 1, '', 0, '/uploads/products/icons/a4b490b3-62f2-4d50-8847-211df778cabd/red-white.png');

-- --------------------------------------------------------

--
-- Структура таблицы `productlang`
--

CREATE TABLE IF NOT EXISTS `productlang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `language` varchar(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `size_fit` text NOT NULL,
  `editor_notes` text NOT NULL,
  `content` text NOT NULL,
  `short_description` text,
  `table_size` text NOT NULL,
  `search_text` text,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `product_id_2` (`product_id`,`language`),
  FULLTEXT KEY `search_text` (`search_text`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `productlang`
--

INSERT INTO `productlang` (`id`, `product_id`, `language`, `title`, `size_fit`, `editor_notes`, `content`, `short_description`, `table_size`, `search_text`) VALUES
(10, 4, 'en', 'Cardigan', '<ul class="font-list-copy content-tick">\r\n<li>Fits true to size, take your normal size</li>\r\n<li>Tailored for a slightly loose fit</li>\r\n<li>Internal shoulder pads</li>\r\n<li>Mid-weight, non-stretchy fabric</li>\r\n<li>Those with broad shoulders may wish to take the next size up</li>\r\n<li>Model is 175cm/ 5''9" and is wearing an IT size 40</li>\r\n</ul>', '<p>Gucci''s cotton and wool-blend blazer has an all-over polka-dot pattern and velvet trims. Tailored for a slightly loose fit, it has flap pockets and embossed buttons that nod to the label''s archives - they feature the original crest and founding year. Fully lined in georgette, it slips on effortlessly over tops and dresses.</p>', '<ul class="font-list-copy content-tick">\r\n<li>Navy cotton and wool-blend</li>\r\n<li>Button fastenings through front</li>\r\n<li>56% cotton, 44% wool; trim: 50% wool, 50% acrylic; lining1: 71% acetate, 29% silk; lining2: 100% viscose</li>\r\n<li>Dry clean</li>\r\n<li>Made in Italy</li>\r\n</ul>', '<p>Knitted cardigan with pockets</p>', '<table class="table-size" width="100%">\r\n<tbody>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;S</td>\r\n<td style="height: 13px;">&nbsp;M</td>\r\n<td style="height: 13px;">L&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;XL</td>\r\n<td style="height: 13px;">&nbsp;XXL</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">ЖЕНСКИЕ ГОЛЬФЫ, ДЖЕМПЕРА</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86-94&nbsp;</td>\r\n<td style="height: 13px;">90-108</td>\r\n<td style="height: 13px;">94-102</td>\r\n<td style="height: 13px;">98-106</td>\r\n<td style="height: 13px;">102-108&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">56-68</td>\r\n<td style="height: 13px;">64-72</td>\r\n<td style="height: 13px;">72-80&nbsp;</td>\r\n<td style="height: 13px;">80-88&nbsp;</td>\r\n<td style="height: 13px;">88-96&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="row-offset" style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">ЖЕНСКИЕ&nbsp;ПЛАТЬЯ, ЮБКИ</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n<td style="height: 13px;">94&nbsp;</td>\r\n<td style="height: 13px;">98&nbsp;</td>\r\n<td style="height: 13px;">102&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">68&nbsp;</td>\r\n<td style="height: 13px;">72&nbsp;</td>\r\n<td style="height: 13px;">76&nbsp;</td>\r\n<td style="height: 13px;">82&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">92&nbsp;</td>\r\n<td style="height: 13px;">96&nbsp;</td>\r\n<td style="height: 13px;">100&nbsp;</td>\r\n<td style="height: 13px;">108</td>\r\n<td style="height: 13px;">116&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'BROWN XS S M L XL XXL JENADIN JENADIN SPRING-SUMMER 2016 CARDIGANS CARDIGAN  NAVY COTTON AND WOOL-BLEND BUTTON FASTENINGS THROUGH FRONT 56% COTTON, 44% WOOL; TRIM: 50% WOOL, ACRYLIC; LINING1: 71% ACETATE, 29% SILK; LINING2: 100% VISCOSE DRY CLEAN MADE IN ITALY KNITTED CARDIGAN WITH POCKETS'),
(11, 4, 'ru', 'Кардиган', '<ul class="font-list-copy content-tick">\r\n<li>Fits true to size, take your normal size</li>\r\n<li>Tailored for a slightly loose fit</li>\r\n<li>Internal shoulder pads</li>\r\n<li>Mid-weight, non-stretchy fabric</li>\r\n<li>Those with broad shoulders may wish to take the next size up</li>\r\n<li>Model is 175cm/ 5''9" and is wearing an IT size 40</li>\r\n</ul>', '<p>Gucci''s cotton and wool-blend blazer has an all-over polka-dot pattern and velvet trims. Tailored for a slightly loose fit, it has flap pockets and embossed buttons that nod to the label''s archives - they feature the original crest and founding year. Fully lined in georgette, it slips on effortlessly over tops and dresses.</p>', '<ul class="font-list-copy content-tick">\r\n<li>Navy cotton and wool-blend</li>\r\n<li>Button fastenings through front</li>\r\n<li>56% cotton, 44% wool; trim: 50% wool, 50% acrylic; lining1: 71% acetate, 29% silk; lining2: 100% viscose</li>\r\n<li>Dry clean</li>\r\n<li>Made in Italy</li>\r\n</ul>', '<p>Вязаный кардиган с карманами</p>', '<table class="table-size" width="100%">\r\n<tbody>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;S</td>\r\n<td style="height: 13px;">&nbsp;M</td>\r\n<td style="height: 13px;">L&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;XL</td>\r\n<td style="height: 13px;">&nbsp;XXL</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">ЖЕНСКИЕ ГОЛЬФЫ, ДЖЕМПЕРА</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86-94&nbsp;</td>\r\n<td style="height: 13px;">90-108</td>\r\n<td style="height: 13px;">94-102</td>\r\n<td style="height: 13px;">98-106</td>\r\n<td style="height: 13px;">102-108&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">56-68</td>\r\n<td style="height: 13px;">64-72</td>\r\n<td style="height: 13px;">72-80&nbsp;</td>\r\n<td style="height: 13px;">80-88&nbsp;</td>\r\n<td style="height: 13px;">88-96&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="row-offset" style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">ЖЕНСКИЕ&nbsp;ПЛАТЬЯ, ЮБКИ</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n<td style="height: 13px;">94&nbsp;</td>\r\n<td style="height: 13px;">98&nbsp;</td>\r\n<td style="height: 13px;">102&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">68&nbsp;</td>\r\n<td style="height: 13px;">72&nbsp;</td>\r\n<td style="height: 13px;">76&nbsp;</td>\r\n<td style="height: 13px;">82&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">92&nbsp;</td>\r\n<td style="height: 13px;">96&nbsp;</td>\r\n<td style="height: 13px;">100&nbsp;</td>\r\n<td style="height: 13px;">108</td>\r\n<td style="height: 13px;">116&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'КОРИЧНЕВЫЙ XS S M L XL XXL JENADIN JENADIN ВЕСНА-ЛЕТО 2016 КАРДИГАНЫ И НАКИДКИ КАРДИГАН  NAVY COTTON AND WOOL-BLEND BUTTON FASTENINGS THROUGH FRONT 56% COTTON, 44% WOOL; TRIM: 50% WOOL, ACRYLIC; LINING1: 71% ACETATE, 29% SILK; LINING2: 100% VISCOSE DRY CLEAN MADE IN ITALY ВЯЗАНЫЙ КАРДИГАН С КАРМАНАМИ'),
(12, 4, 'ua', 'Кардиган', '<ul class="font-list-copy content-tick">\r\n<li>Fits true to size, take your normal size</li>\r\n<li>Tailored for a slightly loose fit</li>\r\n<li>Internal shoulder pads</li>\r\n<li>Mid-weight, non-stretchy fabric</li>\r\n<li>Those with broad shoulders may wish to take the next size up</li>\r\n<li>Model is 175cm/ 5''9" and is wearing an IT size 40</li>\r\n</ul>', '<p>Gucci''s cotton and wool-blend blazer has an all-over polka-dot pattern and velvet trims. Tailored for a slightly loose fit, it has flap pockets and embossed buttons that nod to the label''s archives - they feature the original crest and founding year. Fully lined in georgette, it slips on effortlessly over tops and dresses.</p>', '<ul class="font-list-copy content-tick">\r\n<li>Navy cotton and wool-blend</li>\r\n<li>Button fastenings through front</li>\r\n<li>56% cotton, 44% wool; trim: 50% wool, 50% acrylic; lining1: 71% acetate, 29% silk; lining2: 100% viscose</li>\r\n<li>Dry clean</li>\r\n<li>Made in Italy</li>\r\n</ul>', '<p>В''язаний&nbsp; кардиган з кишенями</p>', '<table class="table-size" width="100%">\r\n<tbody>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;S</td>\r\n<td style="height: 13px;">&nbsp;M</td>\r\n<td style="height: 13px;">L&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;XL</td>\r\n<td style="height: 13px;">&nbsp;XXL</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">ЖЕНСКИЕ ГОЛЬФЫ, ДЖЕМПЕРА</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86-94&nbsp;</td>\r\n<td style="height: 13px;">90-108</td>\r\n<td style="height: 13px;">94-102</td>\r\n<td style="height: 13px;">98-106</td>\r\n<td style="height: 13px;">102-108&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">56-68</td>\r\n<td style="height: 13px;">64-72</td>\r\n<td style="height: 13px;">72-80&nbsp;</td>\r\n<td style="height: 13px;">80-88&nbsp;</td>\r\n<td style="height: 13px;">88-96&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="row-offset" style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">ЖЕНСКИЕ&nbsp;ПЛАТЬЯ, ЮБКИ</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n<td style="height: 13px;">94&nbsp;</td>\r\n<td style="height: 13px;">98&nbsp;</td>\r\n<td style="height: 13px;">102&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">68&nbsp;</td>\r\n<td style="height: 13px;">72&nbsp;</td>\r\n<td style="height: 13px;">76&nbsp;</td>\r\n<td style="height: 13px;">82&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">92&nbsp;</td>\r\n<td style="height: 13px;">96&nbsp;</td>\r\n<td style="height: 13px;">100&nbsp;</td>\r\n<td style="height: 13px;">108</td>\r\n<td style="height: 13px;">116&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'КОРИЧНЕВИЙ XS S M L XL XXL JENADIN JENADIN ВЕСНА-ЛІТО 2016 КАРДИГАНИ КАРДИГАН  NAVY COTTON AND WOOL-BLEND BUTTON FASTENINGS THROUGH FRONT 56% COTTON, 44% WOOL; TRIM: 50% WOOL, ACRYLIC; LINING1: 71% ACETATE, 29% SILK; LINING2: 100% VISCOSE DRY CLEAN MADE IN ITALY В''ЯЗАНИЙ&NBSP; КАРДИГАН З КИШЕНЯМИ'),
(34, 12, 'en', 'Coat', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Сoat with the belt</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees</li>\r\n<li>Made in Ukraine</li>\r\n</ul>', '<p>Мериносовое пальто на запах с поясом</p>', '', 'GRAY ONE SIZE JENADIN FALL-WINTER 2015-2016 TOP WEAR COAT  СOAT WITH THE BELT 100%MERINO WOOL MODEL 180, AND IS WEARING A S "DELICATE" WASH MODE, TEMPERATURE NOT ABOVE 30 DEGREES MADE IN UKRAINE МЕРИНОСОВОЕ ПАЛЬТО НА ЗАПАХ С ПОЯСОМ'),
(36, 12, 'ua', 'Пальто', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Сoat with the belt</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees</li>\r\n<li>Made in Ukraine</li>\r\n</ul>', '<p>Мериносовое пальто на запах с поясом</p>', '', 'СІРИЙ ONE SIZE JENADIN ОСІНЬ-ЗИМА 2015-2016 ВЕРХНІЙ ОДЯГ ПАЛЬТО  СOAT WITH THE BELT 100%MERINO WOOL MODEL 180, AND IS WEARING A S "DELICATE" WASH MODE, TEMPERATURE NOT ABOVE 30 DEGREES MADE IN UKRAINE МЕРИНОСОВОЕ ПАЛЬТО НА ЗАПАХ С ПОЯСОМ'),
(37, 13, 'en', 'Jacket', '', '', '', '', '', 'BLUE S M L XL XXL JENADIN FALL-WINTER 2015-2016 TOP WEAR JACKET'),
(38, 13, 'ru', 'Жакет', '', '', '', '', '', 'СИНИЙ S M L XL XXL JENADIN ОСЕНЬ-ЗИМА 2015-2016 ВЕРХНЯЯ ОДЕЖДА ЖАКЕТ'),
(39, 13, 'ua', 'Жакет', '', '', '', '', '', 'СИНІЙ S M L XL XXL JENADIN ОСІНЬ-ЗИМА 2015-2016 ВЕРХНІЙ ОДЯГ ЖАКЕТ'),
(40, 14, 'en', 'Kimono', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Kimono with the long belt</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees</li>\r\n<li>Made in Ukraine</li>\r\n</ul>', '<p>Kimono with the long belt</p>', '', 'RED ONE SIZE JENADIN FALL-WINTER 2015-2016 CARDIGANS KIMONO  WITH THE LONG BELT 100%MERINO WOOL MODEL 180, AND IS WEARING A S "DELICATE" WASH MODE, TEMPERATURE NOT ABOVE 30 DEGREES MADE IN UKRAINE'),
(41, 14, 'ru', 'Кимоно', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Kimono with the long belt</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees</li>\r\n<li>Made in Ukraine</li>\r\n</ul>', '<p>Kimono with the long belt</p>', '', 'КРАСНЫЙ ONE SIZE JENADIN ОСЕНЬ-ЗИМА 2015-2016 КАРДИГАНЫ И НАКИДКИ КИМОНО  KIMONO WITH THE LONG BELT 100%MERINO WOOL MODEL 180, AND IS WEARING A S "DELICATE" WASH MODE, TEMPERATURE NOT ABOVE 30 DEGREES MADE IN UKRAINE'),
(42, 14, 'ua', 'Кімоно', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Kimono with the long belt</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees</li>\r\n<li>Made in Ukraine</li>\r\n</ul>', '<p>Kimono with the long belt</p>', '', 'ЧЕРВОНИЙ ONE SIZE JENADIN ОСІНЬ-ЗИМА 2015-2016 КАРДИГАНИ КІМОНО  KIMONO WITH THE LONG BELT 100%MERINO WOOL MODEL 180, AND IS WEARING A S "DELICATE" WASH MODE, TEMPERATURE NOT ABOVE 30 DEGREES MADE IN UKRAINE'),
(28, 10, 'en', 'Pants', '', '', '', '', '', 'BLACK S M L JENADIN FALL-WINTER 2015-2016 PANTS, LEGGINGS, SHORTS PANTS'),
(29, 10, 'ru', 'Брюки', '', '', '', '', '', 'ЧЕРНЫЙ S M L JENADIN ОСЕНЬ-ЗИМА 2015-2016 БРЮКИ, ЛЕГЕНСЫ, ШОРТЫ БРЮКИ'),
(30, 10, 'ua', 'Брюки', '', '', '', '', '', 'ЧОРНИЙ S M L JENADIN ОСІНЬ-ЗИМА 2015-2016 БРЮКИ, ЛЕГІНСИ, ШОРТИ БРЮКИ'),
(31, 11, 'en', 'Pants', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Dense loose fit pants</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S.</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees.</li>\r\n<li>Made in Ukraine.</li>\r\n</ul>', '<p>Dense loose fit pants</p>', '', 'GRAY XS S M L JENADIN FALL-WINTER 2015-2016 PANTS, LEGGINGS, SHORTS PANTS  DENSE LOOSE FIT PANTS 100%MERINO WOOL MODEL 180, AND IS WEARING A SIZE S. "DELICATE" WASH MODE, THE TEMPERATURE NOT ABOVE 30 DEGREES. MADE IN UKRAINE.'),
(32, 11, 'ru', 'Брюки', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Dense loose fit pants</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S.</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees.</li>\r\n<li>Made in Ukraine.</li>\r\n</ul>', '<p>Мериносовые свободные брюки</p>', '', 'СЕРЫЙ XS S M L JENADIN ОСЕНЬ-ЗИМА 2015-2016 БРЮКИ, ЛЕГЕНСЫ, ШОРТЫ БРЮКИ  DENSE LOOSE FIT PANTS 100%MERINO WOOL MODEL 180, AND IS WEARING A SIZE S. "DELICATE" WASH MODE, THE TEMPERATURE NOT ABOVE 30 DEGREES. MADE IN UKRAINE. МЕРИНОСОВЫЕ СВОБОДНЫЕ БРЮКИ'),
(33, 11, 'ua', 'Брюки', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Dense loose fit pants</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S.</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees.</li>\r\n<li>Made in Ukraine.</li>\r\n</ul>', '<p>Мериносові вільні брюки</p>', '', 'СІРИЙ XS S M L JENADIN ОСІНЬ-ЗИМА 2015-2016 БРЮКИ, ЛЕГІНСИ, ШОРТИ БРЮКИ  DENSE LOOSE FIT PANTS 100%MERINO WOOL MODEL 180, AND IS WEARING A SIZE S. "DELICATE" WASH MODE, THE TEMPERATURE NOT ABOVE 30 DEGREES. MADE IN UKRAINE. МЕРИНОСОВІ ВІЛЬНІ БРЮКИ'),
(35, 12, 'ru', 'Пальто', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Сoat with the belt</li>\r\n<li>100%merino wool</li>\r\n<li>Model 180, and is wearing a size S</li>\r\n<li>"Delicate" wash mode, the temperature is not above 30 degrees</li>\r\n<li>Made in Ukraine</li>\r\n</ul>', '<p>Мериносовое пальто на запах с поясом</p>', '', 'СЕРЫЙ ONE SIZE JENADIN ОСЕНЬ-ЗИМА 2015-2016 ВЕРХНЯЯ ОДЕЖДА ПАЛЬТО  СOAT WITH THE BELT 100%MERINO WOOL MODEL 180, AND IS WEARING A S "DELICATE" WASH MODE, TEMPERATURE NOT ABOVE 30 DEGREES MADE IN UKRAINE МЕРИНОСОВОЕ ПАЛЬТО НА ЗАПАХ С ПОЯСОМ'),
(43, 15, 'en', 'Dress', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Мериносова сукня, вільного крою з V-подібним вирізом (бестселер)</li>\r\n<li>100% мериносова вовна</li>\r\n<li>Зріст моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>Мериносова сукня, вільного крою з V-подібним вирізом (бестселер)</p>', '', 'BLACK S-M L-XL JENADIN FALL-WINTER 2015-2016 DRESSES, SKIRTS, TUNICS DRESS  МЕРИНОСОВА СУКНЯ, ВІЛЬНОГО КРОЮ З V-ПОДІБНИМ ВИРІЗОМ (БЕСТСЕЛЕР) 100% МЕРИНОСОВА ВОВНА ЗРІСТ МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР S ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO; ЗРОБЛЕНО УКРАЇНІ'),
(44, 15, 'ru', 'Платье', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Мериносова сукня, вільного крою з V-подібним вирізом (бестселер)</li>\r\n<li>100% мериносова вовна</li>\r\n<li>Зріст моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>Мериносова сукня, вільного крою з V-подібним вирізом (бестселер)</p>', '', 'ЧЕРНЫЙ S-M L-XL JENADIN ОСЕНЬ-ЗИМА 2015-2016 ПЛАТЬЯ, ЮБКИ, САРАФАНЫ ПЛАТЬЕ  МЕРИНОСОВА СУКНЯ, ВІЛЬНОГО КРОЮ З V-ПОДІБНИМ ВИРІЗОМ (БЕСТСЕЛЕР) 100% МЕРИНОСОВА ВОВНА ЗРІСТ МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР S ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO; ЗРОБЛЕНО УКРАЇНІ'),
(45, 15, 'ua', 'Сукня', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Мериносова сукня, вільного крою з V-подібним вирізом (бестселер)</li>\r\n<li>100% мериносова вовна</li>\r\n<li>Зріст моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>Мериносова сукня, вільного крою з V-подібним вирізом (бестселер)</p>', '', 'ЧОРНИЙ S-M L-XL JENADIN ОСІНЬ-ЗИМА 2015-2016 СУКНІ, ЮБКИ, САРАФАНИ СУКНЯ  МЕРИНОСОВА СУКНЯ, ВІЛЬНОГО КРОЮ З V-ПОДІБНИМ ВИРІЗОМ (БЕСТСЕЛЕР) 100% МЕРИНОСОВА ВОВНА ЗРІСТ МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР S ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO; ЗРОБЛЕНО УКРАЇНІ'),
(46, 16, 'en', 'Skirt', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст &nbsp;моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>В&rsquo;язана розкльошена спідниця, міді.</p>', '', 'BLUE S M L JENADIN JENADIN SPRING-SUMMER 2016 DRESSES, SKIRTS, TUNICS SKIRT  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ &NBSP;МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ В&RSQUO;ЯЗАНА РОЗКЛЬОШЕНА СПІДНИЦЯ, МІДІ.'),
(47, 16, 'ru', 'Юбка', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст &nbsp;моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>В&rsquo;язана розкльошена спідниця, міді.</p>', '', 'СИНИЙ S M L JENADIN JENADIN ВЕСНА-ЛЕТО 2016 ПЛАТЬЯ, ЮБКИ, САРАФАНЫ ЮБКА  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ &NBSP;МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ В&RSQUO;ЯЗАНА РОЗКЛЬОШЕНА СПІДНИЦЯ, МІДІ.'),
(48, 16, 'ua', 'Спідниця', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст &nbsp;моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>В&rsquo;язана розкльошена спідниця, міді.</p>', '', 'СИНІЙ S M L JENADIN JENADIN ВЕСНА-ЛІТО 2016 СУКНІ, ЮБКИ, САРАФАНИ СПІДНИЦЯ  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ &NBSP;МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ В&RSQUO;ЯЗАНА РОЗКЛЬОШЕНА СПІДНИЦЯ, МІДІ.'),
(49, 17, 'en', 'Skirt', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст &nbsp;моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>В&rsquo;язана розкльошена спідниця, міді.</p>', '', 'WHITE S JENADIN JENADIN SPRING-SUMMER 2016 DRESSES, SKIRTS, TUNICS SKIRT  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ &NBSP;МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ В&RSQUO;ЯЗАНА РОЗКЛЬОШЕНА СПІДНИЦЯ, МІДІ.'),
(50, 17, 'ru', 'Юбка', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст &nbsp;моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>В&rsquo;язана розкльошена спідниця, міді.</p>', '', 'БЕЛЫЙ S JENADIN JENADIN ВЕСНА-ЛЕТО 2016 ПЛАТЬЯ, ЮБКИ, САРАФАНЫ ЮБКА  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ &NBSP;МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ В&RSQUO;ЯЗАНА РОЗКЛЬОШЕНА СПІДНИЦЯ, МІДІ.'),
(51, 17, 'ua', 'Спідниця', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст &nbsp;моделі 180, одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>В&rsquo;язана розкльошена спідниця, міді.</p>', '', 'БІЛИЙ S JENADIN JENADIN ВЕСНА-ЛІТО 2016 СУКНІ, ЮБКИ, САРАФАНИ СПІДНИЦЯ  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ &NBSP;МОДЕЛІ 180, ОДЯГНЕНА В РОЗМІР ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ В&RSQUO;ЯЗАНА РОЗКЛЬОШЕНА СПІДНИЦЯ, МІДІ.'),
(52, 18, 'en', 'Dress', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст моделі 180 і одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>Розкльошена в&rsquo;язана сукня в смужку з завищеною талією і рукавами три чверті.</p>', '', 'RED WHITE M L JENADIN JENADIN SPRING-SUMMER 2016 DRESSES, SKIRTS, TUNICS DRESS  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ МОДЕЛІ 180 І ОДЯГНЕНА В РОЗМІР S ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ РОЗКЛЬОШЕНА В&RSQUO;ЯЗАНА СУКНЯ СМУЖКУ З ЗАВИЩЕНОЮ ТАЛІЄЮ РУКАВАМИ ТРИ ЧВЕРТІ.'),
(53, 18, 'ru', 'Платье', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст моделі 180 і одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>Розкльошена в&rsquo;язана сукня в смужку з завищеною талією і рукавами три чверті.</p>', '', 'КРАСНЫЙ БЕЛЫЙ M L JENADIN JENADIN ВЕСНА-ЛЕТО 2016 ПЛАТЬЯ, ЮБКИ, САРАФАНЫ ПЛАТЬЕ  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ МОДЕЛІ 180 І ОДЯГНЕНА В РОЗМІР S ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ РОЗКЛЬОШЕНА В&RSQUO;ЯЗАНА СУКНЯ СМУЖКУ З ЗАВИЩЕНОЮ ТАЛІЄЮ РУКАВАМИ ТРИ ЧВЕРТІ.'),
(54, 18, 'ua', 'Сукня', '', '', '<ul class="font-list-copy content-tick">\r\n<li>Склад: 90% Віскоза 10% Еліт</li>\r\n<li>Зріст моделі 180 і одягнена в розмір S</li>\r\n<li>Догляд за виробом: режим прання &laquo;Делікатний&raquo;, температура не більше 30 градусів</li>\r\n<li>Зроблено в Україні</li>\r\n</ul>', '<p>Розкльошена в&rsquo;язана сукня в смужку з завищеною талією і рукавами три чверті.</p>', '', 'ЧЕРВОНИЙ БІЛИЙ M L JENADIN JENADIN ВЕСНА-ЛІТО 2016 СУКНІ, ЮБКИ, САРАФАНИ СУКНЯ  СКЛАД: 90% ВІСКОЗА 10% ЕЛІТ ЗРІСТ МОДЕЛІ 180 І ОДЯГНЕНА В РОЗМІР S ДОГЛЯД ЗА ВИРОБОМ: РЕЖИМ ПРАННЯ &LAQUO;ДЕЛІКАТНИЙ&RAQUO;, ТЕМПЕРАТУРА НЕ БІЛЬШЕ 30 ГРАДУСІВ ЗРОБЛЕНО УКРАЇНІ РОЗКЛЬОШЕНА В&RSQUO;ЯЗАНА СУКНЯ СМУЖКУ З ЗАВИЩЕНОЮ ТАЛІЄЮ РУКАВАМИ ТРИ ЧВЕРТІ.');

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`) VALUES
(37, 4, 11),
(38, 10, 7),
(39, 11, 7),
(40, 12, 10),
(41, 13, 10),
(42, 14, 11),
(43, 15, 13),
(44, 16, 13),
(45, 17, 13),
(46, 18, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `product_characteristic`
--

CREATE TABLE IF NOT EXISTS `product_characteristic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `characteristic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`,`characteristic_id`),
  KEY `characteristic_id` (`characteristic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1730 ;

--
-- Дамп данных таблицы `product_characteristic`
--

INSERT INTO `product_characteristic` (`id`, `product_id`, `characteristic_id`) VALUES
(1728, 4, 1),
(1729, 4, 2),
(1721, 4, 10),
(1722, 4, 24),
(1723, 4, 26),
(1724, 4, 28),
(1725, 4, 30),
(1726, 4, 32),
(1727, 4, 34),
(1636, 10, 1),
(1637, 10, 3),
(1632, 10, 20),
(1633, 10, 26),
(1634, 10, 28),
(1635, 10, 30),
(1649, 11, 3),
(1644, 11, 12),
(1645, 11, 24),
(1646, 11, 26),
(1647, 11, 28),
(1648, 11, 30),
(1656, 12, 1),
(1657, 12, 3),
(1654, 12, 12),
(1655, 12, 23),
(1664, 13, 1),
(1665, 13, 3),
(1658, 13, 11),
(1659, 13, 26),
(1660, 13, 28),
(1661, 13, 30),
(1662, 13, 32),
(1663, 13, 34),
(1668, 14, 1),
(1669, 14, 3),
(1666, 14, 15),
(1667, 14, 23),
(1673, 15, 1),
(1674, 15, 3),
(1670, 15, 20),
(1671, 15, 27),
(1672, 15, 31),
(1707, 16, 1),
(1708, 16, 2),
(1703, 16, 11),
(1704, 16, 26),
(1705, 16, 28),
(1706, 16, 30),
(1683, 17, 1),
(1684, 17, 2),
(1681, 17, 19),
(1682, 17, 26),
(1719, 18, 1),
(1720, 18, 2),
(1715, 18, 15),
(1716, 18, 19),
(1717, 18, 28),
(1718, 18, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `product_gallery`
--

CREATE TABLE IF NOT EXISTS `product_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=551 ;

--
-- Дамп данных таблицы `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `image`, `product_id`, `sort`) VALUES
(485, '/uploads/products/10/IMG_13141.jpg', 10, NULL),
(486, '/uploads/products/10/IMG_1321.jpg', 10, NULL),
(487, '/uploads/products/10/IMG_1318.jpg', 10, NULL),
(488, '/uploads/products/10/IMG_13291.jpg', 10, NULL),
(493, '/uploads/products/11/IMG_0408.jpg', 11, NULL),
(494, '/uploads/products/11/IMG_0365.jpg', 11, NULL),
(495, '/uploads/products/11/IMG_0380_1.jpg', 11, NULL),
(496, '/uploads/products/11/IMG_0434.jpg', 11, NULL),
(501, '/uploads/products/12/IMG_0494-3.jpg', 12, NULL),
(502, '/uploads/products/12/IMG_0443-1.jpg', 12, NULL),
(503, '/uploads/products/12/IMG_0527.jpg', 12, NULL),
(504, '/uploads/products/12/IMG_0543-2.jpg', 12, NULL),
(505, '/uploads/products/13/IMG_0901.jpg', 13, NULL),
(506, '/uploads/products/13/IMG_0885.jpg', 13, NULL),
(507, '/uploads/products/13/IMG_0894.jpg', 13, NULL),
(508, '/uploads/products/13/IMG_0899.jpg', 13, NULL),
(509, '/uploads/products/14/IMG_1770.jpg', 14, NULL),
(510, '/uploads/products/14/IMG_1759.jpg', 14, NULL),
(511, '/uploads/products/14/IMG_1781.jpg', 14, NULL),
(512, '/uploads/products/14/IMG_1785.jpg', 14, NULL),
(513, '/uploads/products/15/IMG_1717.jpg', 15, NULL),
(514, '/uploads/products/15/IMG_1705.jpg', 15, NULL),
(515, '/uploads/products/15/IMG_1721.jpg', 15, NULL),
(516, '/uploads/products/15/IMG_1730.jpg', 15, NULL),
(521, '/uploads/products/17/IMG_2954.jpg', 17, NULL),
(522, '/uploads/products/17/IMG_2969.jpg', 17, NULL),
(523, '/uploads/products/17/IMG_2982.jpg', 17, NULL),
(524, '/uploads/products/17/IMG_2978.jpg', 17, NULL),
(537, '/uploads/products/16/IMG_2988.jpg', 16, NULL),
(538, '/uploads/products/16/IMG_3006.jpg', 16, NULL),
(539, '/uploads/products/16/IMG_3017.jpg', 16, NULL),
(540, '/uploads/products/16/IMG_3022.jpg', 16, NULL),
(544, '/uploads/products/18/IMG_16-100603.jpg', 18, NULL),
(545, '/uploads/products/18/IMG_1770.jpg', 18, NULL),
(546, '/uploads/products/18/IMG_1782.jpg', 18, NULL),
(547, '/uploads/products/4/IMG_3182.jpg', 4, NULL),
(548, '/uploads/products/4/IMG_3186.jpg', 4, NULL),
(549, '/uploads/products/4/IMG_3198.jpg', 4, NULL),
(550, '/uploads/products/4/IMG_3280.jpg', 4, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_variation`
--

CREATE TABLE IF NOT EXISTS `product_variation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `characteristic_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `currency_id` int(11) NOT NULL,
  `in_stock` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`,`characteristic_id`),
  KEY `characteristic_id` (`characteristic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `percentage` float NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sale`
--

INSERT INTO `sale` (`id`, `name`, `created_at`, `updated_at`, `percentage`, `enabled`) VALUES
(1, 'Акция на 10%', 1472887804, 1473695933, 10, 1),
(3, 'Акция на 30%', 1472898331, 1472909449, 30, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sale_product`
--

CREATE TABLE IF NOT EXISTS `sale_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sale_product`
--

INSERT INTO `sale_product` (`id`, `sale_id`, `product_id`) VALUES
(1, 1, 4),
(3, 1, 16),
(2, 1, 17),
(4, 1, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `phone`) VALUES
(1, '+ 38 (050) 984-34-32');

-- --------------------------------------------------------

--
-- Структура таблицы `settinglang`
--

CREATE TABLE IF NOT EXISTS `settinglang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `table_size` text NOT NULL,
  `seo_category_description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_id` (`setting_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `settinglang`
--

INSERT INTO `settinglang` (`id`, `setting_id`, `language`, `table_size`, `seo_category_description`) VALUES
(1, 1, 'en', '<table class="table-size" width="100%">\r\n<tbody>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;S</td>\r\n<td style="height: 13px;">&nbsp;M</td>\r\n<td style="height: 13px;">L&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;XL</td>\r\n<td style="height: 13px;">&nbsp;XXL</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">FEMALE ROLL-NECK SWEATERS, JUMPERS</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86-94&nbsp;</td>\r\n<td style="height: 13px;">90-108</td>\r\n<td style="height: 13px;">94-102</td>\r\n<td style="height: 13px;">98-106</td>\r\n<td style="height: 13px;">102-108&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">56-68</td>\r\n<td style="height: 13px;">64-72</td>\r\n<td style="height: 13px;">72-80&nbsp;</td>\r\n<td style="height: 13px;">80-88&nbsp;</td>\r\n<td style="height: 13px;">88-96&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="row-offset" style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">FEMALE DRESSES, SKIRTS</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n<td style="height: 13px;">94&nbsp;</td>\r\n<td style="height: 13px;">98&nbsp;</td>\r\n<td style="height: 13px;">102&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">68&nbsp;</td>\r\n<td style="height: 13px;">72&nbsp;</td>\r\n<td style="height: 13px;">76&nbsp;</td>\r\n<td style="height: 13px;">82&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">92&nbsp;</td>\r\n<td style="height: 13px;">96&nbsp;</td>\r\n<td style="height: 13px;">100&nbsp;</td>\r\n<td style="height: 13px;">108</td>\r\n<td style="height: 13px;">116&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Top clothing online at Jenadin.com.ua. Wide variety of clothing:'),
(2, 1, 'ru', '<table class="table-size" width="100%">\r\n<tbody>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;S</td>\r\n<td style="height: 13px;">&nbsp;M</td>\r\n<td style="height: 13px;">L&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;XL</td>\r\n<td style="height: 13px;">&nbsp;XXL</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">FEMALE ROLL-NECK SWEATERS, JUMPERS</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86-94&nbsp;</td>\r\n<td style="height: 13px;">90-108</td>\r\n<td style="height: 13px;">94-102</td>\r\n<td style="height: 13px;">98-106</td>\r\n<td style="height: 13px;">102-108&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">56-68</td>\r\n<td style="height: 13px;">64-72</td>\r\n<td style="height: 13px;">72-80&nbsp;</td>\r\n<td style="height: 13px;">80-88&nbsp;</td>\r\n<td style="height: 13px;">88-96&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="row-offset" style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">FEMALE DRESSES, SKIRTS</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n<td style="height: 13px;">94&nbsp;</td>\r\n<td style="height: 13px;">98&nbsp;</td>\r\n<td style="height: 13px;">102&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">68&nbsp;</td>\r\n<td style="height: 13px;">72&nbsp;</td>\r\n<td style="height: 13px;">76&nbsp;</td>\r\n<td style="height: 13px;">82&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">92&nbsp;</td>\r\n<td style="height: 13px;">96&nbsp;</td>\r\n<td style="height: 13px;">100&nbsp;</td>\r\n<td style="height: 13px;">108</td>\r\n<td style="height: 13px;">116&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Широкий выбор одежды он-лайн на Jenadin.com.ua. Ассортимент одежды:'),
(3, 1, 'ua', '<table class="table-size" width="100%">\r\n<tbody>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;S</td>\r\n<td style="height: 13px;">&nbsp;M</td>\r\n<td style="height: 13px;">L&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;XL</td>\r\n<td style="height: 13px;">&nbsp;XXL</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">FEMALE ROLL-NECK SWEATERS, JUMPERS</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86-94&nbsp;</td>\r\n<td style="height: 13px;">90-108</td>\r\n<td style="height: 13px;">94-102</td>\r\n<td style="height: 13px;">98-106</td>\r\n<td style="height: 13px;">102-108&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">56-68</td>\r\n<td style="height: 13px;">64-72</td>\r\n<td style="height: 13px;">72-80&nbsp;</td>\r\n<td style="height: 13px;">80-88&nbsp;</td>\r\n<td style="height: 13px;">88-96&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr class="row-offset" style="height: 13px;">\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n<td style="height: 13px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td class="subtitle-cell" style="height: 13px;" colspan="6">FEMALE DRESSES, SKIRTS</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Chest, cm&nbsp;</td>\r\n<td style="height: 13px;">86&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n<td style="height: 13px;">94&nbsp;</td>\r\n<td style="height: 13px;">98&nbsp;</td>\r\n<td style="height: 13px;">102&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Waist, cm&nbsp;</td>\r\n<td style="height: 13px;">68&nbsp;</td>\r\n<td style="height: 13px;">72&nbsp;</td>\r\n<td style="height: 13px;">76&nbsp;</td>\r\n<td style="height: 13px;">82&nbsp;</td>\r\n<td style="height: 13px;">90&nbsp;</td>\r\n</tr>\r\n<tr style="height: 13px;">\r\n<td style="height: 13px;">Hip, cm&nbsp;</td>\r\n<td style="height: 13px;">92&nbsp;</td>\r\n<td style="height: 13px;">96&nbsp;</td>\r\n<td style="height: 13px;">100&nbsp;</td>\r\n<td style="height: 13px;">108</td>\r\n<td style="height: 13px;">116&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Широкий вибір одягу он-лайн на Jenadin.com.ua. Асортимент одягу:');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `name`, `alias`) VALUES
(1, 'Главная страница', 'main-page');

-- --------------------------------------------------------

--
-- Структура таблицы `slider_item`
--

CREATE TABLE IF NOT EXISTS `slider_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_id` (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Дамп данных таблицы `slider_item`
--

INSERT INTO `slider_item` (`id`, `slider_id`, `image`, `url`, `sort`) VALUES
(97, 1, '/uploads/sliders/1/IMG_3523r333.jpg', '', 0),
(98, 1, '/uploads/sliders/1/IMG_3508r13.jpg', 'services', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `social_link`
--

CREATE TABLE IF NOT EXISTS `social_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `social_link`
--

INSERT INTO `social_link` (`id`, `name`, `url`, `alias`, `sort`) VALUES
(1, 'Facebook', 'https://www.facebook.com/jenadinweknityouwear/timeline?ref=page_internal', 'fb', 0),
(2, 'Instagram', 'https://www.instagram.com/jenadin.com.ua/', 'inst', 1),
(3, 'Вконтакте', 'https://vk.com/public60125353', 'vk', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `source_message`
--

CREATE TABLE IF NOT EXISTS `source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=882 ;

--
-- Дамп данных таблицы `source_message`
--

INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
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
(537, 'common/modules/i18n', 'Translations'),
(538, 'common/modules/i18n', 'Id'),
(539, 'common/modules/i18n', 'Message'),
(540, 'common/modules/i18n', 'Category'),
(541, 'common/modules/i18n', 'Status'),
(542, 'common/modules/i18n', 'Translated'),
(543, 'common/modules/i18n', 'Not translated'),
(544, 'common/modules/i18n', 'Online'),
(545, 'common/modules/i18n', 'Menu'),
(546, 'common/modules/i18n', 'Dashboard'),
(547, 'common/modules/i18n', 'Profile'),
(548, 'common/modules/i18n', 'Users'),
(549, 'common/modules/i18n', 'Productdetails'),
(550, 'common/modules/i18n', 'Brands'),
(551, 'common/modules/i18n', 'Login'),
(552, 'common/modules/i18n', 'Settings'),
(553, 'common/modules/i18n', 'Templates'),
(554, 'common/modules/i18n', 'Currency'),
(555, 'common/modules/i18n', 'Update'),
(556, 'common/modules/i18n', 'Translation'),
(557, 'common/modules/i18n', 'Back to list'),
(558, 'yii', '{attribute} must be equal to "{compareValueOrAttribute}".'),
(559, 'yii', '{attribute} must be greater than "{compareValueOrAttribute}".'),
(560, 'yii', '{attribute} must be greater than or equal to "{compareValueOrAttribute}".'),
(561, 'yii', '{attribute} must be less than "{compareValueOrAttribute}".'),
(562, 'yii', '{attribute} must be less than or equal to "{compareValueOrAttribute}".'),
(563, 'yii', '{attribute} must not be equal to "{compareValueOrAttribute}".'),
(564, 'yii', '{attribute} contains wrong subnet mask.'),
(565, 'yii', '{attribute} is not in the allowed range.'),
(566, 'yii', '{attribute} must be a valid IP address.'),
(567, 'yii', '{attribute} must be an IP address with specified subnet.'),
(568, 'yii', '{attribute} must not be a subnet.'),
(569, 'yii', '{attribute} must not be an IPv4 address.'),
(570, 'yii', '{attribute} must not be an IPv6 address.'),
(571, 'yii', '{delta, plural, =1{1 day} other{# days}}'),
(572, 'yii', '{delta, plural, =1{1 hour} other{# hours}}'),
(573, 'yii', '{delta, plural, =1{1 minute} other{# minutes}}'),
(574, 'yii', '{delta, plural, =1{1 month} other{# months}}'),
(575, 'yii', '{delta, plural, =1{1 second} other{# seconds}}'),
(576, 'yii', '{delta, plural, =1{1 year} other{# years}}'),
(577, 'common/modules/i18n', 'Updated'),
(578, 'common/modules/i18n', 'Create '),
(579, 'common/modules/i18n', 'User'),
(580, 'common/modules/i18n', 'Username'),
(581, 'common/modules/i18n', 'Email'),
(582, 'common/modules/i18n', 'Authkey'),
(583, 'common/modules/i18n', 'Passwordhash'),
(584, 'common/modules/i18n', 'Passwordresettoken'),
(585, 'common/modules/i18n', 'Createdat'),
(586, 'common/modules/i18n', 'Updatedat'),
(587, 'common/modules/i18n', 'Logo'),
(588, 'common/modules/i18n', 'New Password'),
(589, 'common/modules/i18n', 'New Password Repeat'),
(590, 'common/modules/i18n', 'Role'),
(591, 'common/modules/i18n', 'Delete'),
(592, 'common/modules/i18n', 'Are you sure you want to delete this item?'),
(593, 'common/modules/i18n', 'Roles'),
(594, 'common/modules/i18n', 'Brand'),
(595, 'common/modules/i18n', 'Name'),
(596, 'common/modules/i18n', 'Create'),
(597, 'common/modules/i18n', 'Template'),
(598, 'common/modules/i18n', 'Alias'),
(599, 'common/modules/i18n', 'Text'),
(600, 'common/modules/i18n', 'Currencies'),
(601, 'common/modules/i18n', 'Default'),
(602, 'common/modules/i18n', 'No'),
(603, 'common/modules/i18n', 'Yes'),
(604, 'common/modules/i18n', 'ISO 4217'),
(605, 'common/modules/i18n', 'Sign'),
(606, 'common/modules/i18n', 'Sign in'),
(607, 'common/modules/i18n', 'Sign in to start your session'),
(608, 'common/modules/i18n', 'Sign out'),
(609, 'common/modules/i18n', 'Enabled'),
(610, 'common/modules/i18n', 'Access rules'),
(611, 'common/modules/i18n', 'Add new rule'),
(612, 'common/modules/i18n', 'Rule'),
(613, 'common/modules/i18n', 'Description'),
(614, 'common/modules/i18n', 'Create rule'),
(615, 'common/modules/i18n', 'Edit rule'),
(616, 'common/modules/i18n', 'Text description'),
(617, 'common/modules/i18n', 'Allowed access'),
(618, 'common/modules/i18n', 'Parent permission'),
(619, 'common/modules/i18n', 'Save'),
(620, 'common/modules/i18n', 'Operation is done successfully.'),
(621, 'common/modules/i18n', 'Edit rule: '),
(622, 'common/modules/i18n', 'Role management'),
(623, 'common/modules/i18n', 'Add role'),
(624, 'common/modules/i18n', 'Allowed accesses'),
(625, 'common/modules/i18n', 'Edit role: '),
(626, 'common/modules/i18n', 'Role name'),
(627, 'common/modules/i18n', 'Posts'),
(628, 'common/modules/i18n', 'Post'),
(629, 'common/modules/i18n', 'Customer number'),
(630, 'common/modules/i18n', 'Bankaccountnumber'),
(631, 'common/modules/i18n', 'Bankaccountname'),
(632, 'common/modules/i18n', 'Customer ID'),
(633, 'common/modules/i18n', 'Country'),
(634, 'common/modules/i18n', 'City'),
(635, 'common/modules/i18n', 'Street'),
(636, 'common/modules/i18n', 'Zip'),
(637, 'common/modules/i18n', 'Salutation'),
(638, 'common/modules/i18n', 'Date start'),
(639, 'common/modules/i18n', 'Date end'),
(640, 'common/modules/i18n', 'Invoice number'),
(641, 'common/modules/i18n', 'Invoice subtotal'),
(642, 'common/modules/i18n', 'Invoice VAT'),
(643, 'common/modules/i18n', 'Invoice total'),
(644, 'common/modules/i18n', 'Location'),
(645, 'common/modules/i18n', 'Amount'),
(646, 'common/modules/i18n', 'Pallet'),
(647, 'common/modules/i18n', 'Bar number'),
(648, 'common/modules/i18n', 'Dateregistrated'),
(649, 'common/modules/i18n', 'Storage code'),
(650, 'common/modules/i18n', 'Storage description'),
(651, 'common/modules/i18n', 'Storage basis'),
(652, 'common/modules/i18n', 'Storage amount'),
(653, 'common/modules/i18n', 'Storage date start'),
(654, 'common/modules/i18n', 'Storage date end'),
(655, 'common/modules/i18n', 'Storage percentage'),
(656, 'common/modules/i18n', 'Storage price'),
(657, 'common/modules/i18n', 'Storage date out'),
(658, 'common/modules/i18n', 'Title'),
(659, 'common/modules/i18n', 'Content'),
(660, 'common/modules/i18n', 'Sort'),
(661, 'common/modules/i18n', 'Parent menu'),
(662, 'common/modules/i18n', 'Bean type'),
(663, 'common/modules/i18n', 'Bean'),
(664, 'common/modules/i18n', 'Enter the URL manually:'),
(665, 'common/modules/i18n', 'Sort action'),
(666, 'common/modules/i18n', 'Social networks'),
(667, 'common/modules/i18n', 'Social network'),
(668, 'common/modules/i18n', 'Not Found (#404)'),
(669, 'common/modules/i18n', 'The above error occurred while the Web server was processing your request.'),
(670, 'common/modules/i18n', 'Please contact us if you think this is a server error. Thank you.'),
(671, 'common/modules/i18n', 'Stocks'),
(672, 'common/modules/i18n', 'Stock'),
(673, 'common/modules/i18n', 'Where to buy'),
(674, 'common/modules/i18n', 'Contact us'),
(675, 'common/modules/i18n', 'Your name'),
(676, 'common/modules/i18n', 'Your email'),
(677, 'common/modules/i18n', 'Your message'),
(678, 'common/modules/i18n', 'Send'),
(679, 'common/modules/i18n', 'To'),
(680, 'common/modules/i18n', 'From'),
(681, 'common/modules/i18n', 'Subject'),
(682, 'common/modules/i18n', 'Contact form settings'),
(683, 'common/modules/i18n', 'Contact form'),
(684, 'common/modules/i18n', 'Contact form setting'),
(685, 'common/modules/i18n', 'Your message was sent successfully. Thank you.'),
(686, 'common/modules/i18n', 'Sliders'),
(687, 'common/modules/i18n', 'Slider'),
(688, 'common/modules/i18n', 'Images'),
(689, 'common/modules/i18n', 'Image'),
(690, 'common/modules/i18n', 'Link'),
(691, 'common/modules/i18n', 'Bad Request (#400)'),
(692, 'common/modules/i18n', 'Default page'),
(693, 'common/modules/i18n', 'Parent category'),
(694, 'common/modules/i18n', 'Categories'),
(695, 'common/modules/i18n', 'Shop'),
(696, 'common/modules/i18n', 'Characteristic groups'),
(697, 'common/modules/i18n', 'Characteristic group'),
(698, 'common/modules/i18n', 'Characteristics'),
(699, 'common/modules/i18n', 'Characteristic'),
(700, 'common/modules/i18n', 'Vendor code'),
(701, 'common/modules/i18n', 'Price'),
(702, 'common/modules/i18n', 'In stock'),
(703, 'common/modules/i18n', 'Products'),
(704, 'common/modules/i18n', 'Product'),
(705, 'common/modules/i18n', 'Select'),
(706, 'common/modules/i18n', 'Simple product'),
(707, 'common/modules/i18n', 'Variation'),
(708, 'common/modules/i18n', 'Type'),
(709, 'common/modules/i18n', 'Variations'),
(710, 'common/modules/i18n', 'Размер'),
(711, 'common/modules/i18n', 'Gallery'),
(712, 'common/modules/i18n', 'Product categories '),
(713, 'common/modules/i18n', 'Filter'),
(714, 'common/modules/i18n', 'Product categories'),
(715, 'common/modules/i18n', 'View'),
(716, 'common/modules/i18n', 'Not available'),
(717, 'common/modules/i18n', 'Menu types'),
(718, 'common/modules/i18n', 'Menu type'),
(719, 'common/modules/i18n', 'Useful Information'),
(720, 'common/modules/i18n', 'Clear'),
(721, 'common/modules/i18n', 'Result(s)'),
(722, 'common/modules/i18n', 'Count of products:'),
(723, 'common/modules/i18n', 'Price High to Low'),
(724, 'common/modules/i18n', 'Price Low to High'),
(725, 'common/modules/i18n', 'Sort by'),
(726, 'common/modules/i18n', 'Short description'),
(727, 'common/modules/i18n', 'Show after price'),
(728, 'common/modules/i18n', 'Add to shopping bag'),
(729, 'common/modules/i18n', 'Choose your size'),
(730, 'common/modules/i18n', 'Count'),
(731, 'common/modules/i18n', 'You need to choose a size'),
(732, 'common/modules/i18n', 'You need to enter a count'),
(733, 'common/modules/i18n', 'Add to wish list'),
(734, 'common/modules/i18n', 'Enter to the cabinet'),
(735, 'common/modules/i18n', 'Password'),
(736, 'common/modules/i18n', 'Remember me'),
(737, 'common/modules/i18n', 'Enter'),
(738, 'common/modules/i18n', 'If you forgot your password you can'),
(739, 'common/modules/i18n', 'Forget password?'),
(740, 'common/modules/i18n', 'Incorrect username or password.'),
(741, 'common/modules/i18n', 'Signup'),
(742, 'common/modules/i18n', 'This username has already been taken.'),
(743, 'common/modules/i18n', 'This email address has already been taken.'),
(744, 'common/modules/i18n', 'I would like to receive news from Jenadin'),
(745, 'common/modules/i18n', 'Subscription'),
(746, 'common/modules/i18n', 'Stay in touch'),
(747, 'common/modules/i18n', 'Sign up for news'),
(748, 'common/modules/i18n', 'Novelties'),
(749, 'common/modules/i18n', 'Novelty'),
(750, 'common/modules/i18n', 'Are you sure you want to send novelty?'),
(751, 'common/modules/i18n', 'Video'),
(752, 'common/modules/i18n', 'Remove'),
(753, 'common/modules/i18n', 'Kits'),
(754, 'common/modules/i18n', 'Kit'),
(755, 'common/modules/i18n', 'remove'),
(756, 'common/modules/i18n', 'How to wear it'),
(757, 'common/modules/i18n', 'You may also like it'),
(758, 'common/modules/i18n', 'Basket'),
(759, 'common/modules/i18n', 'Continue shopping'),
(760, 'common/modules/i18n', 'Unit price:'),
(761, 'common/modules/i18n', 'Total:'),
(762, 'common/modules/i18n', 'Basket is updated successfully.'),
(763, 'common/modules/i18n', 'You basket is empty.'),
(764, 'common/modules/i18n', 'Sum in the basket'),
(765, 'common/modules/i18n', 'In total'),
(766, 'common/modules/i18n', 'Proceed checkout'),
(767, 'common/modules/i18n', 'The size is '),
(768, 'common/modules/i18n', 'The size is out of stock.'),
(769, 'common/modules/i18n', 'Request password reset'),
(770, 'common/modules/i18n', 'A link to reset password will be sent there.'),
(771, 'common/modules/i18n', 'Password reset for Jenadin'),
(772, 'common/modules/i18n', 'Hello'),
(773, 'common/modules/i18n', 'Follow the link below to reset your password:'),
(774, 'common/modules/i18n', 'There is no user with such email.'),
(775, 'common/modules/i18n', 'Check your email for further instructions.'),
(776, 'common/modules/i18n', 'Reset password'),
(777, 'common/modules/i18n', 'Please choose your new password:'),
(778, 'common/modules/i18n', 'New password was saved.'),
(779, 'common/modules/i18n', 'Hello, %s%. (%s). In your account you can see your orders.'),
(780, 'common/modules/i18n', 'Exit'),
(781, 'common/modules/i18n', 'Account details'),
(782, 'common/modules/i18n', 'Address book'),
(783, 'common/modules/i18n', 'View or change your sign-in information.'),
(784, 'common/modules/i18n', 'Edit address data.'),
(785, 'common/modules/i18n', 'Wish list'),
(786, 'common/modules/i18n', 'Orders'),
(787, 'common/modules/i18n', 'View your order history.'),
(788, 'common/modules/i18n', 'View your favourite products.'),
(789, 'common/modules/i18n', 'Back to profile view'),
(790, 'common/modules/i18n', 'Profile is updated successfully.'),
(791, 'common/modules/i18n', 'Address'),
(792, 'common/modules/i18n', 'First name'),
(793, 'common/modules/i18n', 'Last name'),
(794, 'common/modules/i18n', 'Phone'),
(795, 'common/modules/i18n', 'Region'),
(796, 'common/modules/i18n', 'Building'),
(797, 'common/modules/i18n', 'Flat'),
(798, 'common/modules/i18n', 'Address is updated successfully.'),
(799, 'common/modules/i18n', 'The product was removed from the wish list'),
(800, 'common/modules/i18n', 'There is no product in your wish list'),
(801, 'common/modules/i18n', 'Notes'),
(802, 'common/modules/i18n', 'Payment type'),
(803, 'common/modules/i18n', 'Order'),
(804, 'common/modules/i18n', 'Checkout'),
(805, 'common/modules/i18n', 'Payment details'),
(806, 'common/modules/i18n', 'Your order'),
(807, 'common/modules/i18n', 'Total price'),
(808, 'common/modules/i18n', 'Payment types'),
(809, 'common/modules/i18n', 'Place order'),
(810, 'common/modules/i18n', 'Receivers'),
(811, 'common/modules/i18n', 'Email subject'),
(812, 'common/modules/i18n', 'Email templates'),
(813, 'common/modules/i18n', 'Email template'),
(814, 'common/modules/i18n', 'Email preview'),
(815, 'common/modules/i18n', 'ID'),
(816, 'common/modules/i18n', 'Subject from'),
(817, 'common/modules/i18n', 'Email from'),
(818, 'common/modules/i18n', 'Footer'),
(819, 'common/modules/i18n', 'Email settings'),
(820, 'common/modules/i18n', 'Email setting'),
(821, 'common/modules/i18n', 'You got order from '),
(822, 'common/modules/i18n', 'Information about the client'),
(823, 'common/modules/i18n', 'Thanks!'),
(824, 'common/modules/i18n', 'Your order is accepted!'),
(825, 'common/modules/i18n', 'Our manager will contact you'),
(826, 'common/modules/i18n', 'Hi there. Your recent order on Jenadin has been completed.'),
(827, 'common/modules/i18n', 'Your order was accepted successfully!'),
(828, 'common/modules/i18n', 'Number'),
(829, 'common/modules/i18n', 'Concept'),
(830, 'common/modules/i18n', 'Paid'),
(831, 'common/modules/i18n', 'Refused'),
(832, 'common/modules/i18n', 'Nothing is selected'),
(833, 'common/modules/i18n', 'Positions'),
(834, 'common/modules/i18n', '	You basket is empty.'),
(835, 'common/modules/i18n', 'Open menu'),
(836, 'common/modules/i18n', 'Search'),
(837, 'common/modules/i18n', 'Back'),
(838, 'common/modules/i18n', 'My account'),
(839, 'common/modules/i18n', 'Created at'),
(840, 'common/modules/i18n', 'Updated at'),
(841, 'common/modules/i18n', 'Percentage'),
(842, 'common/modules/i18n', 'Sales'),
(843, 'common/modules/i18n', 'Sale'),
(844, 'common/modules/i18n', 'Load products from the collection:'),
(845, 'javascript', 'Are you sure you want to add this collection?'),
(846, 'common/modules/i18n', 'Sell-out'),
(847, 'common/modules/i18n', 'Latest'),
(848, 'common/modules/i18n', 'Novelties products'),
(849, 'common/modules/i18n', 'Latest product'),
(850, 'common/modules/i18n', 'Size & fit information'),
(851, 'common/modules/i18n', 'Editor notes'),
(852, 'common/modules/i18n', 'Icon'),
(853, 'common/modules/i18n', 'Table size'),
(854, 'javascript', 'Basket'),
(855, 'javascript', 'You have added to the basket:'),
(856, 'common/modules/i18n', 'Successfully added'),
(857, 'common/modules/i18n', 'Pay waited'),
(858, 'common/modules/i18n', 'Congratulations! You have placed your order.'),
(859, 'common/modules/i18n', 'Search results:'),
(861, 'common/modules/i18n', 'No results matching the query:'),
(862, 'common/modules/i18n', 'Magazines'),
(863, 'common/modules/i18n', 'Magazine'),
(864, 'common/modules/i18n', 'Pages'),
(865, 'common/modules/i18n', 'Order date'),
(866, 'common/modules/i18n', 'User data'),
(867, 'common/modules/i18n', 'Personal data'),
(868, 'common/modules/i18n', 'Order data'),
(869, 'common/modules/i18n', 'Back to order list'),
(870, 'common/modules/i18n', 'Nothing was found'),
(871, 'common/modules/i18n', 'Seo category description'),
(872, 'common/modules/i18n', 'Invalid Configuration'),
(873, 'common/modules/i18n', 'Ошибка (#2)'),
(874, 'common/modules/i18n', 'Error'),
(875, 'common/modules/i18n', 'Error (#8)'),
(876, 'common/modules/i18n', 'Розмір'),
(877, 'common/modules/i18n', 'javascript'),
(878, 'common/modules/i18n', 'You have added to the basket:'),
(879, 'common/modules/i18n', 'Database Exception (#42)'),
(880, 'common/modules/i18n', 'Unknown Property'),
(881, 'common/modules/i18n', 'Invalid Configuration (#101)');

-- --------------------------------------------------------

--
-- Структура таблицы `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `stock`
--

INSERT INTO `stock` (`id`, `created_at`, `updated_at`, `enabled`, `sort`) VALUES
(1, 1470239099, 1470561474, 1, 0),
(2, 1470239372, 1470301178, 1, 1),
(3, 1470301277, 1470301952, 1, 2),
(4, 1470301377, 1470301952, 1, 3),
(5, 1470301462, 1470301952, 1, 4),
(6, 1470301549, 1470301952, 1, 5),
(7, 1470301622, 1470301952, 1, 6),
(8, 1470301713, 1470301952, 1, 7),
(9, 1470301868, 1470301952, 1, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `stocklang`
--

CREATE TABLE IF NOT EXISTS `stocklang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `stocklang`
--

INSERT INTO `stocklang` (`id`, `stock_id`, `title`, `content`, `language`) VALUES
(1, 1, 'Kiev', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"Mod House", Geroyiv Stalingradu avenue, 10А, tel.+38 (044) 581 21 97</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ALDI"-Zabolotnogo street,37</div>\r\nArtMoll moll, 1st floor of the boutique gallery, tel. +38 (097) 393 29 27</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"GALLERY 48", Antonovicha street,48, tel.+38 (073) 484 84 03</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"FІOLET", Malyshko street, 3</div>\r\nKubyk mall (4-th floor), tel. +38 (098) 653 55 55</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"Buro 38 August", V.Vasylkivska street, 13/1, tel. +38 (067) 483 34 08</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Showroom Burba, Pushkinska street, 8, tel.+38 (095) 270 41 91</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Names''UA" , вул. Chervonogvardiyska street, 1C</div>\r\nProspekt mall (2-nd floor), tel. +38 (044) 220 36 73</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Polo Garage", Lunacharskogo street, 4</div>\r\nKomod mall, tel. +38 (044) 585 70 57</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ViloNNa", Moskovskiy avenue, 23</div>\r\nGorodok mall (2-nd floor), tel. +38 (044) 224 50 93, +38 (067) 273 67 42</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(2, 1, 'Киев', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"Mod House", пр-т Героев Сталинграда, 10А, тел.+38 (044) 581 21 97</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ALDI"-ул.Заболотного,37</div>\r\nТРЦ АртМолл. 1-й этаж бутиковой галереи, тел. +38 (097) 393 29 27</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"GALLERY 48", ул.Антоновича,48, тел.+38 (073) 484 84 03</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ФІОЛЕТ", ул. Малышко, 3</div>\r\nТЦ "Кубик" (4-й этаж), тел. +38 (098) 653 55 55</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"Buro 38 August", ул. Б.Васильковская, 13/1, тел. +38 (067) 483 34 08</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Showroom Burba, ул. Пушкинская, 8, тел.+38 (095) 270 41 91</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Names''UA" , ул. Красногвардейская, 1В</div>\r\nТРЦ "Проспект" (2-й этаж), тел. +38 (044) 220 36 73</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Polo Garage", ул. Луначарского, 4</div>\r\nТРЦ "Комод", тел. +38 (044) 585 70 57</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ViloNNa", пр-т Московский, 23</div>\r\nТРЦ "Городок" (2-й этаж), тел. +38 (044) 224 50 93, +38 (067) 273 67 42</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(3, 1, 'Київ', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"Mod House", пр-т Героїв Сталінграду, 10А, тел.+38 (044) 581 21 97</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ALDI"-вул.Заболотнього,37</div>\r\nТРЦ АртМолл. 1-й поверх бутикової галереї, тел. +38 (097) 393 29 27</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"GALLERY 48", вул.Антоновича,48, тел.+38 (073) 484 84 03</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ФІОЛЕТ", вул. Малишко, 3</div>\r\nТЦ "Кубик" (4-й поверх), тел. +38 (098) 653 55 55</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"Buro 38 August", вул. В.Васильківська, 13/1, тел. +38 (067) 483 34 08</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Showroom Burba, вул. Пушкінська, 8, тел.+38 (095) 270 41 91</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Names''UA" , вул. Червоногвардійська, 1В</div>\r\nТРЦ "Проспект" (2-й поверх), тел. +38 (044) 220 36 73</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Polo Garage", вул. Луначарського, 4</div>\r\nТРЦ "Комод", тел. +38 (044) 585 70 57</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"ViloNNa", пр-т Московський, 23</div>\r\nТРЦ "Городок" (2-й поверх), тел. +38 (044) 224 50 93, +38 (067) 273 67 42</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ua'),
(4, 2, 'Dnepropetrovsk', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"CROCUS", Gopner street,2, tel. +38 (056) 740 20 35</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(5, 2, 'Днепропетровск', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"CROCUS", ул.Гопнер,2, тел. +38 (056) 740 20 35</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'ru'),
(6, 2, 'Дніпропетровськ', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"CROCUS", вул.Гопнер,2, тел. +38 (056) 740 20 35</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ua'),
(7, 3, 'Odesa', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Showroom Burba, Lanzheronivska street, 21, tel. +38 (068) 900 76 85</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(8, 3, 'Одесса', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Showroom Burba, ул.Ланжероновская, 21, тел. +38 (068) 900 76 85</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(9, 3, 'Одеса', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Showroom Burba, вул.Ланжеронівська, 21, тел. +38 (068) 900 76 85</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ua'),
(10, 4, 'Lviv', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"DyZaynery.UA", Serbska street, 10, tel. +38 (068) 668 07 09, +38 (098) 127 34 55</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(11, 4, 'Львов', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"ДиZайнери.UA", ул. Сербская, 10, тел. +38 (068) 668 07 09, +38 (098) 127 34 55</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(12, 4, 'Львів', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"ДиZайнери.UA", вул. Сербська, 10, тел. +38 (068) 668 07 09, +38 (098) 127 34 55</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ua'),
(13, 5, 'Kherson', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"ZEBRA", Gagarina street, 4, tel. +38 (099) 911 83 81</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(14, 5, 'Херсон', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"ЗЕБРА", ул.Гагарина, 4, тел. +38 (099) 911 83 81</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(15, 5, 'Херсон', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>"ЗЕБРА", вул.Гагаріна, 4, тел. +38 (099) 911 83 81</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ua'),
(16, 6, 'Vinnytsia', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Fashion of Ukraine", Yunosti avenue, 43а</div>\r\nMagigrand mall, 2s. 2 f., tel. +38 (0432) 527 879, +38 (097) 293 64 33</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(17, 6, 'Винница', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Fashion of Ukraine", пр-т Юности, 43а</div>\r\nТРК "Магигранд", 2к. 2 эт., тел. +38 (0432) 527 879, +38 (097) 293 64 33</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(18, 6, 'Вінниця', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Fashion of Ukraine", пр-т Юності, 43а</div>\r\nТРК "Магигранд", 2к. 2 п., тел. +38 (0432) 527 879, +38 (097) 293 64 33</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'ua'),
(19, 7, 'Rivne', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Zaldiz", Makarova street, 23</div>\r\nEkvator mall, tel. +38 (0362) 460 502, +38 (050) 435 16 41, +38 (098) 036 70 29</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(20, 7, 'Ровно', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Zaldiz", ул. Макарова, 23</div>\r\nТРЦ "Экватор", тел. +38 (0362) 460 502, +38 (050) 435 16 41, +38 (098) 036 70 29</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(21, 7, 'Рівне', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>"Zaldiz", вул. Макарова, 23</div>\r\nТРЦ "Екватор", тел. +38 (0362) 460 502, +38 (050) 435 16 41, +38 (098) 036 70 29</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'ua'),
(22, 8, 'Lutsk', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>Gallery 1, Voli avenue, 42</div>\r\nGrand Volyn mall, boutique 5, tel. +38 (067) 332 24 20</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'en'),
(23, 8, 'Луцк', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>Gallery 1, пр-т Воли, 42</div>\r\nТЦ "Гранд Волынь", бутик 5, тел. +38 (067) 332 24 20</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(24, 8, 'Луцьк', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>\r\n<div>Gallery 1, пр-т Волі, 42</div>\r\nТЦ "Гранд Волинь", бутик 5, тел. +38 (067) 332 24 20</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'ua'),
(25, 9, 'Kirovograd', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>Plasa mall, 1-st floor shop "NATALI", tel. +38 (095) 723 03 87</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(26, 9, 'Кировоград', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>ТЦ "Плаза", 1-й этаж м-н "НАТАЛИ", тел. +38 (095) 723 03 87</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ru'),
(27, 9, 'Кіровоград', '<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>ТЦ "Плаза", 1-й поверх м-н "НАТАЛІ", тел. +38 (095) 723 03 87</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'ua');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `name`, `job_id`, `status`, `crontab`) VALUES
(6, 'Updating of the exchange rate', 6, 'done', '* * * * *'),
(7, 'Send queued novelties', 7, 'done', '* * * * *');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `subscription` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `logo`, `subscription`) VALUES
(1, 'admin', 'V-Cym0VAr8UvLBmmLSHJID6XlMaqaXyZ', '$2y$13$wx3ceUtuQVUiwXhZUn9N2.ClZq2jF/JymqR4JZZLHI0abmLtmGly.', NULL, 'artemkramov@yahoo.com', 10, 1455877362, 1473437983, NULL, 0),
(30, 'akramov', '', '$2y$13$ZZFmqDCY3qcCB9faxPRTLO14yAPapZnV.xIsQQ9CQ/G1dQE4dU5nK', 'flepYLC6C_tO4m9Eeh1R_K3GH3bJ32DQ_1472047294', 'artemkramov@gmail.com', 10, 1464245955, 1472147485, '', 1),
(31, 'user', 'NEvVqyxhS_uYXwAFuXXEAxwEs8boy0-4', '$2y$13$TEVTC01MWd8/9OZjxY7TMOBvqxp9NmDyuHc/D/IYeEKnwm7aQw0T2', '25lmAAEaVH8j6B-Wk07bBgH5tRjUT-T5_1472042259', 'chutovo_kram@i.ua', 10, 1471539355, 1472042260, NULL, 0),
(38, 'user1', 'e0GXfN5sXA5mRFBQUssX47SDZucqD4vp', '$2y$13$xa/.96vHpSlPTTbMaP3ntehOyBA4uAChKQPzfC9KYyytEofFkW522', NULL, 'chutovo_kramq@i.ua', 10, 1471590998, 1471605097, NULL, 0),
(39, 'gfg@gh.gf', '58sW7ySfGaEikzl8Le4R0dB9i9PmNHC1', '$2y$13$b6ns5jL2oKKhHgaPbahfsORaceIiD7zwTFZkTd/INXNswvC17J8su', NULL, 'fgh@fg.fd', 10, 1472822939, 1472822939, NULL, 1),
(40, 'test_user', 'd6QnNLurwg3vObzqGEEKCVfcEqO6eviU', '$2y$13$KwBpyIv9.nnqNEve23/0Tu9UvQdD/e0CC5ZuQ.j8pXYPm0w48tUWa', NULL, 'test_user@fd.rt', 10, 1473606411, 1473606411, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_basket`
--

CREATE TABLE IF NOT EXISTS `user_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `characteristic_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `product_hash` varchar(32) NOT NULL,
  `params` text NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`id_product`),
  KEY `characteristic_id` (`characteristic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `user_basket`
--

INSERT INTO `user_basket` (`id`, `storage`, `user_id`, `id_product`, `characteristic_id`, `count`, `product_hash`, `params`, `created_at`, `updated_at`, `price`) VALUES
(29, 'basket', 1, 11, 24, 1, '53cbb4660db5ac8f183c46d76f68a058', '[]', 1473786767, 1473786767, 5280),
(31, 'basket', 1, 16, 26, 1, '9c1b20d2e35500542e6be4e3d963c117', '[]', 1473787088, 1473787088, 3425);

-- --------------------------------------------------------

--
-- Структура таблицы `user_favourite`
--

CREATE TABLE IF NOT EXISTS `user_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `user_id`, `product_id`) VALUES
(9, 30, 4),
(10, 1, 17),
(11, 1, 11),
(12, 1, 10),
(13, 1, 16);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `characteristiclang`
--
ALTER TABLE `characteristiclang`
  ADD CONSTRAINT `characteristiclang_ibfk_1` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `characteristic_grouplang`
--
ALTER TABLE `characteristic_grouplang`
  ADD CONSTRAINT `characteristic_grouplang_ibfk_1` FOREIGN KEY (`characteristic_group_id`) REFERENCES `characteristic_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`);

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `email_settinglang`
--
ALTER TABLE `email_settinglang`
  ADD CONSTRAINT `email_settinglang_ibfk_1` FOREIGN KEY (`email_setting_id`) REFERENCES `email_setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `email_templatelang`
--
ALTER TABLE `email_templatelang`
  ADD CONSTRAINT `email_templatelang_ibfk_1` FOREIGN KEY (`email_template_id`) REFERENCES `email_template` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `kit_product`
--
ALTER TABLE `kit_product`
  ADD CONSTRAINT `kit_product_ibfk_1` FOREIGN KEY (`kit_id`) REFERENCES `kit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kit_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `magazinelang`
--
ALTER TABLE `magazinelang`
  ADD CONSTRAINT `magazinelang_ibfk_1` FOREIGN KEY (`magazine_id`) REFERENCES `magazine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `magazine_item`
--
ALTER TABLE `magazine_item`
  ADD CONSTRAINT `magazine_item_ibfk_1` FOREIGN KEY (`magazine_id`) REFERENCES `magazine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menulang`
--
ALTER TABLE `menulang`
  ADD CONSTRAINT `menulang_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `noveltylang`
--
ALTER TABLE `noveltylang`
  ADD CONSTRAINT `noveltylang_ibfk_1` FOREIGN KEY (`novelty_id`) REFERENCES `novelty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `novelty_queue`
--
ALTER TABLE `novelty_queue`
  ADD CONSTRAINT `novelty_queue_ibfk_1` FOREIGN KEY (`novelty_id`) REFERENCES `novelty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_4` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`);

--
-- Ограничения внешнего ключа таблицы `payment_typelang`
--
ALTER TABLE `payment_typelang`
  ADD CONSTRAINT `payment_typelang_ibfk_1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `postlang`
--
ALTER TABLE `postlang`
  ADD CONSTRAINT `postlang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_characteristic`
--
ALTER TABLE `product_characteristic`
  ADD CONSTRAINT `product_characteristic_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_characteristic_ibfk_2` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD CONSTRAINT `product_gallery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_variation`
--
ALTER TABLE `product_variation`
  ADD CONSTRAINT `product_variation_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_variation_ibfk_2` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sale_product`
--
ALTER TABLE `sale_product`
  ADD CONSTRAINT `sale_product_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `settinglang`
--
ALTER TABLE `settinglang`
  ADD CONSTRAINT `settinglang_ibfk_1` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `slider_item`
--
ALTER TABLE `slider_item`
  ADD CONSTRAINT `slider_item_ibfk_1` FOREIGN KEY (`slider_id`) REFERENCES `slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stocklang`
--
ALTER TABLE `stocklang`
  ADD CONSTRAINT `stocklang_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_basket`
--
ALTER TABLE `user_basket`
  ADD CONSTRAINT `user_basket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_basket_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_basket_ibfk_3` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_favourite_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
