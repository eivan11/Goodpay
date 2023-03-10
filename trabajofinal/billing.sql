-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-09-2016 a las 14:52:03
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `billing`
--
CREATE DATABASE IF NOT EXISTS `billing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `billing`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_accounts`
--

CREATE TABLE IF NOT EXISTS `crm_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `company` varchar(200) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `balance` decimal(16,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `ts` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `web` varchar(200) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `google` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT '0',
  `securityqid` int(10) NOT NULL DEFAULT '0',
  `securityqans` text,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT '0',
  `language` text,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `email_verified` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_customfields`
--

CREATE TABLE IF NOT EXISTS `crm_customfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ctype` text,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text,
  `fieldtype` text,
  `description` text,
  `fieldoptions` text,
  `regexpr` text,
  `adminonly` text,
  `required` text,
  `showorder` text,
  `showinvoice` text,
  `sorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_customfieldsvalues`
--

CREATE TABLE IF NOT EXISTS `crm_customfieldsvalues` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_groups`
--

CREATE TABLE IF NOT EXISTS `crm_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text,
  `description` text,
  `separateinvoices` text,
  `sorder` int(10) DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flmcs_supports`
--

CREATE TABLE IF NOT EXISTS `flmcs_supports` (
  `id` int(11) NOT NULL,
  `tid` varchar(20) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `fid` int(11) NOT NULL DEFAULT '0',
  `domain` varchar(100) NOT NULL,
  `tvid` varchar(30) NOT NULL,
  `tvpass` varchar(30) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flmcs_users`
--

CREATE TABLE IF NOT EXISTS `flmcs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `domain` varchar(100) NOT NULL,
  `sid` int(11) NOT NULL,
  `server` varchar(100) NOT NULL,
  `client` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` mediumtext NOT NULL,
  `pdate` date NOT NULL,
  `rdid` varchar(100) NOT NULL,
  `rdpass` varchar(100) NOT NULL,
  `rdtype` varchar(50) NOT NULL,
  `sdir` varchar(50) NOT NULL,
  `cpuser` varchar(50) NOT NULL,
  `cppass` varchar(50) NOT NULL,
  `dbuser` varchar(50) NOT NULL,
  `dbpass` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `memo` mediumtext NOT NULL,
  `domain_oid` varchar(100) NOT NULL,
  `ns1` varchar(100) NOT NULL,
  `ns2` varchar(100) NOT NULL,
  `ns3` varchar(100) NOT NULL,
  `ns4` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hrm_attendance`
--

CREATE TABLE IF NOT EXISTS `hrm_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `eid` int(11) NOT NULL,
  `ename` varchar(200) NOT NULL,
  `ent` datetime NOT NULL,
  `ex` datetime NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hrm_employees`
--

CREATE TABLE IF NOT EXISTS `hrm_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pl_assets`
--

CREATE TABLE IF NOT EXISTS `pl_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `pdate` date NOT NULL,
  `memo` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_accounts`
--

CREATE TABLE IF NOT EXISTS `sys_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_activity`
--

CREATE TABLE IF NOT EXISTS `sys_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_api`
--

CREATE TABLE IF NOT EXISTS `sys_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` text,
  `ip` text,
  `apikey` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_appconfig`
--

