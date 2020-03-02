SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--create tables

CREATE TABLE `lotteryDB` (
    'lotteryID' int(11) NOT NULL auto_increment,
    'batch_ID' int(11) Not NULL,
  `number_01` int(11) NOT NULL,
  `number_02` int(11) NOT NULL,
  `number_03` int(11) NOT NULL,
  `number_04` int(11) NOT NULL,
  `number_05` int(11) NOT NULL,
  `date_Generated` date(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
    'user_ID' int(11) NOT NULL auto_increment,
  `user_Name` int(11) NOT NULL,
  `user_Password` int(11) NOT NULL,
  `date_login` date(11) NOT NULL,
  `date_Create` date(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--input some test data for debugging puporses

Insert into 'lotteryDB'('batch_ID','number_01','number_02','number_03','number_04','number_05','date_Generated') values (01,01,02,03,04,05,'3/1/2020'),(01,06,07,08,09,10,'2/29/2020')
;

Insert into 'users'('user_Name','user_Password','date_login','date_Create') values ('UserName01','Password01','2/2/20','3/1/19'),('UserName02','Password02','1/1/20','2/28/19')
;
