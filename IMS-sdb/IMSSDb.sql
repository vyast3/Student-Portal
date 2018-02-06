/*
SQLyog - Free MySQL GUI v5.17
Host - 5.1.30-community : Database - collegedatabase
*********************************************************************
Server version : 5.1.30-community
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `collegedatabase`;

USE `collegedatabase`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`id`,`password`) values ('1','1');

/*Table structure for table `aprovetab` */

DROP TABLE IF EXISTS `aprovetab`;

CREATE TABLE `aprovetab` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2031 DEFAULT CHARSET=latin1;

/*Data for the table `aprovetab` */

insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2012,'1000','tre','4/4/11','in','jh@','bb','mnb');
insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2025,'565','ravi','5/5/11','Lnct','ravi@gmail.com','this Event is Held on ','thanku');
insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2026,'0676','sachi','6/6/11','indore','vidh@yahoo','today mother day celebrate on titos................','com on 6 pm');
insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2027,'0676','priyanka','13/5/11','colelg','SD@HK','PROJECT IS SUBBMITED ON KJDKFJDKFJ','HGHG');
insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2028,'0676','sankea','12/5/11','indore','sanket','hitomarrow time is 7','thanku');
insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2029,'0676','sanket ','11/4/11','indore','sach@yahoo.com','hi m smart','ssss');
insert into `aprovetab` (`aid`,`sid`,`name`,`Date`,`place`,`email`,`message`,`remark`) values (2030,'0676','ss','s','s','sach@yahoo.com','s','s');

/*Table structure for table `atendence1` */

DROP TABLE IF EXISTS `atendence1`;

