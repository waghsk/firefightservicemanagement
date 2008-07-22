/*
SQLyog Community Edition- MySQL GUI v6.15
MySQL - 4.1.22-community-nt : Database - fire_safety_development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `fire_safety_development`;

USE `fire_safety_development`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `contact_person` varchar(255) default NULL,
  `contact_details` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hpt_histories` */

DROP TABLE IF EXISTS `hpt_histories`;

CREATE TABLE `hpt_histories` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) default NULL,
  `date_of_hpt` datetime default NULL,
  `remark` varchar(255) default NULL,
  `done_by` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inspection_histories` */

DROP TABLE IF EXISTS `inspection_histories`;

CREATE TABLE `inspection_histories` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) default NULL,
  `date_of_inspection` datetime default NULL,
  `remark` varchar(255) default NULL,
  `done_by` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inspection_periods` */

DROP TABLE IF EXISTS `inspection_periods`;

CREATE TABLE `inspection_periods` (
  `id` int(11) NOT NULL auto_increment,
  `item_subtype_id` int(11) default NULL,
  `company_id` int(11) default NULL,
  `days` int(11) default NULL,
  `weeks` int(11) default NULL,
  `months` int(11) default NULL,
  `years` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `item_subtypes` */

DROP TABLE IF EXISTS `item_subtypes`;

CREATE TABLE `item_subtypes` (
  `id` int(11) NOT NULL auto_increment,
  `item_type_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `refill_day` int(2) default NULL,
  `refill_week` int(2) default NULL,
  `refill_month` int(2) default NULL,
  `refill_year` int(4) default NULL,
  `hpt_day` int(2) default NULL,
  `hpt_week` int(2) default NULL,
  `hpt_month` int(2) default NULL,
  `hpt_year` int(4) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `item_types` */

DROP TABLE IF EXISTS `item_types`;

CREATE TABLE `item_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL auto_increment,
  `item_subtype_id` int(11) default NULL,
  `company_id` int(11) default NULL,
  `manufacturer` varchar(255) default NULL,
  `manufacturer_serial` varchar(255) default NULL,
  `capacity` varchar(255) default NULL,
  `tare` varchar(255) default NULL,
  `trolley_weight` varchar(255) default NULL,
  `next_inspection_date` datetime default NULL,
  `next_refill_date` datetime default NULL,
  `next_hpt_date` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `refill_histories` */

DROP TABLE IF EXISTS `refill_histories`;

CREATE TABLE `refill_histories` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) default NULL,
  `date_of_refill` datetime default NULL,
  `remark` varchar(255) default NULL,
  `done_by` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `schema_migrations` */

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL default '',
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
