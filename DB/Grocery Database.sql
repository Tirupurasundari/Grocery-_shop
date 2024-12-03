/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - canteen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`canteen` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `canteen`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `reg` varchar(200) DEFAULT NULL,
  `sanme` varchar(200) DEFAULT NULL,
  `times` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `atten` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`reg`,`sanme`,`times`,`dates`,`atten`) values ('1','deepa','06:14 PM','2021-03-16','1'),('1','deepa','06:33 PM','2021-03-16','1');

/*Table structure for table `dregister` */

DROP TABLE IF EXISTS `dregister`;

CREATE TABLE `dregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `simage` varchar(200) DEFAULT NULL,
  `sno` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `ano` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  `micr` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Enable',
  `tcost` varchar(200) DEFAULT NULL,
  `atten` varchar(200) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dregister` */

insert  into `dregister`(`id`,`simage`,`sno`,`sname`,`pass`,`mail`,`mobile`,`dob`,`ano`,`ifsc`,`brach`,`micr`,`address`,`status`,`tcost`,`atten`) values (1,'admin.jfif','01','deepa','deepa','deepa@gmail.com','9389383934','2/01/1999','8190191822834','IOB45687294','Kumbakonam3','45455677774','chennai3','Enable',' 5000','0');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fno` varchar(200) DEFAULT NULL,
  `fimage` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Enable',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `food` */

insert  into `food`(`id`,`fno`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`status`) values (2,'02','hand.jpg','hand bag','good','5000','30','Enable'),(3,'03','4.jpg','All Type Veg','good','400','30','Enable'),(4,'04','11.png','Apple','good','800','30','Enable');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `fimage` varchar(2000) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `pay` varchar(200) DEFAULT NULL,
  `qan` varchar(200) DEFAULT NULL,
  `totcost` varchar(200) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`id`,`sid`,`sname`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`status`) values (1,'01','sathya','4.jpg','All Type Veg','good','400','30','Cash_on_Delivery','2','800','v','Delivered'),(2,'01','sathya','11.png','Apple','good','800','30','Cash_on_Delivery',' 2',NULL,'cc','Waiting'),(3,'01','sathya','hand.jpg','hand bag','good','5000','30','Online_Payment',' 2','null','c','Waiting');

/*Table structure for table `ordertran` */

DROP TABLE IF EXISTS `ordertran`;

CREATE TABLE `ordertran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `fimage` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `pay` varchar(200) DEFAULT NULL,
  `qan` varchar(200) DEFAULT NULL,
  `totcost` varchar(200) DEFAULT NULL,
  `address` varbinary(200) DEFAULT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `exp` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ordertran` */

insert  into `ordertran`(`id`,`sid`,`sname`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`bank`,`brach`,`ifsc`,`exp`,`status`) values (1,'01','sathya','hand.jpg','hand bag','good','5000','30','Online_Payment',' 2','null','c','iob','Kumbakonam','IOB4568729','12/25','Waiting');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `sno` varchar(200) DEFAULT NULL,
  `simage` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`sno`,`simage`,`sname`,`pass`,`mail`,`mobile`,`dob`,`address`) values (1,'01','add.jpg','sathya','sathya','sathya@gmail.com','sathya@gmail.com','2/01/1999','chennai'),(2,'01','add.jpg','sathya','sathya','sathya@gmail.com','sathya@gmail.com','2/01/1999','chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
