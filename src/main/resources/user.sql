/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.15 : Database - ddgj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ddgj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ddgj`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` varchar(50) NOT NULL COMMENT '用户id',
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `userPhone` varchar(50) NOT NULL COMMENT '用户电话',
  `userPassword` varchar(50) NOT NULL COMMENT '用户密码',
  `status` int(5) unsigned zerofill DEFAULT NULL COMMENT '1:审核2:正常3:删除4:隐藏5:草稿6:审核未通过7:管理员删除,8:已提交信息',
  `type` int(5) unsigned zerofill DEFAULT NULL COMMENT '用户类别，1为个人用户，2为企业用户',
  `node` varchar(100) DEFAULT NULL COMMENT '管理员审核说明',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userPhone_uniqe` (`userPhone`),
  UNIQUE KEY `userPhone_unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`userPhone`,`userPassword`,`status`,`type`,`node`) values 
('10c1d0726a0a4b52b8b9ab83de941cc4','dd10c1d0726a0a4b52b8b9ab83de941cc4','18177777777','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('2766d853d37443d5a4653deb6a1b344b','dd2766d853d37443d5a4653deb6a1b344b','18167297493','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('2b3a7d9c0e584a15bb10310370fe776a','2b3a7d9c0e584a15bb10310370fe776a','15091541971','4QrcOUm6Wau+VuBX8g+IPg==',00001,00000,NULL),
('3513ffb2a9644b5aba7574eb0dbc7042','dd3513ffb2a9644b5aba7574eb0dbc7042','18167387591','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('544a16ad31294f6bbb63b9a2299af5b3','dd544a16ad31294f6bbb63b9a2299af5b3','18177918255','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('61f26c3887134201ac86b4ff0e7b4679','dd61f26c3887134201ac86b4ff0e7b4679','18110756319','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('6dad6d26392245cdb5f16e9f4401c030','15091541974','15091541974','4QrcOUm6Wau+VuBX8g+IPg==',00008,00001,NULL),
('7f04b963b707464da87e4be47d7a5513','dd7f04b963b707464da87e4be47d7a5513','18198473661','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('7febda25fb21426f805676c9bea630c5','dd7febda25fb21426f805676c9bea630c5','18188841870','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('945b41bfc0b5443c8d8a3069757879be','18229091357','18229091357','4QrcOUm6Wau+VuBX8g+IPg==',00002,00001,''),
('966bb8df6b2a41ab9239500054eab4cd','dd966bb8df6b2a41ab9239500054eab4cd','18185758274','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('996f005b226c471f944905ee8faf1757','dd996f005b226c471f944905ee8faf1757','18128518179','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('9eaa1ce1b9c242caaeb44596d37d199e','9eaa1ce1b9c242caaeb44596d37d199e','15091541976','4QrcOUm6Wau+VuBX8g+IPg==',00000,00000,NULL),
('a2364a4d6335451d8827e938e3f34dec','dda2364a4d6335451d8827e938e3f34dec','18114922873','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('a4c5071518d24967896d478daf052bd2','dda4c5071518d24967896d478daf052bd2','18192479451','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('af78e28fb2cd4a3a8a0245fc678e8f7b','ddaf78e28fb2cd4a3a8a0245fc678e8f7b','18195696961','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('c701ba8b3eb24ac4ad882a934d6c7cbb','ddc701ba8b3eb24ac4ad882a934d6c7cbb','18194236597','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('c9fda184deaa4acbb12771a842ec317e','ddc9fda184deaa4acbb12771a842ec317e','18119355026','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('d1bfd57505b24d07b4750d2c8b35d2a6','ddd1bfd57505b24d07b4750d2c8b35d2a6','18127446228','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,''),
('d2db0ea6e02e42a78deadc9a295c7f29','ddd2db0ea6e02e42a78deadc9a295c7f29','18120712746','yIN7I/+Kqoot3pFUc84JkQ==',00002,00001,'');

/* Trigger structure for table `tb_serve` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ss` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ss` AFTER DELETE ON `tb_serve` FOR EACH ROW BEGIN
    delete from tb_recommend where object_id=old.serve_id;
END */$$


DELIMITER ;

/* Function  structure for function  `hello` */

/*!50003 DROP FUNCTION IF EXISTS `hello` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`%` FUNCTION `hello`() RETURNS varchar(255) CHARSET latin1
BEGIN
     RETURN 'Hello  world,i am mysql';
     END */$$
DELIMITER ;

/* Function  structure for function  `StartSize` */

/*!50003 DROP FUNCTION IF EXISTS `StartSize` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`%` FUNCTION `StartSize`(pageNumber INT,pageMaxSize INT) RETURNS int(20)
BEGIN
     declare Size INT default 100;
     Set Size=((pageNumber-1)*pageMaxSize);
     RETURN Size;
     END */$$
DELIMITER ;

/*Table structure for table `view_reward_detail` */

DROP TABLE IF EXISTS `view_reward_detail`;

/*!50001 DROP VIEW IF EXISTS `view_reward_detail` */;
/*!50001 DROP TABLE IF EXISTS `view_reward_detail` */;

/*!50001 CREATE TABLE  `view_reward_detail`(
 `reward_id` int(11) ,
 `reward_title` varchar(50) ,
 `reward_detail` varchar(1000) ,
 `reward_picture` varchar(2000) ,
 `reward_money` decimal(10,2) ,
 `reward_closingDate` varchar(50) ,
 `reward_enclosure` varchar(100) ,
 `reward_type` int(10) ,
 `reward_createTime` datetime ,
 `status` varchar(50) ,
 `reward_fromId` varchar(50) ,
 `reward_task_num` int(11) ,
 `userName` varchar(50) ,
 `userPhone` varchar(50) ,
 `userId` varchar(50) ,
 `nikeName` varchar(50) ,
 `userIcon` varchar(200) ,
 `name` varchar(50) 
)*/;

/*Table structure for table `view_reward_order` */

DROP TABLE IF EXISTS `view_reward_order`;

/*!50001 DROP VIEW IF EXISTS `view_reward_order` */;
/*!50001 DROP TABLE IF EXISTS `view_reward_order` */;

/*!50001 CREATE TABLE  `view_reward_order`(
 `order_id` int(11) ,
 `order_picture` varchar(1000) ,
 `order_createTime` datetime ,
 `order_remarks` varchar(1000) ,
 `order_enclosure` varchar(50) ,
 `userId` varchar(50) ,
 `reward_id` int(11) ,
 `status` int(11) ,
 `userName` varchar(50) ,
 `userPhone` varchar(50) ,
 `nikeName` varchar(50) ,
 `name` varchar(50) ,
 `userIcon` varchar(200) 
)*/;

/*Table structure for table `view_user_info` */

DROP TABLE IF EXISTS `view_user_info`;

/*!50001 DROP VIEW IF EXISTS `view_user_info` */;
/*!50001 DROP TABLE IF EXISTS `view_user_info` */;

/*!50001 CREATE TABLE  `view_user_info`(
 `nikeName` varchar(50) ,
 `userIcon` varchar(200) ,
 `userName` varchar(50) ,
 `userId` varchar(50) 
)*/;

/*Table structure for table `view_user_infoss` */

DROP TABLE IF EXISTS `view_user_infoss`;

/*!50001 DROP VIEW IF EXISTS `view_user_infoss` */;
/*!50001 DROP TABLE IF EXISTS `view_user_infoss` */;

/*!50001 CREATE TABLE  `view_user_infoss`(
 `id` varchar(50) ,
 `nikeName` varchar(50) ,
 `userName` varchar(50) 
)*/;

/*View structure for view view_reward_detail */

/*!50001 DROP TABLE IF EXISTS `view_reward_detail` */;
/*!50001 DROP VIEW IF EXISTS `view_reward_detail` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `view_reward_detail` AS select `tb_reward`.`reward_id` AS `reward_id`,`tb_reward`.`reward_title` AS `reward_title`,`tb_reward`.`reward_detail` AS `reward_detail`,`tb_reward`.`reward_picture` AS `reward_picture`,`tb_reward`.`reward_money` AS `reward_money`,`tb_reward`.`reward_closingDate` AS `reward_closingDate`,`tb_reward`.`reward_enclosure` AS `reward_enclosure`,`tb_reward`.`reward_type` AS `reward_type`,`tb_reward`.`reward_createTime` AS `reward_createTime`,`tb_reward`.`status` AS `status`,`tb_reward`.`reward_fromId` AS `reward_fromId`,`tb_reward`.`reward_task_num` AS `reward_task_num`,`user`.`userName` AS `userName`,`user`.`userPhone` AS `userPhone`,`message`.`userId` AS `userId`,`message`.`nikeName` AS `nikeName`,`message`.`userIcon` AS `userIcon`,`message`.`name` AS `name` from ((`message` join `user` on((`message`.`userId` = `user`.`userId`))) join `tb_reward` on((`tb_reward`.`reward_fromId` = `message`.`userId`))) */;

/*View structure for view view_reward_order */

/*!50001 DROP TABLE IF EXISTS `view_reward_order` */;
/*!50001 DROP VIEW IF EXISTS `view_reward_order` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `view_reward_order` AS select `tb_reward_order`.`order_id` AS `order_id`,`tb_reward_order`.`order_picture` AS `order_picture`,`tb_reward_order`.`order_createTime` AS `order_createTime`,`tb_reward_order`.`order_remarks` AS `order_remarks`,`tb_reward_order`.`order_enclosure` AS `order_enclosure`,`tb_reward_order`.`userId` AS `userId`,`tb_reward_order`.`reward_id` AS `reward_id`,`tb_reward_order`.`status` AS `status`,`user`.`userName` AS `userName`,`user`.`userPhone` AS `userPhone`,`message`.`nikeName` AS `nikeName`,`message`.`name` AS `name`,`message`.`userIcon` AS `userIcon` from ((`user` join `tb_reward_order` on((`tb_reward_order`.`userId` = `user`.`userId`))) join `message` on((`message`.`userId` = `user`.`userId`))) */;

/*View structure for view view_user_info */

/*!50001 DROP TABLE IF EXISTS `view_user_info` */;
/*!50001 DROP VIEW IF EXISTS `view_user_info` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `view_user_info` AS select `message`.`nikeName` AS `nikeName`,`message`.`userIcon` AS `userIcon`,`user`.`userName` AS `userName`,`user`.`userId` AS `userId` from (`user` left join `message` on((`message`.`userId` = `user`.`userId`))) */;

/*View structure for view view_user_infoss */

/*!50001 DROP TABLE IF EXISTS `view_user_infoss` */;
/*!50001 DROP VIEW IF EXISTS `view_user_infoss` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `view_user_infoss` AS select `message`.`id` AS `id`,`message`.`nikeName` AS `nikeName`,`user`.`userName` AS `userName` from (`message` join `user` on((`message`.`userId` = `user`.`userId`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
