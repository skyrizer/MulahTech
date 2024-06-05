-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mulah_tech
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `input`
--

DROP TABLE IF EXISTS `input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `input` (
  `Index_` varchar(10) NOT NULL,
  `Value` int DEFAULT NULL,
  PRIMARY KEY (`Index_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input`
--

LOCK TABLES `input` WRITE;
/*!40000 ALTER TABLE `input` DISABLE KEYS */;
INSERT INTO `input` VALUES ('A1',41),('A10',93),('A11',28),('A12',3),('A13',90),('A14',39),('A15',80),('A16',88),('A17',49),('A18',60),('A19',26),('A2',18),('A20',28),('A3',21),('A4',63),('A5',2),('A6',53),('A7',5),('A8',57),('A9',60);
/*!40000 ALTER TABLE `input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_06_05_024859_create_inputs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1v0hnqxZYu0Id6HwtNriKRJPEAoQF51ugU7pwx5m',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidHBDNHZiZE1ha0NaUWdCU3lXc1kydURCT0EwNjNTaGxwQVR2MEo5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558742),('1Vx3swALdOonIZBbdj10XlZK4k7Kc2mcMNiy7w9a',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEhzNHlDMzkxc1ZlVk5vOFVmM1JhSVpvSjZ1alRXenNtS1N5TFVIUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558838),('2yXpnvaZ6XMzq0DWPc2XhpYrb7u9QzYmYGaAUgy8',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFVMbFg3MVRObHJkNFo4YzBlMW9vdHJkdmRaYlBaajFWN2RhQVA5cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561564),('3nqwD80PGJBoHcnQtaPeWma6pvjSEA542nW5iNIq',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQThwMEZCNHpIaWNHWWpkY2lvbVBuZ2MwTHlvSkVwd3dENFFIZFgxayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559100),('3Qjcjnj1uMCxAtaT4d2YkteWDspWOoPAH2f2TT1g',NULL,'192.168.0.115','PostmanRuntime/7.39.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibE9nV3NYMktqM1pFQXBLY3d3MG5JWVM4bUltbU9lVzBCbFl1c0NUaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvZ2V0SW5wdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1717556359),('48L4sRKQRwHhzWkLrSH8E3cAUOeO7Qmi0wobHzH9',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlNxeTlYV2kyYWMzWTlhQlVXNHh2dXJ5SERVdFhtRFFWdGdQeDBuciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561995),('4S9va7bVQuK2few7tQdmlZTr7wmMlpsetVsHnpdG',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjJiSncyaGUydlNlNm51bU1WaHQyMzIxeUVhWm55QTJDNnlia0JyeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557573),('5riC1rGLlQ4Ei3O42I4gcCWE7Iq7MQF6dJcjUJ1U',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVNsb2VmV3BtNEpsalR4aVBjQWpMeHp3SVJpVUFTS1Nlc2tpUWsyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560263),('5VFPHrdDjyszCvGBQJtNT6cp3yB1OLznNVBAMhoe',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTThEa2NGSmlvdEdtVkxwSWdtUElNY1RsUGpJeHNVem1ZcEtyWWxxbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559502),('6sh8wBh8yQ1EVgmNjyaqFuBprtYDGtKailI8cjNE',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlRENU9RNDZKOUtvYTJHTnJoTDR6eWtZY0F6MGRCeWZ1RFNvSFlneCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561074),('6UVy10j86Dt0VMIccM3EyQBLqnLCfRuHmbrJtUHj',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHJoTHducnN5d2ZiSTdpNzZLNnRkYVBuTTJ6THpPQ0VYYURPd0hQdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558758),('9chARv0ZVjj3UOyxE1AgW2NZ5qLt6IC6DZMyfpTj',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicnVhazFOYU1IWWNKUThZMW9XZlFxTGJkTG9WbE81Mm1WSEhsM0pleSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559408),('9CssKV5NrMapGUMd7NUlBthv4liKhgIlriXSEJ7C',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibWQ4M0RaVG1OOThtVmw4ekp1cFUyQWZDdFhyOEh1MElaS3o4V25VUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558743),('a4qL5IotdRk2o62O5rJ2iWjIqVwJELmvP6epelfd',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiazNMZVJISHhVQVpFMzFhbk1WdXgwTDNNZU5CSElIMDF1SUkwT0FycSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558319),('axPmSCrb6TjeLtN4x0CdOz94dvYdGEM3tImiruqB',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibTdTdDFlSmFsS29CS2NCbU51eG9sMXk1dXVnVThOdkk2WFRQdU83dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560002),('b2OEHu93sUg0oRA9ywTddbnrVsnOWgqqF46P79Ht',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWpWc3pMZkhQME1Mb3o1am1JZUJjU294Z0RjWGtnNW5tMG15WHdqSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558761),('b53eouqdiOBN3UDW6DJrS1jKummwbiUWgundO0GJ',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlNrYTd4Y1JBbk80YUgyRU9WaFRtaHpJam1WSExYSHFITmRnVVFMdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558936),('bKzMQLQ4FODgacP82E7lTM4G2jA1YTjL5YHpsseq',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmVvdDI5c3drVnQxYWs4OFdRd3NuMzZTN1N1WUFFSDVDR2xHdjRyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717562051),('bT8P37hTesKPaP4Tn9d0dsHBsICGMthc7evAqt2X',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUhBMnZCM1g4YnRCWVdTTHFxakR5TGdHMjFHYmRUbXZUY2Rnb0M4RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558757),('CI2G7wHhYe0ELPLR9PY3FdHFvkSAInFOy9XYeQFe',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmtYaUJBQ2diem83Sk5VMlNaOWlQTUllUjBsUTZuTHBJRWpFVjB4WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557708),('ctoZlGH0jM8Kyyn6o5inkJCKVAzj86HVh8fJOmOj',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVNJcHBwb0NGWTBvTU83VGE5aG9BSFIyMm5tOTUyZndHRm82aXF3TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557590),('d09pne2NmaAYflK8fEgCYPzDNAzaf6RER1R2kgJ6',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFh5aFRodGI5OXh1bUs1TlBUNVhCNWZ5N0lRYTZxdzJuS2w3bmhkaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561565),('delRoliQ5JKRcR3POqE4gsjtuPsGWyhylPjyCQzX',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnA5eGtRelFTTnBMOFBYc3FnUkxLbktKV0dqVmI4QVU0ZFJVUFdkMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557845),('dgxUoXNYDVcIzHL7imDzPcgSRGiKaWpeBlTbdDqN',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibUxaVVRUb0hQZGlJSFhjVXNNVTBsZ3NRNU5SYWdONTVPNVZWbmpYNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558860),('djfSXGmGF0CNiXMDWmDWFFgKtoMdzIa5oSTepWTd',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTN3d1VNRHY1RHQwaDBPRFNZMlRScjVheXJ1YkhZZGdvTUdFbjV3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558837),('DrbxozqelJyGKGNNyYTjhrAZgAOf3zWuDqu6uPqj',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnBlMDNDYXJFdXFpbllxZEFaQWZ2WmxBM1pYRVJxWk1ibTVkR1BCVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558272),('E4EoJnpyscmtHCzrPACx7uUFJmeeR70fW14zCqWR',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUxUaWY1RjJ2SUdsUGpmQUtrWFJkZHNUdGt5RXRYZ25kWHJ0NjNWQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559487),('eNohBzHHiBKYftYLv4bUyz2xNL3j9jMUoXltCYTl',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibUtvV2FiWDB5QmJWSGhLR1FuV0hxd3ExWk1aRzRkNmNqbkZONFVtNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558743),('FfzVBtqWmpY8v5iphOTvM7a52dHlEgKhLraYksvP',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDdTU2FocWpzQ09hcEFoRHJ3ckNZWXdnd0pRS291ZUhFeHFUQnFKdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561075),('fN81ZakzZifwMkLWTFAAk8fV9mDq8t6ubf6OGtF2',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU8ySWJpRmVxR1ZOUm9OVWtuMHF4SFRzMWx3aHpyMFZ0ZVQ5TXBEdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560001),('g0gkXnIqFRijp6aYfQG2h1HnNZnOmoWy6LEpeEqK',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1A5SnB2OGYzN2RiSEoyQWh4YThuS3dzU056QVladWh6ejdIbVZvUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559870),('gg6mP0B6yqrDSZ8gC4F3T2xhXkRHooHwQ3c5FlXu',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXk5MkxTbzNJRnAwSWc2dHQxdmtHRzdPVjZvSUs5SWlNY3FIQnVZTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561727),('gxRm8kkCykg7aF4EEppVFJUTEtSL1UWINr0K2J3i',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzFGNDRjNEEzS2RnazY5WlpFeGRGZGJnbUpkbE5SNHpENkhObHdiciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560264),('GYj5TYNXqJ0hWr6qr22KjcYaBibDK8ABwLuKBUUW',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjZnUldSaW1jUzNzTk9vQzdGVmYydlJ4YjdqamtFNExDWFNKcFNwZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559563),('Hh9JwYJxQKMjAMLiuGCVLPKBzLIxCeHsyAUeFMqc',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoielBPRDBnR3dPR0hxcVd0cUpueThwYlQwYlZ2V3NpbFVPMERnT0tQcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558937),('HIpxNtLZcAIGb4yYZLFRdAJjmtuV71l95dnb6LYV',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib1pvY0hDdzkwQW9VVFczYmFiaDBqajlibEMwdVFIdnk2RnlTOXc3MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558385),('HUiDrISIQsxlDdtgUxRikRkWe3pmM7p9H6vvqGFt',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoic3RzdTFWUktMbmdvZE1najRMM2JsQUQ3VnZPMURtcllqYkppNWViSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560298),('I51n0U4BQDCLcIUKTvFEKJ7fpPgjC1YF1xPwdhfI',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieUJVMTRzc2xBdHk1YjF2R1V1QkNVa1Z2ZXk3ZDAxdDFzbnVoNjdBZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560352),('ib4TDcYrA6LsqTkcCyZqcLL9PihuhaHzHYuN2JRZ',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWZKS0l4MXFZMXFTc0t4UGNKWmFUcG45TGFvR1plbUgwdlBtdW82MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560351),('IjhXiaWgvobcGOGiqlOwkTxYR3iDSbUHEVCvkSKo',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid3Z6aVZzRzRqa1d5M1pacXFIRU40RFo2b253czBtTEtuT0hnQkk4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558318),('imEzX3rGEHpMIX7USz8whZM3ZOOvEWElpZDzszw3',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmk4NnV3OTRza3dSTzdEcXJ3SldRUGNpclQwSm5DeXRFSktuRlQyYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558322),('jfbu98uXP9PY0qKrRLPoPlyX5IRGPMOe6DW4opZx',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGZkMWtpUWtWZFJoVXBZbkxDcXVVcWhhNGhkWEpvQU1Jekpqckh4MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559581),('JGSEla1tzO6jAucejwmZTb0yyCU789sG1AfAwLV4',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid3hhUXhRazRjTnJoaVVGclNyOWUwZk5tT2J1OUNiS0lMdFRqNjBabCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560273),('kCXOPh8XlRQvytafBvkby9xWclXKdBlbYCvdT34k',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmltSkFuS2VRUDZzR3NqaXI5OVkxQzNDNXJSdWp5SmxzbXJURzNnbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558935),('kf91imCpDVeYRzn610yzzpWM4OLQuiaSw2NpfJe3',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2gyaUpwYnhuSmxYVjI3Z0xWY2tIQ3dQSVJkcWxlWXI3NFBxdkxtdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559400),('khAOjErVyOUPUX56zZ8c1n0089lVrTFbmEl7Bjjy',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFhrUndWV2RLRDZLdFhvcGFHZUlTMmRvMXZ0bXhZUmhvU0lNQlZ0ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559870),('LhtTFDNU0MWHqUFK3BMVsts05eCqoZIIcPPShZPY',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2RER1B3emU5S3pCZFBpcnB4eUJ4Y1F1QTZ4TXJnYVd0eVFjUzIwbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561996),('LZDrLHnjtY7xNnJV2TiZF5226fxw5IEKWihQN6VM',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkJDbVdBZ3VUQ3ZRZDVTQ3FhM1U4RUl4ajNJU0RJVUVhMjY0b0V2MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559239),('LZf1GJBXr0yRgJXuQN5B2XY2kEQtbWZDhIXsm8kE',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVFGV1M2clZrbTNoN1VHdmp0SHNFM0E2d1VNSHFzbHNBcG5rREpvaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559238),('MES3WNkkCrdritRSnyQax8rO1ctcBdA4xGsF6HlK',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3k0TnlUOEdkS2RQampRbFVCdlpFcGpMczFGUnVTQURZVFRuSkI4bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558274),('MEYviwDNhqO0pTd1LiK0W2wSc1ylUAeI0VeOaCfl',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTM3QjZiN0xmWHFpRzdualM1Wmwzbk1hWHNZTUM3UW41anU1VTR6diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560002),('mgAOrIoDdMy55Aoic1uQ2LONwuwR1a1GmGB6Wr4x',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkd4Mm1WZGJOUkhTaWFnNkZsNWhZZFdkUDJRZmpzQlA4RWxGMEtuRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557848),('mhYzNWykTyhJjarn6uqsHZVSgt0xzzlA4r9r86jl',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RHdWxCWk84Q3R0Ym9qZ0NNb3J6SWs1ZThMTlUyVHFIN2VCd2pHQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561993),('MjLZIkRd2uMeF8RhM0vJab7cZo2jj2tzq75LcSQC',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSml2WTNMV1FUY1c2YUNNUmI3bHZhVDZJMnlENXl2cnNmZWVKZzE2MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558959),('mSjhZD0IHq0ysDO0Lpg38q85GsfKmrRQ9jj6hFz7',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidlZ1RW5YbWlVUjZoaW8yemNRQTFFRmhpUkRQSDJOWEc5VXRCYU1iMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557787),('Ns5DDRCisiDZuOBwEthLP6lJCRD9QdJ6t76IjRVY',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiekthelc4Umx2UTJGMlF6amM2U1N0ZElJemVrT0xoclFDZkNoc1lDaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717557551),('oifa6zKucUUSgmHj0rbF8Kxb73EXtA6zVi8Va2Ou',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVZxQjVzNzB5SnRTRXJsZ252aFBzWWMwVjBMR1NzcVJYUjREbmVPaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558974),('OkUmqfQ8t3nzGrkuATiamtNkezWzGrGxGT0SF6c5',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEs5a2hrakg5RExtU0kxRk1TMXVhT040UkVidVpPdEV1ZlVMM0xyVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559081),('OsFgGF8hUSJtg7m5bOjlz3oSiWjMrNIdgKQSbZwC',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGd1eWJHSFpiS0gzRXAyM2dSZEtCUE00alF1dVduWmFvWkhVYXdEUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558743),('Oz2oKRvV3L2Z27Zz74MXNEB696B9EQ57vAbxjamo',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2RaNFZwcXVZSEdtbms1M2dXYnhVMEE5Q1Q5TkpkZ3lhUDBmTWpuOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559511),('pwyI0iibzSl6MBPUmgTj0XQloEz48FM2Yt9CO695',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibXRXZlhNT2VTeFhDNm9YMU9KRUtDd29heTBqNkJHU3drVHR0dW1qWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558742),('q35NNlpo8Xf3R2f5Jy03oMJe95XKfcJ27i05kzZW',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkVTSGNkUkV1NW5aa3huOWttZk5VTUQyQlJEVGVDaWE4TXZ5UjFMaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558937),('qbZNVmQ0Z4wq30OaxsTqPI8gMlDyMlT5XuJbgE5d',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3pYZTB4eXB4QzFFSUlFT1VxZWl5eDE4SVliS1FQTVpyaWM4bkdITCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560003),('Qmlw14hAyPdTa7ysPGo1uu6pwaHKU2po7bVMxhOm',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZllZb3pKZXFLZ2dnVzE1WWM0UzlCbVd5UFFQTG13enp1NFVXMEkyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559869),('qscvep9WUQ2LqS2y6rUriDDdPAkZ561ukeNk8FTd',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnFaVWg5ajdycldEb1VsSEQyNndUUGhDRWF3c1hYa2ZuVzRmWk4xdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559566),('rM1YtQqN398FhsYRPPPOPQmDuHEYpXwKttdOUKtl',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDJGVlF5OGxMTll5UlBQRmlRTjJtQzEzRWlnY0sxbVFDOWZMN3k5dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558759),('rNJQcSlreb2ZsZsSAY6UaeldFSrZPIJOXyFlS56k',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1doYlFaSnpCdTR3NjBxdEp5WDBXR0RNY0ZBUWFOVlExYWYzTm9xQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560342),('sYEccmQL9prYywMcmdopI7EywOB0x6kERI0B4k57',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEptVDNIakJJR3F2NUJUUDJqUkFqQlpwUm00bWh6Q2kxODhVNmlTWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558272),('T3SVkMRs5TkG2FJtuZBxsMowzoeZBG4h4te3PPVk',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjlZWkM2RThhM3FZbVB2MDE1aWVvRlpaVHBVWGoyUFgyUWd2aFJ1MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558838),('TKYA7DzdzsIeJ8WpomGAaQcqeSinMm0Hupx0HVbp',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFFkb2pNQXVCdlF0UURud3JjeTlaNHBFQUxtSGJFQ0Q5cTlTdUxhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560240),('tYJUy9d6TaJ7WLEWvNgUNkzxJU9C8iBPDxMdawqU',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTRyZU1hNXljeERYYXFpeWlTRlZWVHN4MzZvd1VuMjdZNDJxeGx1NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558760),('UCj5aXsgOlUTD7Z1BFPvZoPWbVijOc7SlnVjeUcN',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibDZJNnJsVW1zU25CZ0VEZ21yMklxWml3YW5IbWtHWEttd0U4ZFdHQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558758),('ukRVU2DTYTrvNDGvaLUQTmWc97s7oUb59Qb1JBEB',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieE9aUzhwcUZyZWQyZjgySHVKcXBkaXpsczg1c3FxRXltUm9sMDRxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559997),('UT7vmOVXKGOxMMUmw2z2Uu76pKuu5TRpa1I6iVED',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidFljUXlDZnNPNUM1c2gyN2JxTjBwT2Vqc2R4ZUltNzRSY1ZiekhVRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559101),('UVggPJTtu7Jj31KpEIMUeZhl5YmMKNFlWxjXfhfZ',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTVnc3dKbVZJNVVtczhWcTA4M0JtdzFsUXpDQjJIYlVXaVVGZFRvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717561229),('v4SikSoOaWIPdk1YD3whWuQ7TRM5Jjon39qqUgXF',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzNKS0xCbW9ucVk4UkpjVlFtMnVnZFIxcm1YYXhYVm1lY1FtOTNGRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558859),('whHhplQSmX5sB5AfXvmrznVsAeGOufFuCtM1CcSS',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTlteEpXMW02TTlpaFRueDBRdEtUc2pUOXZRdkVxWkxFWjBpWEhURSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558742),('X6KhNC8DFqM5FTZxOi500s71Dh2tDz3nTLokcwXf',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib1B1MnhLNjcwaFpuUHRJclg1Tm1ndEtOaEU2WXI5OEpONEV6QTU1TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560236),('xF4dvcQnJ60aKUciVImCZqiLYz6JFp7sD0ty1wvS',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVFRUGxxbjB6QnFUNklrcGI2U3FtdVR4eTVLVUJWSWM5eTFHU0hoTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558836),('XLlqqcaIUXEgLve9R3vSmDtn5BEnBCQRFXDdHz5S',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGlsUlNuYkpPTmVjOWNVRFRGcHgyaGV1dVNiN0ZtOFdpY0lISWxnNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558385),('Y1YslLIJHoR9lMGs5MTpVbjYcRgyPXHfFiaPohYo',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUldFbFliUlpiUWNDVGd0WnhWTlhQTVFZekZUV1haQld1azh0R3l3TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717560299),('y25I9NpdTcoC19k1yPSxxptJ7wYSvEuqq7hrFQYy',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFN3ODBFTEprMjhocVpHOEVKTjF2WTVBNDZUZm5ybWU1VHNsT2VwQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558854),('yRzh3EwVHy2Vbc02WaA6HsLc7OyA2dYjpJBTVf81',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG9zc29PN2hwU2t4SjlZRUMwRWdzOFFZckQwMm5IMWdWeDVQNHllMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558890),('YwnXlSFVA8aCFiCAF3nFiUDMPyI2xBrTZfhQpzup',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnNTNG9YRTNGQ1Z3WjJKaTBuUm9LWW5RZjVOakhUME4wMVZ6ck1NZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559386),('zBb4EfGOeymIftfFMXUA7AzSVbqcANkg6QjAgzkT',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicXlEVnROVWJPb1dnOHdId1hSVGRUTXJnZW9RV0VWRUdBdkZqcGhqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559566),('zPji9ZIik2jTQ3sPLSEYjIWeXHaWARrRhYENWYzp',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTVidEZPR1I0TnA2ZmpROXV4VEVERnVJUWFwd0Z6cEdKNFJtUzFtdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717559870),('zU8ymfRIkuLH3vuQtgx2K7Ny21EsT7makQpkx0Ah',NULL,'192.168.0.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiclF1Z1ZocUdyVVFWbVBHVHRLQlliZUluUHpkeFZpZnpHZUU1S3c1ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuMTE1OjgwMDAvYXBpL2dldElucHV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717558388);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-06-05 13:01:35
