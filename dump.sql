-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: lara-blog
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_09_19_123744_create_posts_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'First Blog','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet bibendum urna. Fusce at libero nec neque interdum tempus. Pellentesque dapibus sed quam cursus sagittis. Vivamus luctus, tortor id laoreet rhoncus, eros sem pretium urna.Magna.','2017-09-19 07:22:11','2017-09-19 11:31:18'),(2,1,'Who are the Rohingya?','The Rohingya are a Muslim ethnic-minority group that has lived as a people in Myanmar for centuries.\r\nToday, more than a million of them live in the country, most in the western coastal state of Rakhine, where they make up around a third of the population. They speak their own language, which isn\'t recognized by the state.\r\nThere are regular clashes between the Rohingya and the country\'s security forces, as well as other ethnic groups in Rakhine, which are predominantly Buddhist. Rohingya militant groups are often involved in the clashes.','2017-09-19 08:14:39','2017-09-19 08:14:39'),(3,1,'Is Shakib Al Hasan cricket’s MVP?','In the last two and a half years Bangladesh have only lost in two of their nine series, including drawn series against England, India and South Africa (with only one Test remaining against Australia the worst they can do is draw this series) at home.\r\n\r\nOne of the key contributors to their recent form has been Shakib Al Hasan, who turned in bowling figures of 10-153 and top scored in their first innings with an impressive 84 against Australia. Shakib has been an international player for over a decade now but at 30 is now arguably the best all-rounder in the game. His contributions span across all formats and his experience of the Big Bash, the IPL and many other domestic competitions throughout the world have only enhanced him as a player.','2017-09-19 08:16:52','2017-09-19 08:16:52'),(4,1,'Monsoon floods hit South Asia','Hundreds of thousands of people have lost their homes and their livelihoods.\r\n\r\nMany medical facilities, schools, markets and other essential services are submerged.\r\n\r\nA staggering 8.6 million people have been affected in Bangladesh alone – greater than the population of Scotland.\r\n\r\nAround 1.7 million people have been affected in Nepal, and over 32  million in India.','2017-09-19 08:18:20','2017-09-19 08:18:20'),(5,1,'BRAC ONNESHA – Bangladesh’s First Nano-satellite','BRAC Onnesha is a cubeSat developed, built and tested in Kyushu Institute of Technology by 3 Bangladeshi post graduate students. CubeSat is standard for satellites by Prof. Bob Twiggs and Prof. Jordi Puig-Suari. CubeSat is a 10 cm x 10 cm x 10 cm satellite. The exterior shape of the satellite is well defined by standard, which allows the satellite to be deployed from PPOD / JSSOD. This standard allows developers to seek for cheap and frequent launch opportunity.','2017-09-19 08:20:45','2017-09-19 08:20:45'),(6,1,'Apple\'s iPhone X is going to be hard to find in stock!','The iPhone X is the flagship phone you really want. It takes Apple\'s ten-year-old smartphone design in a bold new direction. It also leaves behind the familiar physical home button and tried-and-true fingerprint sensor.','2017-09-19 08:24:14','2017-09-19 08:24:14'),(7,1,'Oreo is for everyone','Android 8.0 represents the current pinnacle of that effort, the very tip of the spear, fresh from Google’s workshop. Android 8.0 Oreo is as comprehensive a version of Android as there has ever been, and it is as stable, feature-rich and functional as ever. While on the surface it may lack grand visual changes, what lies beneath is stacked with usability improvements and polish.','2017-09-19 08:25:34','2017-09-19 08:25:34'),(8,1,'What\'s New in Laravel 5.5','In Laravel 5.5, you\'ll find a sweet new syntax for defining custom if Blade directives.\r\nA new Blade addition in Laravel 5.5 will add support for simplifying custom if statements in your views.\r\nThe new Blade::if() makes it convenient to abstract repetitive checks out of templates, making them more readable.','2017-09-19 08:27:14','2017-09-19 08:27:14'),(9,1,'It\'s the Space race of the 21st century!','The quantum computer has the potential to revolutionize the 21st century, solving problems so massively complex th today’s computers would take a century to solve. But a single quantum computer is still no match for the more than billion classical computers currently in use. But, as with classical computers, quantum computers need a quantum internet, and researchers at The Australian National University may have found the perfect way to store quantum data long enough to share the information around a next-generation internet which promises to be impervious to hacking.','2017-09-19 08:31:48','2017-09-19 08:31:48'),(10,1,'Why Bangladesh\'s garments won’t go ‘haute couture’','Bangladesh exports basic garments at the lowest possible cost, unbeatable by any other competitor country. Manufacturing clothes is the most basic link of the fashion industry value chain. On the one hand, clothes will always be in demand. On the other hand, far from being just a garment to keep one warm and safe against the elements, people wear clothes for a variety of reasons— as a form of cultural identity, to signal one’s income status, a form of self-expression, as a medium of protest or celebration, or to “wear” a wide range of human emotions.','2017-09-19 08:33:15','2017-09-19 08:33:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Fahia Nasnin','fahiamim.hc@gmail.com','$2y$10$MMa76H.Wq3f9GqfMjiEnKeHyJlapedGmCouvLlWudzC/ZlFSLPTOe','JGqyq7tNeue6nT1w9ybE4MCAMaZpjydv6iHo4SN3Q0JOVBTtKWasY6cdreUQ','2017-09-19 04:41:24','2017-09-19 04:41:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-20  1:17:22
