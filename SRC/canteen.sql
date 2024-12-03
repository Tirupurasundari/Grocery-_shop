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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `food` */

insert  into `food`(`id`,`fno`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`status`) values (7,'f_6','samosa.jpg','samosa','tasty','50','20 min','Enable'),(8,'f_7','rice c.jpg','chicken rice','tasty and heathly food','200','2 hour','Enable'),(9,'f_13','cant.jpg','veg','soup','healthy and tasty food','200','Disable'),(10,'f_19','chiick.jpg','checken 65','yummy food','99','30 min','Enable'),(11,'f_19','gopi ch.jpg','Gopi manchuriyan','tasty food','400','30min','Enable'),(12,'f_45','black cake.jpg','black cake','Sweety','30','30 min','Enable'),(13,'reg_2','coffe.jpeg','coffee','hoty','50','10 min','Enable'),(14,'f_88','chei.jpg','roll chicken','tasty and yumy food','300','20 min','Enable'),(15,'f_34','bre.jpg','ice cream with sorup','food','50','20','Enable');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`id`,`sid`,`sname`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`status`) values (1,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Online_Payment','2','1000','1/2 main st,kumbakoanm','Delivery'),(2,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Online_Payment','2','1000','1/2 main st,kumbakoanm','Delivery'),(3,'reg_2','praba','gopi ch.jpg','gopi','tasy','300','1 hour','Cash_on_Delivery','4','1200','erere','Delivery'),(4,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Online_Payment','3','1500','21 main st, kumbakonam','Delivery'),(5,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Cash_on_Delivery','4','2000','21 bank st , chennai','Delivery'),(6,'reg_6','saro','samosa.jpg','samosa','tasty','20','20 min','Online_Payment','3','60','21/2 main st, kumbakonam','Delivery'),(7,'reg_6','saro','cold coffee.jpg','cold coffee','Good','80','20 min','Cash_on_Delivery','2','160','30/k kajkfjidf','Delivery'),(8,'reg_2','praba','cold coffee.jpg','cold coffee','Good','100','20 min','Cash_on_Delivery','3','300','chennai\r\n','Delivery'),(9,'reg_2','praba','ice.jpg','ice cream with sorup','cold and tasty item ','50','10 min','Cash_on_Delivery','3','150','cennai\r\n','Delivery'),(10,'reg_2','praba','ice.jpg','ice cream with sorup','cold and tasty item ','50','10 min','Cash_on_Delivery','3','150','chennai','Delivery'),(11,'reg_33','praba','chicken.jpg','chicken','tasty and yummy food','300','1 hour','Cash_on_Delivery','2','600','chennai','Delivery'),(12,'reg_33','praba','ice.jpg','ice cream with sorup','cold and tasty item ','50','10 min','Online_Payment','3','150','chennai','Delivery'),(13,'reg_33','praba','ice.jpg','ice cream with sorup','cold and tasty item ','50','10 min','Online_Payment','3','150','chennai','Waiting'),(14,'reg_5','sathyapraba','chicken.jpg','chicken','tasty and yummy food','300','1 hour','Online_Payment','2','600','21, Maharajapuram st\r\nkumabakonam','Delivery'),(15,'reg_5','sathyapraba','pani.jpg','pani puri','my fav snacks items','50','20 min','Cash_on_Delivery','2','100','21, maharajapuram\r\nkumabakonam\r\n','Delivery'),(16,'reg_5','sathyapraba','pani.jpg','pani puri','my fav snacks items','50','20 min','Cash_on_Delivery','2','100','21, maharajapuram\r\nkumabakonam\r\n','Delivery'),(17,'reg_5','sathyapraba','pani.jpg','pani puri','my fav snacks items','50','20 min','Cash_on_Delivery','2','100','21, maharajapuram\r\nkumabakonam\r\n','Delivery'),(18,'1234567890','niyaz','samosa.jpg','samosa','tasty','50','20 min','Online_Payment','1','50','kne','Waiting'),(19,'1234567890','niyaz','rice c.jpg','chicken rice','tasty and heathly food','200','2 hour','Cash_on_Delivery','2','400','chennai','Delivery');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ordertran` */

insert  into `ordertran`(`id`,`sid`,`sname`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`bank`,`brach`,`ifsc`,`exp`,`status`) values (1,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Online_Payment','2','IOB','Kumbakonam','12000djd33','20/30/1010','1000','1/2 main st,kumbakoanm','Delivery'),(2,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Online_Payment','2','1000','1/2 main st,kumbakoanm','IOB','Kumbakonam','12000djd33','20/30/1010','Delivery'),(3,'reg_2','praba','bre.jpg','Bread Food','Snack item healthy food tasty and yummy!','500','30 min','Online_Payment','3','1500','21 main st, kumbakonam','IOB','Kumbakonam','12000djd33','21/20/2024','Delivery'),(4,'reg_6','saro','samosa.jpg','samosa','tasty','20','20 min','Online_Payment','3','60','21/2 main st, kumbakonam','IOB','Kumbakonam','12000djd33','20/30/1010','Waiting'),(5,'reg_33','praba','ice.jpg','ice cream with sorup','cold and tasty item ','50','10 min','Online_Payment','3','150','chennai','IOB','Kumbakonam','12000djd33','21/20/2024','Waiting'),(6,'reg_33','praba','ice.jpg','ice cream with sorup','cold and tasty item ','50','10 min','Online_Payment','3','150','chennai','IOB','Kumbakonam','12000djd33','21/20/2024','Waiting'),(7,'reg_5','sathyapraba','chicken.jpg','chicken','tasty and yummy food','300','1 hour','Online_Payment','2','600','21, Maharajapuram st\r\nkumabakonam','IOB','Kumbakonam','12000djd33','21/20/2024','Waiting'),(8,'1234567890','niyaz','samosa.jpg','samosa','tasty','50','20 min','Online_Payment','1','50','kne','IOB','Kumbakonam','12000djd33','21/20/2024','Waiting');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`sno`,`simage`,`sname`,`pass`,`mail`,`mobile`,`dob`,`address`) values (2,'reg_5','2019-01-22-22-22-55-232.jpg','vanitha','vani','1croreprojects.javateam@gmail.com','8907654321','7/10/1998','chennai'),(3,'reg_6','black cake.jpg','saro','saro','cvsathyavani1999@gmail.com','8907654321','7/10/1997','chennai'),(4,'reg_33','ammam.jpg','praba','praba','cvsathyavani1999@gmail.com','8907654321','7/10/1997','chennai'),(5,'reg_5','a.jpg','sathyapraba','sathya','cvsathyavani1999@gmail.com','8907654321','7/10/1998','chennai'),(6,'1234567890','black cake.jpg','niyaz','1234','niyaz@gmail.com','9534388748','7/10/2999','beta 1'),(7,'reg_5','amman1.jpg','sathya','sathya','cvsathyavani1999@gmail.com','9585141578','21/01/1999','chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
