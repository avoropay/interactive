SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `consumer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_group` int(10) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `account_expired` date NOT NULL,
  `avatar_extension` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;


INSERT INTO `consumer` (`id`, `id_group`, `Login`, `Password`, `Email`, `account_expired`, `avatar_extension`) VALUES
(98, 5, 'Ivan', '123456', 'John316@i.ua', '0000-00-00', 'upload/consumer_avatar/1.jpg');

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

INSERT INTO `group` (`id`, `Name`) VALUES
(1, 'Users'),
(5, 'Admins'),
(13, 'Mentors');

CREATE TABLE IF NOT EXISTS `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level1` float NOT NULL,
  `level2` float NOT NULL,
  `level3` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;