CREATE TABLE IF NOT EXISTS `sys_appconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` text NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'Platea21'),
(29, 'theme', 'softhash'),
(37, 'currency_code', '$'),
(56, 'language', 'spanish'),
(57, 'show-logo', '1'),
(58, 'nstyle', 'dark'),
(63, 'dec_point', '.'),
(64, 'thousands_sep', ','),
(65, 'timezone', 'America/Bogota'),
(66, 'country', 'United States'),
(67, 'country_code', 'US'),
(68, 'df', 'M d Y'),
(69, 'caddress', 'GoodPay <br> Panama <br> https://goodpay.com/'),
(70, 'account_search', '1'),
(71, 'redirect_url', 'dashboard'),
(72, 'rtl', '0'),
(73, 'ckey', '0982995697'),
(74, 'networth_goal', '200000'),
(75, 'sysEmail', 'demo@example.com'),
(76, 'url_rewrite', '0'),
(77, 'build', '4200'),
(78, 'animate', '0'),
(79, 'pdf_font', 'dejavusanscondensed'),
(80, 'accounting', '1'),
(81, 'invoicing', '1'),
(82, 'quotes', '1'),
(83, 'client_dashboard', '1'),
(84, 'contact_set_view_mode', 'search'),
(85, 'invoice_terms', ''),
(86, 'console_notify_invoice_created', '0'),
(87, 'i_driver', 'v2'),
(88, 'purchase_code', ''),
(89, 'c_cache', '98142aa422e7cd1205611882f3e9257c'),
(90, 'mininav', '0'),
(91, 'hide_footer', '0'),
(92, 'design', 'default'),
(93, 'default_landing_page', 'login'),
(94, 'recaptcha', '0'),
(95, 'recaptcha_sitekey', ''),
(96, 'recaptcha_secretkey', ''),
(97, 'home_currency', 'USD'),
(98, 'currency_decimal_digits', 'true'),
(99, 'currency_symbol_position', 'p'),
(100, 'thousand_separator_placement', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_calls`
--

CREATE TABLE IF NOT EXISTS `sys_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `summary` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_cases`
--

CREATE TABLE IF NOT EXISTS `sys_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `status` enum('Open','Closed') NOT NULL DEFAULT 'Open',
  `description` text NOT NULL,
  `source` text NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `account` text NOT NULL,
  `aid` int(11) NOT NULL DEFAULT '0',
  `tags` text NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_cats`
--

CREATE TABLE IF NOT EXISTS `sys_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Volcado de datos para la tabla `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`) VALUES
(14, 'Advertising', 'Expense', 1),
(15, 'Bank and Credit Card Interest', 'Expense', 23),
(16, 'Car and Truck', 'Expense', 24),
(17, 'Commissions and Fees', 'Expense', 25),
(18, 'Contract Labor', 'Expense', 26),
(19, 'Contributions', 'Expense', 27),
(20, 'Cost of Goods Sold', 'Expense', 28),
(21, 'Credit Card Interest', 'Expense', 29),
(22, 'Depreciation', 'Expense', 31),
(23, 'Dividend Payments', 'Expense', 32),
(24, 'Employee Benefit Programs', 'Expense', 33),
(25, 'Entertainment', 'Expense', 34),
(26, 'Gift', 'Expense', 35),
(27, 'Insurance', 'Expense', 36),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37),
(29, 'Meals', 'Expense', 38),
(30, 'Mortgage Interest', 'Expense', 39),
(31, 'Non-Deductible Expense', 'Expense', 40),
(33, 'Other Business Property Leasing', 'Expense', 22),
(34, 'Owner Draws', 'Expense', 21),
(35, 'Payroll Taxes', 'Expense', 8),
(37, 'Phone', 'Expense', 9),
(38, 'Postage', 'Expense', 10),
(39, 'Rent', 'Expense', 12),
(40, 'Repairs &amp; Maintenance', 'Expense', 11),
(41, 'Supplies', 'Expense', 13),
(42, 'Taxes and Licenses', 'Expense', 14),
(43, 'Transfer Funds', 'Expense', 15),
(44, 'Travel', 'Expense', 16),
(45, 'Utilities', 'Expense', 17),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18),
(47, 'Wages', 'Expense', 19),
(48, 'Regular Income', 'Income', 1),
(49, 'Owner Contribution', 'Income', 12),
(50, 'Interest Income', 'Income', 11),
(51, 'Expense Refund', 'Income', 10),
(52, 'Other Income', 'Income', 9),
(53, 'Salary', 'Income', 8),
(54, 'Equities', 'Income', 7),
(55, 'Rent &amp; Royalties', 'Income', 6),
(56, 'Home equity', 'Income', 5),
(57, 'Part Time Work', 'Income', 3),
(58, 'Account Transfer', 'Income', 4),
(60, 'Health Care', 'Expense', 20),
(63, 'Loans', 'Expense', 30),
(64, 'Selling Software', 'Income', 2),
(65, 'Software Customization', 'Income', 13),
(66, 'FLMCS', 'Income', 0),
(67, 'SMS', 'Income', 0),
(68, 'Envato', 'Income', 0),
(69, 'Salary', 'Expense', 7),
(70, 'Paypal', 'Expense', 6),
(72, 'Office Equipment', 'Expense', 5),
(73, 'Staff Entertaining', 'Expense', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_emailconfig`
--

CREATE TABLE IF NOT EXISTS `sys_emailconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'phpmail', 'smtp.gmail.com', 'you@gmail.com', '123456', '', '587', 'tls');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_email_logs`
--

CREATE TABLE IF NOT EXISTS `sys_email_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_email_templates`
--

CREATE TABLE IF NOT EXISTS `sys_email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`,`language_id`),
  KEY `tplname` (`tplname`(32))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, '{{business_name}} password change request', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Hi {{name}},</div>	<div style="padding:5px">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style="padding:5px">		Click this linke to reset your password- <br><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{password_reset_link}}">{{password_reset_link}}</a>	</div><div style="padding:5px">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, '{{business_name}} New Password for Admin', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3">\n\n<div style="padding:5px;font-size:11pt;font-weight:bold">\n   Hello {{name}}\n</div>\n\n\n	<div style="padding:5px">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</div>\n\n	\n<div style="padding:10px 5px">\n    Log in URL: <a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{login_url}}">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</div>\n\n<div style="padding:5px">For security reason, Please change your password after login. </div>\n\n<div style="padding:0px 5px">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n</div>\n\n</div>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, '{{business_name}} Invoice Payment Reminder', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, '{{business_name}} Invoice Overdue Notice', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, '{{business_name}} Invoice Payment Confirmation', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3">\n\n<div style="padding:5px;font-size:11pt;font-weight:bold">\n   Greetings,\n</div>\n\n\n\n	<div style="padding:5px">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style="padding:5px">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style="padding:10px 5px">\n    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div>\n\n\n<div style="padding:0px 5px">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, '{{business_name}} Invoice Refund Confirmation', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, '{{quote_subject}}', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style="padding:10px 5px">    Quote Unique URL: <a href="{{quote_url}}" target="_blank">{{quote_url}}</a><br></div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Your {{business_name}} Login Info', '<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>', 'Yes', 'Yes', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_employees`