CREATE TABLE `atendence1` (
  `subject` varchar(20) DEFAULT NULL,
  `sem` varchar(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Akash1` varchar(20) DEFAULT NULL,
  `Ankur` varchar(20) DEFAULT NULL,
  `Ashish` varchar(20) DEFAULT NULL,
  `Akar` varchar(20) DEFAULT NULL,
  `akash` varchar(20) DEFAULT NULL,
  `Bharat` varchar(20) DEFAULT NULL,
  `Bhuwan` varchar(20) DEFAULT NULL,
  `Bhasker` varchar(20) DEFAULT NULL,
  `Balkrishan` varchar(20) DEFAULT NULL,
  `chandan` varchar(20) DEFAULT NULL,
  `chintu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `atendence1` */

insert into `atendence1` (`subject`,`sem`,`Date`,`Akash1`,`Ankur`,`Ashish`,`Akar`,`akash`,`Bharat`,`Bhuwan`,`Bhasker`,`Balkrishan`,`chandan`,`chintu`) values ('cs801','8','28/4/11','p','p','p','a','p','a','p','a','p','a','p');
insert into `atendence1` (`subject`,`sem`,`Date`,`Akash1`,`Ankur`,`Ashish`,`Akar`,`akash`,`Bharat`,`Bhuwan`,`Bhasker`,`Balkrishan`,`chandan`,`chintu`) values ('cs801','8','2/2/12','p','a','p','p','p','a','a','a',NULL,NULL,NULL);

/*Table structure for table `bus` */

DROP TABLE IF EXISTS `bus`;

CREATE TABLE `bus` (
  `bno` varchar(10) DEFAULT NULL,
  `busRoot` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus` */

insert into `bus` (`bno`,`busRoot`) values ('1','bhwar to d');
insert into `bus` (`bno`,`busRoot`) values ('2','palasia to');
insert into `bus` (`bno`,`busRoot`) values ('3','geeta bhaw');
insert into `bus` (`bno`,`busRoot`) values ('7','bangali to dest');
insert into `bus` (`bno`,`busRoot`) values ('6','bangali to dest');
insert into `bus` (`bno`,`busRoot`) values ('7','bangali to dest');
insert into `bus` (`bno`,`busRoot`) values ('8','bangali to dest');

/*Table structure for table `college` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `city` varchar(10) DEFAULT NULL,
  `collegeName` varchar(30) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `totSeat` varchar(30) DEFAULT NULL,
  `cource` varchar(30) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `college` */

insert into `college` (`city`,`collegeName`,`Address`,`contact`,`totSeat`,`cource`,`branch`) values ('indore','sdbct','umria','98989899','120','be','bhopal');
insert into `college` (`city`,`collegeName`,`Address`,`contact`,`totSeat`,`cource`,`branch`) values (NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert into `college` (`city`,`collegeName`,`Address`,`contact`,`totSeat`,`cource`,`branch`) values ('bhopal','tit','mandi deep','87988778','120','be,mba,','indore');
insert into `college` (`city`,`collegeName`,`Address`,`contact`,`totSeat`,`cource`,`branch`) values ('','','','','','','');

/*Table structure for table `hod` */

DROP TABLE IF EXISTS `hod`;

CREATE TABLE `hod` (
  `hod_id` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `d_o_jo` varchar(20) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hod` */

insert into `hod` (`hod_id`,`name`,`address`,`city`,`gender`,`password`,`email`,`mob`,`d_o_jo`,`dept`) values ('456','NITIKA VATS','RAJENDRA','INDORE','Female','456','NITIKA@','878786868','1/January/2000','B.E.');
insert into `hod` (`hod_id`,`name`,`address`,`city`,`gender`,`password`,`email`,`mob`,`d_o_jo`,`dept`) values ('565','nitika  ','collector  ','AGAR','Female  ','565  ','nik@gmail.com ','88373788  ','4/4/11  ','B.E.  ');
insert into `hod` (`hod_id`,`name`,`address`,`city`,`gender`,`password`,`email`,`mob`,`d_o_jo`,`dept`) values ('789','ruchi','indore','indore','Female','789','r@gmail.com','78766888','1/January/2000','B.E.');

/*Table structure for table `lib` */

DROP TABLE IF EXISTS `lib`;

CREATE TABLE `lib` (
  `book_id` varchar(10) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lib` */

insert into `lib` (`book_id`,`title`,`author`,`qty`) values (' 100','c++','balaguru','70');

/*Table structure for table `libtx` */

DROP TABLE IF EXISTS `libtx`;

CREATE TABLE `libtx` (
  `txId` varchar(10) DEFAULT NULL,
  `EnrollNo` varchar(20) DEFAULT NULL,
  `Student Name` varchar(20) DEFAULT NULL,
  `bkId` varchar(20) DEFAULT NULL,
  `bookName` varchar(20) DEFAULT NULL,
  `dIssue` varchar(20) DEFAULT NULL,
  `dReturn` varchar(20) DEFAULT NULL,
  `fine` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `libtx` */

insert into `libtx` (`txId`,`EnrollNo`,`Student Name`,`bkId`,`bookName`,`dIssue`,`dReturn`,`fine`) values ('28/4/11','87','ramakant','c1','c','28/5/11','5/6/11','0');
insert into `libtx` (`txId`,`EnrollNo`,`Student Name`,`bkId`,`bookName`,`dIssue`,`dReturn`,`fine`) values ('23/4/11','80','raghvendra',' 0676','c','5/5/5','6/6/6','00');

/*Table structure for table `pendingtab` */

DROP TABLE IF EXISTS `pendingtab`;

CREATE TABLE `pendingtab` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `date1` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;

/*Data for the table `pendingtab` */

insert into `pendingtab` (`pid`,`stud_id`,`name`,`date1`,`place`,`email`,`message`,`remark`) values (1004,'0676','sachi','6/6/11','indore','vidh@yahoo','today mother day \r\ncelebrate on titos................','com on 6 pm');
insert into `pendingtab` (`pid`,`stud_id`,`name`,`date1`,`place`,`email`,`message`,`remark`) values (1007,'0676','sanket ','11/4/11','indore','sach@yahoo.com','hi m smart','ssss');
insert into `pendingtab` (`pid`,`stud_id`,`name`,`date1`,`place`,`email`,`message`,`remark`) values (1009,'0676','sss','10/5/11','s','ss','s','');
insert into `pendingtab` (`pid`,`stud_id`,`name`,`date1`,`place`,`email`,`message`,`remark`) values (1010,'0676','ss','s','s','sach@yahoo.com','s','s');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `enroll_no` varchar(10) NOT NULL,
  `cource` varchar(20) DEFAULT NULL,
  `dept` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `gen` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `d_o_ad` varchar(20) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`enroll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert into `student` (`enroll_no`,`cource`,`dept`,`name`,`address`,`city`,`gen`,`password`,`d_o_ad`,`mob`) values ('6789','B.E.','Information Technology','gdgfd','hgfhgf','ind','male','rty','1/January/2000','');
insert into `student` (`enroll_no`,`cource`,`dept`,`name`,`address`,`city`,`gen`,`password`,`d_o_ad`,`mob`) values ('80','B.E. ','Information Technology ','RAM','UJJAIN','UJJIAN','male ','80 ','3/3/11 ','9425980033 ');

/*Table structure for table `subadmin` */

DROP TABLE IF EXISTS `subadmin`;

CREATE TABLE `subadmin` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `mob` varchar(15) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subadmin` */

insert into `subadmin` (`id`,`name`,`mob`,`address`,`password`) values ('0676rt','raghvendra','234242423','hgjg676','jj77677');
insert into `subadmin` (`id`,`name`,`mob`,`address`,`password`) values ('1234','RUCHI VIJAY','8898888','NANDA NAGAR','1234');
insert into `subadmin` (`id`,`name`,`mob`,`address`,`password`) values ('324','ewrw','342','sdf f','324');
insert into `subadmin` (`id`,`name`,`mob`,`address`,`password`) values ('45rt','jhgjg','5666667897','hgfghf5','tr65ty6');
insert into `subadmin` (`id`,`name`,`mob`,`address`,`password`) values ('76','tyr','767','tyf','76');
insert into `subadmin` (`id`,`name`,`mob`,`address`,`password`) values ('980','mahesh','998388','pune ','980');

/*Table structure for table `walkins` */

DROP TABLE IF EXISTS `walkins`;

CREATE TABLE `walkins` (
  `place` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `compName` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `10th` varchar(20) DEFAULT NULL,
  `12 th` varchar(20) DEFAULT NULL,
  `be` varchar(20) DEFAULT NULL,
  `pkg` varchar(20) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  `skill` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `walkins` */

insert into `walkins` (`place`,`date`,`compName`,`degree`,`10th`,`12 th`,`be`,`pkg`,`batch`,`post`,`skill`) values ('yt','yut','yt','yt','yt','yt','yt','yt','yt','yt','f');
insert into `walkins` (`place`,`date`,`compName`,`degree`,`10th`,`12 th`,`be`,`pkg`,`batch`,`post`,`skill`) values ('idnore3','2/2/12','weipor','be','60','60','60','1.4','2011','devi','c');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
