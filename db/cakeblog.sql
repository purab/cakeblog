-- phpMyAdmin SQL Dump
-- version 2.11.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2013 at 03:07 PM
-- Server version: 5.5.29
-- PHP Version: 5.3.20

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakeblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(2, 'A title once again', 'And the post body follows.', '2013-10-29 11:39:55', '2013-10-29 07:08:16', NULL),
(3, 'Title strikes back', 'This is really exciting! Not.', '2013-10-29 11:39:55', NULL, NULL),
(4, 'test', 'test', '2013-10-29 07:15:41', '2013-10-29 07:15:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(1, 'purab', 'eb91228779db109325324f640bf3d0f661dad731', 'admin', '2013-10-29 07:04:07', '2013-10-29 07:04:07'),
(2, 'satish', 'smart@123', 'admin', '2013-10-29 08:37:24', '2013-10-29 08:37:24');
