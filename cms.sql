-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2025 at 06:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `alert` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `user_id`, `alert`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2025-12-04 05:59:02', '2025-12-04 05:59:02'),
(2, 2, 0, '2025-12-04 05:59:02', '2025-12-04 06:00:52'),
(3, 3, 2, '2025-12-04 05:59:02', '2025-12-08 12:40:41'),
(4, 4, 0, '2025-12-04 06:02:41', '2025-12-04 06:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('adar-mhto-cache-0b5ed025495008a307f6b06dd1e4cce2', 'i:1;', 1765445522),
('adar-mhto-cache-0b5ed025495008a307f6b06dd1e4cce2:timer', 'i:1765445522;', 1765445522),
('adar-mhto-cache-0c827637ba77c621d0421ac8086dc66f', 'i:1;', 1765440197),
('adar-mhto-cache-0c827637ba77c621d0421ac8086dc66f:timer', 'i:1765440197;', 1765440197),
('adar-mhto-cache-c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1765380266),
('adar-mhto-cache-c525a5357e97fef8d3db25841c86da1a:timer', 'i:1765380266;', 1765380266);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'سياسة', 'سياسة', '2025-12-04 05:59:01', '2025-12-04 05:59:01'),
(2, 'ثقافة', 'ثقافة', '2025-12-04 05:59:01', '2025-12-04 05:59:01'),
(3, 'إقتصاد', 'إقتصاد', '2025-12-04 05:59:01', '2025-12-04 05:59:01'),
(4, 'فن', 'فن', '2025-12-04 05:59:01', '2025-12-04 05:59:01'),
(5, 'تعليم', 'تعليم', '2025-12-04 05:59:01', '2025-12-04 05:59:01'),
(6, 'تكنولوجيا', 'تكنولوجيا', '2025-12-04 05:59:01', '2025-12-04 05:59:01'),
(8, 'رياضة', 'رياضة', '2025-12-09 05:12:47', '2025-12-09 05:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `post_id`, `parent_id`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'شكرًا جزيلًا', 2, 1, NULL, 1, 'App\\Models\\Post', '2022-05-10 08:44:00', '2025-12-04 05:59:02'),
(2, 'مقال مفيد', 3, 1, NULL, 1, 'App\\Models\\Post', '2022-04-22 08:44:00', '2025-12-04 05:59:02'),
(3, 'مقال جيد', 2, 2, NULL, 2, 'App\\Models\\Post', '2022-03-22 08:44:00', '2025-12-04 05:59:02'),
(5, 'حلو', 2, 1, NULL, 1, 'App\\Models\\Post', '2025-12-08 12:40:41', '2025-12-08 12:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'e4caba19-552b-4523-b2d2-ba38e65f931f', 'database', 'default', '{\"uuid\":\"e4caba19-552b-4523-b2d2-ba38e65f931f\",\"displayName\":\"App\\\\Events\\\\CommentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":17:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\CommentNotification\\\":5:{s:10:\\\"post_title\\\";s:77:\\\"لماذا يقوم السياسيون بهذه الحركة الغريبة؟\\\";s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:9:\\\"user_name\\\";s:10:\\\"Hasan dani\\\";s:10:\\\"user_image\\\";s:67:\\\"https:\\/\\/ui-avatars.com\\/api\\/?name=H+d&color=7F9CF5&background=EBF4FF\\\";s:4:\\\"date\\\";s:19:\\\"منذ 0 ثانية\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:23:\\\"deleteWhenMissingModels\\\";b:1;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1765207668,\"delay\":null}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 6: Could not resolve host: api-mt1.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api-mt1.pusher.com/apps/2085955/events?auth_key=d4c9215c95ca96863f26&auth_timestamp=1765207673&auth_version=1.0&body_md5=1e7bd520d3add947a2190daae8ee560c&auth_signature=fd3b329dadae42b5a8365c092b62e4cbe506ef5b95fd5170f12f9b26af9312ab. in C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:163\nStack trace:\n#0 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(100): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'App\\\\Events\\\\Comm...\', Array)\n#1 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#7 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(469): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(187): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#27 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Command\\Command.php(318): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Application.php(1073): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-12-08 12:27:55'),
(2, 'f484705b-f72d-4eb7-b095-3ddcf6e22e30', 'database', 'default', '{\"uuid\":\"f484705b-f72d-4eb7-b095-3ddcf6e22e30\",\"displayName\":\"App\\\\Events\\\\CommentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":17:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\CommentNotification\\\":5:{s:10:\\\"post_title\\\";s:77:\\\"لماذا يقوم السياسيون بهذه الحركة الغريبة؟\\\";s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:9:\\\"user_name\\\";s:10:\\\"Hasan dani\\\";s:10:\\\"user_image\\\";s:67:\\\"https:\\/\\/ui-avatars.com\\/api\\/?name=H+d&color=7F9CF5&background=EBF4FF\\\";s:4:\\\"date\\\";s:19:\\\"منذ 0 ثانية\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:23:\\\"deleteWhenMissingModels\\\";b:1;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1765208441,\"delay\":null}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 6: Could not resolve host: api-mt1.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api-mt1.pusher.com/apps/2085955/events?auth_key=d4c9215c95ca96863f26&auth_timestamp=1765208444&auth_version=1.0&body_md5=1e7bd520d3add947a2190daae8ee560c&auth_signature=44586e5d72e2e5dfdadc21319c68ac24ce92a9ccbb0f630c754b47db91c76e50. in C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:163\nStack trace:\n#0 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(100): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'App\\\\Events\\\\Comm...\', Array)\n#1 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#7 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(469): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(187): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#27 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Command\\Command.php(318): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Application.php(1073): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\Users\\Shaam\\Desktop\\laravel\\CMS\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-12-08 12:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_26_191303_add_two_factor_columns_to_users_table', 1),
(5, '2025_11_26_191835_create_personal_access_tokens_table', 1),
(6, '2025_11_27_175253_create_categories_table', 1),
(7, '2025_11_27_175308_create_posts_table', 1),
(8, '2025_11_27_175317_create_comments_table', 1),
(9, '2025_11_27_175326_create_roles_table', 1),
(10, '2025_11_27_175341_create_pages_table', 1),
(11, '2025_11_27_175421_create_permissions_table', 1),
(12, '2025_11_27_175435_create_notifications_table', 1),
(13, '2025_11_27_175451_create_alerts_table', 1),
(14, '2025_11_27_182047_create_permission_role_table', 1),
(15, '2025_11_27_185739_add_role_id_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_userId` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `post_id`, `post_userId`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '1', '2022-05-05 02:08:00', '2025-12-04 05:59:02'),
(2, 2, 3, '1', '2022-05-05 03:08:00', '2025-12-04 05:59:02'),
(3, 3, 4, '2', '2022-05-05 04:08:00', '2025-12-04 05:59:02'),
(4, 2, 1, '3', '2025-12-08 12:27:46', '2025-12-08 12:27:46'),
(5, 2, 1, '3', '2025-12-08 12:40:41', '2025-12-08 12:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'About', 'نبذة عن الموقع', '<p>يقدم هذا الموقع محتوى متقدم معدل</p>', '2025-12-10 06:48:53', '2025-12-10 07:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'add-post', 'إضافة المواضيع', '2025-12-04 05:59:02', '2025-12-04 05:59:02'),
(2, 'edit-post', 'تعديل المواضيع', '2025-12-04 05:59:02', '2025-12-04 05:59:02'),
(3, 'delete-post', 'حذف المواضيع', '2025-12-04 05:59:02', '2025-12-04 05:59:02'),
(4, 'add-user', 'إضافة المستخدمين', '2025-12-04 05:59:02', '2025-12-04 05:59:02'),
(5, 'edit-user', 'تعديل بيانات المستخدمين', '2025-12-04 05:59:02', '2025-12-04 05:59:02'),
(6, 'delete-user', 'حذف المستخدمين', '2025-12-04 05:59:02', '2025-12-04 05:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(7, 2, 1, NULL, NULL),
(8, 2, 2, NULL, NULL),
(9, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `image_path`, `approved`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'لماذا يقوم السياسيون بهذه الحركة الغريبة؟معدل', 'لماذا-يقوم-السياسيون-بهذه-الحرك-الغريبمعدل-1', '<p>السياسة بحر واسع، وقد لا نحبُّ الدخول فيها والخوض في أحاديثها، لكنّنا نستطيع الاستفادة ممّا يفعل السياسيون في بعض النواحي، خصوصًا في لغة الجسد والاشارات، فعندنا ما يكفي من المعلومات لتُخبرنا أنَّهم يتعاونون مع خُبراء في علم النفس ولغة الجسد لإحكام تأثيرهم في الناس، فلماذا لا نستفيد مجانا ممّا يصرفون؟\r\n            أحد هذه الطرق هي حركة تُستخدم في الخطابات، قبضة مرتخية يعلوُ فيها الابهام على السبابة، كما لو كُنت تُقدِّم نقودًا إلى المقابل، والصورة تشرح أكثر.\r\n            يقول العميل السابق في الـ FBI وخبير لغة الجسد جو نافارو أنَّ هذه الحركة أصبحت شائعة في الحملات الانتخابية وخطباء الرؤساء، وتُستخدم غالبًا عندما يُريدون ايصال نقطة معيّنة ويؤكدّون عليها.\r\n            الاشارة تُوحي كما لو أنَّك تؤكِّد على نقطة، خصوصًا وأنّنا نستخدم حركات مُشابهة في مسك القلم أو الأكل أو الرسم، وهذه كلّها حركات فيها قدر كبير من التصميم.\r\n            هناك حركة مُشابهة المعنى يستخدمها دونالد ترامب، وهي أكثر شيوعًا لدى رؤساء العالم خارج أمريكًا، وهي كما لو أنَّك تُشير بإشارة OK بأحدى يديك أو كلتيهما.\r\n            </p>', 'politica.png', 1, 3, 1, '2022-05-05 02:08:00', '2025-12-09 06:00:52'),
(2, 'أسعار الفائدة وآثارها على الاقتصاد', 'أسعار-الفائدة-وآثارها-على-الاقتصاد', '<p>يموج عالم اليوم بالعديد من المتغيرات المختلفة التي تؤثر على كافة المؤشرات الاقتصادية صعوداً وهبوطاً، ولعل أهم تلك الأبعاد التي تؤثر بشكل كبير على كافة المحاور الاقتصادية هي أسعار الفائدة.\n            ونعني بأسعار الفائدة حجم الأموال التي يحصل عليها المودعون نتيجة إيداعهم لمبلغ من المال خلال مدة زمنية محددة، وقد تكون أسعار الفائدة ثابتة وأحياناً متغيرة.\n            كما يقصد بها أيضاً مقدار ما يدفعه المقترضون لقاء حصولهم على مبالغ معينة تسمى القروض من المؤسسات المالية كالبنوك وغيرها.\n            إذاً فأسعار الفائدة حق للمودع يحصل عليه نظير وديعته في بنك معين؛ ودين على المقترض الذي يقوم بدوره بتسديد تلك الفوائد نتيجة حصوله على قرض من أحد البنوك.\n            على سبيل المثال لو أن أسعار الفائدة على الودائع في بنك معين 15%، وسعر الفائدة على القروض الممنوحة للعملاء 17%، فيكون هناك فائض 2% للبنك، وتعتبر هذه النسبة مصدر أساسي من مصادر دخل البنك ومصدراً مهماً للأرباح\n            هذه كانت نبذة عن مفهوم أسعار الفائدة، تبقى لنا أن نتحدث عن تأثيرات أسعار الفائدة على العديد من المؤشرات الاقتصادية، ولعل أهمها:\n            البطالة: توجد علاقة وطيدة بين أسعار الفائدة وبين نسب البطالة في المجتمع، فعندما ترتفع أسعار الفائدة تزيد تكلفة الإنتاج والمواد الخام وبناءً عليه تزيد أسعار المنتجات، والذي بدوره ينعكس مباشرة على انخفاض الطلب والمبيعات للمنتجات، وهذا الأمر بدوره يؤدي إلى خسائر كبيرة للشركات، تجبر الشركات على تصفية العمالة الموجودة داخل الشركة لتقليل التكاليف وتعويض الخسائر، ويؤدي ذلك إلى ارتفاع معدلات البطالة، والعكس صحيح تماماً فانخفاض أسعار الفائدة يؤدي إلى إنخفاض معدلات البطالة.\n            أسواق الأسهم والسندات: دائماً ما يبحث المستثمر عن أفضل مكان يمنحه أسعاراً عالية للفائدة، فعندما تزيد أسعار الفائدة في البنوك يقل حجم الاستثمار في الأسهم، ويحدث ذلك لأن أسعار الفائدة عندما تزيد تؤدي إلى زيادة تكاليف الإنتاج وانخفاض معدلات الأرباح للشركات بطريقة تجعل تلك الشركات تخفض من معدلات صرفها للأرباح لأسهمها، والعكس صحيح تماماً، فإن انخفاض أسعار الفائدة في البنوك يؤدي إلى زيادة ربحية الشركات، وزيادة فوائد أسهمها بطريقة تجعل المستثمرون يتوجهون لشراء أسهم الشركات بدلاً من إيداع الأموال في البنوك.\n            التضخم: يعني التضخم مجموعة من المشاكل التي تؤدي في النهاية إلى ظاهرة ارتفاع الأسعار، ويحدث التضخم بسبب زيادة حجم النقود في المجتمع عن إجمالي قيمة السلع والخدمات المقدمة في هذا المجتمع، وللقضاء على آفة التضخم يقوم البنك المركزي برفع معدلات الفائدة لتقليل حجم النقد المتداول في المجتمع وبناءً عليه يحدث انخفاض في الطلب على المنتجات والخدمات وتنخفض الأسعار.\n            هذه كانت أهم المؤشرات الاقتصادية التي تتأثر بأسعار الفائدة التي يفرضها البنك المركزي لكل دولة.</p>', NULL, 1, 1, 3, '2022-01-04 02:08:00', '2025-12-04 05:59:01'),
(3, 'ثقافة الاستنقاص من الأعمال المطبخية', 'ثقافة-الاستنقاص-من-الأعمال-المطبخية', '<p>بمناسبة شهر رمضان الكريم تذكرت مثلكم جميعا الأكل! فكما تعلمون نحن نصوم عن الأكل بالدرجة الأولى.\n            رغم أن تناول الطعام من أولوياتنا قبل أي نشاط آخر نمارسه بالكون إلا أن لدينا ثقافة استنقاص من أعمال تحضير هذه الأولوية المقدسة, ففي جل الثقافات حول العالم يتم إقران المطبخ بالمرأة بشكل استنقاصي, فإذا استشاط أحدهم غضبا من نقاش فلسفي دائر بينه وبين امرأة ما يردد عبارات من قبيل: عودي للمطبخ!, مكان المرأة المطبخ!, في حين أن المطبخ هو الذي يبقيه على قيد الحياة وليس فلسفاته ونقاشاته المستعرة حامية الوطيس. وعلى الطرف المقابل أولائك الذين يحاولون الإعلاء من شأن أمور المطبخ بشكل متكلف مصطنع ومنفّر (منفر لي على الأقل), فإن دل تكلّفهم على شيء فعلى مكبوتاتهم المحتقرة للعمل, فيمدح البعض المرأة بالمطبخ ويصورها في قالب شعري رومانسي على أنها تنجز أعظم الأعمال, وبحاجة لباقة ورد وقبلة على اليد, أحيانا يضيف بعض البهارات الدينية لعباراته الرنانة...في حين لن يرغب أي من هؤلاء المتكلفين المتصنعين نيل شرف إنجاز هذا العمل العظيم كما يصفونه على مواقع التواصل الاجتماعي. \n            عندما يبدأ الشخص بالمبالغة في مدح بعض الأعمال على غير حقيقتها فاعلم أنه يحتقرها بدواخله! هذا على حد علمي والله أعلم! \n            وليس موضوعي هنا المرأة بل المطبخ... لنركز! فحتى عدد من النساء يحتقرن أعمال تحضير الطعام وتربط بعض الحقوقيات تقدم المرأة بالتمرد على المطابخ وهدم صوامعها.\n            ما الفكرة؟\n            الفكرة التي أرغب في إيصالها هي أننا بحاجة لإعادة النظر في بعض القيم بمجتمعنا, إن عملية تحضير ما نأكله كبشر بديهة من البديهيات التي بالأحرى يجب أن يتقن أساسياتها الجميع, ولا أقصد هنا إتقان تحضير الأطباق الشعبية بل على الأقل تلك المعرفة الأولية الأساسية التي تبقينا على قيد الحياة, أن يتولى طرف ما من الأسرة مهمة تحضير الطعام للجميع هي مسألة من المفترض أن لا تأخذ هذا الحيز الكبير من نقاشاتنا المجتمعية, ولا أن يكون لها ذاك الوقع الهدام لحياة من يتولون المهمة, فيُحشرون اليوم كله بالمطبخ.</p>', NULL, 1, 1, 2, '2022-04-07 02:08:00', '2025-12-04 05:59:01'),
(4, 'كيف تؤثر الثقافة على الإعلانات الحديثة السنوية العالمية؟', 'كيف-تؤثر-الثقاف-عل-الإعلانات-الحديث-السنوي-العالمي-2', '<p>تتـأثر الطريقة التي نتصرف بها كأفراد بسياقنا الثقافي، وقد تحدثت الدراسات الثقافية عن هذا الأمر منذ سبعينيات القرن الماضي. حيث أوضحت هذه الدراسات أنّ الثقافة هي برمجة ذهنية جماعية للعقل البشري، تميز مجموعة من الناس عن المجموعات الأخرى، وتؤثر على أنماط تفكير أفراد هذه الجماعات وطريقة تصرفهم واتخاذهم للقرارات.\r\n            تعي الشركات جيدا هذا الاختلاف بين ثقافات المجتمعات المستهدفة وحتى بين الجماعات الصغيرة التي تشكل هذه المجتمعات، ولهذا تحاول زيادة الوعي بين أفراد فرق التسويق والمبيعات بخصوص هذا الاختلاف، كما تسعى لفهم الأبعاد الأساسية للثقافة المحلية التي تستهدفها من أجل التواصل بشكل أفضل مع العملاء. لأنّه وكما هو معلوم فإنّ تقديم رسائل إعلانية أكثر تناسبا مع ثقافة المجتمع المستهدف يعني تحقيق إقناع وتأثير أكبر عند العملاء المستهدفين، وعلى العكس منه تجاهل الثقافات المحلية للعملاء المحتملين يعني فشل الحملات الإعلانية في تحقيق هدفها.\r\n            وحتى تكون الصورة أوضح، سأشارك معكم هذا المثال\r\n             يتم التركيز في الإعلانات في بريطانيا على العاطفة وعلى إظهار الكيفية التي سيساعد بها المنتج على تغيير حياة العميل، وهو عكس ما يتم العمل به في ألمانيا، حيث يفضل العملاء الألمان الأساليب الأكثر عقلانية، والتي تتضمن تقديم معلومات أكبر حول طريقة عمل المنتج وثمنه وضماناته وإمكانية ربطه بمنتجات أخرى.\r\n            وكمثال واقعي على هذا الفرق، عندما عرضت سلسلة المتاجر الألمانية الشهيرة Lidl إعلاناتها الموجهة للسوق الألماني في بريطانيا فشلت في جذب المستهلكين البريطانيين، ما اضطرها إلى تغيير الإعلانات الأولى وتعويضها بإعلانات جديدة تركز بشكل أكبر على التصورات الإضافية التي يمكن للمنتجات تقديمها بدل التركيز على السعر والقيمة كما كان معمول به في الإعلان الألماني، وبعد هذا التغيير حققت Lidl نتائج مذهلة.</p>', '1765206625.png', 1, 2, 2, '2022-02-06 02:08:00', '2025-12-08 12:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'مدير', '2025-12-04 05:59:00', '2025-12-04 05:59:00'),
(2, 'مستخدم جديد', '2025-12-04 05:59:00', '2025-12-04 05:59:00'),
(3, 'مستخدم فعال', '2025-12-04 05:59:00', '2025-12-04 05:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Eyad Hasan', 'admin@gmail.com', '2025-12-04 05:59:00', '$2y$12$/SbdFqnrDesJx4WBnsmueebyoAPbQXQCnIUj80steQ5DQm.Ia2nF2', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-04 05:59:00', '2025-12-04 05:59:00', 1),
(2, 'Hasan dani', 'user@gmail.com', '2025-12-04 05:59:00', '$2y$12$FKR0xb37PVkGBb5juZH4WO/OyKDoQcjGbHuE0lJn7V97gHJHA2e/m', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-04 05:59:01', '2025-12-04 05:59:01', 2),
(3, 'Mohamed Ali', 'user2@gmail.com', '2025-12-04 05:59:01', '$2y$12$Z86Z0fFFEWY2kx/VIwrcXeIz0ryfihHK6o8rHQ0TUgsEdMMA0hCgu', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-04 05:59:01', '2025-12-04 05:59:01', 2),
(4, 'ahmad', 'ahmad@gmail.com', NULL, '$2y$12$79dMcAZGaIgELX/h3OdQ5uLLarUAScc4/7cQ.bwFuhedlRCPX/J9e', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-04 06:02:41', '2025-12-04 06:02:41', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_post_id_foreign` (`post_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_slug_index` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
