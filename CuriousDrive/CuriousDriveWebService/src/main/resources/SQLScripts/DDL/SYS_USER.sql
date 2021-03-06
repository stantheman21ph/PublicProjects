CREATE TABLE if not exists `SYS_USER` (
    `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
    `EMAIL_ADDRESS` varchar(50) NOT NULL,
    `PASSWORD` varchar(50) NOT NULL,
    `DISPLAY_NAME` varchar(50) NOT NULL,
    `FIRST_NAME` varchar(50) NOT NULL,
    `LAST_NAME` varchar(50) NOT NULL,
    `PICTURE_URL` varchar(10000) DEFAULT NULL,
    `NETWORK_ID` int(11) NOT NULL,
    `NETWORK_VALUE` varchar(50) DEFAULT NULL,
    `NETWORK_USER_ID` varchar(50) DEFAULT NULL,
    `BIRTH_DATE` DATETIME DEFAULT NULL,
    `GENDER_ID` int(11) NOT NULL,
    `GENDER_VALUE` varchar(50) DEFAULT NULL,
    `PHONE_NUMBER` varchar(50) DEFAULT NULL,
    `CREATED_BY` int(11) DEFAULT NULL,
	`CREATED_DATE` DATETIME DEFAULT NULL,
    `MODIFIED_BY` int(11) DEFAULT NULL,
	`MODIFIED_DATE` DATETIME DEFAULT NULL,
    `UPDATE_SEQ` int(11) DEFAULT NULL,
    PRIMARY KEY (`USER_ID`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT IGNORE INTO `CURIOSITE`.`SYS_USER`
(`USER_ID`,`EMAIL_ADDRESS`,`PASSWORD`,`DISPLAY_NAME`,`FIRST_NAME`,`LAST_NAME`,`PICTURE_URL`,`NETWORK_ID`,`NETWORK_VALUE`,`NETWORK_USER_ID`,`BIRTH_DATE`,`GENDER_ID`,`GENDER_VALUE`,`PHONE_NUMBER`,`CREATED_DATE`,`CREATED_BY`,`MODIFIED_DATE`,`MODIFIED_BY`,`UPDATE_SEQ`)
VALUES (1,'useradmin@gmail.com','e6e061838856bf47e1de730719fb2609','User Admin','User','Admin','',1,'APPC','useradmin@gmail.com','12-08-1988',2,'MALE','785-969-9492',now(),1,now(),1,0);

ALTER TABLE SYS_USER MODIFY PICTURE_URL varchar(2048) NULL DEFAULT NULL;
ALTER TABLE SYS_USER ADD OCCUPATION varchar(2048) NULL DEFAULT '';
ALTER TABLE SYS_USER ADD INTERESTS varchar(2048) NULL DEFAULT '';
ALTER TABLE SYS_USER ADD ABOUT_ME varchar(10000) NULL DEFAULT '';
ALTER TABLE SYS_USER ADD WEBSITE_URL varchar(2048) NULL DEFAULT '';
ALTER TABLE SYS_USER ADD TWITTER_URL varchar(2048) NULL DEFAULT '';
ALTER TABLE SYS_USER ADD FACEBOOK_URL varchar(2048) NULL DEFAULT '';