--

CREATE TABLE IF NOT EXISTS `sys_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `hiredate` date NOT NULL,
  `emid` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `payroll` enum('Salary','Hourly','Commission','Other') NOT NULL,
  `etype` enum('FullTime','PartTime','Other') NOT NULL,
  `classf` enum('Parmanent','Seasonal','Temp','Contract') NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `emname` varchar(100) NOT NULL,
  `emcontact` varchar(100) NOT NULL,
  `emrelation` varchar(100) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `supervisor` varchar(100) NOT NULL,
  `nextreview` date NOT NULL,
  `separation` date NOT NULL,
  `notes` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_invoiceitems`
--

CREATE TABLE IF NOT EXISTS `sys_invoiceitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1190 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_invoices`
--

CREATE TABLE IF NOT EXISTS `sys_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subtotal` decimal(10,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`(3))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_items`
--

CREATE TABLE IF NOT EXISTS `sys_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date NOT NULL DEFAULT '0000-00-00',
  `last_sold` date NOT NULL DEFAULT '0000-00-00',
  `e` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1009 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_logs`
--

CREATE TABLE IF NOT EXISTS `sys_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Volcado de datos para la tabla `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(184, '2015-07-22 15:12:31', 'Admin', 'Login Successful demo@example.com', 1, '::1'),
(185, '2016-09-20 10:25:53', 'Admin', 'Login Successful demo@example.com', 1, '::1'),
(186, '2016-09-20 09:43:32', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_notes`
--

CREATE TABLE IF NOT EXISTS `sys_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contents` mediumtext NOT NULL,
  `type` enum('Private','Public') NOT NULL DEFAULT 'Private',
  `o` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `uo` int(11) NOT NULL,
  `vtoken` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_orgs`
--

CREATE TABLE IF NOT EXISTS `sys_orgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contacts` mediumtext NOT NULL,
  `phone` varchar(100) NOT NULL,
  `phones` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `emails` mediumtext NOT NULL,
  `web` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `notes` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_payee`
--

CREATE TABLE IF NOT EXISTS `sys_payee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `sys_payee`
--

INSERT INTO `sys_payee` (`id`, `name`, `sorder`) VALUES
(6, 'Amazon', 0),
(7, 'eBay', 0),
(8, 'Google', 0),
(12, 'Employee', 0),
(17, 'Gas Station', 0),
(18, 'Government', 0),
(19, 'Other', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_payers`
--

CREATE TABLE IF NOT EXISTS `sys_payers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `sys_payers`
--

INSERT INTO `sys_payers` (`id`, `name`, `sorder`) VALUES
(1, 'Employer', 2),
(2, 'City Bank', 3),
(5, 'Government', 0),
(7, 'John Doe', 0),
(8, 'Jane Doe', 0),
(9, 'Client X', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_pg`
--

CREATE TABLE IF NOT EXISTS `sys_pg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gateway_setting` (`name`(32),`processor`(32)),
  KEY `setting_value` (`processor`(32),`ins`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`) VALUES
(1, 'Paypal', 'Paypal Email', 'demo@example.com', 'paypal', 'Invoices', 'USD', '1', '', '', '', 'Active', 1, NULL, NULL),
(2, 'Stripe', 'API Key', 'sk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', '', 'USD', '', '', '', '', 'Active', 2, NULL, NULL),
(3, 'Bank / Cash', 'Instructions', 'Make a Payment to Our Bank Account <br>Bank Name: City Bank <br>Account Name: Sadia Sharmin <br>Account Number: 1505XXXXXXXX <br>', 'manualpayment', '', '', '', '', '', '', 'Active', 3, NULL, NULL),
(4, 'Authorize.net', 'API_LOGIN_ID', 'Insert API Login ID here', 'authorize_net', '', 'Insert Transaction Key Here', '', '', '', '', 'Active', 4, NULL, NULL),
(5, 'Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 5, NULL, NULL),
(6, 'CCAvenue', 'Merchant ID', 'your merchant id', 'ccavenue', '', 'insert working key here', 'INR', '1', '', '', 'Inactive', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_pl`
--

CREATE TABLE IF NOT EXISTS `sys_pl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sys_pl`
--

INSERT INTO `sys_pl` (`id`, `c`, `status`, `sorder`) VALUES
(1, 'flmcs', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_pmethods`
--

CREATE TABLE IF NOT EXISTS `sys_pmethods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'Cash', 1),
(2, 'Check', 4),
(3, 'Credit Card', 5),
(4, 'Debit', 6),
(5, 'Electronic Transfer', 7),
(9, 'Paypal', 2),
(10, 'ATM Withdrawals', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_projects`
--

CREATE TABLE IF NOT EXISTS `sys_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `status` enum('Open','Closed') NOT NULL DEFAULT 'Open',
  `description` text NOT NULL,
  `source` text NOT NULL,
  `started` date NOT NULL,
  `finished` date NOT NULL,
  `totaltime` varchar(20) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `account` text NOT NULL,
  `aid` int(11) NOT NULL DEFAULT '0',
  `tags` text NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_quoteitems`
--

CREATE TABLE IF NOT EXISTS `sys_quoteitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `taxable` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_quotes`
--

CREATE TABLE IF NOT EXISTS `sys_quotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_repeating`
--

CREATE TABLE IF NOT EXISTS `sys_repeating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category` varchar(200) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payer` varchar(200) NOT NULL,
  `payee` varchar(200) NOT NULL,
  `method` varchar(200) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Uncleared',
  `description` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `pdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=499 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_sales`
--

CREATE TABLE IF NOT EXISTS `sys_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_schedule`
--

CREATE TABLE IF NOT EXISTS `sys_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'demo@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_schedulelogs`
--

CREATE TABLE IF NOT EXISTS `sys_schedulelogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sys_schedulelogs`
--

INSERT INTO `sys_schedulelogs` (`id`, `date`, `logs`) VALUES
(4, '2015-03-14', '2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_servers`
--

CREATE TABLE IF NOT EXISTS `sys_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `stype` varchar(50) NOT NULL,
  `apikey` mediumtext NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tags`
--

CREATE TABLE IF NOT EXISTS `sys_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tasks`
--

CREATE TABLE IF NOT EXISTS `sys_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `due` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remind` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` mediumtext NOT NULL,
  `status` enum('Completed','In Progress','Not Started') NOT NULL,
  `pid` int(11) NOT NULL,
  `ttime` varchar(50) NOT NULL,
  `sub` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tax`
--

CREATE TABLE IF NOT EXISTS `sys_tax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `aid` int(11) NOT NULL,
  `bal` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `state_country` (`state`(32),`country`(2))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`) VALUES
(1, 'Sales Tax', '', '', '1.50', 0, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_transactions`
--

CREATE TABLE IF NOT EXISTS `sys_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category` varchar(200) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payer` varchar(200) NOT NULL,
  `payee` varchar(200) NOT NULL,
  `payerid` int(11) NOT NULL DEFAULT '0',
  `payeeid` int(11) NOT NULL DEFAULT '0',
  `method` varchar(200) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `iid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tt`
--

CREATE TABLE IF NOT EXISTS `sys_tt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `start` varchar(50) NOT NULL DEFAULT '0',
  `end` varchar(50) NOT NULL DEFAULT '0',
  `allday` enum('true','false') NOT NULL DEFAULT 'false',
  `url` varchar(200) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_users`
--

CREATE TABLE IF NOT EXISTS `sys_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(45) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` mediumtext NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`) VALUES
(1, 'admin@admin.com', 'Administrator', '', 'ibLJRKHoI8Qfk', 'Admin', 'Active', '2016-09-20 09:43:32', '', '2014-10-20 01:43:07', 'No', 'No', '$1$ZW/.uF5.$.rwCeLiguoBzYzf3waOnY1', '', 'No', '', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wm_sysemails`
--

CREATE TABLE IF NOT EXISTS `wm_sysemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` mediumtext NOT NULL,
  `password` mediumtext NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
