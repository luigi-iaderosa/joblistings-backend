-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: joblistings
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id_company` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `contact_email` varchar(45) DEFAULT NULL,
  `contact_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Pezzott Company edit','same as name edit','pezzot@company.netedit','523990087600'),(2,'IEM srl','BI boosters 4 hire','info@iemexplore.com','231231223'),(3,'Tad Chang','what',NULL,NULL),(5,'Aggrotech Industries','Cool name, but company is nonexisting','nonex@mail.com','123533');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id_job` int NOT NULL AUTO_INCREMENT,
  `job_type` varchar(120) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `id_company` int DEFAULT NULL,
  PRIMARY KEY (`id_job`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (2,'Full-Time','Vue.js Developer','Are you passionate about front-end development? Join our team in vibrant Brooklyn, NY, and work on exciting projects that make a difference. We offer competitive compensation and a collaborative work environment where your ideas are valued.','$70K - $80K','Brooklyn, NY',2),(3,'Part-Time','Vue Front-End Developer','Join our team as a Part-Time Front-End Developer in beautiful Pheonix, AZ. We are looking for a self-motivated individual with a passion for creating engaging user experiences. This position offers flexible hours and the opportunity to work remotely.','$60K - $70K','Pheonix, AZ',3),(4,'Full-Time','Full Stack Vue Developer','Exciting opportunity for a Full-Time Front-End Developer in bustling Atlanta, GA. We are seeking a talented individual with a passion for building elegant and scalable web applications. Join our team and make an impact!','$90K - $100K','Atlanta, GA',1),(5,'Full-Time','Vue Native Developer','Join our team as a Front-End Developer in beautiful Portland, OR. We are looking for a skilled and enthusiastic individual to help us create innovative web solutions. Competitive salary and great benefits package available.','$100K - $110K','Portland, OR',2),(6,'Part-Time','TEMPORARY JOB NAME','Aperiam et ipsum do','$70K - $80K','Sit non quasi volup',3),(7,'Internship','TEMPORARY JOB NAME','Qui amet dolore lau','$70K - $80K','Velit dolore quia re',1),(8,'Internship','TEMPORARY JOB NAME','Dolor voluptatem ver','$175K - $200K','Ut maiores eius ut r',2),(9,'Full-Time','TEMPORARY JOB NAME','Distinctio Dolor ve','$100K - $125K','Omnis facere ipsam e',3),(11,NULL,'Full Stack edit','php vue js tailwind edit','$90K - $100K','Montenero di Bisaccia edit',1);
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
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'auth_token','a3a2221b3c1afdee22a1298eeafce94f46211f2bf6d288871743b5f6c4b511d0','[\"*\"]',NULL,'2025-04-06 10:50:44','2025-04-06 10:50:44'),(2,'App\\Models\\User',1,'auth_token','efd276e14cc31e272d1c9707cd508161ab7f1d37a1869487f5f5008e445752f7','[\"*\"]','2025-04-06 11:04:21','2025-04-06 11:04:11','2025-04-06 11:04:21'),(3,'App\\Models\\User',1,'auth_token','e10c7576aeda3827c86ae3e55d57b42504a36796a11918173fc7c409b2c49058','[\"*\"]',NULL,'2025-04-15 09:00:06','2025-04-15 09:00:06'),(4,'App\\Models\\User',1,'auth_token','99543936f71e964e663f66905956476d4688fdab57f8fa739059c79ea5def898','[\"*\"]',NULL,'2025-04-15 09:02:34','2025-04-15 09:02:34'),(5,'App\\Models\\User',1,'auth_token','c4d727781d195bcefe2d6354aa3b7aa8cf8098d420668607d872ba7e314f202b','[\"*\"]',NULL,'2025-04-15 09:03:13','2025-04-15 09:03:13'),(6,'App\\Models\\User',1,'auth_token','bc8af0d19d934c1917af78e9674f4d45e79330a006b8f20375ff4e0418c776e6','[\"*\"]',NULL,'2025-04-15 09:11:07','2025-04-15 09:11:07'),(7,'App\\Models\\User',1,'auth_token','d07dbafbad6fa17430cc73944b56744ad5c78af95139cfc35490de441dbdb2e3','[\"*\"]',NULL,'2025-04-15 09:12:46','2025-04-15 09:12:46'),(8,'App\\Models\\User',1,'auth_token','3f40453674708402c88ddaa915b0d377eaad2a5437783bf39632cd56ef3d4ef3','[\"*\"]',NULL,'2025-04-15 09:16:41','2025-04-15 09:16:41'),(9,'App\\Models\\User',1,'auth_token','29585eb429d6c1a60d1e85f44118649e2889eb457979c429d7a2d27e6d3af411','[\"*\"]',NULL,'2025-04-15 09:20:13','2025-04-15 09:20:13'),(10,'App\\Models\\User',1,'auth_token','495d783e6d5f6b9689aeeaa0c52dadc2509e8b6c4639cd305591b7ea4f674835','[\"*\"]',NULL,'2025-04-15 09:23:40','2025-04-15 09:23:40'),(11,'App\\Models\\User',1,'auth_token','a92f913c9c103a81c636bcc5b5f0b626c55117afa62e7ea335307f911d9d2d55','[\"*\"]',NULL,'2025-04-15 10:57:17','2025-04-15 10:57:17'),(12,'App\\Models\\User',1,'auth_token','574c42082a884300800805ba78ad14a76c08ccba29f68d470b5bf9014d7d02d8','[\"*\"]',NULL,'2025-04-15 10:57:51','2025-04-15 10:57:51'),(13,'App\\Models\\User',1,'auth_token','0cffa097e5280cafebb72573242408aea1e1515cfaaee63c3614b4a7ec93d7f2','[\"*\"]',NULL,'2025-04-15 11:01:15','2025-04-15 11:01:15'),(14,'App\\Models\\User',2,'auth_token','9dea022d55a793d8e2a49773307d83f4746f7d5188da35407b3dfffe9a469517','[\"*\"]',NULL,'2025-04-15 11:18:53','2025-04-15 11:18:53'),(15,'App\\Models\\User',3,'auth_token','f11a5a8bcb602b3df380bea29d5599037a63a312023b752492bbeaf3a507fcc7','[\"*\"]',NULL,'2025-04-15 11:23:18','2025-04-15 11:23:18'),(16,'App\\Models\\User',3,'auth_token','3b9ef75ce014ddabe1002d227b214fc8218d6141b3732d58746cf11b01de5dbb','[\"*\"]','2025-04-16 08:34:02','2025-04-15 14:20:02','2025-04-16 08:34:02'),(17,'App\\Models\\User',2,'auth_token','2afdb73df89aafbb1053f70a1c51a71026460b57456358d511349230d15536b5','[\"*\"]','2025-04-15 14:57:16','2025-04-15 14:41:29','2025-04-15 14:57:16'),(18,'App\\Models\\User',3,'auth_token','67397c5aeb85a180cc8980bca451d5570d213a09ca71a1d87a95c7bef3a59b5c','[\"*\"]','2025-04-15 14:58:23','2025-04-15 14:58:07','2025-04-15 14:58:23'),(19,'App\\Models\\User',3,'auth_token','e615a7d894fcfe70858462ade6a44130199abbbe4fce8d4cde61587d808acb8b','[\"*\"]','2025-04-16 08:00:08','2025-04-16 07:56:06','2025-04-16 08:00:08'),(20,'App\\Models\\User',2,'auth_token','4228a51dbd6210eecb6fa3ad310edc3bb5a8e4ae5b15c3c16580eeddea404610','[\"*\"]','2025-04-16 09:15:32','2025-04-16 08:00:17','2025-04-16 09:15:32'),(21,'App\\Models\\User',2,'auth_token','df234cefaaae32ff88c1bbd9e76a4cba9e6a2705b55c67686e47f47ba72d8ab6','[\"*\"]',NULL,'2025-04-16 13:23:04','2025-04-16 13:23:04'),(22,'App\\Models\\User',2,'auth_token','9472d0d36f79f4a5b44d5233a4296d6dad092d7e18fb67cdd213327767e37900','[\"*\"]',NULL,'2025-04-16 13:23:23','2025-04-16 13:23:23'),(23,'App\\Models\\User',2,'auth_token','9ba72ac8463eb6e1dc54325e00ec535e25d26c8b66417daa16f7f8312d16248e','[\"*\"]',NULL,'2025-04-16 13:50:23','2025-04-16 13:50:23'),(24,'App\\Models\\User',2,'auth_token','e31f8cf5e740e3cc6259f952a212731e82b7ba181864f427d487308124c01664','[\"*\"]',NULL,'2025-04-16 14:02:06','2025-04-16 14:02:06'),(25,'App\\Models\\User',2,'auth_token','493e555c7fa0837046022eb9bebd4b3ed2d450ce2e4f6945a47b320cef1be349','[\"*\"]',NULL,'2025-04-16 14:03:40','2025-04-16 14:03:40'),(26,'App\\Models\\User',2,'auth_token','e1c04a60d1572269d549dccec772b409482488159f5c384a5d7f1679a6f00278','[\"*\"]',NULL,'2025-04-16 14:05:03','2025-04-16 14:05:03'),(27,'App\\Models\\User',2,'auth_token','80b4ba2ecdb9220ed41f75c098efdeedca5934452b10ab50c95af17914287203','[\"*\"]',NULL,'2025-04-16 14:06:00','2025-04-16 14:06:00'),(28,'App\\Models\\User',2,'auth_token','7cadbd13aba74ae174995ff9ab514a247a6997ed873110a050c7948b0fdd38ef','[\"*\"]',NULL,'2025-04-16 14:07:22','2025-04-16 14:07:22'),(29,'App\\Models\\User',2,'auth_token','5cc1995eb896d64e29c800c8895b5c7979547114abbd1cdd8f90716d1dd6a8c0','[\"*\"]',NULL,'2025-04-16 14:15:46','2025-04-16 14:15:46'),(30,'App\\Models\\User',2,'auth_token','57cf6de2bf649f18a2587375400c87de5c2225eabe9b89c91a117ceeeea961d3','[\"*\"]',NULL,'2025-04-16 14:39:37','2025-04-16 14:39:37'),(31,'App\\Models\\User',2,'auth_token','832ae4da0afc894f3b5c36d4d49de3b53d6b550a57edad53ac053b498e11e121','[\"*\"]',NULL,'2025-04-16 14:43:45','2025-04-16 14:43:45'),(32,'App\\Models\\User',2,'auth_token','2937492fe37d5f1f0a0c8539c5a7a37763ce657e385432eff3b48189e8b56290','[\"*\"]',NULL,'2025-04-17 09:00:35','2025-04-17 09:00:35'),(33,'App\\Models\\User',2,'auth_token','ccc601f7caf70c6b973c648c56a15604878ed7577330853881e3501ebcb339ed','[\"*\"]',NULL,'2025-04-17 09:01:50','2025-04-17 09:01:50'),(34,'App\\Models\\User',2,'auth_token','c8e8caf54e7f0606a612b48664f243af90e06b9b22d60a8a9c46d60c7870acb1','[\"*\"]',NULL,'2025-04-17 09:06:18','2025-04-17 09:06:18'),(35,'App\\Models\\User',2,'auth_token','299f0eb06652e7939137d6f34b8bcec550e59699405eb715bd4dcc29eef9d04f','[\"*\"]',NULL,'2025-04-17 09:06:55','2025-04-17 09:06:55'),(36,'App\\Models\\User',2,'auth_token','8efbdcda6432e950d5280d9ccafd52b4cb1694c1622ab6972399aa360ed6b4d7','[\"*\"]',NULL,'2025-04-17 09:06:55','2025-04-17 09:06:55'),(37,'App\\Models\\User',2,'auth_token','2232c8f134cdc64cfe51e8e91cd7892794af35b72e14737b0ae4d896e80e041c','[\"*\"]',NULL,'2025-04-17 09:07:23','2025-04-17 09:07:23'),(38,'App\\Models\\User',2,'auth_token','3b08a25f9fdb059cc6275068c3f6bdcbdb7a3f73cad8fc934866f7598e8d39b4','[\"*\"]',NULL,'2025-04-17 09:13:54','2025-04-17 09:13:54'),(39,'App\\Models\\User',2,'auth_token','4f26d7295ed840f11ba5202d309bc5fd545a44b5544edee351c51af274542397','[\"*\"]',NULL,'2025-04-17 10:03:59','2025-04-17 10:03:59'),(40,'App\\Models\\User',2,'auth_token','bbd92fcb5f073bbddff12b57a820d959325b603f8d0e21a02a8960303f9c236e','[\"*\"]',NULL,'2025-04-17 10:04:40','2025-04-17 10:04:40'),(41,'App\\Models\\User',2,'auth_token','c7546f5339d922d9949434d184be52f1ff5ef5932985643c25eeca172d31cc04','[\"*\"]',NULL,'2025-04-17 10:20:09','2025-04-17 10:20:09'),(42,'App\\Models\\User',2,'auth_token','825447f2e53d9c0c5fc9a7f8e7207de991ee2fc434c14905a93a9c050f5a2aff','[\"*\"]',NULL,'2025-04-19 15:16:29','2025-04-19 15:16:29'),(43,'App\\Models\\User',2,'auth_token','4ddff20a526f2cd95d8576154e6d3f56b1b8e32c244f1726fd12d0fe6b03646f','[\"*\"]',NULL,'2025-04-19 15:23:42','2025-04-19 15:23:42'),(44,'App\\Models\\User',2,'auth_token','dbdf692f3e3fef66ab9f1d899b0828baf9649ae2b5d77fed42e7cec2348f5b53','[\"*\"]',NULL,'2025-04-19 15:55:11','2025-04-19 15:55:11'),(45,'App\\Models\\User',2,'auth_token','042aee26c5c90b5c390f4caf800ac2edec20cf18f6f637e20da7ed76b1eee83b','[\"*\"]',NULL,'2025-04-19 15:56:04','2025-04-19 15:56:04'),(46,'App\\Models\\User',2,'auth_token','708f612452e77b5830546b855db1d39001305a9a55d2b597fa69de8099bee226','[\"*\"]',NULL,'2025-04-19 16:03:46','2025-04-19 16:03:46'),(47,'App\\Models\\User',2,'auth_token','d59111ff8fa3b617effc1d70c1eae388d2deeab016c1f9661b377a1355865ebb','[\"*\"]',NULL,'2025-04-26 15:15:16','2025-04-26 15:15:16'),(48,'App\\Models\\User',2,'auth_token','0ef09bb23ffea7caa2f427cb0d480a0e4e31f79d212b4440864912431240eba5','[\"*\"]','2025-06-05 09:59:04','2025-04-27 08:08:01','2025-06-05 09:59:04'),(49,'App\\Models\\User',2,'auth_token','23dea6cb7a3bfe4f5b57d2aaa0e664b57141030b38c017e48fc3c0f2e7ad8976','[\"*\"]','2025-04-27 10:18:12','2025-04-27 08:49:37','2025-04-27 10:18:12'),(50,'App\\Models\\User',2,'auth_token','675360ffcd22af74e7446ec63c70ec8adcff9c045cb3c8af3e1d5cc63b590fc3','[\"*\"]','2025-06-05 10:16:18','2025-06-05 10:16:07','2025-06-05 10:16:18'),(51,'App\\Models\\User',2,'auth_token','0cc317835bfa82c0dcbc7c190d1ab5146b686819e09899c80d0531cd2e0b4991','[\"*\"]','2025-06-05 10:16:44','2025-06-05 10:16:32','2025-06-05 10:16:44'),(52,'App\\Models\\User',2,'auth_token','fb0baecdf41bf76d8689a238e865dd77452c87ec3ee69033d0185b4869e92d0a','[\"*\"]',NULL,'2025-06-05 12:35:27','2025-06-05 12:35:27'),(53,'App\\Models\\User',2,'auth_token','15c8b66c6ef05d7a70a8ac5cf16ee4012a91153cea7d13816d5676d6a8300197','[\"*\"]',NULL,'2025-06-05 12:35:30','2025-06-05 12:35:30'),(54,'App\\Models\\User',2,'auth_token','1ef48fe32a817b357f1e6896aac12f89f0ebc8efad2f9c87027233699221ab75','[\"*\"]',NULL,'2025-06-05 12:35:43','2025-06-05 12:35:43'),(55,'App\\Models\\User',2,'auth_token','bf23dfc16577c251634a1b44d42b717c2718244ee827d28671330e1ac89c0719','[\"*\"]',NULL,'2025-06-05 12:35:45','2025-06-05 12:35:45'),(56,'App\\Models\\User',2,'auth_token','a68a799ce26e067af03d01ecd83c5bf8b64733bc7aadc5f4bfe2781da5248d80','[\"*\"]',NULL,'2025-06-05 12:36:34','2025-06-05 12:36:34'),(57,'App\\Models\\User',2,'auth_token','d5a0a8a02eb2ebf7593f6f23df51a8ed35fac081b7dd473f71bac012f0dbc777','[\"*\"]','2025-06-05 12:37:16','2025-06-05 12:37:16','2025-06-05 12:37:16'),(58,'App\\Models\\User',2,'auth_token','4c5bd27326048de6e5af03b4326a109799f228c655f3123dcc9f9009128c6163','[\"*\"]','2025-06-05 12:37:37','2025-06-05 12:37:37','2025-06-05 12:37:37'),(59,'App\\Models\\User',2,'auth_token','3b1a003ac966901a9b8fb020f86ad02e1225f881641eb050821861e4969005a2','[\"*\"]','2025-06-05 13:59:04','2025-06-05 13:14:05','2025-06-05 13:59:04'),(60,'App\\Models\\User',2,'auth_token','dc013518ad675d0f8fdc2b8e69fbe440bb7220adcea8d3b80a6e179cd4011f3c','[\"*\"]','2025-06-09 12:32:40','2025-06-05 14:00:01','2025-06-09 12:32:40'),(61,'App\\Models\\User',2,'auth_token','08d15c53971e11109dc89abeec7d80852c786faae5065b6ec05cbf63bd51cdf0','[\"*\"]','2025-10-05 09:23:20','2025-06-09 12:54:43','2025-10-05 09:23:20'),(62,'App\\Models\\User',2,'auth_token','d8c9c28f949ade206c2ae7f090e3f24a0ba83606a75ba6d7281a42872358365d','[\"*\"]','2025-10-05 10:06:32','2025-10-05 09:23:35','2025-10-05 10:06:32'),(63,'App\\Models\\User',3,'auth_token','97c2979fd7495120ee0593c0a1c38922bfec1b857289780566393f5ddfe3d729','[\"*\"]','2025-10-05 10:27:51','2025-10-05 10:20:33','2025-10-05 10:27:51'),(64,'App\\Models\\User',3,'auth_token','b06545f4ebc96e9998e67d036f3f591e4bc93f5e5092e97b24297a1cc7184467','[\"*\"]',NULL,'2025-10-05 10:28:14','2025-10-05 10:28:14'),(65,'App\\Models\\User',3,'auth_token','6ef75648b07b56011fe3f33a2e098ab2f8b580500b7765373f467662c5fbde1e','[\"*\"]',NULL,'2025-10-05 10:31:07','2025-10-05 10:31:07'),(66,'App\\Models\\User',3,'auth_token','c8bab21324b30e36236aa1dfe7eac4835b7f5ec553d8817b63a5268e3f90d076','[\"*\"]','2025-10-05 13:37:49','2025-10-05 13:36:40','2025-10-05 13:37:49'),(67,'App\\Models\\User',3,'auth_token','da3c84fa2164f408c54f3edfcadf6d8e0b6bf495148d98ab7223d271f1d15929','[\"*\"]','2025-10-05 13:43:52','2025-10-05 13:38:08','2025-10-05 13:43:52'),(68,'App\\Models\\User',3,'auth_token','daf90ea90a5c75dd1775b0d4b5dde222bbf764d2d4856572ea8cca0c91624cc4','[\"*\"]','2025-10-05 13:59:56','2025-10-05 13:44:18','2025-10-05 13:59:56'),(69,'App\\Models\\User',3,'auth_token','e0e5deb384f95f1cdacf073fc0361b8ed17dea8641e90f3260ac75086b090b4c','[\"*\"]','2025-10-05 14:00:27','2025-10-05 14:00:06','2025-10-05 14:00:27'),(70,'App\\Models\\User',3,'auth_token','211ac2ed9f11aa3bc17e2e5520b5ab61072276f72e3e38808e9df13492646e62','[\"*\"]','2025-10-05 14:01:18','2025-10-05 14:00:37','2025-10-05 14:01:18'),(71,'App\\Models\\User',3,'auth_token','0cb46052752f3e35ad573adfc183402f431bd0b0e6c2ef483ea91e856d27d0dc','[\"*\"]','2025-10-05 14:03:27','2025-10-05 14:01:34','2025-10-05 14:03:27'),(72,'App\\Models\\User',3,'auth_token','9ecf5574efd50ce61f95f2fd4268cda22efe21afb835562959c8dbd1d54a3d89','[\"*\"]','2025-10-05 14:05:44','2025-10-05 14:04:28','2025-10-05 14:05:44'),(73,'App\\Models\\User',3,'auth_token','2990bf0c220a58b9502206906ca083306acffd3b71de089528543995dae85be9','[\"*\"]','2025-10-05 14:09:02','2025-10-05 14:05:54','2025-10-05 14:09:02'),(74,'App\\Models\\User',3,'auth_token','ffd1cacabfbb356543046b98ed915b06c98d258e2ce6a15467af7aa7e31f7775','[\"*\"]','2025-10-05 14:09:18','2025-10-05 14:09:18','2025-10-05 14:09:18'),(75,'App\\Models\\User',3,'auth_token','7903ccf2f42cde27e7450def6220ec5cdc04a4cca36197b8aab79898e66d6787','[\"*\"]','2025-10-05 14:33:37','2025-10-05 14:30:40','2025-10-05 14:33:37'),(76,'App\\Models\\User',3,'auth_token','0cb971e81681a988302c04fbb77c5ecc06a5c316db8cf2e052f210adc8da8b01','[\"*\"]','2025-10-05 14:35:18','2025-10-05 14:33:56','2025-10-05 14:35:18'),(77,'App\\Models\\User',3,'auth_token','24aad3c193ea8acdd3d3681ff81ebdbe7d278a6fa2d0af83c18be815e232aaf3','[\"*\"]','2025-10-05 14:35:48','2025-10-05 14:35:33','2025-10-05 14:35:48'),(78,'App\\Models\\User',3,'auth_token','d204adc00e23c0978601dd5c1d9eed4e1dd26ea75b0fc9cde98ce5575cceaa7f','[\"*\"]','2025-10-05 14:35:54','2025-10-05 14:35:54','2025-10-05 14:35:54'),(79,'App\\Models\\User',3,'auth_token','0099d37d5af4d2244db76e13e337f6a5907a2eec32dd97e2deb4570942ca7703','[\"*\"]','2025-10-05 14:40:04','2025-10-05 14:37:16','2025-10-05 14:40:04'),(80,'App\\Models\\User',3,'auth_token','7bda42a1bc017799bfcac04496d1ccc9c2270a797191331e78d2f72386556b1e','[\"*\"]','2025-10-05 15:16:47','2025-10-05 14:40:14','2025-10-05 15:16:47'),(81,'App\\Models\\User',3,'auth_token','4caa95fd491fdf1f330479d1fdc65d79497b57c3773fa052274b534c3abd0696','[\"*\"]','2025-10-06 08:37:04','2025-10-06 08:37:04','2025-10-06 08:37:04'),(82,'App\\Models\\User',3,'auth_token','5d9be472fc949d6a02f1284a67b5143e873d4e6387af643d7a46c67e91b9163d','[\"*\"]','2025-10-06 11:04:19','2025-10-06 09:15:53','2025-10-06 11:04:19'),(83,'App\\Models\\User',3,'auth_token','7ea3caf746d99050e8e96a483796054a42797fcef08ab6e10c38f6909608d7cc','[\"*\"]','2025-10-06 11:52:19','2025-10-06 11:51:03','2025-10-06 11:52:19'),(84,'App\\Models\\User',3,'auth_token','c77f200b1c6c7a6276b17f0145d9dfdf4d45790ce7f83c222c8624a56bfc9e72','[\"*\"]',NULL,'2025-10-06 15:13:33','2025-10-06 15:13:33'),(85,'App\\Models\\User',3,'auth_token','59916fe74e34c86c1a19f0e6d130ca4e7924d5a44ca907b5538be765b6e9954f','[\"*\"]',NULL,'2025-10-06 15:27:03','2025-10-06 15:27:03'),(86,'App\\Models\\User',3,'auth_token','e7c1af91bcc1127269bf8c7635e76d2bfc1968794f55fe0bd7c123d34b146102','[\"*\"]',NULL,'2025-10-06 15:29:46','2025-10-06 15:29:46'),(87,'App\\Models\\User',3,'auth_token','6d02e350f0221c00862b87f8d76486729390480a9f464574d826f152ab5df419','[\"*\"]',NULL,'2025-10-06 15:30:36','2025-10-06 15:30:36'),(88,'App\\Models\\User',3,'auth_token','9f5220f3c3a8e177f5cba876300c7604de12b706c4800b79fb0f94e3c0dfac2b','[\"*\"]',NULL,'2025-10-07 09:47:48','2025-10-07 09:47:48'),(89,'App\\Models\\User',3,'auth_token','c39c5f6ca0e4353b3e8b3a2852ce6cf5f76bbc01aa37b442dae5716ee12a3949','[\"*\"]',NULL,'2025-10-07 09:50:31','2025-10-07 09:50:31'),(90,'App\\Models\\User',3,'auth_token','d7b1311d8e3bbfca5b324e1802d14111a976031f66c95344afd133ebe503438b','[\"*\"]',NULL,'2025-10-07 09:54:18','2025-10-07 09:54:18'),(91,'App\\Models\\User',3,'auth_token','0f21f803b6502f20d46791bc42fd58a5e1b4e3d6b2216b122586bc666c38bf76','[\"*\"]',NULL,'2025-10-07 09:59:56','2025-10-07 09:59:56'),(92,'App\\Models\\User',3,'auth_token','2803dad2bffc5000bf44acb2ddc363f35bce6b0e5b01b08f4f83dfecbd2e73a8','[\"*\"]',NULL,'2025-10-07 10:01:15','2025-10-07 10:01:15'),(93,'App\\Models\\User',3,'auth_token','0d00aae74383b2bc4fb553258210babe1c5c9cc0196e9032b647f31942a9e970','[\"*\"]',NULL,'2025-10-07 10:02:09','2025-10-07 10:02:09'),(94,'App\\Models\\User',3,'auth_token','fdf1358b40669e682c2743b4c8a5770c8fd8c608a49bc396ec459c6a8c101b19','[\"*\"]','2025-10-09 08:04:39','2025-10-07 10:39:22','2025-10-09 08:04:39'),(95,'App\\Models\\User',3,'auth_token','8b78808dcda5fb475ebd79b36f383852a3703d17210c76ca661b502f6928a393','[\"*\"]','2025-10-09 08:04:55','2025-10-09 08:04:55','2025-10-09 08:04:55'),(96,'App\\Models\\User',3,'auth_token','46b1d82931c9607e49d55d7df343f68417917f69ae47035acc16f20670f2f927','[\"*\"]','2025-10-09 08:55:00','2025-10-09 08:05:42','2025-10-09 08:55:00'),(97,'App\\Models\\User',3,'auth_token','d74f4fb2a82dde6634294fdc17ddbe79124f619ac592b1013184b516ebcf7dbe','[\"*\"]','2025-10-09 09:12:53','2025-10-09 09:03:05','2025-10-09 09:12:53'),(98,'App\\Models\\User',3,'auth_token','966260b291a69fe708db9b0e16f44d4789ed5be72c7a89b28ecc4f96b423eb35','[\"*\"]','2025-10-09 09:13:56','2025-10-09 09:13:56','2025-10-09 09:13:56'),(99,'App\\Models\\User',3,'auth_token','ead5f0b2b7c745dadb2e52766cbdad84bf50828cf18f76d1172512e6979fa740','[\"*\"]','2025-10-09 10:47:27','2025-10-09 09:15:26','2025-10-09 10:47:27'),(100,'App\\Models\\User',3,'auth_token','177fc0bf945e11c0a953bd511e7bc33267421c026cf06971f8abe4932047752e','[\"*\"]','2025-10-09 13:59:12','2025-10-09 12:32:44','2025-10-09 13:59:12'),(101,'App\\Models\\User',3,'auth_token','b01e758d715c72ced67d6b3d20d233fda8e9288371a62ebbcca8f30ce8ee0e7f','[\"*\"]','2025-10-09 14:02:17','2025-10-09 14:02:09','2025-10-09 14:02:17'),(102,'App\\Models\\User',3,'auth_token','7ba430e3ecbb91b1f81b7bfa6773f294211ec4ddf183898befe7c999ca5b5f89','[\"*\"]','2025-10-09 14:05:01','2025-10-09 14:03:38','2025-10-09 14:05:01'),(103,'App\\Models\\User',3,'auth_token','561bd89b4e466c60c05ff47f0d8e272148851df4f406b697b598583cbf78aa9d','[\"*\"]','2025-10-09 15:26:58','2025-10-09 14:05:50','2025-10-09 15:26:58');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id_role_user` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  PRIMARY KEY (`id_role_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Overlord'),(2,'Minion'),(3,'Candidate');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id_subscription` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_job` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id_subscription`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (2,2,2,'2025-10-06 11:04:18');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'luigi root','luigiroot@luigi.com','2022-01-01 00:00:00','$2a$12$OKsqyro.sKUujd2SRkallunBcveXvPBtRLJZHUaD4dk.yRcV1tI4y',NULL,NULL,NULL),(2,'luigi minion','luigiminion@luigi.com','2022-01-01 00:00:00','$2a$12$OKsqyro.sKUujd2SRkallunBcveXvPBtRLJZHUaD4dk.yRcV1tI4y',NULL,NULL,NULL),(3,'luigi customer','luigicustomer@luigi.com','2022-01-01 00:00:00','$2a$12$OKsqyro.sKUujd2SRkallunBcveXvPBtRLJZHUaD4dk.yRcV1tI4y',NULL,NULL,NULL);
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

-- Dump completed on 2025-10-11 15:16:51
