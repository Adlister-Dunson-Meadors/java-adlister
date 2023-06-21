-- Adminer 4.8.1 MySQL 5.5.5-10.6.12-MariaDB-0ubuntu0.22.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `cerberus_jakira`;
CREATE DATABASE `cerberus_jakira` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cerberus_jakira`;

DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
                       `id` int(11) NOT NULL AUTO_INCREMENT,
                       `title` varchar(1024) NOT NULL,
                       `user_id` int(11) NOT NULL,
                       `description` mediumtext NOT NULL,
                       PRIMARY KEY (`id`),
                       KEY `user_id` (`user_id`),
                       CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `ads` (`id`, `title`, `user_id`, `description`) VALUES
    (1,	'free books',	1,	'Free textbooks, they are from last semester');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `email` varchar(1024) NOT NULL,
                         `password` varchar(30) NOT NULL,
                         `userName` varchar(30) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `email`, `password`, `userName`) VALUES
                                                                (1,	'jakira@gmail.com',	'password123',	'jakira123'),
                                                                (2,	'sergio@gmail.com',	'password123',	'sergio123');

-- 2023-06-20 19:48:05
