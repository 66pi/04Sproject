SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `realname` varchar(255) ,
  `birthday` date ,
  `email` varchar(255) ,
  `email_auth_code` varchar(255) ,
  `is_email_verified` bit ,
  `mobile` varchar(255) ,
  `mobile_auth_code` varchar(255) ,
  `is_mobile_verified` bit ,
  `is_delete` bit NOT NULL default 0,
  PRIMARY KEY (`userid`),
  unique key `idx_username`(`username`),
  unique key `email`(`email`),
  unique key `mobile`(`mobile`)
) ENGINE=InnoDB auto_increment=1 DEFAULT CHARSET=utf8;
