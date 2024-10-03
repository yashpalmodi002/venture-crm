-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 09:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venture_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log_name` varchar(255) NOT NULL DEFAULT 'default',
  `description` varchar(255) DEFAULT NULL,
  `causeable_type` varchar(255) DEFAULT NULL,
  `causeable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `timelineable_type` varchar(255) DEFAULT NULL,
  `timelineable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recordable_type` varchar(255) DEFAULT NULL,
  `recordable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `modified` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`modified`)),
  `ip_address` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `external_id`, `team_id`, `log_name`, `description`, `causeable_type`, `causeable_id`, `timelineable_type`, `timelineable_id`, `recordable_type`, `recordable_id`, `event`, `properties`, `modified`, `ip_address`, `url`, `user_agent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'b3370a50-b101-4295-a171-41534225dd76', NULL, 'default', NULL, NULL, NULL, 'VentureDrake\\LaravelCrm\\Models\\Lead', 1, 'VentureDrake\\LaravelCrm\\Models\\Note', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-01 07:49:29', '2024-10-01 07:49:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `line3` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `addressable_type` varchar(255) NOT NULL,
  `addressable_id` bigint(20) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `external_id`, `team_id`, `address_type_id`, `address`, `name`, `contact`, `phone`, `line1`, `line2`, `line3`, `code`, `city`, `state`, `country`, `addressable_type`, `addressable_id`, `primary`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9c216f3b-e71c-4d4e-94d8-51bf738bf8a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VentureDrake\\LaravelCrm\\Models\\Organisation', 1, 1, NULL, NULL, NULL, NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53', NULL),
(2, 'f03bd3dd-cb1a-42f8-84a6-6f027ca1af6c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6InIzU0VxcDQzbDFVYTB2Y3Y1Z2l0SFE9PSIsInZhbHVlIjoicXJZajdFNlFmTXRMUzBNQlRFVElkZzFMTmxCak1ZY0drSlhHNzkvV3hzST0iLCJtYWMiOiJlMzQ2MzFjMmU5MWU4YjZlZDIyZjc4YjYxZWJjYTk4ZTU5NDY3Njg3MGVhZDIxMzI1NzYyN2NmNzBiZmI3YWRlIiwidGFnIjoiIn0=', 'VentureDrake\\LaravelCrm\\Models\\Setting', 13, 0, NULL, NULL, NULL, NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38', NULL),
(3, 'f2b77c74-d96b-4328-a28f-3003aac1ce6e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6InpWcW5acmtYL0swdHhTMzdQOC81c1E9PSIsInZhbHVlIjoiRlh4S0p2eHNNeU85cWtFVXFIckE0Zz09IiwibWFjIjoiOGNkMTNmY2M1ZDdhNGU3YjJmYjY2YzI3MzFmMGJjMmE4YTQ0NzE3MWFjNWNjNzlhYmMzNmRjZWE4YjdmMTBjNiIsInRhZyI6IiJ9', 'App\\Models\\User', 2, 0, NULL, NULL, NULL, NULL, '2024-10-01 07:15:36', '2024-10-01 07:15:36', NULL),
(4, '475da844-8c0b-420c-b720-097569b730e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6ImlSN1QyMnJGUWlCT0dHSjUrYUpxT3c9PSIsInZhbHVlIjoiVHZ1U1RsTFhBdkU5YjZKckU5dGtmUT09IiwibWFjIjoiOTY0NjRkNTAxOGRkMDg5NTFmMGFkYjI2MjJjNzBlN2QwNmViM2RmMDJhNTU2NGRiNTk3MTU1YTQ1NGNlYjA3YSIsInRhZyI6IiJ9', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 2, 0, NULL, NULL, NULL, NULL, '2024-10-01 07:19:27', '2024-10-01 07:19:27', NULL),
(5, 'eaa672e4-2d87-4aae-bbb2-a43b52ac6987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6ImFFZ080emZTNGdJMDNxeGFNVHpWVVE9PSIsInZhbHVlIjoiY3JodHo3TWZ0NUJ5T3hSR3Z5OUVNZz09IiwibWFjIjoiNjFmNzRjYjNjNzliNDk5ODg3MWQ0ZTIzODUwMGM3YjIwN2EwNGEzMzVhYjFjZTc5MmQyNDQwNDJhMjVhMTNjNSIsInRhZyI6IiJ9', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 3, 0, NULL, NULL, NULL, NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26', NULL),
(6, '54dcf949-8fda-4363-954d-29d34c6e17be', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IkNUY294NEh2ZTJ2SDlQTTZYd3dETGc9PSIsInZhbHVlIjoiV0gwbE1aRHkwcmVBOG5hVFFVNnFKdz09IiwibWFjIjoiOGZiNDE3NWMxYjlhY2JhMjQ4ODY2MjI0NjY3ZmZkYmVjZmZlMzAwMDZjZWFmYjM1MTMwNTY0ZDkxZmE3ZjJiYyIsInRhZyI6IiJ9', 'VentureDrake\\LaravelCrm\\Models\\Person', 2, 0, NULL, NULL, NULL, NULL, '2024-10-01 08:27:11', '2024-10-01 08:27:11', NULL),
(7, '26dea497-d781-40d7-aba5-f8b6e1b53055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6Ik15QXY5MXVMa3JDbnJhZDJqRnEyQUE9PSIsInZhbHVlIjoiNGx6aVlSWjNSbVVLV3I0VFV2S05odz09IiwibWFjIjoiM2FmYmZmNzQzYjIzZjc4NTM3YzQxZmJlMjc4YmNjMDc5ZjRhZWQ4YTAyMmJkNTU2NzliNTMxZmNjOWM5YmQzMyIsInRhZyI6IiJ9', 'VentureDrake\\LaravelCrm\\Models\\Person', 3, 0, NULL, NULL, NULL, NULL, '2024-10-01 08:27:36', '2024-10-01 08:27:36', NULL),
(8, '0c09b67b-1d24-4aa6-b9dd-b771edb5ac76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VentureDrake\\LaravelCrm\\Models\\Organisation', 4, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10', NULL),
(9, '1b5a8ed8-988f-475a-ba2a-d341f4139a80', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IkFJbWpNVy9XUWUyZWR4ZVp2SmxWa0E9PSIsInZhbHVlIjoibGlkSy80YWp4SFRPR3krcm5sK0Z2dz09IiwibWFjIjoiM2M3NWRjNjIzNTJjNTUwZmEyOTcwNmQ2NzJkZmJkNDZlN2MxMzBjMzQ5OTEzMWRiODBiZTA5OTMxYzcxNGVjOSIsInRhZyI6IiJ9', 'VentureDrake\\LaravelCrm\\Models\\Order', 1, 0, NULL, NULL, NULL, NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19', NULL),
(10, '8d72cf88-9444-4148-8a1d-52679024053d', NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IlAwM1dTdXhDT0Q4Zk1iaGVpVDJjMEE9PSIsInZhbHVlIjoieTduSTNKU09HQVlaUkRxakVSdTNnZz09IiwibWFjIjoiZDk1ZDJhY2JmYTFkY2ZlMjJjNjkzOGQ3MDQ5Yjk4ZmE3OGU2NTRlN2M3MThkNThkZjgwZTZmZjI2YjBhYTdmNyIsInRhZyI6IiJ9', 'VentureDrake\\LaravelCrm\\Models\\Order', 1, 0, NULL, NULL, NULL, NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `address_types`
--

CREATE TABLE `address_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_types`
--

INSERT INTO `address_types` (`id`, `team_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Current', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, NULL, 'Previous', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(3, NULL, 'Postal', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(4, NULL, 'Business', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(5, NULL, 'Billing', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(6, NULL, 'Shipping', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `auditable_type` varchar(255) NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1023) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Label', 1, '[]', '{\"id\":1,\"name\":\"Hot\",\"hex\":\"dc3545\",\"external_id\":\"24655481-36d6-4c00-9610-ca49e2cbc95f\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(2, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Label', 2, '[]', '{\"id\":2,\"name\":\"Cold\",\"hex\":\"007bff\",\"external_id\":\"5aae6235-f30a-4b5e-9dff-890bb051615d\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(3, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Label', 3, '[]', '{\"id\":3,\"name\":\"Warm\",\"hex\":\"ffc107\",\"external_id\":\"2cc7acbb-1c72-4a58-974c-d5ac74ad7d1e\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(4, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 1, '[]', '{\"global\":1,\"name\":\"db_seeded_labels\",\"value\":1,\"id\":1}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(5, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\LeadStatus', 1, '[]', '{\"id\":1,\"name\":\"Lead In\",\"external_id\":\"00771d5c-7590-4374-aaa3-5111a8a7112d\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(6, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\LeadStatus', 2, '[]', '{\"id\":2,\"name\":\"Contacted\",\"external_id\":\"9e434ba2-2ad1-4540-9318-8f536b52dc84\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(7, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 2, '[]', '{\"global\":1,\"name\":\"db_seeded_lead_statuses\",\"value\":1,\"id\":2}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(8, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\OrganisationType', 1, '[]', '{\"id\":1,\"name\":\"Sole Trader\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(9, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\OrganisationType', 2, '[]', '{\"id\":2,\"name\":\"Partnership\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(10, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\OrganisationType', 3, '[]', '{\"id\":3,\"name\":\"Company\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(11, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\OrganisationType', 4, '[]', '{\"id\":4,\"name\":\"Trust\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(12, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 3, '[]', '{\"global\":1,\"name\":\"db_seeded_organisation_types\",\"value\":1,\"id\":3}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(13, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\AddressType', 1, '[]', '{\"id\":1,\"name\":\"Current\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(14, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\AddressType', 2, '[]', '{\"id\":2,\"name\":\"Previous\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(15, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\AddressType', 3, '[]', '{\"id\":3,\"name\":\"Postal\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(16, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\AddressType', 4, '[]', '{\"id\":4,\"name\":\"Business\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(17, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\AddressType', 5, '[]', '{\"id\":5,\"name\":\"Billing\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(18, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\AddressType', 6, '[]', '{\"id\":6,\"name\":\"Shipping\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(19, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 4, '[]', '{\"global\":1,\"name\":\"db_seeded_address_types\",\"value\":1,\"id\":4}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(20, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\ContactType', 1, '[]', '{\"id\":1,\"name\":\"Primary\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(21, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\ContactType', 2, '[]', '{\"id\":2,\"name\":\"Secondary\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(22, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 5, '[]', '{\"global\":1,\"name\":\"db_seeded_contact_types\",\"value\":1,\"id\":5}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(23, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 1, '[]', '{\"id\":1,\"name\":\"New\",\"percent\":1,\"external_id\":\"2170de95-5935-4bde-bb96-7d22e41caa97\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(24, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 2, '[]', '{\"id\":2,\"name\":\"10%\",\"percent\":10,\"external_id\":\"e810472a-b01a-451b-a920-58b3674e47f8\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(25, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 3, '[]', '{\"id\":3,\"name\":\"20%\",\"percent\":20,\"external_id\":\"7fb711e7-28ea-45f0-bf40-9c720885f2de\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(26, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 4, '[]', '{\"id\":4,\"name\":\"30%\",\"percent\":30,\"external_id\":\"cd9ab30f-916d-48ce-8699-491fa1166655\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(27, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 5, '[]', '{\"id\":5,\"name\":\"40%\",\"percent\":40,\"external_id\":\"b63256ee-e204-4625-82d1-a4c3dcb488bb\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(28, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 6, '[]', '{\"id\":6,\"name\":\"50%\",\"percent\":50,\"external_id\":\"52c59d30-d075-4ee9-bdcd-58b6e0b53568\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(29, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 7, '[]', '{\"id\":7,\"name\":\"60%\",\"percent\":60,\"external_id\":\"82539825-644d-4bc6-93ff-847c8136a8dd\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(30, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 8, '[]', '{\"id\":8,\"name\":\"70%\",\"percent\":70,\"external_id\":\"709b93c9-6e43-4eb7-9ffc-0f96b6ff4e72\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(31, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 9, '[]', '{\"id\":9,\"name\":\"80%\",\"percent\":80,\"external_id\":\"fee94359-8dab-486a-a5fd-3293c6c42844\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(32, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 10, '[]', '{\"id\":10,\"name\":\"90%\",\"percent\":90,\"external_id\":\"0dedbe40-5cb1-47d5-a2f8-11fe55d07631\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(33, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 11, '[]', '{\"id\":11,\"name\":\"Won\",\"percent\":100,\"external_id\":\"d3b2cdf2-c53e-446b-8f2e-0cc19b87eb86\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(34, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStageProbability', 12, '[]', '{\"id\":12,\"name\":\"Lost\",\"percent\":0,\"external_id\":\"ca010a55-f12f-4aa4-8af0-931610aab4e3\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(35, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 6, '[]', '{\"global\":1,\"name\":\"db_seeded_pipeline_probabilities\",\"value\":1,\"id\":6}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(36, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 1, '[]', '{\"id\":1,\"name\":\"Lead Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Lead\",\"external_id\":\"f168c4f7-9527-4642-b932-a00cf8241fb1\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(37, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 2, '[]', '{\"id\":2,\"name\":\"Deal Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Deal\",\"external_id\":\"aeb7624e-c296-47aa-9658-39eb2c40e189\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(38, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 3, '[]', '{\"id\":3,\"name\":\"Quote Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Quote\",\"external_id\":\"40e50122-8cb8-44c9-8d89-bf56450b88fe\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(39, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 4, '[]', '{\"id\":4,\"name\":\"Order Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Order\",\"external_id\":\"22ab34b9-8b69-4486-9496-9b535ad0d9a5\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(40, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 5, '[]', '{\"id\":5,\"name\":\"Invoice Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Invoice\",\"external_id\":\"e5471251-fb9e-455e-8e47-bedc886f216d\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(41, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 6, '[]', '{\"id\":6,\"name\":\"Delivery Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Delivery\",\"external_id\":\"136a2f6f-912e-4cfd-99c1-d7d16708234c\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(42, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Pipeline', 7, '[]', '{\"id\":7,\"name\":\"Purchase Order Pipeline\",\"model\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\PurchaseOrder\",\"external_id\":\"7613b2ed-d015-4a58-8c38-03e2de829359\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(43, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 7, '[]', '{\"global\":1,\"name\":\"db_seeded_pipelines\",\"value\":1,\"id\":7}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(44, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 1, '[]', '{\"id\":1,\"name\":\"New\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":1,\"external_id\":\"7e9b1cf1-28a0-4255-b4ac-476199bc440c\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(45, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 2, '[]', '{\"id\":2,\"name\":\"Appointment Scheduled\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":3,\"external_id\":\"41dd0f72-e392-4974-bc2a-fd9a47d232cb\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(46, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 3, '[]', '{\"id\":3,\"name\":\"Qualified To Buy\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":5,\"external_id\":\"d21a4ad6-bc57-4980-8f5f-ea10f561dc1f\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(47, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 4, '[]', '{\"id\":4,\"name\":\"Presentation Scheduled\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":7,\"external_id\":\"c8862cdb-91e1-4721-9646-d14faba3abfa\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(48, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 5, '[]', '{\"id\":5,\"name\":\"Decision Maker Bought-In\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":9,\"external_id\":\"cb6c2866-5070-41ab-91d9-41cb2ea0a89f\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(49, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 6, '[]', '{\"id\":6,\"name\":\"Contract Sent\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":10,\"external_id\":\"4b814dc7-7a3d-475d-b0b8-7e3928ba2f1d\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(50, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 7, '[]', '{\"id\":7,\"name\":\"Closed Won\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":11,\"external_id\":\"d15a46c5-3683-4d7c-b4b6-ce6bef5de8b8\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(51, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 8, '[]', '{\"id\":8,\"name\":\"Closed Lost\",\"pipeline_id\":1,\"pipeline_stage_probability_id\":12,\"external_id\":\"d8ce1c00-c48b-4dc5-98b4-728e075e5c65\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(52, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 9, '[]', '{\"id\":9,\"name\":\"Draft\",\"pipeline_id\":2,\"pipeline_stage_probability_id\":1,\"external_id\":\"6dc55ee3-8438-484c-ac33-cba7fdc2ba73\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(53, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 10, '[]', '{\"id\":10,\"name\":\"Pending\",\"pipeline_id\":2,\"pipeline_stage_probability_id\":9,\"external_id\":\"8af39632-cbb2-4acd-8974-18b273de002e\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(54, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 11, '[]', '{\"id\":11,\"name\":\"Closed Won\",\"pipeline_id\":2,\"pipeline_stage_probability_id\":11,\"external_id\":\"7d29745e-7185-433e-8f7a-5e3981ef0c9d\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(55, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 12, '[]', '{\"id\":12,\"name\":\"Closed Lost\",\"pipeline_id\":2,\"pipeline_stage_probability_id\":12,\"external_id\":\"48a15e23-2202-4669-b629-031f9f9849ff\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(56, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 13, '[]', '{\"id\":13,\"name\":\"Draft\",\"pipeline_id\":3,\"pipeline_stage_probability_id\":1,\"external_id\":\"8a39cc0f-5841-4277-abbc-b3eb14ee9e07\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(57, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 14, '[]', '{\"id\":14,\"name\":\"Sent\",\"pipeline_id\":3,\"pipeline_stage_probability_id\":9,\"external_id\":\"27c515bb-9c72-415d-b42d-7505372e2373\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(58, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 15, '[]', '{\"id\":15,\"name\":\"Accepted\",\"pipeline_id\":3,\"pipeline_stage_probability_id\":11,\"external_id\":\"5eb846a4-e46c-4d5b-ba89-c4ec6627b1e6\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(59, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 16, '[]', '{\"id\":16,\"name\":\"Rejected\",\"pipeline_id\":3,\"pipeline_stage_probability_id\":12,\"external_id\":\"9e25f64e-cacb-4ff3-b704-6f50d1466033\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(60, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 17, '[]', '{\"id\":17,\"name\":\"Ordered\",\"pipeline_id\":3,\"pipeline_stage_probability_id\":11,\"external_id\":\"74b727b3-36e6-43be-bdfb-0e047ee1900d\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(61, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 18, '[]', '{\"id\":18,\"name\":\"Draft\",\"pipeline_id\":4,\"pipeline_stage_probability_id\":1,\"external_id\":\"6dbc9b0f-7a4e-45d1-9bd8-2f59f90a30ae\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(62, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 19, '[]', '{\"id\":19,\"name\":\"Open\",\"pipeline_id\":4,\"pipeline_stage_probability_id\":9,\"external_id\":\"9adaf786-c80d-4ed6-92fa-8445be259a56\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(63, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 20, '[]', '{\"id\":20,\"name\":\"Invoiced\",\"pipeline_id\":4,\"pipeline_stage_probability_id\":11,\"external_id\":\"8389b12c-f548-4116-9513-e3a742d11fdb\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(64, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 21, '[]', '{\"id\":21,\"name\":\"Delivered\",\"pipeline_id\":4,\"pipeline_stage_probability_id\":11,\"external_id\":\"60f7d74c-7bcd-40f3-a410-da285c53be49\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(65, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 22, '[]', '{\"id\":22,\"name\":\"Completed\",\"pipeline_id\":4,\"pipeline_stage_probability_id\":11,\"external_id\":\"c6838ad8-02e2-42d4-ac08-5d50e4068ba4\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(66, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 23, '[]', '{\"id\":23,\"name\":\"Draft\",\"pipeline_id\":5,\"pipeline_stage_probability_id\":1,\"external_id\":\"01bc994d-069b-4433-8219-21f1aa14244e\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(67, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 24, '[]', '{\"id\":24,\"name\":\"Awaiting Approval\",\"pipeline_id\":5,\"pipeline_stage_probability_id\":5,\"external_id\":\"e2e377b5-d198-4c29-9f11-45f480443b21\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(68, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 25, '[]', '{\"id\":25,\"name\":\"Awaiting Payment\",\"pipeline_id\":5,\"pipeline_stage_probability_id\":9,\"external_id\":\"853e26e9-605c-45c5-8e55-b0a3b9b027e5\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(69, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 26, '[]', '{\"id\":26,\"name\":\"Paid\",\"pipeline_id\":5,\"pipeline_stage_probability_id\":11,\"external_id\":\"b5f57cf7-97f2-434f-ada8-9d4f5dde64da\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(70, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 27, '[]', '{\"id\":27,\"name\":\"Draft\",\"pipeline_id\":6,\"pipeline_stage_probability_id\":1,\"external_id\":\"8ef3346d-fbd2-49db-88a7-803257a57f9c\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(71, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 28, '[]', '{\"id\":28,\"name\":\"Packed\",\"pipeline_id\":6,\"pipeline_stage_probability_id\":9,\"external_id\":\"9f15b885-09cd-4b90-ae94-3a1e9cc188c7\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(72, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 29, '[]', '{\"id\":29,\"name\":\"Sent\",\"pipeline_id\":6,\"pipeline_stage_probability_id\":11,\"external_id\":\"75a23c62-697d-4c62-8d93-5666c3392ea0\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(73, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 30, '[]', '{\"id\":30,\"name\":\"Delivered\",\"pipeline_id\":6,\"pipeline_stage_probability_id\":11,\"external_id\":\"c8d74494-3063-4fe0-9e8d-ff6d1482d7c7\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(74, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 31, '[]', '{\"id\":31,\"name\":\"Draft\",\"pipeline_id\":7,\"pipeline_stage_probability_id\":1,\"external_id\":\"f20b22e8-492b-49c1-bf84-7aec5536bc64\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(75, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 32, '[]', '{\"id\":32,\"name\":\"Awaiting Approval\",\"pipeline_id\":7,\"pipeline_stage_probability_id\":5,\"external_id\":\"4086482b-fa43-4b0e-97a0-ea48ae875f30\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(76, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 33, '[]', '{\"id\":33,\"name\":\"Approved\",\"pipeline_id\":7,\"pipeline_stage_probability_id\":9,\"external_id\":\"3e93a5a4-5cb2-416a-8d7c-876c1fa7187a\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(77, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\PipelineStage', 34, '[]', '{\"id\":34,\"name\":\"Paid\",\"pipeline_id\":7,\"pipeline_stage_probability_id\":11,\"external_id\":\"fe696b97-a536-43f6-b0f3-6ab0bd4d8d3a\"}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(78, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 8, '[]', '{\"global\":1,\"name\":\"db_seeded_pipelines_stages\",\"value\":1,\"id\":8}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(79, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 1, '[]', '{\"name\":\"Africa\\/Abidjan\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":1}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(80, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 2, '[]', '{\"name\":\"Africa\\/Accra\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":2}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(81, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 3, '[]', '{\"name\":\"Africa\\/Addis_Ababa\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":3}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(82, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 4, '[]', '{\"name\":\"Africa\\/Algiers\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":4}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(83, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 5, '[]', '{\"name\":\"Africa\\/Asmara\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":5}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(84, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 6, '[]', '{\"name\":\"Africa\\/Bamako\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":6}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(85, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 7, '[]', '{\"name\":\"Africa\\/Bangui\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":7}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(86, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 8, '[]', '{\"name\":\"Africa\\/Banjul\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":8}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(87, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 9, '[]', '{\"name\":\"Africa\\/Bissau\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":9}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(88, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 10, '[]', '{\"name\":\"Africa\\/Blantyre\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":10}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(89, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 11, '[]', '{\"name\":\"Africa\\/Brazzaville\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":11}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(90, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 12, '[]', '{\"name\":\"Africa\\/Bujumbura\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":12}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(91, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 13, '[]', '{\"name\":\"Africa\\/Cairo\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":13}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(92, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 14, '[]', '{\"name\":\"Africa\\/Casablanca\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":14}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(93, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 15, '[]', '{\"name\":\"Africa\\/Ceuta\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":15}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(94, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 16, '[]', '{\"name\":\"Africa\\/Conakry\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":16}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(95, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 17, '[]', '{\"name\":\"Africa\\/Dakar\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":17}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(96, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 18, '[]', '{\"name\":\"Africa\\/Dar_es_Salaam\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":18}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(97, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 19, '[]', '{\"name\":\"Africa\\/Djibouti\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":19}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(98, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 20, '[]', '{\"name\":\"Africa\\/Douala\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":20}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(99, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 21, '[]', '{\"name\":\"Africa\\/El_Aaiun\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":21}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(100, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 22, '[]', '{\"name\":\"Africa\\/Freetown\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":22}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(101, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 23, '[]', '{\"name\":\"Africa\\/Gaborone\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":23}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(102, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 24, '[]', '{\"name\":\"Africa\\/Harare\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":24}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(103, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 25, '[]', '{\"name\":\"Africa\\/Johannesburg\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":25}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(104, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 26, '[]', '{\"name\":\"Africa\\/Juba\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":26}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(105, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 27, '[]', '{\"name\":\"Africa\\/Kampala\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":27}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(106, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 28, '[]', '{\"name\":\"Africa\\/Khartoum\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":28}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(107, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 29, '[]', '{\"name\":\"Africa\\/Kigali\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":29}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(108, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 30, '[]', '{\"name\":\"Africa\\/Kinshasa\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":30}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(109, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 31, '[]', '{\"name\":\"Africa\\/Lagos\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":31}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(110, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 32, '[]', '{\"name\":\"Africa\\/Libreville\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":32}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(111, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 33, '[]', '{\"name\":\"Africa\\/Lome\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":33}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(112, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 34, '[]', '{\"name\":\"Africa\\/Luanda\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":34}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(113, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 35, '[]', '{\"name\":\"Africa\\/Lubumbashi\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":35}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(114, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 36, '[]', '{\"name\":\"Africa\\/Lusaka\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":36}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(115, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 37, '[]', '{\"name\":\"Africa\\/Malabo\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":37}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(116, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 38, '[]', '{\"name\":\"Africa\\/Maputo\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":38}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(117, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 39, '[]', '{\"name\":\"Africa\\/Maseru\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":39}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(118, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 40, '[]', '{\"name\":\"Africa\\/Mbabane\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":40}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(119, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 41, '[]', '{\"name\":\"Africa\\/Mogadishu\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":41}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(120, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 42, '[]', '{\"name\":\"Africa\\/Monrovia\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":42}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(121, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 43, '[]', '{\"name\":\"Africa\\/Nairobi\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":43}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(122, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 44, '[]', '{\"name\":\"Africa\\/Ndjamena\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":44}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(123, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 45, '[]', '{\"name\":\"Africa\\/Niamey\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":45}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(124, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 46, '[]', '{\"name\":\"Africa\\/Nouakchott\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":46}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(125, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 47, '[]', '{\"name\":\"Africa\\/Ouagadougou\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":47}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(126, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 48, '[]', '{\"name\":\"Africa\\/Porto-Novo\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":48}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(127, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 49, '[]', '{\"name\":\"Africa\\/Sao_Tome\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":49}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(128, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 50, '[]', '{\"name\":\"Africa\\/Tripoli\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":50}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(129, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 51, '[]', '{\"name\":\"Africa\\/Tunis\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":51}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(130, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 52, '[]', '{\"name\":\"Africa\\/Windhoek\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":52}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(131, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 53, '[]', '{\"name\":\"America\\/Adak\",\"offset\":\"-09:00\",\"diff_from_gtm\":\"UTC\\/GMT -09:00\",\"id\":53}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 21:32:53', '2024-09-30 21:32:53'),
(132, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 54, '[]', '{\"name\":\"America\\/Anchorage\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":54}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(133, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 55, '[]', '{\"name\":\"America\\/Anguilla\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":55}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(134, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 56, '[]', '{\"name\":\"America\\/Antigua\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":56}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(135, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 57, '[]', '{\"name\":\"America\\/Araguaina\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":57}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(136, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 58, '[]', '{\"name\":\"America\\/Argentina\\/Buenos_Aires\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":58}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(137, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 59, '[]', '{\"name\":\"America\\/Argentina\\/Catamarca\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":59}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(138, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 60, '[]', '{\"name\":\"America\\/Argentina\\/Cordoba\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":60}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(139, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 61, '[]', '{\"name\":\"America\\/Argentina\\/Jujuy\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":61}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(140, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 62, '[]', '{\"name\":\"America\\/Argentina\\/La_Rioja\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":62}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(141, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 63, '[]', '{\"name\":\"America\\/Argentina\\/Mendoza\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":63}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(142, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 64, '[]', '{\"name\":\"America\\/Argentina\\/Rio_Gallegos\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":64}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(143, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 65, '[]', '{\"name\":\"America\\/Argentina\\/Salta\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":65}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(144, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 66, '[]', '{\"name\":\"America\\/Argentina\\/San_Juan\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":66}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(145, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 67, '[]', '{\"name\":\"America\\/Argentina\\/San_Luis\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":67}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(146, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 68, '[]', '{\"name\":\"America\\/Argentina\\/Tucuman\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":68}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(147, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 69, '[]', '{\"name\":\"America\\/Argentina\\/Ushuaia\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":69}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(148, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 70, '[]', '{\"name\":\"America\\/Aruba\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":70}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(149, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 71, '[]', '{\"name\":\"America\\/Asuncion\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":71}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(150, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 72, '[]', '{\"name\":\"America\\/Atikokan\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":72}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(151, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 73, '[]', '{\"name\":\"America\\/Bahia\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":73}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(152, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 74, '[]', '{\"name\":\"America\\/Bahia_Banderas\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":74}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(153, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 75, '[]', '{\"name\":\"America\\/Barbados\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":75}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(154, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 76, '[]', '{\"name\":\"America\\/Belem\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":76}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(155, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 77, '[]', '{\"name\":\"America\\/Belize\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":77}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(156, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 78, '[]', '{\"name\":\"America\\/Blanc-Sablon\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":78}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(157, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 79, '[]', '{\"name\":\"America\\/Boa_Vista\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":79}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(158, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 80, '[]', '{\"name\":\"America\\/Bogota\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":80}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(159, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 81, '[]', '{\"name\":\"America\\/Boise\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":81}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(160, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 82, '[]', '{\"name\":\"America\\/Cambridge_Bay\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":82}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(161, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 83, '[]', '{\"name\":\"America\\/Campo_Grande\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":83}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(162, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 84, '[]', '{\"name\":\"America\\/Cancun\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":84}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(163, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 85, '[]', '{\"name\":\"America\\/Caracas\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":85}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(164, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 86, '[]', '{\"name\":\"America\\/Cayenne\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":86}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(165, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 87, '[]', '{\"name\":\"America\\/Cayman\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":87}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(166, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 88, '[]', '{\"name\":\"America\\/Chicago\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":88}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(167, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 89, '[]', '{\"name\":\"America\\/Chihuahua\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":89}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(168, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 90, '[]', '{\"name\":\"America\\/Ciudad_Juarez\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":90}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(169, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 91, '[]', '{\"name\":\"America\\/Costa_Rica\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":91}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(170, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 92, '[]', '{\"name\":\"America\\/Creston\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":92}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(171, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 93, '[]', '{\"name\":\"America\\/Cuiaba\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":93}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(172, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 94, '[]', '{\"name\":\"America\\/Curacao\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":94}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(173, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 95, '[]', '{\"name\":\"America\\/Danmarkshavn\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":95}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(174, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 96, '[]', '{\"name\":\"America\\/Dawson\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":96}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(175, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 97, '[]', '{\"name\":\"America\\/Dawson_Creek\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":97}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(176, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 98, '[]', '{\"name\":\"America\\/Denver\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":98}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(177, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 99, '[]', '{\"name\":\"America\\/Detroit\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":99}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(178, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 100, '[]', '{\"name\":\"America\\/Dominica\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":100}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(179, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 101, '[]', '{\"name\":\"America\\/Edmonton\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":101}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(180, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 102, '[]', '{\"name\":\"America\\/Eirunepe\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":102}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(181, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 103, '[]', '{\"name\":\"America\\/El_Salvador\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":103}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(182, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 104, '[]', '{\"name\":\"America\\/Fort_Nelson\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":104}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(183, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 105, '[]', '{\"name\":\"America\\/Fortaleza\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":105}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(184, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 106, '[]', '{\"name\":\"America\\/Glace_Bay\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":106}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(185, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 107, '[]', '{\"name\":\"America\\/Goose_Bay\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":107}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(186, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 108, '[]', '{\"name\":\"America\\/Grand_Turk\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":108}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(187, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 109, '[]', '{\"name\":\"America\\/Grenada\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":109}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(188, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 110, '[]', '{\"name\":\"America\\/Guadeloupe\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":110}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(189, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 111, '[]', '{\"name\":\"America\\/Guatemala\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":111}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(190, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 112, '[]', '{\"name\":\"America\\/Guayaquil\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":112}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(191, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 113, '[]', '{\"name\":\"America\\/Guyana\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":113}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(192, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 114, '[]', '{\"name\":\"America\\/Halifax\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":114}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(193, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 115, '[]', '{\"name\":\"America\\/Havana\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":115}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(194, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 116, '[]', '{\"name\":\"America\\/Hermosillo\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":116}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(195, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 117, '[]', '{\"name\":\"America\\/Indiana\\/Indianapolis\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":117}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(196, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 118, '[]', '{\"name\":\"America\\/Indiana\\/Knox\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":118}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(197, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 119, '[]', '{\"name\":\"America\\/Indiana\\/Marengo\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":119}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(198, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 120, '[]', '{\"name\":\"America\\/Indiana\\/Petersburg\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":120}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(199, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 121, '[]', '{\"name\":\"America\\/Indiana\\/Tell_City\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":121}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(200, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 122, '[]', '{\"name\":\"America\\/Indiana\\/Vevay\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":122}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(201, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 123, '[]', '{\"name\":\"America\\/Indiana\\/Vincennes\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":123}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(202, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 124, '[]', '{\"name\":\"America\\/Indiana\\/Winamac\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":124}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(203, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 125, '[]', '{\"name\":\"America\\/Inuvik\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":125}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(204, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 126, '[]', '{\"name\":\"America\\/Iqaluit\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":126}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(205, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 127, '[]', '{\"name\":\"America\\/Jamaica\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":127}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(206, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 128, '[]', '{\"name\":\"America\\/Juneau\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":128}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(207, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 129, '[]', '{\"name\":\"America\\/Kentucky\\/Louisville\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":129}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(208, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 130, '[]', '{\"name\":\"America\\/Kentucky\\/Monticello\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":130}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(209, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 131, '[]', '{\"name\":\"America\\/Kralendijk\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":131}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(210, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 132, '[]', '{\"name\":\"America\\/La_Paz\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":132}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(211, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 133, '[]', '{\"name\":\"America\\/Lima\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":133}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(212, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 134, '[]', '{\"name\":\"America\\/Los_Angeles\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":134}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(213, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 135, '[]', '{\"name\":\"America\\/Lower_Princes\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":135}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(214, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 136, '[]', '{\"name\":\"America\\/Maceio\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":136}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(215, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 137, '[]', '{\"name\":\"America\\/Managua\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":137}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(216, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 138, '[]', '{\"name\":\"America\\/Manaus\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":138}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(217, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 139, '[]', '{\"name\":\"America\\/Marigot\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":139}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(218, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 140, '[]', '{\"name\":\"America\\/Martinique\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":140}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(219, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 141, '[]', '{\"name\":\"America\\/Matamoros\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":141}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(220, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 142, '[]', '{\"name\":\"America\\/Mazatlan\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":142}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(221, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 143, '[]', '{\"name\":\"America\\/Menominee\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":143}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(222, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 144, '[]', '{\"name\":\"America\\/Merida\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":144}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(223, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 145, '[]', '{\"name\":\"America\\/Metlakatla\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":145}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(224, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 146, '[]', '{\"name\":\"America\\/Mexico_City\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":146}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(225, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 147, '[]', '{\"name\":\"America\\/Miquelon\",\"offset\":\"-02:00\",\"diff_from_gtm\":\"UTC\\/GMT -02:00\",\"id\":147}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 04:32:53', '2024-10-01 04:32:53'),
(226, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 148, '[]', '{\"name\":\"America\\/Moncton\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":148}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(227, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 149, '[]', '{\"name\":\"America\\/Monterrey\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":149}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(228, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 150, '[]', '{\"name\":\"America\\/Montevideo\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":150}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(229, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 151, '[]', '{\"name\":\"America\\/Montserrat\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":151}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(230, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 152, '[]', '{\"name\":\"America\\/Nassau\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":152}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(231, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 153, '[]', '{\"name\":\"America\\/New_York\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":153}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(232, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 154, '[]', '{\"name\":\"America\\/Nome\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":154}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(233, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 155, '[]', '{\"name\":\"America\\/Noronha\",\"offset\":\"-02:00\",\"diff_from_gtm\":\"UTC\\/GMT -02:00\",\"id\":155}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 04:32:53', '2024-10-01 04:32:53'),
(234, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 156, '[]', '{\"name\":\"America\\/North_Dakota\\/Beulah\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":156}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(235, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 157, '[]', '{\"name\":\"America\\/North_Dakota\\/Center\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":157}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(236, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 158, '[]', '{\"name\":\"America\\/North_Dakota\\/New_Salem\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":158}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(237, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 159, '[]', '{\"name\":\"America\\/Nuuk\",\"offset\":\"-01:00\",\"diff_from_gtm\":\"UTC\\/GMT -01:00\",\"id\":159}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 05:32:53', '2024-10-01 05:32:53'),
(238, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 160, '[]', '{\"name\":\"America\\/Ojinaga\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":160}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(239, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 161, '[]', '{\"name\":\"America\\/Panama\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":161}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(240, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 162, '[]', '{\"name\":\"America\\/Paramaribo\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":162}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(241, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 163, '[]', '{\"name\":\"America\\/Phoenix\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":163}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(242, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 164, '[]', '{\"name\":\"America\\/Port-au-Prince\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":164}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(243, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 165, '[]', '{\"name\":\"America\\/Port_of_Spain\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":165}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(244, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 166, '[]', '{\"name\":\"America\\/Porto_Velho\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":166}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(245, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 167, '[]', '{\"name\":\"America\\/Puerto_Rico\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":167}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(246, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 168, '[]', '{\"name\":\"America\\/Punta_Arenas\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":168}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(247, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 169, '[]', '{\"name\":\"America\\/Rankin_Inlet\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":169}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(248, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 170, '[]', '{\"name\":\"America\\/Recife\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":170}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(249, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 171, '[]', '{\"name\":\"America\\/Regina\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":171}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(250, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 172, '[]', '{\"name\":\"America\\/Resolute\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":172}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(251, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 173, '[]', '{\"name\":\"America\\/Rio_Branco\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":173}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(252, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 174, '[]', '{\"name\":\"America\\/Santarem\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":174}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(253, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 175, '[]', '{\"name\":\"America\\/Santiago\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":175}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(254, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 176, '[]', '{\"name\":\"America\\/Santo_Domingo\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":176}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(255, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 177, '[]', '{\"name\":\"America\\/Sao_Paulo\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":177}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(256, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 178, '[]', '{\"name\":\"America\\/Scoresbysund\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":178}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(257, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 179, '[]', '{\"name\":\"America\\/Sitka\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":179}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(258, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 180, '[]', '{\"name\":\"America\\/St_Barthelemy\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":180}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(259, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 181, '[]', '{\"name\":\"America\\/St_Johns\",\"offset\":\"-02:30\",\"diff_from_gtm\":\"UTC\\/GMT -02:30\",\"id\":181}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 04:02:53', '2024-10-01 04:02:53'),
(260, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 182, '[]', '{\"name\":\"America\\/St_Kitts\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":182}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(261, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 183, '[]', '{\"name\":\"America\\/St_Lucia\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":183}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(262, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 184, '[]', '{\"name\":\"America\\/St_Thomas\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":184}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(263, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 185, '[]', '{\"name\":\"America\\/St_Vincent\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":185}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(264, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 186, '[]', '{\"name\":\"America\\/Swift_Current\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":186}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(265, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 187, '[]', '{\"name\":\"America\\/Tegucigalpa\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":187}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(266, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 188, '[]', '{\"name\":\"America\\/Thule\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":188}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(267, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 189, '[]', '{\"name\":\"America\\/Tijuana\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":189}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(268, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 190, '[]', '{\"name\":\"America\\/Toronto\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":190}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(269, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 191, '[]', '{\"name\":\"America\\/Tortola\",\"offset\":\"-04:00\",\"diff_from_gtm\":\"UTC\\/GMT -04:00\",\"id\":191}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(270, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 192, '[]', '{\"name\":\"America\\/Vancouver\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":192}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(271, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 193, '[]', '{\"name\":\"America\\/Whitehorse\",\"offset\":\"-07:00\",\"diff_from_gtm\":\"UTC\\/GMT -07:00\",\"id\":193}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(272, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 194, '[]', '{\"name\":\"America\\/Winnipeg\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":194}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(273, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 195, '[]', '{\"name\":\"America\\/Yakutat\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":195}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(274, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 196, '[]', '{\"name\":\"Antarctica\\/Casey\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":196}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(275, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 197, '[]', '{\"name\":\"Antarctica\\/Davis\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":197}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(276, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 198, '[]', '{\"name\":\"Antarctica\\/DumontDUrville\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":198}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(277, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 199, '[]', '{\"name\":\"Antarctica\\/Macquarie\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":199}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(278, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 200, '[]', '{\"name\":\"Antarctica\\/Mawson\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":200}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(279, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 201, '[]', '{\"name\":\"Antarctica\\/McMurdo\",\"offset\":\"+13:00\",\"diff_from_gtm\":\"UTC\\/GMT +13:00\",\"id\":201}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(280, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 202, '[]', '{\"name\":\"Antarctica\\/Palmer\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":202}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(281, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 203, '[]', '{\"name\":\"Antarctica\\/Rothera\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":203}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(282, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 204, '[]', '{\"name\":\"Antarctica\\/Syowa\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":204}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(283, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 205, '[]', '{\"name\":\"Antarctica\\/Troll\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":205}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(284, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 206, '[]', '{\"name\":\"Antarctica\\/Vostok\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":206}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(285, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 207, '[]', '{\"name\":\"Arctic\\/Longyearbyen\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":207}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(286, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 208, '[]', '{\"name\":\"Asia\\/Aden\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":208}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(287, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 209, '[]', '{\"name\":\"Asia\\/Almaty\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":209}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(288, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 210, '[]', '{\"name\":\"Asia\\/Amman\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":210}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(289, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 211, '[]', '{\"name\":\"Asia\\/Anadyr\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":211}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(290, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 212, '[]', '{\"name\":\"Asia\\/Aqtau\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":212}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(291, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 213, '[]', '{\"name\":\"Asia\\/Aqtobe\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":213}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(292, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 214, '[]', '{\"name\":\"Asia\\/Ashgabat\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":214}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(293, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 215, '[]', '{\"name\":\"Asia\\/Atyrau\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":215}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(294, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 216, '[]', '{\"name\":\"Asia\\/Baghdad\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":216}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(295, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 217, '[]', '{\"name\":\"Asia\\/Bahrain\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":217}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(296, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 218, '[]', '{\"name\":\"Asia\\/Baku\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":218}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(297, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 219, '[]', '{\"name\":\"Asia\\/Bangkok\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":219}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(298, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 220, '[]', '{\"name\":\"Asia\\/Barnaul\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":220}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(299, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 221, '[]', '{\"name\":\"Asia\\/Beirut\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":221}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(300, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 222, '[]', '{\"name\":\"Asia\\/Bishkek\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":222}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(301, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 223, '[]', '{\"name\":\"Asia\\/Brunei\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":223}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(302, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 224, '[]', '{\"name\":\"Asia\\/Chita\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":224}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(303, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 225, '[]', '{\"name\":\"Asia\\/Choibalsan\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":225}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(304, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 226, '[]', '{\"name\":\"Asia\\/Colombo\",\"offset\":\"+05:30\",\"diff_from_gtm\":\"UTC\\/GMT +05:30\",\"id\":226}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:02:53', '2024-10-01 12:02:53'),
(305, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 227, '[]', '{\"name\":\"Asia\\/Damascus\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":227}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(306, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 228, '[]', '{\"name\":\"Asia\\/Dhaka\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":228}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(307, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 229, '[]', '{\"name\":\"Asia\\/Dili\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":229}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(308, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 230, '[]', '{\"name\":\"Asia\\/Dubai\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":230}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(309, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 231, '[]', '{\"name\":\"Asia\\/Dushanbe\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":231}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(310, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 232, '[]', '{\"name\":\"Asia\\/Famagusta\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":232}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(311, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 233, '[]', '{\"name\":\"Asia\\/Gaza\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":233}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(312, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 234, '[]', '{\"name\":\"Asia\\/Hebron\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":234}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(313, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 235, '[]', '{\"name\":\"Asia\\/Ho_Chi_Minh\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":235}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(314, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 236, '[]', '{\"name\":\"Asia\\/Hong_Kong\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":236}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(315, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 237, '[]', '{\"name\":\"Asia\\/Hovd\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":237}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(316, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 238, '[]', '{\"name\":\"Asia\\/Irkutsk\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":238}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(317, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 239, '[]', '{\"name\":\"Asia\\/Jakarta\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":239}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(318, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 240, '[]', '{\"name\":\"Asia\\/Jayapura\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":240}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(319, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 241, '[]', '{\"name\":\"Asia\\/Jerusalem\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":241}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(320, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 242, '[]', '{\"name\":\"Asia\\/Kabul\",\"offset\":\"+04:30\",\"diff_from_gtm\":\"UTC\\/GMT +04:30\",\"id\":242}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:02:53', '2024-10-01 11:02:53'),
(321, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 243, '[]', '{\"name\":\"Asia\\/Kamchatka\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":243}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(322, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 244, '[]', '{\"name\":\"Asia\\/Karachi\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":244}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(323, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 245, '[]', '{\"name\":\"Asia\\/Kathmandu\",\"offset\":\"+05:45\",\"diff_from_gtm\":\"UTC\\/GMT +05:45\",\"id\":245}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:17:53', '2024-10-01 12:17:53'),
(324, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 246, '[]', '{\"name\":\"Asia\\/Khandyga\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":246}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(325, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 247, '[]', '{\"name\":\"Asia\\/Kolkata\",\"offset\":\"+05:30\",\"diff_from_gtm\":\"UTC\\/GMT +05:30\",\"id\":247}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:02:53', '2024-10-01 12:02:53'),
(326, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 248, '[]', '{\"name\":\"Asia\\/Krasnoyarsk\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":248}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(327, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 249, '[]', '{\"name\":\"Asia\\/Kuala_Lumpur\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":249}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(328, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 250, '[]', '{\"name\":\"Asia\\/Kuching\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":250}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(329, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 251, '[]', '{\"name\":\"Asia\\/Kuwait\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":251}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(330, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 252, '[]', '{\"name\":\"Asia\\/Macau\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":252}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(331, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 253, '[]', '{\"name\":\"Asia\\/Magadan\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":253}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(332, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 254, '[]', '{\"name\":\"Asia\\/Makassar\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":254}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(333, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 255, '[]', '{\"name\":\"Asia\\/Manila\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":255}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(334, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 256, '[]', '{\"name\":\"Asia\\/Muscat\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":256}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(335, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 257, '[]', '{\"name\":\"Asia\\/Nicosia\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":257}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(336, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 258, '[]', '{\"name\":\"Asia\\/Novokuznetsk\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":258}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(337, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 259, '[]', '{\"name\":\"Asia\\/Novosibirsk\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":259}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(338, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 260, '[]', '{\"name\":\"Asia\\/Omsk\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":260}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(339, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 261, '[]', '{\"name\":\"Asia\\/Oral\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":261}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(340, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 262, '[]', '{\"name\":\"Asia\\/Phnom_Penh\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":262}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(341, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 263, '[]', '{\"name\":\"Asia\\/Pontianak\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":263}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(342, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 264, '[]', '{\"name\":\"Asia\\/Pyongyang\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":264}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(343, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 265, '[]', '{\"name\":\"Asia\\/Qatar\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":265}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(344, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 266, '[]', '{\"name\":\"Asia\\/Qostanay\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":266}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(345, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 267, '[]', '{\"name\":\"Asia\\/Qyzylorda\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":267}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(346, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 268, '[]', '{\"name\":\"Asia\\/Riyadh\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":268}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(347, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 269, '[]', '{\"name\":\"Asia\\/Sakhalin\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":269}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(348, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 270, '[]', '{\"name\":\"Asia\\/Samarkand\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":270}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(349, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 271, '[]', '{\"name\":\"Asia\\/Seoul\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":271}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(350, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 272, '[]', '{\"name\":\"Asia\\/Shanghai\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":272}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(351, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 273, '[]', '{\"name\":\"Asia\\/Singapore\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":273}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(352, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 274, '[]', '{\"name\":\"Asia\\/Srednekolymsk\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":274}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(353, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 275, '[]', '{\"name\":\"Asia\\/Taipei\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":275}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(354, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 276, '[]', '{\"name\":\"Asia\\/Tashkent\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":276}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(355, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 277, '[]', '{\"name\":\"Asia\\/Tbilisi\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":277}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(356, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 278, '[]', '{\"name\":\"Asia\\/Tehran\",\"offset\":\"+03:30\",\"diff_from_gtm\":\"UTC\\/GMT +03:30\",\"id\":278}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:02:53', '2024-10-01 10:02:53'),
(357, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 279, '[]', '{\"name\":\"Asia\\/Thimphu\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":279}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(358, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 280, '[]', '{\"name\":\"Asia\\/Tokyo\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":280}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(359, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 281, '[]', '{\"name\":\"Asia\\/Tomsk\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":281}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(360, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 282, '[]', '{\"name\":\"Asia\\/Ulaanbaatar\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":282}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(361, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 283, '[]', '{\"name\":\"Asia\\/Urumqi\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":283}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(362, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 284, '[]', '{\"name\":\"Asia\\/Ust-Nera\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":284}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(363, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 285, '[]', '{\"name\":\"Asia\\/Vientiane\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":285}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(364, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 286, '[]', '{\"name\":\"Asia\\/Vladivostok\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":286}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(365, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 287, '[]', '{\"name\":\"Asia\\/Yakutsk\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":287}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(366, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 288, '[]', '{\"name\":\"Asia\\/Yangon\",\"offset\":\"+06:30\",\"diff_from_gtm\":\"UTC\\/GMT +06:30\",\"id\":288}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:02:53', '2024-10-01 13:02:53'),
(367, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 289, '[]', '{\"name\":\"Asia\\/Yekaterinburg\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":289}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(368, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 290, '[]', '{\"name\":\"Asia\\/Yerevan\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":290}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(369, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 291, '[]', '{\"name\":\"Atlantic\\/Azores\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":291}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(370, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 292, '[]', '{\"name\":\"Atlantic\\/Bermuda\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":292}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(371, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 293, '[]', '{\"name\":\"Atlantic\\/Canary\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":293}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(372, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 294, '[]', '{\"name\":\"Atlantic\\/Cape_Verde\",\"offset\":\"-01:00\",\"diff_from_gtm\":\"UTC\\/GMT -01:00\",\"id\":294}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 05:32:53', '2024-10-01 05:32:53'),
(373, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 295, '[]', '{\"name\":\"Atlantic\\/Faroe\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":295}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(374, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 296, '[]', '{\"name\":\"Atlantic\\/Madeira\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":296}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(375, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 297, '[]', '{\"name\":\"Atlantic\\/Reykjavik\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":297}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(376, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 298, '[]', '{\"name\":\"Atlantic\\/South_Georgia\",\"offset\":\"-02:00\",\"diff_from_gtm\":\"UTC\\/GMT -02:00\",\"id\":298}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 04:32:53', '2024-10-01 04:32:53'),
(377, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 299, '[]', '{\"name\":\"Atlantic\\/St_Helena\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":299}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(378, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 300, '[]', '{\"name\":\"Atlantic\\/Stanley\",\"offset\":\"-03:00\",\"diff_from_gtm\":\"UTC\\/GMT -03:00\",\"id\":300}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(379, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 301, '[]', '{\"name\":\"Australia\\/Adelaide\",\"offset\":\"+09:30\",\"diff_from_gtm\":\"UTC\\/GMT +09:30\",\"id\":301}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:02:53', '2024-10-01 16:02:53'),
(380, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 302, '[]', '{\"name\":\"Australia\\/Brisbane\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":302}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(381, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 303, '[]', '{\"name\":\"Australia\\/Broken_Hill\",\"offset\":\"+09:30\",\"diff_from_gtm\":\"UTC\\/GMT +09:30\",\"id\":303}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:02:53', '2024-10-01 16:02:53'),
(382, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 304, '[]', '{\"name\":\"Australia\\/Darwin\",\"offset\":\"+09:30\",\"diff_from_gtm\":\"UTC\\/GMT +09:30\",\"id\":304}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:02:53', '2024-10-01 16:02:53'),
(383, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 305, '[]', '{\"name\":\"Australia\\/Eucla\",\"offset\":\"+08:45\",\"diff_from_gtm\":\"UTC\\/GMT +08:45\",\"id\":305}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:17:53', '2024-10-01 15:17:53'),
(384, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 306, '[]', '{\"name\":\"Australia\\/Hobart\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":306}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(385, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 307, '[]', '{\"name\":\"Australia\\/Lindeman\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":307}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(386, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 308, '[]', '{\"name\":\"Australia\\/Lord_Howe\",\"offset\":\"+10:30\",\"diff_from_gtm\":\"UTC\\/GMT +10:30\",\"id\":308}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:02:53', '2024-10-01 17:02:53'),
(387, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 309, '[]', '{\"name\":\"Australia\\/Melbourne\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":309}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(388, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 310, '[]', '{\"name\":\"Australia\\/Perth\",\"offset\":\"+08:00\",\"diff_from_gtm\":\"UTC\\/GMT +08:00\",\"id\":310}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(389, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 311, '[]', '{\"name\":\"Australia\\/Sydney\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":311}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(390, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 312, '[]', '{\"name\":\"Europe\\/Amsterdam\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":312}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(391, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 313, '[]', '{\"name\":\"Europe\\/Andorra\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":313}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(392, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 314, '[]', '{\"name\":\"Europe\\/Astrakhan\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":314}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(393, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 315, '[]', '{\"name\":\"Europe\\/Athens\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":315}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(394, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 316, '[]', '{\"name\":\"Europe\\/Belgrade\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":316}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(395, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 317, '[]', '{\"name\":\"Europe\\/Berlin\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":317}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(396, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 318, '[]', '{\"name\":\"Europe\\/Bratislava\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":318}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(397, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 319, '[]', '{\"name\":\"Europe\\/Brussels\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":319}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(398, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 320, '[]', '{\"name\":\"Europe\\/Bucharest\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":320}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(399, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 321, '[]', '{\"name\":\"Europe\\/Budapest\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":321}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(400, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 322, '[]', '{\"name\":\"Europe\\/Busingen\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":322}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(401, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 323, '[]', '{\"name\":\"Europe\\/Chisinau\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":323}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(402, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 324, '[]', '{\"name\":\"Europe\\/Copenhagen\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":324}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(403, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 325, '[]', '{\"name\":\"Europe\\/Dublin\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":325}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(404, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 326, '[]', '{\"name\":\"Europe\\/Gibraltar\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":326}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(405, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 327, '[]', '{\"name\":\"Europe\\/Guernsey\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":327}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(406, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 328, '[]', '{\"name\":\"Europe\\/Helsinki\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":328}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(407, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 329, '[]', '{\"name\":\"Europe\\/Isle_of_Man\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":329}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(408, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 330, '[]', '{\"name\":\"Europe\\/Istanbul\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":330}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(409, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 331, '[]', '{\"name\":\"Europe\\/Jersey\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":331}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(410, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 332, '[]', '{\"name\":\"Europe\\/Kaliningrad\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":332}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(411, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 333, '[]', '{\"name\":\"Europe\\/Kirov\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":333}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(412, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 334, '[]', '{\"name\":\"Europe\\/Kyiv\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":334}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(413, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 335, '[]', '{\"name\":\"Europe\\/Lisbon\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":335}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(414, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 336, '[]', '{\"name\":\"Europe\\/Ljubljana\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":336}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(415, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 337, '[]', '{\"name\":\"Europe\\/London\",\"offset\":\"+01:00\",\"diff_from_gtm\":\"UTC\\/GMT +01:00\",\"id\":337}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(416, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 338, '[]', '{\"name\":\"Europe\\/Luxembourg\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":338}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(417, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 339, '[]', '{\"name\":\"Europe\\/Madrid\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":339}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(418, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 340, '[]', '{\"name\":\"Europe\\/Malta\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":340}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(419, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 341, '[]', '{\"name\":\"Europe\\/Mariehamn\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":341}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(420, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 342, '[]', '{\"name\":\"Europe\\/Minsk\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":342}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(421, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 343, '[]', '{\"name\":\"Europe\\/Monaco\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":343}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(422, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 344, '[]', '{\"name\":\"Europe\\/Moscow\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":344}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(423, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 345, '[]', '{\"name\":\"Europe\\/Oslo\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":345}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(424, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 346, '[]', '{\"name\":\"Europe\\/Paris\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":346}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(425, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 347, '[]', '{\"name\":\"Europe\\/Podgorica\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":347}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(426, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 348, '[]', '{\"name\":\"Europe\\/Prague\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":348}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(427, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 349, '[]', '{\"name\":\"Europe\\/Riga\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":349}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(428, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 350, '[]', '{\"name\":\"Europe\\/Rome\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":350}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(429, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 351, '[]', '{\"name\":\"Europe\\/Samara\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":351}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(430, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 352, '[]', '{\"name\":\"Europe\\/San_Marino\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":352}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(431, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 353, '[]', '{\"name\":\"Europe\\/Sarajevo\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":353}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(432, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 354, '[]', '{\"name\":\"Europe\\/Saratov\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":354}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(433, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 355, '[]', '{\"name\":\"Europe\\/Simferopol\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":355}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(434, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 356, '[]', '{\"name\":\"Europe\\/Skopje\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":356}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(435, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 357, '[]', '{\"name\":\"Europe\\/Sofia\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":357}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(436, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 358, '[]', '{\"name\":\"Europe\\/Stockholm\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":358}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(437, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 359, '[]', '{\"name\":\"Europe\\/Tallinn\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":359}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(438, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 360, '[]', '{\"name\":\"Europe\\/Tirane\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":360}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(439, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 361, '[]', '{\"name\":\"Europe\\/Ulyanovsk\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":361}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(440, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 362, '[]', '{\"name\":\"Europe\\/Vaduz\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":362}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(441, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 363, '[]', '{\"name\":\"Europe\\/Vatican\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":363}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(442, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 364, '[]', '{\"name\":\"Europe\\/Vienna\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":364}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(443, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 365, '[]', '{\"name\":\"Europe\\/Vilnius\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":365}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(444, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 366, '[]', '{\"name\":\"Europe\\/Volgograd\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":366}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(445, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 367, '[]', '{\"name\":\"Europe\\/Warsaw\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":367}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(446, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 368, '[]', '{\"name\":\"Europe\\/Zagreb\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":368}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(447, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 369, '[]', '{\"name\":\"Europe\\/Zurich\",\"offset\":\"+02:00\",\"diff_from_gtm\":\"UTC\\/GMT +02:00\",\"id\":369}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(448, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 370, '[]', '{\"name\":\"Indian\\/Antananarivo\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":370}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(449, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 371, '[]', '{\"name\":\"Indian\\/Chagos\",\"offset\":\"+06:00\",\"diff_from_gtm\":\"UTC\\/GMT +06:00\",\"id\":371}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(450, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 372, '[]', '{\"name\":\"Indian\\/Christmas\",\"offset\":\"+07:00\",\"diff_from_gtm\":\"UTC\\/GMT +07:00\",\"id\":372}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(451, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 373, '[]', '{\"name\":\"Indian\\/Cocos\",\"offset\":\"+06:30\",\"diff_from_gtm\":\"UTC\\/GMT +06:30\",\"id\":373}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 13:02:53', '2024-10-01 13:02:53'),
(452, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 374, '[]', '{\"name\":\"Indian\\/Comoro\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":374}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(453, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 375, '[]', '{\"name\":\"Indian\\/Kerguelen\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":375}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(454, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 376, '[]', '{\"name\":\"Indian\\/Mahe\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":376}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(455, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 377, '[]', '{\"name\":\"Indian\\/Maldives\",\"offset\":\"+05:00\",\"diff_from_gtm\":\"UTC\\/GMT +05:00\",\"id\":377}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(456, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 378, '[]', '{\"name\":\"Indian\\/Mauritius\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":378}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(457, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 379, '[]', '{\"name\":\"Indian\\/Mayotte\",\"offset\":\"+03:00\",\"diff_from_gtm\":\"UTC\\/GMT +03:00\",\"id\":379}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(458, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 380, '[]', '{\"name\":\"Indian\\/Reunion\",\"offset\":\"+04:00\",\"diff_from_gtm\":\"UTC\\/GMT +04:00\",\"id\":380}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(459, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 381, '[]', '{\"name\":\"Pacific\\/Apia\",\"offset\":\"+13:00\",\"diff_from_gtm\":\"UTC\\/GMT +13:00\",\"id\":381}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(460, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 382, '[]', '{\"name\":\"Pacific\\/Auckland\",\"offset\":\"+13:00\",\"diff_from_gtm\":\"UTC\\/GMT +13:00\",\"id\":382}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(461, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 383, '[]', '{\"name\":\"Pacific\\/Bougainville\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":383}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(462, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 384, '[]', '{\"name\":\"Pacific\\/Chatham\",\"offset\":\"+13:45\",\"diff_from_gtm\":\"UTC\\/GMT +13:45\",\"id\":384}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 20:17:53', '2024-10-01 20:17:53'),
(463, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 385, '[]', '{\"name\":\"Pacific\\/Chuuk\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":385}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(464, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 386, '[]', '{\"name\":\"Pacific\\/Easter\",\"offset\":\"-05:00\",\"diff_from_gtm\":\"UTC\\/GMT -05:00\",\"id\":386}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(465, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 387, '[]', '{\"name\":\"Pacific\\/Efate\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":387}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(466, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 388, '[]', '{\"name\":\"Pacific\\/Fakaofo\",\"offset\":\"+13:00\",\"diff_from_gtm\":\"UTC\\/GMT +13:00\",\"id\":388}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(467, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 389, '[]', '{\"name\":\"Pacific\\/Fiji\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":389}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(468, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 390, '[]', '{\"name\":\"Pacific\\/Funafuti\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":390}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(469, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 391, '[]', '{\"name\":\"Pacific\\/Galapagos\",\"offset\":\"-06:00\",\"diff_from_gtm\":\"UTC\\/GMT -06:00\",\"id\":391}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(470, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 392, '[]', '{\"name\":\"Pacific\\/Gambier\",\"offset\":\"-09:00\",\"diff_from_gtm\":\"UTC\\/GMT -09:00\",\"id\":392}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 21:32:53', '2024-09-30 21:32:53'),
(471, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 393, '[]', '{\"name\":\"Pacific\\/Guadalcanal\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":393}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(472, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 394, '[]', '{\"name\":\"Pacific\\/Guam\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":394}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(473, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 395, '[]', '{\"name\":\"Pacific\\/Honolulu\",\"offset\":\"-10:00\",\"diff_from_gtm\":\"UTC\\/GMT -10:00\",\"id\":395}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 20:32:53', '2024-09-30 20:32:53'),
(474, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 396, '[]', '{\"name\":\"Pacific\\/Kanton\",\"offset\":\"+13:00\",\"diff_from_gtm\":\"UTC\\/GMT +13:00\",\"id\":396}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(475, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 397, '[]', '{\"name\":\"Pacific\\/Kiritimati\",\"offset\":\"+14:00\",\"diff_from_gtm\":\"UTC\\/GMT +14:00\",\"id\":397}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 20:32:53', '2024-10-01 20:32:53'),
(476, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 398, '[]', '{\"name\":\"Pacific\\/Kosrae\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":398}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(477, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 399, '[]', '{\"name\":\"Pacific\\/Kwajalein\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":399}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(478, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 400, '[]', '{\"name\":\"Pacific\\/Majuro\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":400}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(479, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 401, '[]', '{\"name\":\"Pacific\\/Marquesas\",\"offset\":\"-09:30\",\"diff_from_gtm\":\"UTC\\/GMT -09:30\",\"id\":401}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 21:02:53', '2024-09-30 21:02:53'),
(480, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 402, '[]', '{\"name\":\"Pacific\\/Midway\",\"offset\":\"-11:00\",\"diff_from_gtm\":\"UTC\\/GMT -11:00\",\"id\":402}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 19:32:53', '2024-09-30 19:32:53'),
(481, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 403, '[]', '{\"name\":\"Pacific\\/Nauru\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":403}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(482, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 404, '[]', '{\"name\":\"Pacific\\/Niue\",\"offset\":\"-11:00\",\"diff_from_gtm\":\"UTC\\/GMT -11:00\",\"id\":404}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 19:32:53', '2024-09-30 19:32:53'),
(483, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 405, '[]', '{\"name\":\"Pacific\\/Norfolk\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":405}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(484, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 406, '[]', '{\"name\":\"Pacific\\/Noumea\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":406}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(485, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 407, '[]', '{\"name\":\"Pacific\\/Pago_Pago\",\"offset\":\"-11:00\",\"diff_from_gtm\":\"UTC\\/GMT -11:00\",\"id\":407}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 19:32:53', '2024-09-30 19:32:53'),
(486, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 408, '[]', '{\"name\":\"Pacific\\/Palau\",\"offset\":\"+09:00\",\"diff_from_gtm\":\"UTC\\/GMT +09:00\",\"id\":408}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(487, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 409, '[]', '{\"name\":\"Pacific\\/Pitcairn\",\"offset\":\"-08:00\",\"diff_from_gtm\":\"UTC\\/GMT -08:00\",\"id\":409}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(488, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 410, '[]', '{\"name\":\"Pacific\\/Pohnpei\",\"offset\":\"+11:00\",\"diff_from_gtm\":\"UTC\\/GMT +11:00\",\"id\":410}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(489, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 411, '[]', '{\"name\":\"Pacific\\/Port_Moresby\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":411}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(490, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 412, '[]', '{\"name\":\"Pacific\\/Rarotonga\",\"offset\":\"-10:00\",\"diff_from_gtm\":\"UTC\\/GMT -10:00\",\"id\":412}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 20:32:53', '2024-09-30 20:32:53'),
(491, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 413, '[]', '{\"name\":\"Pacific\\/Saipan\",\"offset\":\"+10:00\",\"diff_from_gtm\":\"UTC\\/GMT +10:00\",\"id\":413}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(492, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 414, '[]', '{\"name\":\"Pacific\\/Tahiti\",\"offset\":\"-10:00\",\"diff_from_gtm\":\"UTC\\/GMT -10:00\",\"id\":414}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-09-30 20:32:53', '2024-09-30 20:32:53'),
(493, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 415, '[]', '{\"name\":\"Pacific\\/Tarawa\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":415}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(494, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 416, '[]', '{\"name\":\"Pacific\\/Tongatapu\",\"offset\":\"+13:00\",\"diff_from_gtm\":\"UTC\\/GMT +13:00\",\"id\":416}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(495, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 417, '[]', '{\"name\":\"Pacific\\/Wake\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":417}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(496, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 418, '[]', '{\"name\":\"Pacific\\/Wallis\",\"offset\":\"+12:00\",\"diff_from_gtm\":\"UTC\\/GMT +12:00\",\"id\":418}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(497, NULL, NULL, 'created', 'VentureDrake\\LaravelCrm\\Models\\Timezone', 419, '[]', '{\"name\":\"UTC\",\"offset\":\"+00:00\",\"diff_from_gtm\":\"UTC\\/GMT +00:00\",\"id\":419}', 'artisan laravelcrm:install', '127.0.0.1', 'Symfony', NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(498, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 9, '[]', '{\"name\":\"app_name\",\"value\":\"Laravel\",\"global\":1,\"id\":9}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(499, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 10, '[]', '{\"name\":\"app_env\",\"value\":\"local\",\"global\":1,\"id\":10}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(500, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 11, '[]', '{\"name\":\"app_url\",\"value\":\"http:\\/\\/laravelcrm.test\",\"global\":1,\"id\":11}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(501, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 12, '[]', '{\"name\":\"version\",\"value\":\"1.2.2\",\"global\":1,\"id\":12}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(502, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 13, '[]', '{\"name\":\"team\",\"value\":\"related\",\"id\":13}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(503, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 14, '[]', '{\"name\":\"organisation_name\",\"value\":\"Laravel\",\"id\":14}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(504, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 15, '[]', '{\"name\":\"currency\",\"value\":\"USD\",\"id\":15}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(505, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 16, '[]', '{\"name\":\"country\",\"value\":\"United States\",\"id\":16}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(506, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 17, '[]', '{\"name\":\"language\",\"value\":\"english\",\"id\":17}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(507, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 18, '[]', '{\"name\":\"timezone\",\"value\":\"UTC\",\"id\":18}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(508, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 19, '[]', '{\"name\":\"date_format\",\"value\":\"Y-m-d\",\"id\":19}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(509, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 20, '[]', '{\"name\":\"time_format\",\"value\":\"g:i A\",\"id\":20}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(510, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 21, '[]', '{\"name\":\"tax_name\",\"value\":\"Tax\",\"id\":21}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(511, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 22, '[]', '{\"name\":\"tax_rate\",\"value\":0,\"id\":22}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(512, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 23, '[]', '{\"name\":\"lead_prefix\",\"value\":\"LD-\",\"id\":23}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(513, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 24, '[]', '{\"name\":\"deal_prefix\",\"value\":\"DL-\",\"id\":24}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(514, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 25, '[]', '{\"name\":\"quote_prefix\",\"value\":\"QU-\",\"id\":25}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(515, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 26, '[]', '{\"name\":\"order_prefix\",\"value\":\"ORD-\",\"id\":26}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(516, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 27, '[]', '{\"name\":\"invoice_prefix\",\"value\":\"INV-\",\"id\":27}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(517, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 28, '[]', '{\"name\":\"delivery_prefix\",\"value\":\"DEL-\",\"id\":28}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(518, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 29, '[]', '{\"name\":\"purchase_order_prefix\",\"value\":\"PO-\",\"id\":29}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(519, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 30, '[]', '{\"name\":\"dynamic_products\",\"value\":\"1\",\"id\":30}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(520, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 31, '[]', '{\"name\":\"show_related_activity\",\"value\":\"0\",\"id\":31}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(521, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 32, '[]', '{\"global\":1,\"name\":\"db_update_0180\",\"value\":0,\"id\":32}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(522, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 33, '[]', '{\"global\":1,\"name\":\"db_update_0181\",\"value\":0,\"id\":33}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(523, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 34, '[]', '{\"global\":1,\"name\":\"db_update_0191\",\"value\":0,\"id\":34}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(524, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 35, '[]', '{\"global\":1,\"name\":\"db_update_0193\",\"value\":0,\"id\":35}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(525, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 36, '[]', '{\"global\":1,\"name\":\"db_update_0194\",\"value\":0,\"id\":36}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(526, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 37, '[]', '{\"global\":1,\"name\":\"db_update_0199\",\"value\":0,\"id\":37}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(527, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 38, '[]', '{\"global\":1,\"name\":\"db_update_1200\",\"value\":0,\"id\":38}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(528, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 39, '[]', '{\"name\":\"install_id\",\"value\":\"65f3932a-e93c-430f-964c-cb7a064c81e0\",\"global\":1,\"id\":39}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:22', '2024-10-01 06:34:22'),
(529, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 40, '[]', '{\"name\":\"version_latest\",\"value\":\"1.2.2\",\"global\":1,\"id\":40}', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:22', '2024-10-01 06:34:22'),
(530, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 12, '[]', '[]', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:34:22', '2024-10-01 06:34:22'),
(531, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 41, '[]', '{\"name\":\"view_leads\",\"value\":\"list\",\"user_id\":1,\"id\":41}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:47:35', '2024-10-01 06:47:35'),
(532, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Person', 1, '[]', '{\"external_id\":\"3d9584da-4558-4ecd-95e2-b38371b455a5\",\"first_name\":\"eyJpdiI6IlB4WWdkNGlSWGVLdndMNGdYKzdDekE9PSIsInZhbHVlIjoiZ0JFamtnekN3VlZCWWs1MzdFdUNSQT09IiwibWFjIjoiNTU5MDU2YWI5ZDZhZDc1MWMwNWU4NTk4ZTBjN2I2ODhlYTg0MDVlMTY2Mzc2NDhiNjQ5YmI4YmI0OGFhNWVjNSIsInRhZyI6IiJ9\",\"last_name\":\"eyJpdiI6IjRsY1FHdGxTdU9XS2o2SU9MdS9memc9PSIsInZhbHVlIjoiWk44VS90NUxrVmhENkkzL3ZVRkFtUT09IiwibWFjIjoiNGZjOThkZjJiNmMxNjg1ZGE3Mzk0ZmVlOTMyZGRmNWJjYjFkYTQ2Njg5NmY1ZTBkZjAxMTUzMjJlYzUwOTliOSIsInRhZyI6IiJ9\",\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(533, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Phone', 1, '[]', '{\"external_id\":\"c05b8331-e271-48fd-b348-b691c281da28\",\"number\":\"eyJpdiI6ImNlSi9pRE5Ka0wrd1ZSVmZjNG1NK2c9PSIsInZhbHVlIjoiRkluamVVVXdtbTRmSTYzK1U4QkpXNC9NaGNVanhxUU0zSDlmczdDUTBwcz0iLCJtYWMiOiI3MjNkZTdkMzFlY2Q3MzAzYjRiYjA0ODMxNzU5MzQxNTJiYmU3OGYyYWNhZjNjYThjNmNhNzQ4ZWM0MTRjNjBmIiwidGFnIjoiIn0=\",\"type\":\"mobile\",\"primary\":0,\"phoneable_id\":1,\"phoneable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(534, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Email', 1, '[]', '{\"external_id\":\"f5095196-ddb6-45cb-8f24-9e1064ddfb7a\",\"address\":\"eyJpdiI6ImplUGdJdDhvRTdjUnlXOStHV2hBM1E9PSIsInZhbHVlIjoieVhZY25nRWhMZjI4eDJjVGxZK0YvSDRneEdvSWxFcTEzQ1lDMGo2TXZEdz0iLCJtYWMiOiI3Yjk5MmRhZWRmOWVjZmI5OWMwNTRiY2Q3Y2YzZmQ5ZTgzYWQ4MTMyNzFiYjBlZTI1OGU5MGMwZTY2ODRhMjdkIiwidGFnIjoiIn0=\",\"type\":\"work\",\"primary\":0,\"emailable_id\":1,\"emailable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(535, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 1, '[]', '{\"external_id\":\"7245bedd-f6d5-48ad-852d-5e47cccafe5d\",\"name\":\"eyJpdiI6IjEzVjNxZDNESy9aLy9RdzRBeFRKR3c9PSIsInZhbHVlIjoicVBJcHFUR3Zsc3d6MXMwNkdIeXREeDVpK1JHNnY4ZDBsM3V5Wk5NVzk5cz0iLCJtYWMiOiI5N2VmMmI3YjMzMzk3ZDZhN2I4MmJmMTJmZTJjZTUzZGRlOWZhM2Y1YThhOTA2YzA3MDljNzdkNDU3ODJiZTg2IiwidGFnIjoiIn0=\",\"organisation_type_id\":null,\"vat_number\":null,\"industry_id\":null,\"timezone_id\":null,\"number_of_employees\":null,\"total_money_raised\":null,\"linkedin\":null,\"description\":\"This is the description\",\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(536, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 1, '[]', '{\"external_id\":\"9c216f3b-e71c-4d4e-94d8-51bf738bf8a1\",\"line1\":null,\"line2\":null,\"line3\":null,\"state\":null,\"code\":null,\"country\":null,\"primary\":1,\"addressable_id\":1,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(537, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Client', 1, '[]', '{\"name\":\"eyJpdiI6IlNZVSs4aUZKZXM3TUdZT3hWN3JUeUE9PSIsInZhbHVlIjoiZUhGN0hvS2drdEVDSjh2UUxyTVo5QT09IiwibWFjIjoiNmI3NzllNzQzYmM0NmVkYjE0YTJlY2FhYmRjNTk3MzA5ZDk1ZjI4MjU5NzViZjVjNjk0YzNjOWNkMDE1ODI4MSIsInRhZyI6IiJ9\",\"user_owner_id\":\"1\",\"external_id\":\"a85b2653-b01d-4b5c-b17d-f49dccb5ccd2\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(538, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 1, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"entityable_id\":1,\"contactable_id\":1,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"1cc9f8dc-983f-4f16-a0e4-8a3d0ab5ae95\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(539, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 2, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"entityable_id\":1,\"contactable_id\":1,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"d96acdeb-2693-46fa-b947-3a50b6558cfe\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(540, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Lead', 1, '[]', '{\"external_id\":\"2a60481b-32ca-4f62-9f8b-071b4bc9f00f\",\"person_id\":1,\"organisation_id\":1,\"client_id\":1,\"title\":\"Reliance Lead\",\"description\":\"This is the description\",\"amount\":null,\"currency\":\"USD\",\"lead_status_id\":1,\"user_owner_id\":\"1\",\"pipeline_id\":1,\"pipeline_stage_id\":\"1\",\"user_created_id\":1,\"number\":1000,\"prefix\":\"LD-\",\"lead_id\":\"LD-1000\",\"id\":1}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(541, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Lead', 1, '{\"pipeline_stage_id\":1,\"amount\":null,\"user_updated_id\":null}', '{\"pipeline_stage_id\":\"2\",\"amount\":10000,\"user_updated_id\":1}', 'http://127.0.0.1:8000/leads/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:49:13', '2024-10-01 06:49:13'),
(542, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 42, '[]', '{\"name\":\"view_deals\",\"value\":\"list\",\"user_id\":1,\"id\":42}', 'http://127.0.0.1:8000/deals', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:51:44', '2024-10-01 06:51:44'),
(543, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 43, '[]', '{\"name\":\"view_quotes\",\"value\":\"list\",\"user_id\":1,\"id\":43}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:51:52', '2024-10-01 06:51:52'),
(544, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 43, '{\"value\":\"list\"}', '{\"value\":\"board\"}', 'http://127.0.0.1:8000/quotes/board', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:51:56', '2024-10-01 06:51:56'),
(545, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 43, '{\"value\":\"board\"}', '{\"value\":\"list\"}', 'http://127.0.0.1:8000/quotes/list', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:51:57', '2024-10-01 06:51:57'),
(546, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 44, '[]', '{\"name\":\"vat_number\",\"value\":\"12345\",\"label\":null,\"id\":44}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(547, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 16, '{\"value\":\"United States\"}', '{\"value\":\"India\"}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(548, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 15, '{\"value\":\"USD\"}', '{\"value\":\"INR\"}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(549, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 18, '{\"value\":\"UTC\"}', '{\"value\":\"Asia\\/Kolkata\"}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(550, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 21, '{\"value\":\"Tax\"}', '{\"value\":\"GST\"}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(551, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 22, '{\"value\":\"0\"}', '{\"value\":\"18\"}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(552, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 19, '{\"value\":\"Y-m-d\"}', '{\"value\":\"F j, Y\"}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(553, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 2, '[]', '{\"external_id\":\"f03bd3dd-cb1a-42f8-84a6-6f027ca1af6c\",\"address_type_id\":null,\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6InIzU0VxcDQzbDFVYTB2Y3Y1Z2l0SFE9PSIsInZhbHVlIjoicXJZajdFNlFmTXRMUzBNQlRFVElkZzFMTmxCak1ZY0drSlhHNzkvV3hzST0iLCJtYWMiOiJlMzQ2MzFjMmU5MWU4YjZlZDIyZjc4YjYxZWJjYTk4ZTU5NDY3Njg3MGVhZDIxMzI1NzYyN2NmNzBiZmI3YWRlIiwidGFnIjoiIn0=\",\"primary\":0,\"addressable_id\":13,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Setting\",\"id\":2}', 'http://127.0.0.1:8000/settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(554, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\FieldGroup', 1, '[]', '{\"name\":\"First Name\",\"external_id\":\"82263e66-a162-4ebc-883d-bf8f08d1ecfa\",\"id\":1}', 'http://127.0.0.1:8000/field-groups', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:54:30', '2024-10-01 06:54:30'),
(555, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Client', 2, '[]', '{\"name\":\"eyJpdiI6IkRFamY3WjdTUGhvYVFxTEVIc2NKTUE9PSIsInZhbHVlIjoiKzBJSzNVanJwSHdkTUxyL3NFcU1kR21XdkxGYmhzelpmd1lrVEE1ZzUxQT0iLCJtYWMiOiI4YWZhMDI4ZDdlZTJjMzc4YzdlMWEwZWVkMWE5NjZhYjNkYzhmY2Y1MTVkNTM3NDBmMWEzMmEwODA0MjQ0ODEyIiwidGFnIjoiIn0=\",\"user_owner_id\":\"1\",\"external_id\":\"5debb62c-dd25-46af-9847-b2e01fb9abb0\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:56:39', '2024-10-01 06:56:39'),
(556, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Client', 3, '[]', '{\"name\":\"eyJpdiI6IjNpTlhSRzRoazNaLzRsMG5QYXVpZmc9PSIsInZhbHVlIjoiZ3JJT3Yyc2ZNZjFsU3ZEZkNPWnZWQVI4OXVzRE1BVVd6RlBoZWhjRWM2MD0iLCJtYWMiOiI0NDRlNTc0OWYxYjg4M2I4ZDQyMGE1OWRmYmE5ZTc3N2NjZTc1ZWM5ZTExMTUyYzg3NWFkODgzM2I0NWI1ZWE4IiwidGFnIjoiIn0=\",\"user_owner_id\":\"1\",\"external_id\":\"23cc1989-68f1-454b-805c-2d5c36a6117a\",\"user_created_id\":1,\"id\":3}', 'http://127.0.0.1:8000/clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:57:04', '2024-10-01 06:57:04'),
(557, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Client', 4, '[]', '{\"name\":\"eyJpdiI6IlNJeEhWNTVZNnREUmpvZkZLZzlUSlE9PSIsInZhbHVlIjoidkJXaWVXOStzNVFRVm9TVjVVVFJ1MjQrOGMwdERYSGJkcm55NFRJc0tpRT0iLCJtYWMiOiJmNGY2ZDc5MzkxOGEyMzFhNTQyZWVjOGU0MGE3NzY0NjkwYjk5NzVmOTcxNjYwMWJkMDdhNjYyY2E2YTU2NTU3IiwidGFnIjoiIn0=\",\"user_owner_id\":\"1\",\"external_id\":\"39cba6b3-e93f-4150-b224-e257742db6f2\",\"user_created_id\":1,\"id\":4}', 'http://127.0.0.1:8000/clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 06:57:20', '2024-10-01 06:57:20'),
(558, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductCategory', 1, '[]', '{\"external_id\":\"d8b56ad9-51bb-4edc-823f-ae0f418540fd\",\"name\":\"Grocery\",\"description\":\"Grocery Product\",\"id\":1}', 'http://127.0.0.1:8000/product-categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:09:30', '2024-10-01 07:09:30'),
(559, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductCategory', 2, '[]', '{\"external_id\":\"c62d6802-942c-46c4-95e0-f8c2c08d76ba\",\"name\":\"Electronic\",\"description\":\"Electronic Products\",\"id\":2}', 'http://127.0.0.1:8000/product-categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:09:57', '2024-10-01 07:09:57'),
(560, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductCategory', 3, '[]', '{\"external_id\":\"8b2f234f-d4a8-482b-9b67-d3db371f075a\",\"name\":\"Oil\",\"description\":\"Oil Products\",\"id\":3}', 'http://127.0.0.1:8000/product-categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:10:13', '2024-10-01 07:10:13'),
(561, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Product', 1, '[]', '{\"name\":\"Computers\",\"code\":\"8512745\",\"barcode\":\"963258741\",\"purchase_account\":\"50000\",\"sales_account\":\"52000\",\"product_category_id\":\"2\",\"unit\":\"50\",\"tax_rate_id\":null,\"tax_rate\":\"18\",\"description\":null,\"user_owner_id\":\"1\",\"external_id\":\"98b816f1-8830-4766-a418-1bae49e9adde\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:11:24', '2024-10-01 07:11:24'),
(562, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductPrice', 1, '[]', '{\"unit_price\":50000,\"currency\":\"INR\",\"product_id\":1,\"external_id\":\"ce50ba0f-98a5-4524-ba55-2adf55232285\",\"id\":1}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:11:24', '2024-10-01 07:11:24'),
(563, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\TaxRate', 1, '[]', '{\"name\":\"GST Rate\",\"rate\":\"18\",\"description\":\"18 % Gst\",\"default\":0,\"tax_type\":null,\"id\":1}', 'http://127.0.0.1:8000/tax-rates', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:11:58', '2024-10-01 07:11:58'),
(564, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\TaxRate', 2, '[]', '{\"name\":\"SGST\",\"rate\":\"9\",\"description\":\"SGST rate is 9 %\",\"default\":0,\"tax_type\":null,\"id\":2}', 'http://127.0.0.1:8000/tax-rates', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:12:20', '2024-10-01 07:12:20'),
(565, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\TaxRate', 3, '[]', '{\"name\":\"CGST Rate\",\"rate\":\"9\",\"description\":\"CGST rate\",\"default\":0,\"tax_type\":null,\"id\":3}', 'http://127.0.0.1:8000/tax-rates', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:12:40', '2024-10-01 07:12:40'),
(566, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\TaxRate', 1, '{\"name\":\"GST Rate\"}', '{\"name\":\"GST\"}', 'http://127.0.0.1:8000/tax-rates/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:12:52', '2024-10-01 07:12:52'),
(567, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\TaxRate', 3, '{\"name\":\"CGST Rate\"}', '{\"name\":\"CGST\"}', 'http://127.0.0.1:8000/tax-rates/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:13:03', '2024-10-01 07:13:03'),
(568, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Phone', 2, '[]', '{\"external_id\":\"d8c65847-8832-4be8-a9d7-b695e4ba494e\",\"number\":\"eyJpdiI6InN2N3NzRHFTd2lyZmZ6d0d5bzlKb3c9PSIsInZhbHVlIjoid0lGbHZjK0hCckM1ZFBrUytpZlE3Z3craGpVK0lYbWwwRjZ2TTFwZXdIVT0iLCJtYWMiOiJjYWNjZTNlM2YyNGVlYWMyZWJlOWE0ZjM3MjY0ZWNlYzM5ZTViYTNkODk1NjMwNWY1ZGQxMWI4MzFhODU2MjViIiwidGFnIjoiIn0=\",\"type\":\"mobile\",\"primary\":0,\"phoneable_id\":2,\"phoneable_type\":\"App\\\\Models\\\\User\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:15:36', '2024-10-01 07:15:36'),
(569, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 3, '[]', '{\"external_id\":\"f2b77c74-d96b-4328-a28f-3003aac1ce6e\",\"address_type_id\":null,\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6InpWcW5acmtYL0swdHhTMzdQOC81c1E9PSIsInZhbHVlIjoiRlh4S0p2eHNNeU85cWtFVXFIckE0Zz09IiwibWFjIjoiOGNkMTNmY2M1ZDdhNGU3YjJmYjY2YzI3MzFmMGJjMmE4YTQ0NzE3MWFjNWNjNzlhYmMzNmRjZWE4YjdmMTBjNiIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":2,\"addressable_type\":\"App\\\\Models\\\\User\",\"id\":3}', 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:15:36', '2024-10-01 07:15:36'),
(570, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 2, '[]', '{\"external_id\":\"6a699d51-7541-4966-a85d-14cbc739f758\",\"name\":\"eyJpdiI6Ilk5enVVMVgwdlBSVnpQZmxwL1A5S3c9PSIsInZhbHVlIjoiOUNha0pyUkwvd1NKSThGMjlzcXFvRGVYaVFpTEN2Nm9zUStjMWNBdUdNbz0iLCJtYWMiOiJkYzhiNTFiZGEzNDRiMzIyMzRmZGIyMmM4ODAzMzM1YjRiZWUxOWE3M2QzNzQxZGMyNjY4NzFhOTMxOTA5NmUyIiwidGFnIjoiIn0=\",\"organisation_type_id\":\"4\",\"vat_number\":\"9652145896\",\"industry_id\":null,\"timezone_id\":\"247\",\"number_of_employees\":\"500\",\"annual_revenue\":5000000,\"total_money_raised\":null,\"linkedin\":null,\"description\":null,\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:19:27', '2024-10-01 07:19:27'),
(571, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Phone', 3, '[]', '{\"external_id\":\"2dc0707d-e910-4cd6-87d2-e05308a24f89\",\"number\":\"eyJpdiI6InZ6eUNXaFh1OU93N3NBVlpHZVV5d2c9PSIsInZhbHVlIjoiUForc1I4YVovZkljS25WcVZQb1F4Nmt3L1YxTkhpL29rTUIxeUlYMGxQdz0iLCJtYWMiOiI1M2JmYjQxYmY0MzdlZTljZWIyYTU5ZWU3YzY3ZThhNTk0MThlNGI5M2NiMjJjZTNmMjRhYTI1Yjc0YWMzZDM2IiwidGFnIjoiIn0=\",\"type\":\"mobile\",\"primary\":0,\"phoneable_id\":2,\"phoneable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"user_created_id\":1,\"id\":3}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:19:27', '2024-10-01 07:19:27'),
(572, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 4, '[]', '{\"external_id\":\"475da844-8c0b-420c-b720-097569b730e0\",\"address_type_id\":null,\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6ImlSN1QyMnJGUWlCT0dHSjUrYUpxT3c9PSIsInZhbHVlIjoiVHZ1U1RsTFhBdkU5YjZKckU5dGtmUT09IiwibWFjIjoiOTY0NjRkNTAxOGRkMDg5NTFmMGFkYjI2MjJjNzBlN2QwNmViM2RmMDJhNTU2NGRiNTk3MTU1YTQ1NGNlYjA3YSIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":2,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"id\":4}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:19:27', '2024-10-01 07:19:27'),
(573, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Note', 1, '[]', '{\"external_id\":\"854d2ccc-4693-4c31-b532-9a9370e77947\",\"content\":\"this is note data\",\"noteable_id\":1,\"noteable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Lead\",\"user_created_id\":1,\"id\":1}', 'http://127.0.0.1:8000/livewire/message/notes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:49:29', '2024-10-01 07:49:29'),
(574, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Activity', 1, '[]', '{\"timelineable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Lead\",\"timelineable_id\":1,\"recordable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Note\",\"recordable_id\":1,\"external_id\":\"b3370a50-b101-4295-a171-41534225dd76\",\"id\":1}', 'http://127.0.0.1:8000/livewire/message/notes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 07:49:29', '2024-10-01 07:49:29'),
(575, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 3, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"entityable_id\":1,\"contactable_id\":2,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"bb492de4-d221-4f91-9bc6-1341e811d68a\",\"user_created_id\":1,\"id\":3}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(576, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 4, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"entityable_id\":1,\"contactable_id\":2,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"06cc7e8d-c340-4428-867d-a97886f8244b\",\"user_created_id\":1,\"id\":4}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(577, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Quote', 1, '[]', '{\"lead_id\":null,\"person_id\":1,\"organisation_id\":1,\"client_id\":2,\"title\":\"Mukesh Ambani Quote\",\"description\":\"This is reliance quote\",\"reference\":\"Gautam Adani\",\"currency\":\"INR\",\"issue_at\":\"2024-10-02T13:34:09.000000Z\",\"expire_at\":\"2024-10-15T13:34:09.000000Z\",\"terms\":null,\"subtotal\":550000,\"discount\":0,\"tax\":99000,\"adjustments\":0,\"total\":649000,\"user_owner_id\":\"1\",\"pipeline_id\":3,\"pipeline_stage_id\":\"13\",\"external_id\":\"f7da0496-f91f-429d-97a5-9ea60830dd50\",\"user_created_id\":1,\"number\":1000,\"prefix\":\"QU-\",\"quote_id\":\"QU-1000\",\"id\":1}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(578, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\QuoteProduct', 1, '[]', '{\"product_id\":\"1\",\"quantity\":\"1\",\"price\":50000,\"amount\":50000,\"tax_rate\":\"18.00\",\"tax_amount\":9000,\"currency\":\"INR\",\"comments\":null,\"quote_id\":1,\"external_id\":\"9bc3d389-a598-4c5b-928b-b656255ea2f4\",\"id\":1}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(579, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\QuoteProduct', 2, '[]', '{\"product_id\":\"1\",\"quantity\":\"10\",\"price\":50000,\"amount\":500000,\"tax_rate\":\"18.00\",\"tax_amount\":90000,\"currency\":\"INR\",\"comments\":null,\"quote_id\":1,\"external_id\":\"a7d250e7-539d-4724-a85a-4310b175aa4a\",\"id\":2}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(580, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Deal', 1, '[]', '{\"external_id\":\"407dd79d-9f9d-4eb3-82df-2c66621170b1\",\"lead_id\":null,\"person_id\":1,\"organisation_id\":1,\"client_id\":2,\"title\":\"Mukesh Ambani Deal\",\"description\":\"This is deal with mukesh ambani\",\"amount\":50000,\"currency\":\"INR\",\"expected_close\":\"2024-10-22T13:50:22.000000Z\",\"user_owner_id\":\"1\",\"pipeline_id\":2,\"pipeline_stage_id\":\"9\",\"user_created_id\":1,\"number\":1000,\"prefix\":\"DL-\",\"deal_id\":\"DL-1000\",\"id\":1}', 'http://127.0.0.1:8000/deals', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:20:23', '2024-10-01 08:20:23'),
(581, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Deal', 1, '{\"closed_at\":null,\"closed_status\":null,\"user_updated_id\":null}', '{\"closed_at\":\"2024-10-01 13:50:29\",\"closed_status\":\"won\",\"user_updated_id\":1}', 'http://127.0.0.1:8000/deals/1/won', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:20:29', '2024-10-01 08:20:29'),
(582, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Product', 2, '[]', '{\"name\":\"Mobiles\",\"code\":\"8541275\",\"barcode\":\"9632587412\",\"purchase_account\":\"100000\",\"sales_account\":\"10000\",\"product_category_id\":\"2\",\"unit\":\"1\",\"tax_rate_id\":\"2\",\"tax_rate\":\"9.00\",\"description\":\"This is mobile data\",\"user_owner_id\":\"1\",\"external_id\":\"f1b7c1fa-6b4c-44bc-982e-a669ebb7605a\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:21:59', '2024-10-01 08:21:59'),
(583, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductPrice', 2, '[]', '{\"unit_price\":700000,\"currency\":\"INR\",\"product_id\":2,\"external_id\":\"f0455d95-c7c1-446d-a06b-5c7ebbb9a818\",\"id\":2}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:21:59', '2024-10-01 08:21:59'),
(584, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Product', 3, '[]', '{\"name\":\"Laptop\",\"code\":\"4125852\",\"barcode\":\"21132512542\",\"purchase_account\":\"800000\",\"sales_account\":\"800000\",\"product_category_id\":\"2\",\"unit\":\"1\",\"tax_rate_id\":\"3\",\"tax_rate\":\"9.00\",\"description\":\"This is laptop deal\",\"user_owner_id\":\"1\",\"external_id\":\"e71870ea-0bbe-4127-9009-10c83c5adb52\",\"user_created_id\":1,\"id\":3}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:23:04', '2024-10-01 08:23:04'),
(585, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductPrice', 3, '[]', '{\"unit_price\":1500000,\"currency\":\"INR\",\"product_id\":3,\"external_id\":\"71459382-b7f0-4ce6-aeb1-4740a37715cd\",\"id\":3}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:23:04', '2024-10-01 08:23:04'),
(586, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Product', 4, '[]', '{\"name\":\"Rice\",\"code\":\"8512478596\",\"barcode\":\"96521475\",\"purchase_account\":\"100000\",\"sales_account\":\"100000\",\"product_category_id\":\"1\",\"unit\":\"1\",\"tax_rate_id\":\"1\",\"tax_rate\":\"18.00\",\"description\":null,\"user_owner_id\":\"1\",\"external_id\":\"ecddc106-d307-4eb8-b788-3882c1815fac\",\"user_created_id\":1,\"id\":4}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:23:41', '2024-10-01 08:23:41'),
(587, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\ProductPrice', 4, '[]', '{\"unit_price\":5000,\"currency\":\"INR\",\"product_id\":4,\"external_id\":\"406554db-f6ae-418c-ab6f-8c668cdff663\",\"id\":4}', 'http://127.0.0.1:8000/products', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:23:41', '2024-10-01 08:23:41'),
(588, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Client', 5, '[]', '{\"name\":\"eyJpdiI6IjBxRURINEoyRlRJUjN5VzAzSVA5OHc9PSIsInZhbHVlIjoiT1BDVDQ1NmgxRHBEMDhuTTFiKzRTQlRYaFRJbmlMR3JuUGwvR2N0QmxwVT0iLCJtYWMiOiI0MTFjYmNiNzFlNmM3ODhmMTRkZGJkODQ3ODYwZGRjZDU4NjAyZDkwMTQ2Y2Y1NjdmMGFmNTJhNmEzN2FiMTgxIiwidGFnIjoiIn0=\",\"user_owner_id\":\"1\",\"external_id\":\"34ba9828-4d93-4336-be37-72a1e2130de1\",\"user_created_id\":1,\"id\":5}', 'http://127.0.0.1:8000/clients', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:24:07', '2024-10-01 08:24:07'),
(589, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 3, '[]', '{\"external_id\":\"5527bc09-7259-47fc-97ad-a0417cf70023\",\"name\":\"eyJpdiI6IkpMa1k2Z3FHV3dRSXdyMFdCeC9zRFE9PSIsInZhbHVlIjoiaURoeXVSY0JVRloxdTVQWkdBWTU1QXdSZStMTCt5WkhFOVRac0JWUEdKbz0iLCJtYWMiOiIzODFjMjQ3ZGFhYTQ2Njk0ZWZmMjM3ZDU5MTY2OGUzN2NjZDM1ODZlYmY3MGNmOTUxNWE4ODcxYmE0N2MxOWU2IiwidGFnIjoiIn0=\",\"organisation_type_id\":\"2\",\"vat_number\":\"8541256963\",\"industry_id\":null,\"timezone_id\":\"247\",\"number_of_employees\":\"5000\",\"annual_revenue\":5000000,\"total_money_raised\":null,\"linkedin\":null,\"description\":null,\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":3}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26'),
(590, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Phone', 4, '[]', '{\"external_id\":\"3c3921c4-ca5a-4382-bd55-c0735a17755c\",\"number\":\"eyJpdiI6IitCY3dqTG5FbC9iZ2lvTE0xcDdKMXc9PSIsInZhbHVlIjoiL09wQ05jbkF6UTFWTk1kc1NCTXVCbVZLY0ZITjErTkRDSTMrZi9QS2pGTT0iLCJtYWMiOiI3OTAxN2VjZDAzMTQyYjI5NzI0NGI1ZjFkMWI0OWQ5OWJjMTI3YTFiZDc5MWM1NDBhNWU2MTFhYmQ1N2QyMDFhIiwidGFnIjoiIn0=\",\"type\":\"home\",\"primary\":0,\"phoneable_id\":3,\"phoneable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"user_created_id\":1,\"id\":4}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26'),
(591, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Email', 2, '[]', '{\"external_id\":\"79d8b81a-1ea5-4571-848d-50094aca8213\",\"address\":\"eyJpdiI6ImRDUzFSY1B3b2pDLzRnSE9nRnNwdEE9PSIsInZhbHVlIjoiS2tHQTdzMFdWeWlXTXh6TlFrUktVZFlmSFlGQW05Y25aQXNUNm01R0pNdz0iLCJtYWMiOiIyMTFlODNmYzQyZGZjNDYzYWJmZmU2NDFmNjZkMjE5ZmVmZWY2NjI1ZmJjMjg1NDY2NTM5MmQ1MTMyNDRlYTg3IiwidGFnIjoiIn0=\",\"type\":\"home\",\"primary\":0,\"emailable_id\":3,\"emailable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26'),
(592, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 5, '[]', '{\"external_id\":\"eaa672e4-2d87-4aae-bbb2-a43b52ac6987\",\"address_type_id\":null,\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6ImFFZ080emZTNGdJMDNxeGFNVHpWVVE9PSIsInZhbHVlIjoiY3JodHo3TWZ0NUJ5T3hSR3Z5OUVNZz09IiwibWFjIjoiNjFmNzRjYjNjNzliNDk5ODg3MWQ0ZTIzODUwMGM3YjIwN2EwNGEzMzVhYjFjZTc5MmQyNDQwNDJhMjVhMTNjNSIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":3,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"id\":5}', 'http://127.0.0.1:8000/organisations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26'),
(593, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Person', 2, '[]', '{\"external_id\":\"fadd65e4-05b7-46b0-9ac9-c2d07132da0a\",\"title\":\"eyJpdiI6IldFTjJ1QjRCdFhwVGdhVVgzOGhySWc9PSIsInZhbHVlIjoiM2QwVlNEckhjR0ptZHNnZDJiNk03QT09IiwibWFjIjoiNTlhY2YxODlmM2NkYjA4MWZkMWUwYjZhNjU0MTZiMTQyZWM0YjU3NmMwYjU0NDk1M2JiNTI3NjI1NGE1MDVkNSIsInRhZyI6IiJ9\",\"first_name\":\"eyJpdiI6IjM3bk56WkUxbmRHMEFaY0I0NHBOUWc9PSIsInZhbHVlIjoieFJqb2tCT0VIeVZRMVBkRGVDQlZKQT09IiwibWFjIjoiMmI3Nzg4MWIzMWU3ZmU5OTI4OGI4MjE4MGFjNzAyMmJlMjlkNDM1ZDEwYzAzZWYxMTkyZmUzZDk2NDk4YmJkNCIsInRhZyI6IiJ9\",\"middle_name\":null,\"last_name\":\"eyJpdiI6IjBOS1RqalVEanJWcTlVU0hzRGttMEE9PSIsInZhbHVlIjoiSy9mOUEvdlgvRmNIbU9HazkzbzE0dz09IiwibWFjIjoiYzI3MjUxM2IyODBjODE2ZGUxM2E4ZjAwMjAxYmZhMzIzN2RlYzdhZjc5YTc4NjJhZGFiYTFlMzMxNWNkZjY3MyIsInRhZyI6IiJ9\",\"gender\":\"male\",\"birthday\":\"2024-10-08T13:57:11.000000Z\",\"description\":null,\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":2}', 'http://127.0.0.1:8000/people', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:27:11', '2024-10-01 08:27:11');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(594, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 6, '[]', '{\"external_id\":\"54dcf949-8fda-4363-954d-29d34c6e17be\",\"address_type_id\":null,\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6IkNUY294NEh2ZTJ2SDlQTTZYd3dETGc9PSIsInZhbHVlIjoiV0gwbE1aRHkwcmVBOG5hVFFVNnFKdz09IiwibWFjIjoiOGZiNDE3NWMxYjlhY2JhMjQ4ODY2MjI0NjY3ZmZkYmVjZmZlMzAwMDZjZWFmYjM1MTMwNTY0ZDkxZmE3ZjJiYyIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":2,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"id\":6}', 'http://127.0.0.1:8000/people', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:27:11', '2024-10-01 08:27:11'),
(595, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Person', 3, '[]', '{\"external_id\":\"706c1ece-fdff-43c8-ace2-d9db47af11b5\",\"title\":\"eyJpdiI6IndXS0ZnQWZBR0lOOFdFS0JXaDB1bWc9PSIsInZhbHVlIjoid0tsOTZoMlJNbkJpQ1VzNm11UUdCdz09IiwibWFjIjoiOTAzMDc2YWJmZGY4ZTllMmVjMTY3MGQyMjcwNDg4MDZiMjU1NjcxYTFlNmNkZDYzOTlmNmU2NmVmYThlYTkyZCIsInRhZyI6IiJ9\",\"first_name\":\"eyJpdiI6ImVYUU4vcDlIUjZwNXhKcmdLdFJ2VkE9PSIsInZhbHVlIjoiVjl0L241SSs2SEhGT0ZQMVNyNStudz09IiwibWFjIjoiYjVlMTgyOTNiMTRmYTYyODY0MGQ1MjQyYzAzYzUyZmFkNmIzYjRhMzI2NDJjYjc3NzAwZTgwMGM4OTQwNDJhNCIsInRhZyI6IiJ9\",\"middle_name\":null,\"last_name\":\"eyJpdiI6IksrVHNOTUN0dXl3NnpxeWFxSWZYYWc9PSIsInZhbHVlIjoia3FmS2dQb2xGelNDUlhrRjk2Y3Vodz09IiwibWFjIjoiNjlkZGZmMDNhMThhYjczZWRlMjVjODQzMDA1ZTIwNTM3NDM0ZmM2MjVjYjQ0ZGY0NDljZDM0OWVhNDgzMTJkYyIsInRhZyI6IiJ9\",\"gender\":\"male\",\"birthday\":\"2024-10-10T13:57:36.000000Z\",\"description\":null,\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":3}', 'http://127.0.0.1:8000/people', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:27:36', '2024-10-01 08:27:36'),
(596, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 7, '[]', '{\"external_id\":\"26dea497-d781-40d7-aba5-f8b6e1b53055\",\"address_type_id\":null,\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6Ik15QXY5MXVMa3JDbnJhZDJqRnEyQUE9PSIsInZhbHVlIjoiNGx6aVlSWjNSbVVLV3I0VFV2S05odz09IiwibWFjIjoiM2FmYmZmNzQzYjIzZjc4NTM3YzQxZmJlMjc4YmNjMDc5ZjRhZWQ4YTAyMmJkNTU2NzliNTMxZmNjOWM5YmQzMyIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":3,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"id\":7}', 'http://127.0.0.1:8000/people', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:27:36', '2024-10-01 08:27:36'),
(597, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Team', 1, '[]', '{\"name\":\"India\",\"user_id\":1,\"id\":1}', 'http://127.0.0.1:8000/crm-teams', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:28:13', '2024-10-01 08:28:13'),
(598, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Team', 2, '[]', '{\"name\":\"Usa\",\"user_id\":1,\"id\":2}', 'http://127.0.0.1:8000/crm-teams', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:28:25', '2024-10-01 08:28:25'),
(599, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 4, '[]', '{\"external_id\":\"9a862e4b-5103-44f1-981c-9600d0fe44a8\",\"name\":\"eyJpdiI6InZBVVNic0RiMmtta29GMlJ2cml5UEE9PSIsInZhbHVlIjoiaTI5ZW1CNkhUUlJockVJSVNORlVRTk05WGkyRSttaUFRZjJuNG5ETkFaUT0iLCJtYWMiOiI4MzE2M2VlOWY1MDFhYzhiYzg2MTA5OTMxN2ZkYThkYjY3ZTY1YmFiMGFhOWZiY2JkYWNiNjk4ZjcxZjY5NzIwIiwidGFnIjoiIn0=\",\"organisation_type_id\":null,\"vat_number\":null,\"industry_id\":null,\"timezone_id\":null,\"number_of_employees\":null,\"total_money_raised\":null,\"linkedin\":null,\"description\":null,\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":4}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(600, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 8, '[]', '{\"external_id\":\"0c09b67b-1d24-4aa6-b9dd-b771edb5ac76\",\"line1\":null,\"line2\":null,\"line3\":null,\"state\":null,\"code\":null,\"country\":null,\"primary\":1,\"addressable_id\":4,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"id\":8}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(601, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 5, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"entityable_id\":4,\"contactable_id\":5,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"93335030-0c4b-4dcf-bcb3-9061325474da\",\"user_created_id\":1,\"id\":5}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(602, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 6, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"entityable_id\":2,\"contactable_id\":5,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"bdbf3ccc-b374-4c70-9f3d-3a6557fa04d5\",\"user_created_id\":1,\"id\":6}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(603, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Lead', 2, '[]', '{\"external_id\":\"871ae98e-e67b-4f4d-837d-96ffb982de91\",\"person_id\":2,\"organisation_id\":4,\"client_id\":5,\"title\":\"Gautam Adani Lead\",\"description\":null,\"amount\":10000,\"currency\":\"INR\",\"lead_status_id\":1,\"user_owner_id\":\"1\",\"pipeline_id\":1,\"pipeline_stage_id\":\"1\",\"user_created_id\":1,\"number\":1001,\"prefix\":\"LD-\",\"lead_id\":\"LD-1001\",\"id\":2}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(604, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 7, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Organisation\",\"entityable_id\":2,\"contactable_id\":4,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"6ccd0efc-2d75-4b68-b19c-ed51f974afa5\",\"user_created_id\":1,\"id\":7}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:43', '2024-10-01 08:30:43'),
(605, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Lead', 3, '[]', '{\"external_id\":\"20fca480-86a3-43a4-b687-e948155579aa\",\"person_id\":null,\"organisation_id\":2,\"client_id\":4,\"title\":\"Tata Capital Lead\",\"description\":null,\"amount\":10000,\"currency\":\"INR\",\"lead_status_id\":1,\"user_owner_id\":\"1\",\"pipeline_id\":1,\"pipeline_stage_id\":\"4\",\"user_created_id\":1,\"number\":1002,\"prefix\":\"LD-\",\"lead_id\":\"LD-1002\",\"id\":3}', 'http://127.0.0.1:8000/leads', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:44', '2024-10-01 08:30:44'),
(606, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 41, '{\"value\":\"list\"}', '{\"value\":\"board\"}', 'http://127.0.0.1:8000/leads/board', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:30:50', '2024-10-01 08:30:50'),
(607, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Setting', 41, '{\"value\":\"board\"}', '{\"value\":\"list\"}', 'http://127.0.0.1:8000/leads/list', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:31:27', '2024-10-01 08:31:27'),
(608, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Deal', 2, '[]', '{\"external_id\":\"b77371b6-1722-4fb5-98c6-e04424fafb1d\",\"lead_id\":null,\"person_id\":2,\"organisation_id\":4,\"client_id\":5,\"title\":\"Gautam Adani Deal\",\"description\":null,\"amount\":50000,\"currency\":\"INR\",\"expected_close\":\"2024-10-15T14:12:05.000000Z\",\"user_owner_id\":\"1\",\"pipeline_id\":2,\"pipeline_stage_id\":\"10\",\"user_created_id\":1,\"number\":1001,\"prefix\":\"DL-\",\"deal_id\":\"DL-1001\",\"id\":2}', 'http://127.0.0.1:8000/deals', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:42:05', '2024-10-01 08:42:05'),
(609, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Person', 4, '[]', '{\"external_id\":\"e25d9e8b-dc92-4fd4-ae66-882d778b05a3\",\"first_name\":\"eyJpdiI6InlGQmZxMjJteDc0T0RCTzcxQ2g3Vmc9PSIsInZhbHVlIjoieVJiK0wrb1N5NVZOZ0ZQTGdOM21VZz09IiwibWFjIjoiMzQ1YWU4YWRmZGI2YTdjMjhlM2JmMTk2NGM1OTAwNzkxNTljNDVjNzJjODRlOWY2ODE2MmQ0N2JmNTZhMDQ3NCIsInRhZyI6IiJ9\",\"last_name\":\"eyJpdiI6IkFVTzZmNzROQ216cTBodDlKeVFuMUE9PSIsInZhbHVlIjoiVzh4R3NuOTNKK0FHOTdiWE11STR3dz09IiwibWFjIjoiNTZkZjg4NzZhNDk0ZjVlMjk1YjFmMjBlM2JjMjAyNGJlNDM4MTlhMGJlYzVkNjQyNmU0ZmM2ZmJhY2M0MjI3MyIsInRhZyI6IiJ9\",\"user_owner_id\":\"1\",\"user_created_id\":1,\"id\":4}', 'http://127.0.0.1:8000/deals', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:44:48', '2024-10-01 08:44:48'),
(610, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Contact', 8, '[]', '{\"entityable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Person\",\"entityable_id\":4,\"contactable_id\":4,\"contactable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Client\",\"external_id\":\"868a6f9d-678f-4c09-9002-51b345af0a6a\",\"user_created_id\":1,\"id\":8}', 'http://127.0.0.1:8000/deals', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:44:48', '2024-10-01 08:44:48'),
(611, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Deal', 3, '[]', '{\"external_id\":\"aa8329bb-38e0-45d7-b295-b05c4e78625a\",\"lead_id\":null,\"person_id\":4,\"organisation_id\":2,\"client_id\":4,\"title\":\"Tata Capital Deal\",\"description\":null,\"amount\":10000,\"currency\":\"INR\",\"expected_close\":\"2024-12-09T14:14:48.000000Z\",\"user_owner_id\":\"1\",\"pipeline_id\":2,\"pipeline_stage_id\":\"9\",\"user_created_id\":1,\"number\":1002,\"prefix\":\"DL-\",\"deal_id\":\"DL-1002\",\"id\":3}', 'http://127.0.0.1:8000/deals', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:44:48', '2024-10-01 08:44:48'),
(612, 'App\\Models\\User', 1, 'updated', 'VentureDrake\\LaravelCrm\\Models\\Deal', 3, '{\"expected_close\":\"2024-12-09 14:14:48\",\"user_updated_id\":null}', '{\"expected_close\":\"2024-12-09T14:15:00.000000Z\",\"user_updated_id\":1}', 'http://127.0.0.1:8000/deals/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:45:00', '2024-10-01 08:45:00'),
(613, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Quote', 2, '[]', '{\"lead_id\":null,\"person_id\":1,\"organisation_id\":1,\"client_id\":2,\"title\":\"Mukesh Ambani Quote\",\"description\":\"this is ambani quote\",\"reference\":\"Tata\",\"currency\":\"INR\",\"issue_at\":\"2024-10-16T14:19:01.000000Z\",\"expire_at\":\"2024-10-17T14:19:01.000000Z\",\"terms\":null,\"subtotal\":5900000,\"discount\":0,\"tax\":531000,\"adjustments\":0,\"total\":6431000,\"user_owner_id\":\"1\",\"pipeline_id\":3,\"pipeline_stage_id\":\"15\",\"external_id\":\"8599e220-b0c2-4535-be82-63d47e290ee5\",\"user_created_id\":1,\"number\":1001,\"prefix\":\"QU-\",\"quote_id\":\"QU-1001\",\"id\":2}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:49:01', '2024-10-01 08:49:01'),
(614, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\QuoteProduct', 3, '[]', '{\"product_id\":\"2\",\"quantity\":\"2\",\"price\":700000,\"amount\":1400000,\"tax_rate\":\"9.00\",\"tax_amount\":126000,\"currency\":\"INR\",\"comments\":\"mobile quotation\",\"quote_id\":2,\"external_id\":\"ab9b9d1a-a17a-4a33-aa25-054683c4ba42\",\"id\":3}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:49:01', '2024-10-01 08:49:01'),
(615, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\QuoteProduct', 4, '[]', '{\"product_id\":\"3\",\"quantity\":\"3\",\"price\":1500000,\"amount\":4500000,\"tax_rate\":\"9.00\",\"tax_amount\":405000,\"currency\":\"INR\",\"comments\":\"laptop quotes\",\"quote_id\":2,\"external_id\":\"a66d71b2-f5bc-4cef-8553-90c9e377c4db\",\"id\":4}', 'http://127.0.0.1:8000/quotes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:49:01', '2024-10-01 08:49:01'),
(616, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Order', 1, '[]', '{\"lead_id\":null,\"deal_id\":null,\"quote_id\":null,\"person_id\":2,\"organisation_id\":4,\"client_id\":5,\"description\":null,\"reference\":\"Gautam Adani\",\"currency\":\"INR\",\"subtotal\":750000,\"discount\":0,\"tax\":72000,\"adjustments\":0,\"total\":822000,\"user_owner_id\":\"1\",\"external_id\":\"0d429f86-f575-4be6-a641-028307bc1e89\",\"user_created_id\":1,\"number\":1000,\"prefix\":\"ORD-\",\"order_id\":\"ORD-1000\",\"id\":1}', 'http://127.0.0.1:8000/orders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19'),
(617, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\OrderProduct', 1, '[]', '{\"product_id\":\"1\",\"quantity\":\"1\",\"price\":50000,\"amount\":50000,\"tax_rate\":\"18.00\",\"tax_amount\":9000,\"currency\":\"INR\",\"comments\":\"computer quotation\",\"quote_product_id\":null,\"order_id\":1,\"external_id\":\"a195ab01-5722-4a55-b87c-627d89abff31\",\"id\":1}', 'http://127.0.0.1:8000/orders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19'),
(618, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\OrderProduct', 2, '[]', '{\"product_id\":\"2\",\"quantity\":\"1\",\"price\":700000,\"amount\":700000,\"tax_rate\":\"9.00\",\"tax_amount\":63000,\"currency\":\"INR\",\"comments\":null,\"quote_product_id\":null,\"order_id\":1,\"external_id\":\"f6714b55-7ae1-4bc7-9fce-e13133e65ef3\",\"id\":2}', 'http://127.0.0.1:8000/orders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19'),
(619, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 9, '[]', '{\"external_id\":\"1b5a8ed8-988f-475a-ba2a-d341f4139a80\",\"address_type_id\":\"5\",\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6IkFJbWpNVy9XUWUyZWR4ZVp2SmxWa0E9PSIsInZhbHVlIjoibGlkSy80YWp4SFRPR3krcm5sK0Z2dz09IiwibWFjIjoiM2M3NWRjNjIzNTJjNTUwZmEyOTcwNmQ2NzJkZmJkNDZlN2MxMzBjMzQ5OTEzMWRiODBiZTA5OTMxYzcxNGVjOSIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":1,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Order\",\"id\":9}', 'http://127.0.0.1:8000/orders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19'),
(620, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Address', 10, '[]', '{\"external_id\":\"8d72cf88-9444-4148-8a1d-52679024053d\",\"address_type_id\":\"6\",\"address\":null,\"name\":null,\"contact\":null,\"phone\":null,\"line1\":null,\"line2\":null,\"line3\":null,\"city\":null,\"state\":null,\"code\":null,\"country\":\"eyJpdiI6IlAwM1dTdXhDT0Q4Zk1iaGVpVDJjMEE9PSIsInZhbHVlIjoieTduSTNKU09HQVlaUkRxakVSdTNnZz09IiwibWFjIjoiZDk1ZDJhY2JmYTFkY2ZlMjJjNjkzOGQ3MDQ5Yjk4ZmE3OGU2NTRlN2M3MThkNThkZjgwZTZmZjI2YjBhYTdmNyIsInRhZyI6IiJ9\",\"primary\":0,\"addressable_id\":1,\"addressable_type\":\"VentureDrake\\\\LaravelCrm\\\\Models\\\\Order\",\"id\":10}', 'http://127.0.0.1:8000/orders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19'),
(621, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 45, '[]', '{\"global\":1,\"name\":\"db_update_0180\",\"value\":0,\"id\":45}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(622, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 46, '[]', '{\"global\":1,\"name\":\"db_update_0181\",\"value\":0,\"id\":46}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(623, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 47, '[]', '{\"global\":1,\"name\":\"db_update_0191\",\"value\":0,\"id\":47}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(624, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 48, '[]', '{\"global\":1,\"name\":\"db_update_0193\",\"value\":0,\"id\":48}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(625, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 49, '[]', '{\"global\":1,\"name\":\"db_update_0194\",\"value\":0,\"id\":49}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(626, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 50, '[]', '{\"global\":1,\"name\":\"db_update_0199\",\"value\":0,\"id\":50}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(627, 'App\\Models\\User', 1, 'created', 'VentureDrake\\LaravelCrm\\Models\\Setting', 51, '[]', '{\"global\":1,\"name\":\"db_update_1200\",\"value\":0,\"id\":51}', 'http://127.0.0.1:8000/activities', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-03 00:44:09', '2024-10-03 00:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `finish_at` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `reminder_email` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_sms` tinyint(1) NOT NULL DEFAULT 0,
  `callable_type` varchar(255) DEFAULT NULL,
  `callable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `clientable_type` varchar(255) DEFAULT NULL,
  `clientable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `external_id`, `team_id`, `clientable_type`, `clientable_id`, `name`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `user_assigned_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a85b2653-b01d-4b5c-b17d-f49dccb5ccd2', NULL, NULL, NULL, 'eyJpdiI6IlNZVSs4aUZKZXM3TUdZT3hWN3JUeUE9PSIsInZhbHVlIjoiZUhGN0hvS2drdEVDSjh2UUxyTVo5QT09IiwibWFjIjoiNmI3NzllNzQzYmM0NmVkYjE0YTJlY2FhYmRjNTk3MzA5ZDk1ZjI4MjU5NzViZjVjNjk0YzNjOWNkMDE1ODI4MSIsInRhZyI6IiJ9', 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53', NULL),
(2, '5debb62c-dd25-46af-9847-b2e01fb9abb0', NULL, NULL, NULL, 'eyJpdiI6IkRFamY3WjdTUGhvYVFxTEVIc2NKTUE9PSIsInZhbHVlIjoiKzBJSzNVanJwSHdkTUxyL3NFcU1kR21XdkxGYmhzelpmd1lrVEE1ZzUxQT0iLCJtYWMiOiI4YWZhMDI4ZDdlZTJjMzc4YzdlMWEwZWVkMWE5NjZhYjNkYzhmY2Y1MTVkNTM3NDBmMWEzMmEwODA0MjQ0ODEyIiwidGFnIjoiIn0=', 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 06:56:39', '2024-10-01 06:56:39', NULL),
(3, '23cc1989-68f1-454b-805c-2d5c36a6117a', NULL, NULL, NULL, 'eyJpdiI6IjNpTlhSRzRoazNaLzRsMG5QYXVpZmc9PSIsInZhbHVlIjoiZ3JJT3Yyc2ZNZjFsU3ZEZkNPWnZWQVI4OXVzRE1BVVd6RlBoZWhjRWM2MD0iLCJtYWMiOiI0NDRlNTc0OWYxYjg4M2I4ZDQyMGE1OWRmYmE5ZTc3N2NjZTc1ZWM5ZTExMTUyYzg3NWFkODgzM2I0NWI1ZWE4IiwidGFnIjoiIn0=', 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 06:57:04', '2024-10-01 06:57:04', NULL),
(4, '39cba6b3-e93f-4150-b224-e257742db6f2', NULL, NULL, NULL, 'eyJpdiI6IlNJeEhWNTVZNnREUmpvZkZLZzlUSlE9PSIsInZhbHVlIjoidkJXaWVXOStzNVFRVm9TVjVVVFJ1MjQrOGMwdERYSGJkcm55NFRJc0tpRT0iLCJtYWMiOiJmNGY2ZDc5MzkxOGEyMzFhNTQyZWVjOGU0MGE3NzY0NjkwYjk5NzVmOTcxNjYwMWJkMDdhNjYyY2E2YTU2NTU3IiwidGFnIjoiIn0=', 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 06:57:20', '2024-10-01 06:57:20', NULL),
(5, '34ba9828-4d93-4336-be37-72a1e2130de1', NULL, NULL, NULL, 'eyJpdiI6IjBxRURINEoyRlRJUjN5VzAzSVA5OHc9PSIsInZhbHVlIjoiT1BDVDQ1NmgxRHBEMDhuTTFiKzRTQlRYaFRJbmlMR3JuUGwvR2N0QmxwVT0iLCJtYWMiOiI0MTFjYmNiNzFlNmM3ODhmMTRkZGJkODQ3ODYwZGRjZDU4NjAyZDkwMTQ2Y2Y1NjdmMGFmNTJhNmEzN2FiMTgxIiwidGFnIjoiIn0=', 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:24:07', '2024-10-01 08:24:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) NOT NULL,
  `contactable_type` varchar(255) NOT NULL,
  `contactable_id` bigint(20) UNSIGNED NOT NULL,
  `entityable_type` varchar(255) NOT NULL,
  `entityable_id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `team_id`, `external_id`, `contactable_type`, `contactable_id`, `entityable_type`, `entityable_id`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '1cc9f8dc-983f-4f16-a0e4-8a3d0ab5ae95', 'VentureDrake\\LaravelCrm\\Models\\Client', 1, 'VentureDrake\\LaravelCrm\\Models\\Organisation', 1, 1, NULL, NULL, NULL, NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(2, NULL, 'd96acdeb-2693-46fa-b947-3a50b6558cfe', 'VentureDrake\\LaravelCrm\\Models\\Client', 1, 'VentureDrake\\LaravelCrm\\Models\\Person', 1, 1, NULL, NULL, NULL, NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(3, NULL, 'bb492de4-d221-4f91-9bc6-1341e811d68a', 'VentureDrake\\LaravelCrm\\Models\\Client', 2, 'VentureDrake\\LaravelCrm\\Models\\Organisation', 1, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(4, NULL, '06cc7e8d-c340-4428-867d-a97886f8244b', 'VentureDrake\\LaravelCrm\\Models\\Client', 2, 'VentureDrake\\LaravelCrm\\Models\\Person', 1, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(5, NULL, '93335030-0c4b-4dcf-bcb3-9061325474da', 'VentureDrake\\LaravelCrm\\Models\\Client', 5, 'VentureDrake\\LaravelCrm\\Models\\Organisation', 4, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(6, NULL, 'bdbf3ccc-b374-4c70-9f3d-3a6557fa04d5', 'VentureDrake\\LaravelCrm\\Models\\Client', 5, 'VentureDrake\\LaravelCrm\\Models\\Person', 2, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(7, NULL, '6ccd0efc-2d75-4b68-b19c-ed51f974afa5', 'VentureDrake\\LaravelCrm\\Models\\Client', 4, 'VentureDrake\\LaravelCrm\\Models\\Organisation', 2, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:30:43', '2024-10-01 08:30:43'),
(8, NULL, '868a6f9d-678f-4c09-9002-51b345af0a6a', 'VentureDrake\\LaravelCrm\\Models\\Client', 4, 'VentureDrake\\LaravelCrm\\Models\\Person', 4, 1, NULL, NULL, NULL, NULL, '2024-10-01 08:44:48', '2024-10-01 08:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact_type`
--

CREATE TABLE `contact_contact_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_types`
--

CREATE TABLE `contact_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_types`
--

INSERT INTO `contact_types` (`id`, `team_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Primary', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, NULL, 'Secondary', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_teams`
--

CREATE TABLE `crm_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crm_teams`
--

INSERT INTO `crm_teams` (`id`, `team_id`, `user_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 'India', '2024-10-01 08:28:13', '2024-10-01 08:28:13', NULL),
(2, NULL, 1, 'Usa', '2024-10-01 08:28:25', '2024-10-01 08:28:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_team_invitations`
--

CREATE TABLE `crm_team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crm_team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_team_user`
--

CREATE TABLE `crm_team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crm_team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crm_team_user`
--

INSERT INTO `crm_team_user` (`id`, `crm_team_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lead_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `qualified` tinyint(1) NOT NULL DEFAULT 0,
  `expected_close` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `closed_status` enum('won','lost') DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `external_id`, `team_id`, `pipeline_id`, `pipeline_stage_id`, `lead_id`, `person_id`, `organisation_id`, `client_id`, `title`, `description`, `deal_id`, `prefix`, `number`, `amount`, `currency`, `qualified`, `expected_close`, `closed_at`, `closed_status`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `user_assigned_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '407dd79d-9f9d-4eb3-82df-2c66621170b1', NULL, 2, 9, NULL, 1, 1, 2, 'Mukesh Ambani Deal', 'This is deal with mukesh ambani', 'DL-1000', 'DL-', 1000, 50000, 'INR', 0, '2024-10-22 13:50:22', '2024-10-01 13:50:29', 'won', 1, 1, NULL, NULL, 1, NULL, '2024-10-01 08:20:22', '2024-10-01 08:20:29', NULL),
(2, 'b77371b6-1722-4fb5-98c6-e04424fafb1d', NULL, 2, 10, NULL, 2, 4, 5, 'Gautam Adani Deal', NULL, 'DL-1001', 'DL-', 1001, 50000, 'INR', 0, '2024-10-15 14:12:05', NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:42:05', '2024-10-01 08:42:05', NULL),
(3, 'aa8329bb-38e0-45d7-b295-b05c4e78625a', NULL, 2, 9, NULL, 4, 2, 4, 'Tata Capital Deal', NULL, 'DL-1002', 'DL-', 1002, 10000, 'INR', 0, '2024-12-09 14:15:00', NULL, NULL, 1, 1, NULL, NULL, 1, NULL, '2024-10-01 08:44:48', '2024-10-01 08:45:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal_products`
--

CREATE TABLE `deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `delivery_initiated` datetime DEFAULT NULL,
  `delivery_shipped` datetime DEFAULT NULL,
  `delivery_expected` datetime DEFAULT NULL,
  `delivered_on` datetime DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_products`
--

CREATE TABLE `delivery_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `order_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `platform_version` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` varchar(255) DEFAULT NULL,
  `is_desktop` tinyint(1) NOT NULL DEFAULT 0,
  `is_mobile` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) DEFAULT NULL,
  `is_trusted` tinyint(1) NOT NULL DEFAULT 0,
  `is_untrusted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `user_type`, `platform`, `platform_version`, `browser`, `browser_version`, `is_desktop`, `is_mobile`, `language`, `is_trusted`, `is_untrusted`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\User', 'Windows', '10.0', 'Chrome', '129.0.0.0', 1, 0, 'en-gb', 0, 0, '2024-10-01 06:34:12', '2024-10-01 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('work','home','other') DEFAULT 'work',
  `emailable_type` varchar(255) NOT NULL,
  `emailable_id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `external_id`, `team_id`, `address`, `primary`, `type`, `emailable_type`, `emailable_id`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'f5095196-ddb6-45cb-8f24-9e1064ddfb7a', NULL, 'eyJpdiI6ImplUGdJdDhvRTdjUnlXOStHV2hBM1E9PSIsInZhbHVlIjoieVhZY25nRWhMZjI4eDJjVGxZK0YvSDRneEdvSWxFcTEzQ1lDMGo2TXZEdz0iLCJtYWMiOiI3Yjk5MmRhZWRmOWVjZmI5OWMwNTRiY2Q3Y2YzZmQ5ZTgzYWQ4MTMyNzFiYjBlZTI1OGU5MGMwZTY2ODRhMjdkIiwidGFnIjoiIn0=', 0, 'work', 'VentureDrake\\LaravelCrm\\Models\\Person', 1, 1, NULL, NULL, NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53', NULL),
(2, '79d8b81a-1ea5-4571-848d-50094aca8213', NULL, 'eyJpdiI6ImRDUzFSY1B3b2pDLzRnSE9nRnNwdEE9PSIsInZhbHVlIjoiS2tHQTdzMFdWeWlXTXh6TlFrUktVZFlmSFlGQW05Y25aQXNUNm01R0pNdz0iLCJtYWMiOiIyMTFlODNmYzQyZGZjNDYzYWJmZmU2NDFmNjZkMjE5ZmVmZWY2NjI1ZmJjMjg1NDY2NTM5MmQ1MTMyNDRlYTg3IiwidGFnIjoiIn0=', 0, 'home', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 3, 1, NULL, NULL, NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('text','textarea','select','select_multiple','checkbox','checkbox_multiple','radio','date') NOT NULL DEFAULT 'text',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `default` varchar(255) DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`config`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_groups`
--

INSERT INTO `field_groups` (`id`, `external_id`, `team_id`, `name`, `handle`, `system`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '82263e66-a162-4ebc-883d-bf8f08d1ecfa', NULL, 'First Name', NULL, 0, '2024-10-01 06:54:30', '2024-10-01 06:54:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `field_models`
--

CREATE TABLE `field_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_options`
--

CREATE TABLE `field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `order` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_values`
--

CREATE TABLE `field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `field_valueable_type` varchar(255) NOT NULL,
  `field_valueable_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fileable_type` varchar(255) NOT NULL,
  `fileable_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL DEFAULT 'local',
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `subtotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `adjustments` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `amount_due` int(11) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `fully_paid_at` datetime DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_lines`
--

CREATE TABLE `invoice_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labelables`
--

CREATE TABLE `labelables` (
  `label_id` bigint(20) NOT NULL,
  `labelable_id` bigint(20) NOT NULL,
  `labelable_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labelables`
--

INSERT INTO `labelables` (`label_id`, `labelable_id`, `labelable_type`) VALUES
(2, 1, 'VentureDrake\\LaravelCrm\\Models\\Lead'),
(1, 2, 'VentureDrake\\LaravelCrm\\Models\\Client'),
(2, 3, 'VentureDrake\\LaravelCrm\\Models\\Client'),
(3, 4, 'VentureDrake\\LaravelCrm\\Models\\Client'),
(1, 1, 'VentureDrake\\LaravelCrm\\Models\\Quote'),
(2, 1, 'VentureDrake\\LaravelCrm\\Models\\Deal'),
(2, 5, 'VentureDrake\\LaravelCrm\\Models\\Client'),
(2, 3, 'VentureDrake\\LaravelCrm\\Models\\Organisation'),
(2, 2, 'VentureDrake\\LaravelCrm\\Models\\Person'),
(2, 3, 'VentureDrake\\LaravelCrm\\Models\\Person'),
(2, 2, 'VentureDrake\\LaravelCrm\\Models\\Lead'),
(2, 3, 'VentureDrake\\LaravelCrm\\Models\\Lead'),
(2, 2, 'VentureDrake\\LaravelCrm\\Models\\Deal'),
(3, 3, 'VentureDrake\\LaravelCrm\\Models\\Deal'),
(2, 2, 'VentureDrake\\LaravelCrm\\Models\\Quote'),
(2, 1, 'VentureDrake\\LaravelCrm\\Models\\Order');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `hex` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `external_id`, `team_id`, `name`, `hex`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '24655481-36d6-4c00-9610-ca49e2cbc95f', NULL, 'Hot', 'dc3545', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, '5aae6235-f30a-4b5e-9dff-890bb051615d', NULL, 'Cold', '007bff', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(3, '2cc7acbb-1c72-4a58-974c-d5ac74ad7d1e', NULL, 'Warm', 'ffc107', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `lead_status_id` smallint(5) UNSIGNED DEFAULT NULL,
  `lead_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qualified` tinyint(1) NOT NULL DEFAULT 0,
  `expected_close` datetime DEFAULT NULL,
  `converted_at` datetime DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `external_id`, `team_id`, `pipeline_id`, `pipeline_stage_id`, `person_id`, `organisation_id`, `client_id`, `title`, `description`, `lead_id`, `prefix`, `number`, `amount`, `currency`, `lead_status_id`, `lead_source_id`, `qualified`, `expected_close`, `converted_at`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `user_assigned_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2a60481b-32ca-4f62-9f8b-071b4bc9f00f', NULL, 1, 2, 1, 1, 1, 'Reliance Lead', 'This is the description', 'LD-1000', 'LD-', 1000, 10000, 'USD', 1, NULL, 0, NULL, NULL, 1, 1, NULL, NULL, 1, NULL, '2024-10-01 06:48:53', '2024-10-01 06:49:13', NULL),
(2, '871ae98e-e67b-4f4d-837d-96ffb982de91', NULL, 1, 1, 2, 4, 5, 'Gautam Adani Lead', NULL, 'LD-1001', 'LD-', 1001, 10000, 'INR', 1, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:30:10', '2024-10-01 08:30:10', NULL),
(3, '20fca480-86a3-43a4-b687-e948155579aa', NULL, 1, 4, NULL, 2, 4, 'Tata Capital Lead', NULL, 'LD-1002', 'LD-', 1002, 10000, 'INR', 1, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:30:44', '2024-10-01 08:30:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

CREATE TABLE `lead_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_statuses`
--

CREATE TABLE `lead_statuses` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `order` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_statuses`
--

INSERT INTO `lead_statuses` (`id`, `external_id`, `team_id`, `name`, `description`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '00771d5c-7590-4374-aaa3-5111a8a7112d', NULL, 'Lead In', NULL, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, '9e434ba2-2ad1-4540-9318-8f536b52dc84', NULL, 'Contacted', NULL, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'auth',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `ip_address`, `type`, `user_id`, `user_type`, `device_id`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'failed', 1, 'App\\Models\\User', 1, '2024-10-01 06:34:12', '2024-10-01 06:34:12'),
(2, '127.0.0.1', 'auth', 1, 'App\\Models\\User', 1, '2024-10-02 00:39:41', '2024-10-02 00:39:41'),
(3, '127.0.0.1', 'auth', 1, 'App\\Models\\User', 1, '2024-10-03 00:28:13', '2024-10-03 00:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `lunches`
--

CREATE TABLE `lunches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `finish_at` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `reminder_email` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_sms` tinyint(1) NOT NULL DEFAULT 0,
  `lunchable_type` varchar(255) DEFAULT NULL,
  `lunchable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `finish_at` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `reminder_email` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_sms` tinyint(1) NOT NULL DEFAULT 0,
  `meetingable_type` varchar(255) DEFAULT NULL,
  `meetingable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_19_045621_create_permission_tables', 1),
(6, '2023_01_19_045622_add_teams_fields', 1),
(7, '2023_01_19_045623_create_laravel_crm_tables', 1),
(8, '2023_01_19_045624_create_laravel_crm_settings_table', 1),
(9, '2023_01_19_045625_add_fields_to_roles_permissions_tables', 1),
(10, '2023_01_19_045626_add_label_editable_fields_to_laravel_crm_settings_table', 1),
(11, '2023_01_19_045627_add_team_id_to_laravel_crm_tables', 1),
(12, '2023_01_19_045628_create_laravel_crm_products_table', 1),
(13, '2023_01_19_045629_create_laravel_crm_product_categories_table', 1),
(14, '2023_01_19_045630_create_laravel_crm_product_prices_table', 1),
(15, '2023_01_19_045631_create_laravel_crm_product_variations_table', 1),
(16, '2023_01_19_045632_create_laravel_crm_deal_products_table', 1),
(17, '2023_01_19_045633_add_global_to_laravel_crm_settings_table', 1),
(18, '2023_01_19_045634_alter_fields_for_encryption_on_laravel_crm_tables', 1),
(19, '2023_01_19_045635_create_laravel_crm_address_types_table', 1),
(20, '2023_01_19_045636_alter_type_on_laravel_crm_phones_table', 1),
(21, '2023_01_19_045637_add_description_to_laravel_crm_labels_table', 1),
(22, '2023_01_19_045638_add_name_to_laravel_crm_addresses_table', 1),
(23, '2023_01_19_045639_create_laravel_crm_contacts_table', 1),
(24, '2023_01_19_045640_create_laravel_crm_contact_types_table', 1),
(25, '2023_01_19_045641_create_laravel_crm_contact_contact_type_table', 1),
(26, '2023_01_19_045642_create_audits_table', 1),
(27, '2023_01_19_045643_create_devices_table', 1),
(28, '2023_01_19_045644_create_logins_table', 1),
(29, '2023_01_19_045645_update_logins_and_devices_table_user_relation', 1),
(30, '2023_01_19_045646_create_laravel_crm_organisation_types_table', 1),
(31, '2023_01_19_045647_change_morph_col_names_on_laravel_crm_notes_table', 1),
(32, '2023_01_19_045648_add_related_note_to_laravel_crm_notes_table', 1),
(33, '2023_01_19_045649_add_noted_at_to_laravel_crm_notes_table', 1),
(34, '2023_01_19_045650_create_laravel_crm_quotes_table', 1),
(35, '2023_01_19_045651_create_laravel_crm_quote_products_table', 1),
(36, '2023_01_19_045652_create_laravel_crm_files_table', 1),
(37, '2023_01_19_045653_add_mime_to_laravel_crm_files_table', 1),
(38, '2023_01_19_045654_create_xero_tokens_table', 1),
(39, '2023_01_19_045655_create_laravel_crm_xero_items_table', 1),
(40, '2023_01_19_045656_create_laravel_crm_xero_contacts_table', 1),
(41, '2023_01_19_045657_create_laravel_crm_xero_people_table', 1),
(42, '2023_01_19_045658_add_reference_to_laravel_crm_quotes_table', 1),
(43, '2023_01_19_045659_create_laravel_crm_tasks_table', 1),
(44, '2023_01_19_045700_add_deleted_at_to_laravel_crm_activities_table', 1),
(45, '2023_01_19_045701_create_laravel_crm_timezones_table', 1),
(46, '2023_01_19_045702_add_team_id_to_xero_tokens_table', 1),
(47, '2023_01_19_045703_create_laravel_crm_orders_table', 1),
(48, '2023_01_19_045704_create_laravel_crm_order_products_table', 1),
(49, '2023_01_19_045705_create_laravel_crm_invoices_table', 1),
(50, '2023_01_19_045706_create_laravel_crm_invoice_lines_table', 1),
(51, '2023_01_19_045707_add_reference_to_laravel_crm_orders_table', 1),
(52, '2023_01_19_045708_create_laravel_crm_calls_table', 1),
(53, '2023_01_19_045709_create_laravel_crm_meetings_table', 1),
(54, '2023_01_19_045710_create_laravel_crm_lunches_table', 1),
(55, '2023_01_19_045711_add_location_to_laravel_crm_activities_table', 1),
(56, '2023_01_19_045712_add_prefix_to_laravel_crm_invoices_table', 1),
(57, '2023_03_02_130115_create_laravel_crm_usage_requests_table', 1),
(58, '2023_03_02_130116_add_label_type_to_laravel_crm_fields_table', 1),
(59, '2023_03_02_130117_create_laravel_crm_field_models_table', 1),
(60, '2023_03_02_130118_create_laravel_crm_field_groups_table', 1),
(61, '2023_03_02_130119_add_team_id_to_laravel_crm_usage_requests_table', 1),
(62, '2023_03_02_130120_alter_field_group_id_on_laravel_crm_fields_table', 1),
(63, '2023_03_02_130121_add_system_to_laravel_crm_fields_table', 1),
(64, '2023_03_02_130122_add_comments_to_laravel_crm_quote_products_table', 1),
(65, '2023_03_02_130123_add_comments_to_laravel_crm_order_products_table', 1),
(66, '2023_03_02_130124_create_laravel_crm_deliveries_table', 1),
(67, '2023_03_02_130125_create_laravel_crm_delivery_products_table', 1),
(68, '2023_03_02_130126_alter_url_on_laravel_crm_usage_requests_table', 1),
(69, '2023_03_12_124552_create_laravel_crm_clients_table', 1),
(70, '2023_03_12_124553_create_laravel_crm_xero_invoices_table', 1),
(71, '2023_04_12_071358_add_contact_to_laravel_crm_addresses_table', 1),
(72, '2023_04_12_071359_add_phone_to_laravel_crm_addresses_table', 1),
(73, '2023_04_12_071400_add_name_to_laravel_crm_clients_table', 1),
(74, '2023_04_12_071401_add_delivery_dates_to_laravel_crm_deliveries_table', 1),
(75, '2023_04_12_071402_add_client_to_laravel_crm_orders_table', 1),
(76, '2023_04_12_071403_add_client_to_laravel_crm_leads_table', 1),
(77, '2023_04_12_071404_add_client_to_laravel_crm_deals_table', 1),
(78, '2023_04_12_071405_add_client_to_laravel_crm_quotes_table', 1),
(79, '2023_06_01_143654_add_account_codes_to_laravel_crm_products_table', 1),
(80, '2023_06_01_143655_add_prefix_to_laravel_crm_quotes_table', 1),
(81, '2023_06_01_143656_add_prefix_to_laravel_crm_orders_table', 1),
(82, '2023_06_01_143657_add_quote_product_id_to_laravel_crm_order_products_table', 1),
(83, '2023_06_01_143658_add_quantity_to_laravel_crm_delivery_products_table', 1),
(84, '2023_08_25_011430_create_laravel_crm_tax_rates_table', 1),
(85, '2023_08_27_143807_add_order_product_id_to_laravel_crm_invoice_lines_table', 1),
(86, '2023_08_29_125346_add_prefix_to_laravel_crm_deliveries_table', 1),
(87, '2023_09_01_041940_alter_value_on_laravel_crm_field_values_table', 1),
(88, '2024_02_06_023322_add_comments_to_laravel_crm_invoice_lines_table', 1),
(89, '2024_02_06_023323_add_default_to_laravel_crm_tax_rates_table', 1),
(90, '2024_02_06_023324_create_laravel_crm_industries_table', 1),
(91, '2024_02_06_023325_add_extra_fields_to_laravel_crm_organisations_table', 1),
(92, '2024_02_27_123910_create_laravel_crm_purchase_orders_table', 1),
(93, '2024_02_27_123911_create_laravel_crm_purchase_order_lines_table', 1),
(94, '2024_03_03_114920_create_laravel_crm_xero_purchase_orders_table', 1),
(95, '2024_03_03_140736_add_tax_type_to_laravel_crm_tax_rates_table', 1),
(96, '2024_03_19_132433_add_barcode_to_laravel_crm_products_table', 1),
(97, '2024_03_19_132434_create_laravel_crm_field_options_table', 1),
(98, '2024_04_05_041015_alter_type_on_laravel_crm_fields_table', 1),
(99, '2024_04_05_041016_add_soft_delete_to_laravel_crm_field_values_table', 1),
(100, '2024_05_06_132605_add_terms_to_laravel_crm_purchase_orders_table', 1),
(101, '2024_05_06_132606_add_delivery_type_to_laravel_crm_purchase_orders_table', 1),
(102, '2024_08_11_042410_create_laravel_crm_pipelines_table', 1),
(103, '2024_08_11_042517_create_laravel_crm_pipeline_stage_probabilities_table', 1),
(104, '2024_08_11_042734_create_laravel_crm_pipeline_stages_table', 1),
(105, '2024_08_12_012439_add_pipeline_to_laravel_crm_models_table', 1),
(106, '2024_08_18_011021_add_user_to_laravel_crm_settings_table', 1),
(107, '2024_08_24_120800_add_prefix_to_laravel_crm_leads_table', 1),
(108, '2024_08_24_120806_add_prefix_to_laravel_crm_deals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `noteable_type` varchar(255) NOT NULL,
  `noteable_id` bigint(20) UNSIGNED NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `noted_at` datetime DEFAULT NULL,
  `related_note_id` int(11) DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `external_id`, `team_id`, `content`, `noteable_type`, `noteable_id`, `pinned`, `noted_at`, `related_note_id`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '854d2ccc-4693-4c31-b532-9a9370e77947', NULL, 'this is note data', 'VentureDrake\\LaravelCrm\\Models\\Lead', 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-10-01 07:49:29', '2024-10-01 07:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lead_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quote_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `subtotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `adjustments` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `external_id`, `team_id`, `pipeline_id`, `pipeline_stage_id`, `lead_id`, `deal_id`, `quote_id`, `client_id`, `person_id`, `organisation_id`, `description`, `reference`, `order_id`, `prefix`, `number`, `currency`, `subtotal`, `discount`, `tax`, `adjustments`, `total`, `terms`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `user_assigned_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '0d429f86-f575-4be6-a641-028307bc1e89', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 4, NULL, 'Gautam Adani', 'ORD-1000', 'ORD-', 1000, 'INR', 750000, 0, 72000, 0, 822000, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `comments` varchar(255) DEFAULT NULL,
  `quote_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `external_id`, `team_id`, `order_id`, `product_id`, `product_variation_id`, `price`, `quantity`, `tax_rate`, `tax_amount`, `amount`, `currency`, `comments`, `quote_product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a195ab01-5722-4a55-b87c-627d89abff31', NULL, 1, 1, NULL, 50000, 1, 18.00, 9000, 50000, 'INR', 'computer quotation', NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19', NULL),
(2, 'f6714b55-7ae1-4bc7-9fce-e13133e65ef3', NULL, 1, 2, NULL, 700000, 1, 9.00, 63000, 700000, 'INR', NULL, NULL, '2024-10-01 08:57:19', '2024-10-01 08:57:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organisation_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vat_number` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `year_founded` smallint(6) DEFAULT NULL,
  `timezone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `annual_revenue` int(11) DEFAULT NULL,
  `total_money_raised` int(11) DEFAULT NULL,
  `number_of_employees` smallint(6) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisations`
--

INSERT INTO `organisations` (`id`, `external_id`, `team_id`, `name`, `description`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `created_at`, `updated_at`, `deleted_at`, `organisation_type_id`, `industry_id`, `vat_number`, `domain`, `website_url`, `year_founded`, `timezone_id`, `annual_revenue`, `total_money_raised`, `number_of_employees`, `linkedin`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `tiktok`, `google`) VALUES
(1, '7245bedd-f6d5-48ad-852d-5e47cccafe5d', NULL, 'eyJpdiI6IjEzVjNxZDNESy9aLy9RdzRBeFRKR3c9PSIsInZhbHVlIjoicVBJcHFUR3Zsc3d6MXMwNkdIeXREeDVpK1JHNnY4ZDBsM3V5Wk5NVzk5cz0iLCJtYWMiOiI5N2VmMmI3YjMzMzk3ZDZhN2I4MmJmMTJmZTJjZTUzZGRlOWZhM2Y1YThhOTA2YzA3MDljNzdkNDU3ODJiZTg2IiwidGFnIjoiIn0=', 'This is the description', 1, NULL, NULL, NULL, 1, '2024-10-01 06:48:53', '2024-10-01 06:48:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '6a699d51-7541-4966-a85d-14cbc739f758', NULL, 'eyJpdiI6Ilk5enVVMVgwdlBSVnpQZmxwL1A5S3c9PSIsInZhbHVlIjoiOUNha0pyUkwvd1NKSThGMjlzcXFvRGVYaVFpTEN2Nm9zUStjMWNBdUdNbz0iLCJtYWMiOiJkYzhiNTFiZGEzNDRiMzIyMzRmZGIyMmM4ODAzMzM1YjRiZWUxOWE3M2QzNzQxZGMyNjY4NzFhOTMxOTA5NmUyIiwidGFnIjoiIn0=', NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 07:19:27', '2024-10-01 07:19:27', NULL, 4, NULL, '9652145896', NULL, NULL, NULL, 247, 5000000, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '5527bc09-7259-47fc-97ad-a0417cf70023', NULL, 'eyJpdiI6IkpMa1k2Z3FHV3dRSXdyMFdCeC9zRFE9PSIsInZhbHVlIjoiaURoeXVSY0JVRloxdTVQWkdBWTU1QXdSZStMTCt5WkhFOVRac0JWUEdKbz0iLCJtYWMiOiIzODFjMjQ3ZGFhYTQ2Njk0ZWZmMjM3ZDU5MTY2OGUzN2NjZDM1ODZlYmY3MGNmOTUxNWE4ODcxYmE0N2MxOWU2IiwidGFnIjoiIn0=', NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 08:25:26', '2024-10-01 08:25:26', NULL, 2, NULL, '8541256963', NULL, NULL, NULL, 247, 5000000, NULL, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '9a862e4b-5103-44f1-981c-9600d0fe44a8', NULL, 'eyJpdiI6InZBVVNic0RiMmtta29GMlJ2cml5UEE9PSIsInZhbHVlIjoiaTI5ZW1CNkhUUlJockVJSVNORlVRTk05WGkyRSttaUFRZjJuNG5ETkFaUT0iLCJtYWMiOiI4MzE2M2VlOWY1MDFhYzhiYzg2MTA5OTMxN2ZkYThkYjY3ZTY1YmFiMGFhOWZiY2JkYWNiNjk4ZjcxZjY5NzIwIiwidGFnIjoiIn0=', NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 08:30:10', '2024-10-01 08:30:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organisation_types`
--

CREATE TABLE `organisation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisation_types`
--

INSERT INTO `organisation_types` (`id`, `team_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Sole Trader', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, NULL, 'Partnership', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(3, NULL, 'Company', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(4, NULL, 'Trust', NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `maiden_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `description` text DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `external_id`, `team_id`, `title`, `first_name`, `middle_name`, `last_name`, `maiden_name`, `birthday`, `gender`, `description`, `organisation_id`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3d9584da-4558-4ecd-95e2-b38371b455a5', NULL, NULL, 'eyJpdiI6IlB4WWdkNGlSWGVLdndMNGdYKzdDekE9PSIsInZhbHVlIjoiZ0JFamtnekN3VlZCWWs1MzdFdUNSQT09IiwibWFjIjoiNTU5MDU2YWI5ZDZhZDc1MWMwNWU4NTk4ZTBjN2I2ODhlYTg0MDVlMTY2Mzc2NDhiNjQ5YmI4YmI0OGFhNWVjNSIsInRhZyI6IiJ9', NULL, 'eyJpdiI6IjRsY1FHdGxTdU9XS2o2SU9MdS9memc9PSIsInZhbHVlIjoiWk44VS90NUxrVmhENkkzL3ZVRkFtUT09IiwibWFjIjoiNGZjOThkZjJiNmMxNjg1ZGE3Mzk0ZmVlOTMyZGRmNWJjYjFkYTQ2Njg5NmY1ZTBkZjAxMTUzMjJlYzUwOTliOSIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 06:48:53', '2024-10-01 06:48:53', NULL),
(2, 'fadd65e4-05b7-46b0-9ac9-c2d07132da0a', NULL, 'eyJpdiI6IldFTjJ1QjRCdFhwVGdhVVgzOGhySWc9PSIsInZhbHVlIjoiM2QwVlNEckhjR0ptZHNnZDJiNk03QT09IiwibWFjIjoiNTlhY2YxODlmM2NkYjA4MWZkMWUwYjZhNjU0MTZiMTQyZWM0YjU3NmMwYjU0NDk1M2JiNTI3NjI1NGE1MDVkNSIsInRhZyI6IiJ9', 'eyJpdiI6IjM3bk56WkUxbmRHMEFaY0I0NHBOUWc9PSIsInZhbHVlIjoieFJqb2tCT0VIeVZRMVBkRGVDQlZKQT09IiwibWFjIjoiMmI3Nzg4MWIzMWU3ZmU5OTI4OGI4MjE4MGFjNzAyMmJlMjlkNDM1ZDEwYzAzZWYxMTkyZmUzZDk2NDk4YmJkNCIsInRhZyI6IiJ9', NULL, 'eyJpdiI6IjBOS1RqalVEanJWcTlVU0hzRGttMEE9PSIsInZhbHVlIjoiSy9mOUEvdlgvRmNIbU9HazkzbzE0dz09IiwibWFjIjoiYzI3MjUxM2IyODBjODE2ZGUxM2E4ZjAwMjAxYmZhMzIzN2RlYzdhZjc5YTc4NjJhZGFiYTFlMzMxNWNkZjY3MyIsInRhZyI6IiJ9', NULL, '2024-10-08', 'male', NULL, NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 08:27:11', '2024-10-01 08:27:11', NULL),
(3, '706c1ece-fdff-43c8-ace2-d9db47af11b5', NULL, 'eyJpdiI6IndXS0ZnQWZBR0lOOFdFS0JXaDB1bWc9PSIsInZhbHVlIjoid0tsOTZoMlJNbkJpQ1VzNm11UUdCdz09IiwibWFjIjoiOTAzMDc2YWJmZGY4ZTllMmVjMTY3MGQyMjcwNDg4MDZiMjU1NjcxYTFlNmNkZDYzOTlmNmU2NmVmYThlYTkyZCIsInRhZyI6IiJ9', 'eyJpdiI6ImVYUU4vcDlIUjZwNXhKcmdLdFJ2VkE9PSIsInZhbHVlIjoiVjl0L241SSs2SEhGT0ZQMVNyNStudz09IiwibWFjIjoiYjVlMTgyOTNiMTRmYTYyODY0MGQ1MjQyYzAzYzUyZmFkNmIzYjRhMzI2NDJjYjc3NzAwZTgwMGM4OTQwNDJhNCIsInRhZyI6IiJ9', NULL, 'eyJpdiI6IksrVHNOTUN0dXl3NnpxeWFxSWZYYWc9PSIsInZhbHVlIjoia3FmS2dQb2xGelNDUlhrRjk2Y3Vodz09IiwibWFjIjoiNjlkZGZmMDNhMThhYjczZWRlMjVjODQzMDA1ZTIwNTM3NDM0ZmM2MjVjYjQ0ZGY0NDljZDM0OWVhNDgzMTJkYyIsInRhZyI6IiJ9', NULL, '2024-10-10', 'male', NULL, NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 08:27:36', '2024-10-01 08:27:36', NULL),
(4, 'e25d9e8b-dc92-4fd4-ae66-882d778b05a3', NULL, NULL, 'eyJpdiI6InlGQmZxMjJteDc0T0RCTzcxQ2g3Vmc9PSIsInZhbHVlIjoieVJiK0wrb1N5NVZOZ0ZQTGdOM21VZz09IiwibWFjIjoiMzQ1YWU4YWRmZGI2YTdjMjhlM2JmMTk2NGM1OTAwNzkxNTljNDVjNzJjODRlOWY2ODE2MmQ0N2JmNTZhMDQ3NCIsInRhZyI6IiJ9', NULL, 'eyJpdiI6IkFVTzZmNzROQ216cTBodDlKeVFuMUE9PSIsInZhbHVlIjoiVzh4R3NuOTNKK0FHOTdiWE11STR3dz09IiwibWFjIjoiNTZkZjg4NzZhNDk0ZjVlMjk1YjFmMjBlM2JjMjAyNGJlNDM4MTlhMGJlYzVkNjQyNmU0ZmM2ZmJhY2M0MjI3MyIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2024-10-01 08:44:48', '2024-10-01 08:44:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crm_permission` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `description`, `crm_permission`, `created_at`, `updated_at`) VALUES
(1, 'create crm leads', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(2, 'view crm leads', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(3, 'edit crm leads', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(4, 'delete crm leads', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(5, 'create crm deals', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(6, 'view crm deals', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(7, 'edit crm deals', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(8, 'delete crm deals', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(9, 'create crm quotes', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(10, 'view crm quotes', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(11, 'edit crm quotes', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(12, 'delete crm quotes', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(13, 'create crm orders', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(14, 'view crm orders', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(15, 'edit crm orders', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(16, 'delete crm orders', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(17, 'create crm invoices', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(18, 'view crm invoices', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(19, 'edit crm invoices', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(20, 'delete crm invoices', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(21, 'create crm people', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(22, 'view crm people', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(23, 'edit crm people', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(24, 'delete crm people', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(25, 'create crm organisations', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(26, 'view crm organisations', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(27, 'edit crm organisations', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(28, 'delete crm organisations', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(29, 'create crm contacts', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(30, 'view crm contacts', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(31, 'edit crm contacts', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(32, 'delete crm contacts', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(33, 'create crm users', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(34, 'view crm users', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(35, 'edit crm users', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(36, 'delete crm users', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(37, 'create crm teams', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(38, 'view crm teams', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(39, 'edit crm teams', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(40, 'delete crm teams', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(41, 'view crm settings', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(42, 'edit crm settings', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(43, 'view crm updates', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(44, 'create crm roles', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(45, 'view crm roles', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(46, 'edit crm roles', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(47, 'delete crm roles', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(48, 'create crm permissions', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(49, 'view crm permissions', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(50, 'edit crm permissions', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(51, 'delete crm permissions', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(52, 'create crm products', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(53, 'view crm products', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(54, 'edit crm products', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(55, 'delete crm products', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(56, 'create crm product categories', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(57, 'view crm product categories', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(58, 'edit crm product categories', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(59, 'delete crm product categories', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(60, 'create crm product attributes', 'web', NULL, 1, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(61, 'view crm product attributes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(62, 'edit crm product attributes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(63, 'delete crm product attributes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(64, 'create crm tax rates', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(65, 'view crm tax rates', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(66, 'edit crm tax rates', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(67, 'delete crm tax rates', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(68, 'create crm labels', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(69, 'view crm labels', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(70, 'edit crm labels', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(71, 'delete crm labels', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(72, 'create crm fields', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(73, 'view crm fields', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(74, 'edit crm fields', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(75, 'delete crm fields', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(76, 'create crm integrations', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(77, 'view crm integrations', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(78, 'edit crm integrations', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(79, 'delete crm integrations', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(80, 'create crm activities', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(81, 'view crm activities', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(82, 'edit crm activities', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(83, 'delete crm activities', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(84, 'create crm tasks', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(85, 'view crm tasks', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(86, 'edit crm tasks', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(87, 'delete crm tasks', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(88, 'create crm notes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(89, 'view crm notes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(90, 'edit crm notes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(91, 'delete crm notes', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(92, 'create crm calls', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(93, 'view crm calls', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(94, 'edit crm calls', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(95, 'delete crm calls', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(96, 'create crm meetings', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(97, 'view crm meetings', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(98, 'edit crm meetings', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(99, 'delete crm meetings', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(100, 'create crm lunches', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(101, 'view crm lunches', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(102, 'edit crm lunches', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(103, 'delete crm lunches', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(104, 'create crm files', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(105, 'view crm files', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(106, 'edit crm files', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(107, 'delete crm files', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(108, 'create crm deliveries', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(109, 'view crm deliveries', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(110, 'edit crm deliveries', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(111, 'delete crm deliveries', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(112, 'create crm purchase orders', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(113, 'view crm purchase orders', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(114, 'edit crm purchase orders', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(115, 'delete crm purchase orders', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(116, 'create crm clients', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(117, 'view crm clients', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(118, 'edit crm clients', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(119, 'delete crm clients', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(120, 'create crm pipelines', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(121, 'view crm pipelines', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(122, 'edit crm pipelines', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(123, 'delete crm pipelines', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('work','home','mobile','fax','other') NOT NULL DEFAULT 'work',
  `phoneable_type` varchar(255) NOT NULL,
  `phoneable_id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `external_id`, `team_id`, `number`, `primary`, `type`, `phoneable_type`, `phoneable_id`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'c05b8331-e271-48fd-b348-b691c281da28', NULL, 'eyJpdiI6ImNlSi9pRE5Ka0wrd1ZSVmZjNG1NK2c9PSIsInZhbHVlIjoiRkluamVVVXdtbTRmSTYzK1U4QkpXNC9NaGNVanhxUU0zSDlmczdDUTBwcz0iLCJtYWMiOiI3MjNkZTdkMzFlY2Q3MzAzYjRiYjA0ODMxNzU5MzQxNTJiYmU3OGYyYWNhZjNjYThjNmNhNzQ4ZWM0MTRjNjBmIiwidGFnIjoiIn0=', 0, 'mobile', 'VentureDrake\\LaravelCrm\\Models\\Person', 1, 1, NULL, NULL, NULL, '2024-10-01 06:48:53', '2024-10-01 06:48:53', NULL),
(2, 'd8c65847-8832-4be8-a9d7-b695e4ba494e', NULL, 'eyJpdiI6InN2N3NzRHFTd2lyZmZ6d0d5bzlKb3c9PSIsInZhbHVlIjoid0lGbHZjK0hCckM1ZFBrUytpZlE3Z3craGpVK0lYbWwwRjZ2TTFwZXdIVT0iLCJtYWMiOiJjYWNjZTNlM2YyNGVlYWMyZWJlOWE0ZjM3MjY0ZWNlYzM5ZTViYTNkODk1NjMwNWY1ZGQxMWI4MzFhODU2MjViIiwidGFnIjoiIn0=', 0, 'mobile', 'App\\Models\\User', 2, 1, NULL, NULL, NULL, '2024-10-01 07:15:36', '2024-10-01 07:15:36', NULL),
(3, '2dc0707d-e910-4cd6-87d2-e05308a24f89', NULL, 'eyJpdiI6InZ6eUNXaFh1OU93N3NBVlpHZVV5d2c9PSIsInZhbHVlIjoiUForc1I4YVovZkljS25WcVZQb1F4Nmt3L1YxTkhpL29rTUIxeUlYMGxQdz0iLCJtYWMiOiI1M2JmYjQxYmY0MzdlZTljZWIyYTU5ZWU3YzY3ZThhNTk0MThlNGI5M2NiMjJjZTNmMjRhYTI1Yjc0YWMzZDM2IiwidGFnIjoiIn0=', 0, 'mobile', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 2, 1, NULL, NULL, NULL, '2024-10-01 07:19:27', '2024-10-01 07:19:27', NULL),
(4, '3c3921c4-ca5a-4382-bd55-c0735a17755c', NULL, 'eyJpdiI6IitCY3dqTG5FbC9iZ2lvTE0xcDdKMXc9PSIsInZhbHVlIjoiL09wQ05jbkF6UTFWTk1kc1NCTXVCbVZLY0ZITjErTkRDSTMrZi9QS2pGTT0iLCJtYWMiOiI3OTAxN2VjZDAzMTQyYjI5NzI0NGI1ZjFkMWI0OWQ5OWJjMTI3YTFiZDc5MWM1NDBhNWU2MTFhYmQ1N2QyMDFhIiwidGFnIjoiIn0=', 0, 'home', 'VentureDrake\\LaravelCrm\\Models\\Organisation', 3, 1, NULL, NULL, NULL, '2024-10-01 08:25:26', '2024-10-01 08:25:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pipelines`
--

CREATE TABLE `pipelines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipelines`
--

INSERT INTO `pipelines` (`id`, `external_id`, `team_id`, `name`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'f168c4f7-9527-4642-b932-a00cf8241fb1', NULL, 'Lead Pipeline', 'VentureDrake\\LaravelCrm\\Models\\Lead', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, 'aeb7624e-c296-47aa-9658-39eb2c40e189', NULL, 'Deal Pipeline', 'VentureDrake\\LaravelCrm\\Models\\Deal', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(3, '40e50122-8cb8-44c9-8d89-bf56450b88fe', NULL, 'Quote Pipeline', 'VentureDrake\\LaravelCrm\\Models\\Quote', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(4, '22ab34b9-8b69-4486-9496-9b535ad0d9a5', NULL, 'Order Pipeline', 'VentureDrake\\LaravelCrm\\Models\\Order', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(5, 'e5471251-fb9e-455e-8e47-bedc886f216d', NULL, 'Invoice Pipeline', 'VentureDrake\\LaravelCrm\\Models\\Invoice', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(6, '136a2f6f-912e-4cfd-99c1-d7d16708234c', NULL, 'Delivery Pipeline', 'VentureDrake\\LaravelCrm\\Models\\Delivery', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(7, '7613b2ed-d015-4a58-8c38-03e2de829359', NULL, 'Purchase Order Pipeline', 'VentureDrake\\LaravelCrm\\Models\\PurchaseOrder', '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pipeline_stages`
--

CREATE TABLE `pipeline_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED NOT NULL,
  `pipeline_stage_probability_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipeline_stages`
--

INSERT INTO `pipeline_stages` (`id`, `external_id`, `team_id`, `name`, `description`, `pipeline_id`, `pipeline_stage_probability_id`, `order`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '7e9b1cf1-28a0-4255-b4ac-476199bc440c', NULL, 'New', NULL, 1, 1, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, '41dd0f72-e392-4974-bc2a-fd9a47d232cb', NULL, 'Appointment Scheduled', NULL, 1, 3, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(3, 'd21a4ad6-bc57-4980-8f5f-ea10f561dc1f', NULL, 'Qualified To Buy', NULL, 1, 5, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(4, 'c8862cdb-91e1-4721-9646-d14faba3abfa', NULL, 'Presentation Scheduled', NULL, 1, 7, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(5, 'cb6c2866-5070-41ab-91d9-41cb2ea0a89f', NULL, 'Decision Maker Bought-In', NULL, 1, 9, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(6, '4b814dc7-7a3d-475d-b0b8-7e3928ba2f1d', NULL, 'Contract Sent', NULL, 1, 10, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(7, 'd15a46c5-3683-4d7c-b4b6-ce6bef5de8b8', NULL, 'Closed Won', NULL, 1, 11, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(8, 'd8ce1c00-c48b-4dc5-98b4-728e075e5c65', NULL, 'Closed Lost', NULL, 1, 12, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(9, '6dc55ee3-8438-484c-ac33-cba7fdc2ba73', NULL, 'Draft', NULL, 2, 1, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(10, '8af39632-cbb2-4acd-8974-18b273de002e', NULL, 'Pending', NULL, 2, 9, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(11, '7d29745e-7185-433e-8f7a-5e3981ef0c9d', NULL, 'Closed Won', NULL, 2, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(12, '48a15e23-2202-4669-b629-031f9f9849ff', NULL, 'Closed Lost', NULL, 2, 12, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(13, '8a39cc0f-5841-4277-abbc-b3eb14ee9e07', NULL, 'Draft', NULL, 3, 1, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(14, '27c515bb-9c72-415d-b42d-7505372e2373', NULL, 'Sent', NULL, 3, 9, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(15, '5eb846a4-e46c-4d5b-ba89-c4ec6627b1e6', NULL, 'Accepted', NULL, 3, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(16, '9e25f64e-cacb-4ff3-b704-6f50d1466033', NULL, 'Rejected', NULL, 3, 12, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(17, '74b727b3-36e6-43be-bdfb-0e047ee1900d', NULL, 'Ordered', NULL, 3, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(18, '6dbc9b0f-7a4e-45d1-9bd8-2f59f90a30ae', NULL, 'Draft', NULL, 4, 1, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(19, '9adaf786-c80d-4ed6-92fa-8445be259a56', NULL, 'Open', NULL, 4, 9, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(20, '8389b12c-f548-4116-9513-e3a742d11fdb', NULL, 'Invoiced', NULL, 4, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(21, '60f7d74c-7bcd-40f3-a410-da285c53be49', NULL, 'Delivered', NULL, 4, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(22, 'c6838ad8-02e2-42d4-ac08-5d50e4068ba4', NULL, 'Completed', NULL, 4, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(23, '01bc994d-069b-4433-8219-21f1aa14244e', NULL, 'Draft', NULL, 5, 1, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(24, 'e2e377b5-d198-4c29-9f11-45f480443b21', NULL, 'Awaiting Approval', NULL, 5, 5, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(25, '853e26e9-605c-45c5-8e55-b0a3b9b027e5', NULL, 'Awaiting Payment', NULL, 5, 9, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(26, 'b5f57cf7-97f2-434f-ada8-9d4f5dde64da', NULL, 'Paid', NULL, 5, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(27, '8ef3346d-fbd2-49db-88a7-803257a57f9c', NULL, 'Draft', NULL, 6, 1, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(28, '9f15b885-09cd-4b90-ae94-3a1e9cc188c7', NULL, 'Packed', NULL, 6, 9, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(29, '75a23c62-697d-4c62-8d93-5666c3392ea0', NULL, 'Sent', NULL, 6, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(30, 'c8d74494-3063-4fe0-9e8d-ff6d1482d7c7', NULL, 'Delivered', NULL, 6, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(31, 'f20b22e8-492b-49c1-bf84-7aec5536bc64', NULL, 'Draft', NULL, 7, 1, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(32, '4086482b-fa43-4b0e-97a0-ea48ae875f30', NULL, 'Awaiting Approval', NULL, 7, 5, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(33, '3e93a5a4-5cb2-416a-8d7c-876c1fa7187a', NULL, 'Approved', NULL, 7, 9, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL),
(34, 'fe696b97-a536-43f6-b0f3-6ab0bd4d8d3a', NULL, 'Paid', NULL, 7, 11, 0, NULL, '2024-10-01 06:32:53', '2024-10-01 06:32:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pipeline_stage_probabilities`
--

CREATE TABLE `pipeline_stage_probabilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `percent` tinyint(3) UNSIGNED NOT NULL,
  `limit` tinyint(4) DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0,
  `archived_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipeline_stage_probabilities`
--

INSERT INTO `pipeline_stage_probabilities` (`id`, `external_id`, `team_id`, `name`, `percent`, `limit`, `archive`, `archived_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2170de95-5935-4bde-bb96-7d22e41caa97', NULL, 'New', 1, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(2, 'e810472a-b01a-451b-a920-58b3674e47f8', NULL, '10%', 10, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(3, '7fb711e7-28ea-45f0-bf40-9c720885f2de', NULL, '20%', 20, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(4, 'cd9ab30f-916d-48ce-8699-491fa1166655', NULL, '30%', 30, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(5, 'b63256ee-e204-4625-82d1-a4c3dcb488bb', NULL, '40%', 40, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(6, '52c59d30-d075-4ee9-bdcd-58b6e0b53568', NULL, '50%', 50, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(7, '82539825-644d-4bc6-93ff-847c8136a8dd', NULL, '60%', 60, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(8, '709b93c9-6e43-4eb7-9ffc-0f96b6ff4e72', NULL, '70%', 70, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(9, 'fee94359-8dab-486a-a5fd-3293c6c42844', NULL, '80%', 80, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(10, '0dedbe40-5cb1-47d5-a2f8-11fe55d07631', NULL, '90%', 90, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(11, 'd3b2cdf2-c53e-446b-8f2e-0cc19b87eb86', NULL, 'Won', 100, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL),
(12, 'ca010a55-f12f-4aa4-8af0-931610aab4e3', NULL, 'Lost', 0, NULL, 0, NULL, '2024-10-01 06:32:52', '2024-10-01 06:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `sales_account` varchar(255) DEFAULT NULL,
  `purchase_account` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL,
  `product_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_rate_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `external_id`, `team_id`, `name`, `code`, `barcode`, `sales_account`, `purchase_account`, `unit`, `tax_rate`, `product_category_id`, `description`, `active`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `created_at`, `updated_at`, `deleted_at`, `tax_rate_id`) VALUES
(1, '98b816f1-8830-4766-a418-1bae49e9adde', NULL, 'Computers', '8512745', '963258741', '52000', '50000', '50', 18.00, 2, NULL, 1, 1, NULL, NULL, NULL, 1, '2024-10-01 07:11:24', '2024-10-01 07:11:24', NULL, NULL),
(2, 'f1b7c1fa-6b4c-44bc-982e-a669ebb7605a', NULL, 'Mobiles', '8541275', '9632587412', '10000', '100000', '1', 9.00, 2, 'This is mobile data', 1, 1, NULL, NULL, NULL, 1, '2024-10-01 08:21:59', '2024-10-01 08:21:59', NULL, 2),
(3, 'e71870ea-0bbe-4127-9009-10c83c5adb52', NULL, 'Laptop', '4125852', '21132512542', '800000', '800000', '1', 9.00, 2, 'This is laptop deal', 1, 1, NULL, NULL, NULL, 1, '2024-10-01 08:23:04', '2024-10-01 08:23:04', NULL, 3),
(4, 'ecddc106-d307-4eb8-b788-3882c1815fac', NULL, 'Rice', '8512478596', '96521475', '100000', '100000', '1', 18.00, 1, NULL, 1, 1, NULL, NULL, NULL, 1, '2024-10-01 08:23:41', '2024-10-01 08:23:41', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `external_id`, `team_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd8b56ad9-51bb-4edc-823f-ae0f418540fd', NULL, 'Grocery', 'Grocery Product', '2024-10-01 07:09:30', '2024-10-01 07:09:30', NULL),
(2, 'c62d6802-942c-46c4-95e0-f8c2c08d76ba', NULL, 'Electronic', 'Electronic Products', '2024-10-01 07:09:57', '2024-10-01 07:09:57', NULL),
(3, '8b2f234f-d4a8-482b-9b67-d3db371f075a', NULL, 'Oil', 'Oil Products', '2024-10-01 07:10:13', '2024-10-01 07:10:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `cost_per_unit` int(11) DEFAULT NULL,
  `direct_cost` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `external_id`, `team_id`, `product_id`, `product_variation_id`, `unit_price`, `cost_per_unit`, `direct_cost`, `currency`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ce50ba0f-98a5-4524-ba55-2adf55232285', NULL, 1, NULL, 50000, NULL, NULL, 'INR', '2024-10-01 07:11:24', '2024-10-01 07:11:24', NULL),
(2, 'f0455d95-c7c1-446d-a06b-5c7ebbb9a818', NULL, 2, NULL, 700000, NULL, NULL, 'INR', '2024-10-01 08:21:59', '2024-10-01 08:21:59', NULL),
(3, '71459382-b7f0-4ce6-aeb1-4740a37715cd', NULL, 3, NULL, 1500000, NULL, NULL, 'INR', '2024-10-01 08:23:04', '2024-10-01 08:23:04', NULL),
(4, '406554db-f6ae-418c-ab6f-8c668cdff663', NULL, 4, NULL, 5000, NULL, NULL, 'INR', '2024-10-01 08:23:41', '2024-10-01 08:23:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `purchase_order_id` varchar(255) NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `subtotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `adjustments` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `delivery_type` enum('deliver','pickup') NOT NULL DEFAULT 'deliver',
  `delivery_instructions` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pipeline_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lead_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `quote_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `issue_at` datetime DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `subtotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `adjustments` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `external_id`, `team_id`, `pipeline_id`, `pipeline_stage_id`, `lead_id`, `deal_id`, `person_id`, `organisation_id`, `client_id`, `title`, `description`, `reference`, `quote_id`, `prefix`, `number`, `issue_at`, `expire_at`, `currency`, `subtotal`, `discount`, `tax`, `adjustments`, `total`, `terms`, `accepted_at`, `rejected_at`, `user_created_id`, `user_updated_id`, `user_deleted_id`, `user_restored_id`, `user_owner_id`, `user_assigned_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'f7da0496-f91f-429d-97a5-9ea60830dd50', NULL, 3, 13, NULL, NULL, 1, 1, 2, 'Mukesh Ambani Quote', 'This is reliance quote', 'Gautam Adani', 'QU-1000', 'QU-', 1000, '2024-10-02 13:34:09', '2024-10-15 13:34:09', 'INR', 550000, 0, 99000, 0, 649000, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09', NULL),
(2, '8599e220-b0c2-4535-be82-63d47e290ee5', NULL, 3, 15, NULL, NULL, 1, 1, 2, 'Mukesh Ambani Quote', 'this is ambani quote', 'Tata', 'QU-1001', 'QU-', 1001, '2024-10-16 14:19:01', '2024-10-17 14:19:01', 'INR', 5900000, 0, 531000, 0, 6431000, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-10-01 08:49:01', '2024-10-01 08:49:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_products`
--

CREATE TABLE `quote_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quote_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL,
  `tax_amount` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quote_products`
--

INSERT INTO `quote_products` (`id`, `external_id`, `team_id`, `quote_id`, `product_id`, `product_variation_id`, `price`, `quantity`, `tax_rate`, `tax_amount`, `amount`, `currency`, `comments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9bc3d389-a598-4c5b-928b-b656255ea2f4', NULL, 1, 1, NULL, 50000, 1, 18.00, 9000, 50000, 'INR', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09', NULL),
(2, 'a7d250e7-539d-4724-a85a-4310b175aa4a', NULL, 1, 1, NULL, 50000, 10, 18.00, 90000, 500000, 'INR', NULL, '2024-10-01 08:04:09', '2024-10-01 08:04:09', NULL),
(3, 'ab9b9d1a-a17a-4a33-aa25-054683c4ba42', NULL, 2, 2, NULL, 700000, 2, 9.00, 126000, 1400000, 'INR', 'mobile quotation', '2024-10-01 08:49:01', '2024-10-01 08:49:01', NULL),
(4, 'a66d71b2-f5bc-4cef-8553-90c9e377c4db', NULL, 2, 3, NULL, 1500000, 3, 9.00, 405000, 4500000, 'INR', 'laptop quotes', '2024-10-01 08:49:01', '2024-10-01 08:49:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crm_role` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `description`, `crm_role`, `created_at`, `updated_at`) VALUES
(1, 'Owner', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(2, 'Admin', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(3, 'Manager', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(4, 'Employee', 'web', NULL, 1, '2024-10-01 06:32:54', '2024-10-01 06:32:54'),
(5, 'Developer', 'web', 'This is Application Developer Role', 1, '2024-10-01 07:14:12', '2024-10-01 07:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(80, 3),
(80, 4),
(81, 1),
(81, 2),
(81, 3),
(81, 4),
(82, 1),
(82, 2),
(82, 3),
(82, 4),
(83, 1),
(83, 2),
(83, 3),
(83, 4),
(84, 1),
(84, 2),
(84, 3),
(84, 4),
(85, 1),
(85, 2),
(85, 3),
(85, 4),
(86, 1),
(86, 2),
(86, 3),
(86, 4),
(87, 1),
(87, 2),
(87, 3),
(87, 4),
(88, 1),
(88, 2),
(88, 3),
(88, 4),
(89, 1),
(89, 2),
(89, 3),
(89, 4),
(90, 1),
(90, 2),
(90, 3),
(90, 4),
(91, 1),
(91, 2),
(91, 3),
(91, 4),
(92, 1),
(92, 2),
(92, 3),
(92, 4),
(93, 1),
(93, 2),
(93, 3),
(93, 4),
(94, 1),
(94, 2),
(94, 3),
(94, 4),
(95, 1),
(95, 2),
(95, 3),
(95, 4),
(96, 1),
(96, 2),
(96, 3),
(96, 4),
(97, 1),
(97, 2),
(97, 3),
(97, 4),
(98, 1),
(98, 2),
(98, 3),
(98, 4),
(99, 1),
(99, 2),
(99, 3),
(99, 4),
(100, 1),
(100, 2),
(100, 3),
(100, 4),
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(102, 1),
(102, 2),
(102, 3),
(102, 4),
(103, 1),
(103, 2),
(103, 3),
(103, 4),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(105, 1),
(105, 2),
(105, 3),
(105, 4),
(106, 1),
(106, 2),
(106, 3),
(106, 4),
(107, 1),
(107, 2),
(107, 3),
(107, 4),
(108, 1),
(108, 2),
(108, 3),
(108, 4),
(109, 1),
(109, 2),
(109, 3),
(109, 4),
(110, 1),
(110, 2),
(110, 3),
(110, 4),
(111, 1),
(111, 2),
(111, 3),
(111, 4),
(112, 1),
(112, 2),
(112, 3),
(112, 4),
(113, 1),
(113, 2),
(113, 3),
(113, 4),
(114, 1),
(114, 2),
(114, 3),
(114, 4),
(115, 1),
(115, 2),
(115, 3),
(115, 4),
(116, 1),
(116, 2),
(116, 3),
(116, 4),
(117, 1),
(117, 2),
(117, 3),
(117, 4),
(118, 1),
(118, 2),
(118, 3),
(118, 4),
(119, 1),
(119, 2),
(119, 3),
(119, 4),
(120, 1),
(120, 2),
(120, 3),
(120, 4),
(121, 1),
(121, 2),
(121, 3),
(121, 4),
(122, 1),
(122, 2),
(122, 3),
(122, 4),
(123, 1),
(123, 2),
(123, 3),
(123, 4);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `team_id`, `user_id`, `global`, `name`, `label`, `value`, `editable`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'db_seeded_labels', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(2, NULL, NULL, 1, 'db_seeded_lead_statuses', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(3, NULL, NULL, 1, 'db_seeded_organisation_types', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(4, NULL, NULL, 1, 'db_seeded_address_types', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(5, NULL, NULL, 1, 'db_seeded_contact_types', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(6, NULL, NULL, 1, 'db_seeded_pipeline_probabilities', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(7, NULL, NULL, 1, 'db_seeded_pipelines', NULL, '1', 0, '2024-10-01 06:32:52', '2024-10-01 06:32:52'),
(8, NULL, NULL, 1, 'db_seeded_pipelines_stages', NULL, '1', 0, '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(9, NULL, NULL, 1, 'app_name', NULL, 'Laravel', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(10, NULL, NULL, 1, 'app_env', NULL, 'local', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(11, NULL, NULL, 1, 'app_url', NULL, 'http://laravelcrm.test', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(12, NULL, NULL, 1, 'version', NULL, '1.2.2', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:22'),
(13, NULL, NULL, 0, 'team', NULL, 'related', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(14, NULL, NULL, 0, 'organisation_name', NULL, 'Laravel', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(15, NULL, NULL, 0, 'currency', NULL, 'INR', 0, '2024-10-01 06:34:20', '2024-10-01 06:53:38'),
(16, NULL, NULL, 0, 'country', NULL, 'India', 0, '2024-10-01 06:34:20', '2024-10-01 06:53:38'),
(17, NULL, NULL, 0, 'language', NULL, 'english', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(18, NULL, NULL, 0, 'timezone', NULL, 'Asia/Kolkata', 0, '2024-10-01 06:34:20', '2024-10-01 06:53:38'),
(19, NULL, NULL, 0, 'date_format', NULL, 'F j, Y', 0, '2024-10-01 06:34:20', '2024-10-01 06:53:38'),
(20, NULL, NULL, 0, 'time_format', NULL, 'g:i A', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(21, NULL, NULL, 0, 'tax_name', NULL, 'GST', 0, '2024-10-01 06:34:20', '2024-10-01 06:53:38'),
(22, NULL, NULL, 0, 'tax_rate', NULL, '18', 0, '2024-10-01 06:34:20', '2024-10-01 06:53:38'),
(23, NULL, NULL, 0, 'lead_prefix', NULL, 'LD-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(24, NULL, NULL, 0, 'deal_prefix', NULL, 'DL-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(25, NULL, NULL, 0, 'quote_prefix', NULL, 'QU-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(26, NULL, NULL, 0, 'order_prefix', NULL, 'ORD-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(27, NULL, NULL, 0, 'invoice_prefix', NULL, 'INV-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(28, NULL, NULL, 0, 'delivery_prefix', NULL, 'DEL-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(29, NULL, NULL, 0, 'purchase_order_prefix', NULL, 'PO-', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(30, NULL, NULL, 0, 'dynamic_products', NULL, '1', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(31, NULL, NULL, 0, 'show_related_activity', NULL, '0', 0, '2024-10-01 06:34:20', '2024-10-01 06:34:20'),
(39, NULL, NULL, 1, 'install_id', NULL, '65f3932a-e93c-430f-964c-cb7a064c81e0', 0, '2024-10-01 06:34:22', '2024-10-01 06:34:22'),
(40, NULL, NULL, 1, 'version_latest', NULL, '1.2.2', 0, '2024-10-01 06:34:22', '2024-10-01 06:34:22'),
(41, NULL, 1, 0, 'view_leads', NULL, 'list', 0, '2024-10-01 06:47:35', '2024-10-01 08:31:27'),
(42, NULL, 1, 0, 'view_deals', NULL, 'list', 0, '2024-10-01 06:51:44', '2024-10-01 06:51:44'),
(43, NULL, 1, 0, 'view_quotes', NULL, 'list', 0, '2024-10-01 06:51:52', '2024-10-01 06:51:57'),
(44, NULL, NULL, 0, 'vat_number', NULL, '12345', 0, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(45, NULL, NULL, 1, 'db_update_0180', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(46, NULL, NULL, 1, 'db_update_0181', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(47, NULL, NULL, 1, 'db_update_0191', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(48, NULL, NULL, 1, 'db_update_0193', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(49, NULL, NULL, 1, 'db_update_0194', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(50, NULL, NULL, 1, 'db_update_0199', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09'),
(51, NULL, NULL, 1, 'db_update_1200', NULL, '0', 0, '2024-10-03 00:44:09', '2024-10-03 00:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `reminder_email` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_sms` tinyint(1) NOT NULL DEFAULT 0,
  `taskable_type` varchar(255) DEFAULT NULL,
  `taskable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_restored_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `rate` decimal(8,2) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `tax_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `team_id`, `name`, `description`, `rate`, `default`, `tax_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'GST', '18 % Gst', 18.00, 0, NULL, '2024-10-01 07:11:58', '2024-10-01 07:12:52', NULL),
(2, NULL, 'SGST', 'SGST rate is 9 %', 9.00, 0, NULL, '2024-10-01 07:12:20', '2024-10-01 07:12:20', NULL),
(3, NULL, 'CGST', 'CGST rate', 9.00, 0, NULL, '2024-10-01 07:12:40', '2024-10-01 07:13:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `offset` varchar(255) NOT NULL,
  `diff_from_gtm` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `offset`, `diff_from_gtm`, `created_at`, `updated_at`) VALUES
(1, 'Africa/Abidjan', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(2, 'Africa/Accra', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(3, 'Africa/Addis_Ababa', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(4, 'Africa/Algiers', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(5, 'Africa/Asmara', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(6, 'Africa/Bamako', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(7, 'Africa/Bangui', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(8, 'Africa/Banjul', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(9, 'Africa/Bissau', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(10, 'Africa/Blantyre', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(11, 'Africa/Brazzaville', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(12, 'Africa/Bujumbura', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(13, 'Africa/Cairo', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(14, 'Africa/Casablanca', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(15, 'Africa/Ceuta', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(16, 'Africa/Conakry', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(17, 'Africa/Dakar', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(18, 'Africa/Dar_es_Salaam', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(19, 'Africa/Djibouti', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(20, 'Africa/Douala', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(21, 'Africa/El_Aaiun', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(22, 'Africa/Freetown', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(23, 'Africa/Gaborone', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(24, 'Africa/Harare', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(25, 'Africa/Johannesburg', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(26, 'Africa/Juba', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(27, 'Africa/Kampala', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(28, 'Africa/Khartoum', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(29, 'Africa/Kigali', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(30, 'Africa/Kinshasa', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(31, 'Africa/Lagos', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(32, 'Africa/Libreville', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(33, 'Africa/Lome', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(34, 'Africa/Luanda', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(35, 'Africa/Lubumbashi', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(36, 'Africa/Lusaka', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(37, 'Africa/Malabo', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(38, 'Africa/Maputo', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(39, 'Africa/Maseru', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(40, 'Africa/Mbabane', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(41, 'Africa/Mogadishu', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(42, 'Africa/Monrovia', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(43, 'Africa/Nairobi', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(44, 'Africa/Ndjamena', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(45, 'Africa/Niamey', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(46, 'Africa/Nouakchott', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(47, 'Africa/Ouagadougou', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(48, 'Africa/Porto-Novo', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(49, 'Africa/Sao_Tome', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(50, 'Africa/Tripoli', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(51, 'Africa/Tunis', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(52, 'Africa/Windhoek', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(53, 'America/Adak', '-09:00', 'UTC/GMT -09:00', '2024-09-30 21:32:53', '2024-09-30 21:32:53'),
(54, 'America/Anchorage', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(55, 'America/Anguilla', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(56, 'America/Antigua', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(57, 'America/Araguaina', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(58, 'America/Argentina/Buenos_Aires', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(59, 'America/Argentina/Catamarca', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(60, 'America/Argentina/Cordoba', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(61, 'America/Argentina/Jujuy', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(62, 'America/Argentina/La_Rioja', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(63, 'America/Argentina/Mendoza', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(64, 'America/Argentina/Rio_Gallegos', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(65, 'America/Argentina/Salta', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(66, 'America/Argentina/San_Juan', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(67, 'America/Argentina/San_Luis', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(68, 'America/Argentina/Tucuman', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(69, 'America/Argentina/Ushuaia', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(70, 'America/Aruba', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(71, 'America/Asuncion', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(72, 'America/Atikokan', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(73, 'America/Bahia', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(74, 'America/Bahia_Banderas', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(75, 'America/Barbados', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(76, 'America/Belem', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(77, 'America/Belize', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(78, 'America/Blanc-Sablon', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(79, 'America/Boa_Vista', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(80, 'America/Bogota', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(81, 'America/Boise', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(82, 'America/Cambridge_Bay', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(83, 'America/Campo_Grande', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(84, 'America/Cancun', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(85, 'America/Caracas', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(86, 'America/Cayenne', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(87, 'America/Cayman', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(88, 'America/Chicago', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(89, 'America/Chihuahua', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(90, 'America/Ciudad_Juarez', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(91, 'America/Costa_Rica', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(92, 'America/Creston', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(93, 'America/Cuiaba', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(94, 'America/Curacao', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(95, 'America/Danmarkshavn', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(96, 'America/Dawson', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(97, 'America/Dawson_Creek', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(98, 'America/Denver', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(99, 'America/Detroit', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(100, 'America/Dominica', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(101, 'America/Edmonton', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(102, 'America/Eirunepe', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(103, 'America/El_Salvador', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(104, 'America/Fort_Nelson', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(105, 'America/Fortaleza', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(106, 'America/Glace_Bay', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(107, 'America/Goose_Bay', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(108, 'America/Grand_Turk', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(109, 'America/Grenada', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(110, 'America/Guadeloupe', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(111, 'America/Guatemala', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(112, 'America/Guayaquil', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(113, 'America/Guyana', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(114, 'America/Halifax', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(115, 'America/Havana', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(116, 'America/Hermosillo', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(117, 'America/Indiana/Indianapolis', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(118, 'America/Indiana/Knox', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(119, 'America/Indiana/Marengo', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(120, 'America/Indiana/Petersburg', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(121, 'America/Indiana/Tell_City', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(122, 'America/Indiana/Vevay', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(123, 'America/Indiana/Vincennes', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(124, 'America/Indiana/Winamac', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(125, 'America/Inuvik', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(126, 'America/Iqaluit', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(127, 'America/Jamaica', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(128, 'America/Juneau', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(129, 'America/Kentucky/Louisville', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(130, 'America/Kentucky/Monticello', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(131, 'America/Kralendijk', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(132, 'America/La_Paz', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(133, 'America/Lima', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(134, 'America/Los_Angeles', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(135, 'America/Lower_Princes', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(136, 'America/Maceio', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(137, 'America/Managua', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(138, 'America/Manaus', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(139, 'America/Marigot', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(140, 'America/Martinique', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(141, 'America/Matamoros', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(142, 'America/Mazatlan', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(143, 'America/Menominee', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(144, 'America/Merida', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(145, 'America/Metlakatla', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(146, 'America/Mexico_City', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(147, 'America/Miquelon', '-02:00', 'UTC/GMT -02:00', '2024-10-01 04:32:53', '2024-10-01 04:32:53'),
(148, 'America/Moncton', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(149, 'America/Monterrey', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(150, 'America/Montevideo', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(151, 'America/Montserrat', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(152, 'America/Nassau', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(153, 'America/New_York', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(154, 'America/Nome', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(155, 'America/Noronha', '-02:00', 'UTC/GMT -02:00', '2024-10-01 04:32:53', '2024-10-01 04:32:53'),
(156, 'America/North_Dakota/Beulah', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(157, 'America/North_Dakota/Center', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(158, 'America/North_Dakota/New_Salem', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(159, 'America/Nuuk', '-01:00', 'UTC/GMT -01:00', '2024-10-01 05:32:53', '2024-10-01 05:32:53'),
(160, 'America/Ojinaga', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(161, 'America/Panama', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(162, 'America/Paramaribo', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(163, 'America/Phoenix', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(164, 'America/Port-au-Prince', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(165, 'America/Port_of_Spain', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(166, 'America/Porto_Velho', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(167, 'America/Puerto_Rico', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(168, 'America/Punta_Arenas', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(169, 'America/Rankin_Inlet', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(170, 'America/Recife', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(171, 'America/Regina', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(172, 'America/Resolute', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(173, 'America/Rio_Branco', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(174, 'America/Santarem', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(175, 'America/Santiago', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(176, 'America/Santo_Domingo', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(177, 'America/Sao_Paulo', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(178, 'America/Scoresbysund', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(179, 'America/Sitka', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(180, 'America/St_Barthelemy', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(181, 'America/St_Johns', '-02:30', 'UTC/GMT -02:30', '2024-10-01 04:02:53', '2024-10-01 04:02:53'),
(182, 'America/St_Kitts', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(183, 'America/St_Lucia', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(184, 'America/St_Thomas', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(185, 'America/St_Vincent', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(186, 'America/Swift_Current', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(187, 'America/Tegucigalpa', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(188, 'America/Thule', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(189, 'America/Tijuana', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(190, 'America/Toronto', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(191, 'America/Tortola', '-04:00', 'UTC/GMT -04:00', '2024-10-01 02:32:53', '2024-10-01 02:32:53'),
(192, 'America/Vancouver', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(193, 'America/Whitehorse', '-07:00', 'UTC/GMT -07:00', '2024-09-30 23:32:53', '2024-09-30 23:32:53'),
(194, 'America/Winnipeg', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(195, 'America/Yakutat', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(196, 'Antarctica/Casey', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(197, 'Antarctica/Davis', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(198, 'Antarctica/DumontDUrville', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(199, 'Antarctica/Macquarie', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(200, 'Antarctica/Mawson', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(201, 'Antarctica/McMurdo', '+13:00', 'UTC/GMT +13:00', '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(202, 'Antarctica/Palmer', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(203, 'Antarctica/Rothera', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(204, 'Antarctica/Syowa', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(205, 'Antarctica/Troll', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(206, 'Antarctica/Vostok', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(207, 'Arctic/Longyearbyen', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(208, 'Asia/Aden', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(209, 'Asia/Almaty', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(210, 'Asia/Amman', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(211, 'Asia/Anadyr', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(212, 'Asia/Aqtau', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(213, 'Asia/Aqtobe', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(214, 'Asia/Ashgabat', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(215, 'Asia/Atyrau', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(216, 'Asia/Baghdad', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(217, 'Asia/Bahrain', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(218, 'Asia/Baku', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(219, 'Asia/Bangkok', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(220, 'Asia/Barnaul', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(221, 'Asia/Beirut', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(222, 'Asia/Bishkek', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(223, 'Asia/Brunei', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(224, 'Asia/Chita', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(225, 'Asia/Choibalsan', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(226, 'Asia/Colombo', '+05:30', 'UTC/GMT +05:30', '2024-10-01 12:02:53', '2024-10-01 12:02:53'),
(227, 'Asia/Damascus', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(228, 'Asia/Dhaka', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(229, 'Asia/Dili', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(230, 'Asia/Dubai', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(231, 'Asia/Dushanbe', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(232, 'Asia/Famagusta', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(233, 'Asia/Gaza', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(234, 'Asia/Hebron', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(235, 'Asia/Ho_Chi_Minh', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(236, 'Asia/Hong_Kong', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(237, 'Asia/Hovd', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(238, 'Asia/Irkutsk', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(239, 'Asia/Jakarta', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(240, 'Asia/Jayapura', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(241, 'Asia/Jerusalem', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(242, 'Asia/Kabul', '+04:30', 'UTC/GMT +04:30', '2024-10-01 11:02:53', '2024-10-01 11:02:53'),
(243, 'Asia/Kamchatka', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(244, 'Asia/Karachi', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(245, 'Asia/Kathmandu', '+05:45', 'UTC/GMT +05:45', '2024-10-01 12:17:53', '2024-10-01 12:17:53'),
(246, 'Asia/Khandyga', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(247, 'Asia/Kolkata', '+05:30', 'UTC/GMT +05:30', '2024-10-01 12:02:53', '2024-10-01 12:02:53'),
(248, 'Asia/Krasnoyarsk', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(249, 'Asia/Kuala_Lumpur', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(250, 'Asia/Kuching', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(251, 'Asia/Kuwait', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(252, 'Asia/Macau', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(253, 'Asia/Magadan', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(254, 'Asia/Makassar', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(255, 'Asia/Manila', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(256, 'Asia/Muscat', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(257, 'Asia/Nicosia', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(258, 'Asia/Novokuznetsk', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(259, 'Asia/Novosibirsk', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(260, 'Asia/Omsk', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(261, 'Asia/Oral', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(262, 'Asia/Phnom_Penh', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(263, 'Asia/Pontianak', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(264, 'Asia/Pyongyang', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(265, 'Asia/Qatar', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(266, 'Asia/Qostanay', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(267, 'Asia/Qyzylorda', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(268, 'Asia/Riyadh', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(269, 'Asia/Sakhalin', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(270, 'Asia/Samarkand', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(271, 'Asia/Seoul', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(272, 'Asia/Shanghai', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(273, 'Asia/Singapore', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(274, 'Asia/Srednekolymsk', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(275, 'Asia/Taipei', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(276, 'Asia/Tashkent', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(277, 'Asia/Tbilisi', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(278, 'Asia/Tehran', '+03:30', 'UTC/GMT +03:30', '2024-10-01 10:02:53', '2024-10-01 10:02:53'),
(279, 'Asia/Thimphu', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(280, 'Asia/Tokyo', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(281, 'Asia/Tomsk', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(282, 'Asia/Ulaanbaatar', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(283, 'Asia/Urumqi', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(284, 'Asia/Ust-Nera', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(285, 'Asia/Vientiane', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(286, 'Asia/Vladivostok', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(287, 'Asia/Yakutsk', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(288, 'Asia/Yangon', '+06:30', 'UTC/GMT +06:30', '2024-10-01 13:02:53', '2024-10-01 13:02:53'),
(289, 'Asia/Yekaterinburg', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(290, 'Asia/Yerevan', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(291, 'Atlantic/Azores', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(292, 'Atlantic/Bermuda', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(293, 'Atlantic/Canary', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(294, 'Atlantic/Cape_Verde', '-01:00', 'UTC/GMT -01:00', '2024-10-01 05:32:53', '2024-10-01 05:32:53'),
(295, 'Atlantic/Faroe', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(296, 'Atlantic/Madeira', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(297, 'Atlantic/Reykjavik', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(298, 'Atlantic/South_Georgia', '-02:00', 'UTC/GMT -02:00', '2024-10-01 04:32:53', '2024-10-01 04:32:53'),
(299, 'Atlantic/St_Helena', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53'),
(300, 'Atlantic/Stanley', '-03:00', 'UTC/GMT -03:00', '2024-10-01 03:32:53', '2024-10-01 03:32:53'),
(301, 'Australia/Adelaide', '+09:30', 'UTC/GMT +09:30', '2024-10-01 16:02:53', '2024-10-01 16:02:53'),
(302, 'Australia/Brisbane', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(303, 'Australia/Broken_Hill', '+09:30', 'UTC/GMT +09:30', '2024-10-01 16:02:53', '2024-10-01 16:02:53'),
(304, 'Australia/Darwin', '+09:30', 'UTC/GMT +09:30', '2024-10-01 16:02:53', '2024-10-01 16:02:53'),
(305, 'Australia/Eucla', '+08:45', 'UTC/GMT +08:45', '2024-10-01 15:17:53', '2024-10-01 15:17:53'),
(306, 'Australia/Hobart', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(307, 'Australia/Lindeman', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(308, 'Australia/Lord_Howe', '+10:30', 'UTC/GMT +10:30', '2024-10-01 17:02:53', '2024-10-01 17:02:53'),
(309, 'Australia/Melbourne', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(310, 'Australia/Perth', '+08:00', 'UTC/GMT +08:00', '2024-10-01 14:32:53', '2024-10-01 14:32:53'),
(311, 'Australia/Sydney', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(312, 'Europe/Amsterdam', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(313, 'Europe/Andorra', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(314, 'Europe/Astrakhan', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(315, 'Europe/Athens', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(316, 'Europe/Belgrade', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(317, 'Europe/Berlin', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(318, 'Europe/Bratislava', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(319, 'Europe/Brussels', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(320, 'Europe/Bucharest', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(321, 'Europe/Budapest', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(322, 'Europe/Busingen', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(323, 'Europe/Chisinau', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(324, 'Europe/Copenhagen', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(325, 'Europe/Dublin', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(326, 'Europe/Gibraltar', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(327, 'Europe/Guernsey', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(328, 'Europe/Helsinki', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(329, 'Europe/Isle_of_Man', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(330, 'Europe/Istanbul', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(331, 'Europe/Jersey', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(332, 'Europe/Kaliningrad', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(333, 'Europe/Kirov', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(334, 'Europe/Kyiv', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(335, 'Europe/Lisbon', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(336, 'Europe/Ljubljana', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(337, 'Europe/London', '+01:00', 'UTC/GMT +01:00', '2024-10-01 07:32:53', '2024-10-01 07:32:53'),
(338, 'Europe/Luxembourg', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(339, 'Europe/Madrid', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(340, 'Europe/Malta', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(341, 'Europe/Mariehamn', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(342, 'Europe/Minsk', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(343, 'Europe/Monaco', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(344, 'Europe/Moscow', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(345, 'Europe/Oslo', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(346, 'Europe/Paris', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(347, 'Europe/Podgorica', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(348, 'Europe/Prague', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(349, 'Europe/Riga', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(350, 'Europe/Rome', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(351, 'Europe/Samara', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(352, 'Europe/San_Marino', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(353, 'Europe/Sarajevo', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(354, 'Europe/Saratov', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(355, 'Europe/Simferopol', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(356, 'Europe/Skopje', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(357, 'Europe/Sofia', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(358, 'Europe/Stockholm', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(359, 'Europe/Tallinn', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(360, 'Europe/Tirane', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(361, 'Europe/Ulyanovsk', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(362, 'Europe/Vaduz', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(363, 'Europe/Vatican', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(364, 'Europe/Vienna', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(365, 'Europe/Vilnius', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(366, 'Europe/Volgograd', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(367, 'Europe/Warsaw', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(368, 'Europe/Zagreb', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(369, 'Europe/Zurich', '+02:00', 'UTC/GMT +02:00', '2024-10-01 08:32:53', '2024-10-01 08:32:53'),
(370, 'Indian/Antananarivo', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(371, 'Indian/Chagos', '+06:00', 'UTC/GMT +06:00', '2024-10-01 12:32:53', '2024-10-01 12:32:53'),
(372, 'Indian/Christmas', '+07:00', 'UTC/GMT +07:00', '2024-10-01 13:32:53', '2024-10-01 13:32:53'),
(373, 'Indian/Cocos', '+06:30', 'UTC/GMT +06:30', '2024-10-01 13:02:53', '2024-10-01 13:02:53'),
(374, 'Indian/Comoro', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(375, 'Indian/Kerguelen', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(376, 'Indian/Mahe', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(377, 'Indian/Maldives', '+05:00', 'UTC/GMT +05:00', '2024-10-01 11:32:53', '2024-10-01 11:32:53'),
(378, 'Indian/Mauritius', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(379, 'Indian/Mayotte', '+03:00', 'UTC/GMT +03:00', '2024-10-01 09:32:53', '2024-10-01 09:32:53'),
(380, 'Indian/Reunion', '+04:00', 'UTC/GMT +04:00', '2024-10-01 10:32:53', '2024-10-01 10:32:53'),
(381, 'Pacific/Apia', '+13:00', 'UTC/GMT +13:00', '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(382, 'Pacific/Auckland', '+13:00', 'UTC/GMT +13:00', '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(383, 'Pacific/Bougainville', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(384, 'Pacific/Chatham', '+13:45', 'UTC/GMT +13:45', '2024-10-01 20:17:53', '2024-10-01 20:17:53'),
(385, 'Pacific/Chuuk', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(386, 'Pacific/Easter', '-05:00', 'UTC/GMT -05:00', '2024-10-01 01:32:53', '2024-10-01 01:32:53'),
(387, 'Pacific/Efate', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(388, 'Pacific/Fakaofo', '+13:00', 'UTC/GMT +13:00', '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(389, 'Pacific/Fiji', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(390, 'Pacific/Funafuti', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(391, 'Pacific/Galapagos', '-06:00', 'UTC/GMT -06:00', '2024-10-01 00:32:53', '2024-10-01 00:32:53'),
(392, 'Pacific/Gambier', '-09:00', 'UTC/GMT -09:00', '2024-09-30 21:32:53', '2024-09-30 21:32:53'),
(393, 'Pacific/Guadalcanal', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(394, 'Pacific/Guam', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(395, 'Pacific/Honolulu', '-10:00', 'UTC/GMT -10:00', '2024-09-30 20:32:53', '2024-09-30 20:32:53'),
(396, 'Pacific/Kanton', '+13:00', 'UTC/GMT +13:00', '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(397, 'Pacific/Kiritimati', '+14:00', 'UTC/GMT +14:00', '2024-10-01 20:32:53', '2024-10-01 20:32:53'),
(398, 'Pacific/Kosrae', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(399, 'Pacific/Kwajalein', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(400, 'Pacific/Majuro', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(401, 'Pacific/Marquesas', '-09:30', 'UTC/GMT -09:30', '2024-09-30 21:02:53', '2024-09-30 21:02:53'),
(402, 'Pacific/Midway', '-11:00', 'UTC/GMT -11:00', '2024-09-30 19:32:53', '2024-09-30 19:32:53'),
(403, 'Pacific/Nauru', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(404, 'Pacific/Niue', '-11:00', 'UTC/GMT -11:00', '2024-09-30 19:32:53', '2024-09-30 19:32:53'),
(405, 'Pacific/Norfolk', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(406, 'Pacific/Noumea', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(407, 'Pacific/Pago_Pago', '-11:00', 'UTC/GMT -11:00', '2024-09-30 19:32:53', '2024-09-30 19:32:53'),
(408, 'Pacific/Palau', '+09:00', 'UTC/GMT +09:00', '2024-10-01 15:32:53', '2024-10-01 15:32:53'),
(409, 'Pacific/Pitcairn', '-08:00', 'UTC/GMT -08:00', '2024-09-30 22:32:53', '2024-09-30 22:32:53'),
(410, 'Pacific/Pohnpei', '+11:00', 'UTC/GMT +11:00', '2024-10-01 17:32:53', '2024-10-01 17:32:53'),
(411, 'Pacific/Port_Moresby', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(412, 'Pacific/Rarotonga', '-10:00', 'UTC/GMT -10:00', '2024-09-30 20:32:53', '2024-09-30 20:32:53'),
(413, 'Pacific/Saipan', '+10:00', 'UTC/GMT +10:00', '2024-10-01 16:32:53', '2024-10-01 16:32:53'),
(414, 'Pacific/Tahiti', '-10:00', 'UTC/GMT -10:00', '2024-09-30 20:32:53', '2024-09-30 20:32:53'),
(415, 'Pacific/Tarawa', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(416, 'Pacific/Tongatapu', '+13:00', 'UTC/GMT +13:00', '2024-10-01 19:32:53', '2024-10-01 19:32:53'),
(417, 'Pacific/Wake', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(418, 'Pacific/Wallis', '+12:00', 'UTC/GMT +12:00', '2024-10-01 18:32:53', '2024-10-01 18:32:53'),
(419, 'UTC', '+00:00', 'UTC/GMT +00:00', '2024-10-01 06:32:53', '2024-10-01 06:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `usage_requests`
--

CREATE TABLE `usage_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `method` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `visitor` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `response_time` int(11) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `hour` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usage_requests`
--

INSERT INTO `usage_requests` (`id`, `team_id`, `host`, `path`, `url`, `method`, `route`, `visitor`, `user_agent`, `response_time`, `day`, `hour`, `created_at`, `updated_at`) VALUES
(1, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3375, 'Tuesday', 12, '2024-10-01 06:34:22', '2024-10-01 06:34:22'),
(2, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2112, 'Tuesday', 12, '2024-10-01 06:47:36', '2024-10-01 06:47:36'),
(3, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2275, 'Tuesday', 12, '2024-10-01 06:47:40', '2024-10-01 06:47:40'),
(4, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'POST', 'laravel-crm.leads.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 946, 'Tuesday', 12, '2024-10-01 06:47:42', '2024-10-01 06:47:42'),
(5, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1285, 'Tuesday', 12, '2024-10-01 06:47:44', '2024-10-01 06:47:44'),
(6, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'POST', 'laravel-crm.leads.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1918, 'Tuesday', 12, '2024-10-01 06:48:53', '2024-10-01 06:48:53'),
(7, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2072, 'Tuesday', 12, '2024-10-01 06:48:55', '2024-10-01 06:48:55'),
(8, NULL, '127.0.0.1', 'leads/1/edit', 'http://127.0.0.1:8000/leads/1/edit', 'GET', 'laravel-crm.leads.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1663, 'Tuesday', 12, '2024-10-01 06:49:00', '2024-10-01 06:49:00'),
(9, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'PUT', 'laravel-crm.leads.update', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1052, 'Tuesday', 12, '2024-10-01 06:49:13', '2024-10-01 06:49:13'),
(10, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'GET', 'laravel-crm.leads.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1577, 'Tuesday', 12, '2024-10-01 06:49:14', '2024-10-01 06:49:14'),
(11, NULL, '127.0.0.1', 'people/1', 'http://127.0.0.1:8000/people/1', 'GET', 'laravel-crm.people.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1651, 'Tuesday', 12, '2024-10-01 06:49:25', '2024-10-01 06:49:25'),
(12, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1374, 'Tuesday', 12, '2024-10-01 06:49:33', '2024-10-01 06:49:33'),
(13, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'GET', 'laravel-crm.leads.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2256, 'Tuesday', 12, '2024-10-01 06:49:39', '2024-10-01 06:49:39'),
(14, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1412, 'Tuesday', 12, '2024-10-01 06:51:44', '2024-10-01 06:51:44'),
(15, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1743, 'Tuesday', 12, '2024-10-01 06:51:47', '2024-10-01 06:51:47'),
(16, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1576, 'Tuesday', 12, '2024-10-01 06:51:52', '2024-10-01 06:51:52'),
(17, NULL, '127.0.0.1', 'quotes/board', 'http://127.0.0.1:8000/quotes/board', 'GET', 'laravel-crm.quotes.board', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1379, 'Tuesday', 12, '2024-10-01 06:51:56', '2024-10-01 06:51:56'),
(18, NULL, '127.0.0.1', 'quotes/list', 'http://127.0.0.1:8000/quotes/list', 'GET', 'laravel-crm.quotes.list', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1216, 'Tuesday', 12, '2024-10-01 06:51:57', '2024-10-01 06:51:57'),
(19, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1584, 'Tuesday', 12, '2024-10-01 06:51:58', '2024-10-01 06:51:58'),
(20, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'POST', 'laravel-crm.quotes.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1818, 'Tuesday', 12, '2024-10-01 06:52:01', '2024-10-01 06:52:01'),
(21, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2179, 'Tuesday', 12, '2024-10-01 06:52:03', '2024-10-01 06:52:03'),
(22, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1786, 'Tuesday', 12, '2024-10-01 06:52:07', '2024-10-01 06:52:07'),
(23, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'POST', 'laravel-crm.quotes.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1199, 'Tuesday', 12, '2024-10-01 06:52:11', '2024-10-01 06:52:11'),
(24, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1482, 'Tuesday', 12, '2024-10-01 06:52:12', '2024-10-01 06:52:12'),
(25, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1287, 'Tuesday', 12, '2024-10-01 06:52:15', '2024-10-01 06:52:15'),
(26, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1762, 'Tuesday', 12, '2024-10-01 06:52:17', '2024-10-01 06:52:17'),
(27, NULL, '127.0.0.1', 'notes', 'http://127.0.0.1:8000/notes', 'GET', 'laravel-crm.notes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1872, 'Tuesday', 12, '2024-10-01 06:52:18', '2024-10-01 06:52:18'),
(28, NULL, '127.0.0.1', 'tasks', 'http://127.0.0.1:8000/tasks', 'GET', 'laravel-crm.tasks.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1958, 'Tuesday', 12, '2024-10-01 06:52:19', '2024-10-01 06:52:19'),
(29, NULL, '127.0.0.1', 'calls', 'http://127.0.0.1:8000/calls', 'GET', 'laravel-crm.calls.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1036, 'Tuesday', 12, '2024-10-01 06:52:21', '2024-10-01 06:52:21'),
(30, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1736, 'Tuesday', 12, '2024-10-01 06:52:23', '2024-10-01 06:52:23'),
(31, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'POST', 'laravel-crm.settings.update', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3783, 'Tuesday', 12, '2024-10-01 06:53:38', '2024-10-01 06:53:38'),
(32, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2228, 'Tuesday', 12, '2024-10-01 06:53:40', '2024-10-01 06:53:40'),
(33, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'GET', 'laravel-crm.roles.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1624, 'Tuesday', 12, '2024-10-01 06:53:46', '2024-10-01 06:53:46'),
(34, NULL, '127.0.0.1', 'pipelines', 'http://127.0.0.1:8000/pipelines', 'GET', 'laravel-crm.pipelines.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1777, 'Tuesday', 12, '2024-10-01 06:53:50', '2024-10-01 06:53:50'),
(35, NULL, '127.0.0.1', 'pipeline-stages', 'http://127.0.0.1:8000/pipeline-stages', 'GET', 'laravel-crm.pipeline-stages.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1642, 'Tuesday', 12, '2024-10-01 06:53:53', '2024-10-01 06:53:53'),
(36, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1903, 'Tuesday', 12, '2024-10-01 06:53:56', '2024-10-01 06:53:56'),
(37, NULL, '127.0.0.1', 'integrations/xero', 'http://127.0.0.1:8000/integrations/xero', 'GET', 'laravel-crm.integrations.xero', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1755, 'Tuesday', 12, '2024-10-01 06:53:59', '2024-10-01 06:53:59'),
(38, NULL, '127.0.0.1', 'integrations/xero/connect', 'http://127.0.0.1:8000/integrations/xero/connect', 'GET', 'laravel-crm.integrations.xero.connect', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1598, 'Tuesday', 12, '2024-10-01 06:54:05', '2024-10-01 06:54:05'),
(39, NULL, '127.0.0.1', 'integrations/xero', 'http://127.0.0.1:8000/integrations/xero', 'GET', 'laravel-crm.integrations.xero', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1106, 'Tuesday', 12, '2024-10-01 06:54:11', '2024-10-01 06:54:11'),
(40, NULL, '127.0.0.1', 'field-groups', 'http://127.0.0.1:8000/field-groups', 'GET', 'laravel-crm.field-groups.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1948, 'Tuesday', 12, '2024-10-01 06:54:13', '2024-10-01 06:54:13'),
(41, NULL, '127.0.0.1', 'field-groups/create', 'http://127.0.0.1:8000/field-groups/create', 'GET', 'laravel-crm.field-groups.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1988, 'Tuesday', 12, '2024-10-01 06:54:22', '2024-10-01 06:54:22'),
(42, NULL, '127.0.0.1', 'field-groups', 'http://127.0.0.1:8000/field-groups', 'POST', 'laravel-crm.field-groups.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1309, 'Tuesday', 12, '2024-10-01 06:54:30', '2024-10-01 06:54:30'),
(43, NULL, '127.0.0.1', 'field-groups', 'http://127.0.0.1:8000/field-groups', 'GET', 'laravel-crm.field-groups.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1385, 'Tuesday', 12, '2024-10-01 06:54:31', '2024-10-01 06:54:31'),
(44, NULL, '127.0.0.1', 'field-groups/1/edit', 'http://127.0.0.1:8000/field-groups/1/edit', 'GET', 'laravel-crm.field-groups.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1808, 'Tuesday', 12, '2024-10-01 06:54:34', '2024-10-01 06:54:34'),
(45, NULL, '127.0.0.1', 'fields', 'http://127.0.0.1:8000/fields', 'GET', 'laravel-crm.fields.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1315, 'Tuesday', 12, '2024-10-01 06:54:38', '2024-10-01 06:54:38'),
(46, NULL, '127.0.0.1', 'labels', 'http://127.0.0.1:8000/labels', 'GET', 'laravel-crm.labels.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1832, 'Tuesday', 12, '2024-10-01 06:54:41', '2024-10-01 06:54:41'),
(47, NULL, '127.0.0.1', 'labels/1', 'http://127.0.0.1:8000/labels/1', 'GET', 'laravel-crm.labels.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1907, 'Tuesday', 12, '2024-10-01 06:54:46', '2024-10-01 06:54:46'),
(48, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1271, 'Tuesday', 12, '2024-10-01 06:54:52', '2024-10-01 06:54:52'),
(49, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1443, 'Tuesday', 12, '2024-10-01 06:54:59', '2024-10-01 06:54:59'),
(50, NULL, '127.0.0.1', 'pipeline-stages', 'http://127.0.0.1:8000/pipeline-stages', 'GET', 'laravel-crm.pipeline-stages.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1832, 'Tuesday', 12, '2024-10-01 06:55:01', '2024-10-01 06:55:01'),
(51, NULL, '127.0.0.1', 'pipelines', 'http://127.0.0.1:8000/pipelines', 'GET', 'laravel-crm.pipelines.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1436, 'Tuesday', 12, '2024-10-01 06:55:09', '2024-10-01 06:55:09'),
(52, NULL, '127.0.0.1', 'invoices', 'http://127.0.0.1:8000/invoices', 'GET', 'laravel-crm.invoices.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2093, 'Tuesday', 12, '2024-10-01 06:55:12', '2024-10-01 06:55:12'),
(53, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1875, 'Tuesday', 12, '2024-10-01 06:56:20', '2024-10-01 06:56:20'),
(54, NULL, '127.0.0.1', 'clients/create', 'http://127.0.0.1:8000/clients/create', 'GET', 'laravel-crm.clients.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1734, 'Tuesday', 12, '2024-10-01 06:56:23', '2024-10-01 06:56:23'),
(55, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'POST', 'laravel-crm.clients.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1515, 'Tuesday', 12, '2024-10-01 06:56:39', '2024-10-01 06:56:39'),
(56, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1596, 'Tuesday', 12, '2024-10-01 06:56:40', '2024-10-01 06:56:40'),
(57, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create?id=2&model=client', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1817, 'Tuesday', 12, '2024-10-01 06:56:45', '2024-10-01 06:56:45'),
(58, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1908, 'Tuesday', 12, '2024-10-01 06:56:48', '2024-10-01 06:56:48'),
(59, NULL, '127.0.0.1', 'clients/create', 'http://127.0.0.1:8000/clients/create', 'GET', 'laravel-crm.clients.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1995, 'Tuesday', 12, '2024-10-01 06:56:55', '2024-10-01 06:56:55'),
(60, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'POST', 'laravel-crm.clients.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1175, 'Tuesday', 12, '2024-10-01 06:57:04', '2024-10-01 06:57:04'),
(61, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1243, 'Tuesday', 12, '2024-10-01 06:57:05', '2024-10-01 06:57:05'),
(62, NULL, '127.0.0.1', 'clients/create', 'http://127.0.0.1:8000/clients/create', 'GET', 'laravel-crm.clients.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1435, 'Tuesday', 12, '2024-10-01 06:57:08', '2024-10-01 06:57:08'),
(63, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'POST', 'laravel-crm.clients.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1684, 'Tuesday', 12, '2024-10-01 06:57:20', '2024-10-01 06:57:20'),
(64, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1841, 'Tuesday', 12, '2024-10-01 06:57:21', '2024-10-01 06:57:21'),
(65, NULL, '127.0.0.1', 'orders/create', 'http://127.0.0.1:8000/orders/create?id=4&model=client', 'GET', 'laravel-crm.orders.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1701, 'Tuesday', 12, '2024-10-01 06:57:29', '2024-10-01 06:57:29'),
(66, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1647, 'Tuesday', 12, '2024-10-01 06:57:33', '2024-10-01 06:57:33'),
(67, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create?id=4&model=client', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1744, 'Tuesday', 12, '2024-10-01 06:57:36', '2024-10-01 06:57:36'),
(68, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1278, 'Tuesday', 12, '2024-10-01 06:57:41', '2024-10-01 06:57:41'),
(69, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1839, 'Tuesday', 12, '2024-10-01 06:57:47', '2024-10-01 06:57:47'),
(70, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2031, 'Tuesday', 12, '2024-10-01 06:58:05', '2024-10-01 06:58:05'),
(71, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2038, 'Tuesday', 12, '2024-10-01 06:58:08', '2024-10-01 06:58:08'),
(72, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1910, 'Tuesday', 12, '2024-10-01 07:06:59', '2024-10-01 07:06:59'),
(73, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2129, 'Tuesday', 12, '2024-10-01 07:07:03', '2024-10-01 07:07:03'),
(74, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'GET', 'laravel-crm.roles.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1270, 'Tuesday', 12, '2024-10-01 07:08:37', '2024-10-01 07:08:37'),
(75, NULL, '127.0.0.1', 'pipelines', 'http://127.0.0.1:8000/pipelines', 'GET', 'laravel-crm.pipelines.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1621, 'Tuesday', 12, '2024-10-01 07:08:40', '2024-10-01 07:08:40'),
(76, NULL, '127.0.0.1', 'pipeline-stages', 'http://127.0.0.1:8000/pipeline-stages', 'GET', 'laravel-crm.pipeline-stages.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1697, 'Tuesday', 12, '2024-10-01 07:08:44', '2024-10-01 07:08:44'),
(77, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1917, 'Tuesday', 12, '2024-10-01 07:08:47', '2024-10-01 07:08:47'),
(78, NULL, '127.0.0.1', 'product-categories/create', 'http://127.0.0.1:8000/product-categories/create', 'GET', 'laravel-crm.product-categories.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1414, 'Tuesday', 12, '2024-10-01 07:08:50', '2024-10-01 07:08:50'),
(79, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'POST', 'laravel-crm.product-categories.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1809, 'Tuesday', 12, '2024-10-01 07:09:30', '2024-10-01 07:09:30'),
(80, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1880, 'Tuesday', 12, '2024-10-01 07:09:31', '2024-10-01 07:09:31'),
(81, NULL, '127.0.0.1', 'product-categories/create', 'http://127.0.0.1:8000/product-categories/create', 'GET', 'laravel-crm.product-categories.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2046, 'Tuesday', 12, '2024-10-01 07:09:35', '2024-10-01 07:09:35'),
(82, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'POST', 'laravel-crm.product-categories.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1145, 'Tuesday', 12, '2024-10-01 07:09:57', '2024-10-01 07:09:57'),
(83, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1233, 'Tuesday', 12, '2024-10-01 07:09:58', '2024-10-01 07:09:58'),
(84, NULL, '127.0.0.1', 'product-categories/create', 'http://127.0.0.1:8000/product-categories/create', 'GET', 'laravel-crm.product-categories.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1185, 'Tuesday', 12, '2024-10-01 07:10:02', '2024-10-01 07:10:02'),
(85, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'POST', 'laravel-crm.product-categories.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1171, 'Tuesday', 12, '2024-10-01 07:10:13', '2024-10-01 07:10:13'),
(86, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1255, 'Tuesday', 12, '2024-10-01 07:10:14', '2024-10-01 07:10:14'),
(87, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1569, 'Tuesday', 12, '2024-10-01 07:10:34', '2024-10-01 07:10:34'),
(88, NULL, '127.0.0.1', 'products/create', 'http://127.0.0.1:8000/products/create', 'GET', 'laravel-crm.products.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1899, 'Tuesday', 12, '2024-10-01 07:10:37', '2024-10-01 07:10:37'),
(89, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'POST', 'laravel-crm.products.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1360, 'Tuesday', 12, '2024-10-01 07:11:24', '2024-10-01 07:11:24'),
(90, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1478, 'Tuesday', 12, '2024-10-01 07:11:25', '2024-10-01 07:11:25'),
(91, NULL, '127.0.0.1', 'products/1/edit', 'http://127.0.0.1:8000/products/1/edit', 'GET', 'laravel-crm.products.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1317, 'Tuesday', 12, '2024-10-01 07:11:30', '2024-10-01 07:11:30'),
(92, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2295, 'Tuesday', 12, '2024-10-01 07:11:33', '2024-10-01 07:11:33'),
(93, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1704, 'Tuesday', 12, '2024-10-01 07:11:35', '2024-10-01 07:11:35'),
(94, NULL, '127.0.0.1', 'tax-rates/create', 'http://127.0.0.1:8000/tax-rates/create', 'GET', 'laravel-crm.tax-rates.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1552, 'Tuesday', 12, '2024-10-01 07:11:38', '2024-10-01 07:11:38'),
(95, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'POST', 'laravel-crm.tax-rates.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1615, 'Tuesday', 12, '2024-10-01 07:11:58', '2024-10-01 07:11:58'),
(96, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1707, 'Tuesday', 12, '2024-10-01 07:11:59', '2024-10-01 07:11:59'),
(97, NULL, '127.0.0.1', 'tax-rates/create', 'http://127.0.0.1:8000/tax-rates/create', 'GET', 'laravel-crm.tax-rates.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1676, 'Tuesday', 12, '2024-10-01 07:12:02', '2024-10-01 07:12:02'),
(98, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'POST', 'laravel-crm.tax-rates.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 832, 'Tuesday', 12, '2024-10-01 07:12:20', '2024-10-01 07:12:20'),
(99, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1911, 'Tuesday', 12, '2024-10-01 07:12:21', '2024-10-01 07:12:21'),
(100, NULL, '127.0.0.1', 'tax-rates/create', 'http://127.0.0.1:8000/tax-rates/create', 'GET', 'laravel-crm.tax-rates.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1796, 'Tuesday', 12, '2024-10-01 07:12:26', '2024-10-01 07:12:26'),
(101, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'POST', 'laravel-crm.tax-rates.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1715, 'Tuesday', 12, '2024-10-01 07:12:40', '2024-10-01 07:12:40'),
(102, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1761, 'Tuesday', 12, '2024-10-01 07:12:41', '2024-10-01 07:12:41'),
(103, NULL, '127.0.0.1', 'tax-rates/1/edit', 'http://127.0.0.1:8000/tax-rates/1/edit', 'GET', 'laravel-crm.tax-rates.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1653, 'Tuesday', 12, '2024-10-01 07:12:47', '2024-10-01 07:12:47'),
(104, NULL, '127.0.0.1', 'tax-rates/1', 'http://127.0.0.1:8000/tax-rates/1', 'PUT', 'laravel-crm.tax-rates.update', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1423, 'Tuesday', 12, '2024-10-01 07:12:52', '2024-10-01 07:12:52'),
(105, NULL, '127.0.0.1', 'tax-rates/1', 'http://127.0.0.1:8000/tax-rates/1', 'GET', 'laravel-crm.tax-rates.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1525, 'Tuesday', 12, '2024-10-01 07:12:53', '2024-10-01 07:12:53'),
(106, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1516, 'Tuesday', 12, '2024-10-01 07:12:56', '2024-10-01 07:12:56'),
(107, NULL, '127.0.0.1', 'tax-rates/3/edit', 'http://127.0.0.1:8000/tax-rates/3/edit', 'GET', 'laravel-crm.tax-rates.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1747, 'Tuesday', 12, '2024-10-01 07:12:59', '2024-10-01 07:12:59'),
(108, NULL, '127.0.0.1', 'tax-rates/3', 'http://127.0.0.1:8000/tax-rates/3', 'PUT', 'laravel-crm.tax-rates.update', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 990, 'Tuesday', 12, '2024-10-01 07:13:04', '2024-10-01 07:13:04'),
(109, NULL, '127.0.0.1', 'tax-rates/3', 'http://127.0.0.1:8000/tax-rates/3', 'GET', 'laravel-crm.tax-rates.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1032, 'Tuesday', 12, '2024-10-01 07:13:05', '2024-10-01 07:13:05'),
(110, NULL, '127.0.0.1', 'labels', 'http://127.0.0.1:8000/labels', 'GET', 'laravel-crm.labels.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1844, 'Tuesday', 12, '2024-10-01 07:13:07', '2024-10-01 07:13:07'),
(111, NULL, '127.0.0.1', 'labels', 'http://127.0.0.1:8000/labels', 'GET', 'laravel-crm.labels.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1293, 'Tuesday', 12, '2024-10-01 07:13:09', '2024-10-01 07:13:09'),
(112, NULL, '127.0.0.1', 'labels/create', 'http://127.0.0.1:8000/labels/create', 'GET', 'laravel-crm.labels.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1872, 'Tuesday', 12, '2024-10-01 07:13:11', '2024-10-01 07:13:11'),
(113, NULL, '127.0.0.1', 'labels', 'http://127.0.0.1:8000/labels', 'GET', 'laravel-crm.labels.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1661, 'Tuesday', 12, '2024-10-01 07:13:27', '2024-10-01 07:13:27'),
(114, NULL, '127.0.0.1', 'pipeline-stages', 'http://127.0.0.1:8000/pipeline-stages', 'GET', 'laravel-crm.pipeline-stages.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1288, 'Tuesday', 12, '2024-10-01 07:13:29', '2024-10-01 07:13:29'),
(115, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'GET', 'laravel-crm.roles.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2074, 'Tuesday', 12, '2024-10-01 07:13:36', '2024-10-01 07:13:36'),
(116, NULL, '127.0.0.1', 'roles/create', 'http://127.0.0.1:8000/roles/create', 'GET', 'laravel-crm.roles.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1553, 'Tuesday', 12, '2024-10-01 07:13:40', '2024-10-01 07:13:40'),
(117, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'POST', 'laravel-crm.roles.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1546, 'Tuesday', 12, '2024-10-01 07:14:12', '2024-10-01 07:14:12'),
(118, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'GET', 'laravel-crm.roles.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1784, 'Tuesday', 12, '2024-10-01 07:14:13', '2024-10-01 07:14:13'),
(119, NULL, '127.0.0.1', 'pipelines', 'http://127.0.0.1:8000/pipelines', 'GET', 'laravel-crm.pipelines.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1105, 'Tuesday', 12, '2024-10-01 07:14:25', '2024-10-01 07:14:25'),
(120, NULL, '127.0.0.1', 'updates', 'http://127.0.0.1:8000/updates', 'GET', 'laravel-crm.updates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2499, 'Tuesday', 12, '2024-10-01 07:14:28', '2024-10-01 07:14:28'),
(121, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1923, 'Tuesday', 12, '2024-10-01 07:14:31', '2024-10-01 07:14:31'),
(122, NULL, '127.0.0.1', 'crm-teams/create', 'http://127.0.0.1:8000/crm-teams/create', 'GET', 'laravel-crm.teams.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1325, 'Tuesday', 12, '2024-10-01 07:14:35', '2024-10-01 07:14:35'),
(123, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1747, 'Tuesday', 12, '2024-10-01 07:14:39', '2024-10-01 07:14:39'),
(124, NULL, '127.0.0.1', 'users/create', 'http://127.0.0.1:8000/users/create', 'GET', 'laravel-crm.users.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1523, 'Tuesday', 12, '2024-10-01 07:14:42', '2024-10-01 07:14:42'),
(125, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'POST', 'laravel-crm.users.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2015, 'Tuesday', 12, '2024-10-01 07:15:37', '2024-10-01 07:15:37'),
(126, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1123, 'Tuesday', 12, '2024-10-01 07:15:38', '2024-10-01 07:15:38'),
(127, NULL, '127.0.0.1', 'users/2', 'http://127.0.0.1:8000/users/2', 'GET', 'laravel-crm.users.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1538, 'Tuesday', 12, '2024-10-01 07:15:42', '2024-10-01 07:15:42'),
(128, NULL, '127.0.0.1', 'users/2', 'http://127.0.0.1:8000/users/2', 'GET', 'laravel-crm.users.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1652, 'Tuesday', 12, '2024-10-01 07:15:43', '2024-10-01 07:15:43'),
(129, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1961, 'Tuesday', 12, '2024-10-01 07:16:17', '2024-10-01 07:16:17'),
(130, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1333, 'Tuesday', 12, '2024-10-01 07:16:21', '2024-10-01 07:16:21'),
(131, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1647, 'Tuesday', 12, '2024-10-01 07:16:24', '2024-10-01 07:16:24'),
(132, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'POST', 'laravel-crm.organisations.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1759, 'Tuesday', 12, '2024-10-01 07:16:30', '2024-10-01 07:16:30'),
(133, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1980, 'Tuesday', 12, '2024-10-01 07:16:32', '2024-10-01 07:16:32'),
(134, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'POST', 'laravel-crm.organisations.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2281, 'Tuesday', 12, '2024-10-01 07:17:47', '2024-10-01 07:17:47'),
(135, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1534, 'Tuesday', 12, '2024-10-01 07:17:58', '2024-10-01 07:17:58'),
(136, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'POST', 'laravel-crm.organisations.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1886, 'Tuesday', 12, '2024-10-01 07:19:27', '2024-10-01 07:19:27'),
(137, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2097, 'Tuesday', 12, '2024-10-01 07:19:29', '2024-10-01 07:19:29'),
(138, NULL, '127.0.0.1', 'organisations/1/edit', 'http://127.0.0.1:8000/organisations/1/edit', 'GET', 'laravel-crm.organisations.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1839, 'Tuesday', 12, '2024-10-01 07:19:34', '2024-10-01 07:19:34'),
(139, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2004, 'Tuesday', 12, '2024-10-01 07:19:43', '2024-10-01 07:19:43'),
(140, NULL, '127.0.0.1', 'organisations/2', 'http://127.0.0.1:8000/organisations/2', 'GET', 'laravel-crm.organisations.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1662, 'Tuesday', 12, '2024-10-01 07:19:47', '2024-10-01 07:19:47'),
(141, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1642, 'Tuesday', 12, '2024-10-01 07:19:50', '2024-10-01 07:19:50'),
(142, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1787, 'Tuesday', 12, '2024-10-01 07:19:53', '2024-10-01 07:19:53'),
(143, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1575, 'Tuesday', 12, '2024-10-01 07:19:58', '2024-10-01 07:19:58'),
(144, NULL, '127.0.0.1', 'people/create', 'http://127.0.0.1:8000/people/create', 'GET', 'laravel-crm.people.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1171, 'Tuesday', 12, '2024-10-01 07:20:01', '2024-10-01 07:20:01'),
(145, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1363, 'Tuesday', 12, '2024-10-01 07:20:03', '2024-10-01 07:20:03'),
(146, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1885, 'Tuesday', 13, '2024-10-01 07:32:07', '2024-10-01 07:32:07'),
(147, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1491, 'Tuesday', 13, '2024-10-01 07:32:16', '2024-10-01 07:32:16'),
(148, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1472, 'Tuesday', 13, '2024-10-01 07:40:13', '2024-10-01 07:40:13'),
(149, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1878, 'Tuesday', 13, '2024-10-01 07:40:16', '2024-10-01 07:40:16'),
(150, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1532, 'Tuesday', 13, '2024-10-01 07:40:20', '2024-10-01 07:40:20'),
(151, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1676, 'Tuesday', 13, '2024-10-01 07:40:22', '2024-10-01 07:40:22'),
(152, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1768, 'Tuesday', 13, '2024-10-01 07:40:23', '2024-10-01 07:40:23'),
(153, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1745, 'Tuesday', 13, '2024-10-01 07:40:25', '2024-10-01 07:40:25'),
(154, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1597, 'Tuesday', 13, '2024-10-01 07:40:28', '2024-10-01 07:40:28'),
(155, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2038, 'Tuesday', 13, '2024-10-01 07:40:32', '2024-10-01 07:40:32'),
(156, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1675, 'Tuesday', 13, '2024-10-01 07:40:34', '2024-10-01 07:40:34'),
(157, NULL, '127.0.0.1', 'invoices', 'http://127.0.0.1:8000/invoices', 'GET', 'laravel-crm.invoices.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1986, 'Tuesday', 13, '2024-10-01 07:40:38', '2024-10-01 07:40:38'),
(158, NULL, '127.0.0.1', 'deliveries', 'http://127.0.0.1:8000/deliveries', 'GET', 'laravel-crm.deliveries.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1297, 'Tuesday', 13, '2024-10-01 07:40:40', '2024-10-01 07:40:40'),
(159, NULL, '127.0.0.1', 'purchase-orders', 'http://127.0.0.1:8000/purchase-orders', 'GET', 'laravel-crm.purchase-orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2070, 'Tuesday', 13, '2024-10-01 07:40:42', '2024-10-01 07:40:42'),
(160, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1555, 'Tuesday', 13, '2024-10-01 07:40:44', '2024-10-01 07:40:44'),
(161, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3117, 'Tuesday', 13, '2024-10-01 07:42:01', '2024-10-01 07:42:01'),
(162, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1771, 'Tuesday', 13, '2024-10-01 07:42:03', '2024-10-01 07:42:03'),
(163, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1484, 'Tuesday', 13, '2024-10-01 07:45:46', '2024-10-01 07:45:46'),
(164, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2164, 'Tuesday', 13, '2024-10-01 07:46:57', '2024-10-01 07:46:57'),
(165, NULL, '127.0.0.1', 'leads/1/convert', 'http://127.0.0.1:8000/leads/1/convert', 'GET', 'laravel-crm.leads.convert-to-deal', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3006, 'Tuesday', 13, '2024-10-01 07:47:04', '2024-10-01 07:47:04'),
(166, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1996, 'Tuesday', 13, '2024-10-01 07:47:10', '2024-10-01 07:47:10');
INSERT INTO `usage_requests` (`id`, `team_id`, `host`, `path`, `url`, `method`, `route`, `visitor`, `user_agent`, `response_time`, `day`, `hour`, `created_at`, `updated_at`) VALUES
(167, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'GET', 'laravel-crm.leads.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2278, 'Tuesday', 13, '2024-10-01 07:47:14', '2024-10-01 07:47:14'),
(168, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1958, 'Tuesday', 13, '2024-10-01 07:47:17', '2024-10-01 07:47:17'),
(169, NULL, '127.0.0.1', 'leads/1/edit', 'http://127.0.0.1:8000/leads/1/edit', 'GET', 'laravel-crm.leads.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2013, 'Tuesday', 13, '2024-10-01 07:47:28', '2024-10-01 07:47:28'),
(170, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1633, 'Tuesday', 13, '2024-10-01 07:47:30', '2024-10-01 07:47:30'),
(171, NULL, '127.0.0.1', 'leads/1/convert', 'http://127.0.0.1:8000/leads/1/convert', 'GET', 'laravel-crm.leads.convert-to-deal', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2841, 'Tuesday', 13, '2024-10-01 07:47:33', '2024-10-01 07:47:33'),
(172, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1929, 'Tuesday', 13, '2024-10-01 07:47:54', '2024-10-01 07:47:54'),
(173, NULL, '127.0.0.1', 'leads/1/edit', 'http://127.0.0.1:8000/leads/1/edit', 'GET', 'laravel-crm.leads.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2138, 'Tuesday', 13, '2024-10-01 07:47:58', '2024-10-01 07:47:58'),
(174, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'PUT', 'laravel-crm.leads.update', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1267, 'Tuesday', 13, '2024-10-01 07:48:06', '2024-10-01 07:48:06'),
(175, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'GET', 'laravel-crm.leads.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1547, 'Tuesday', 13, '2024-10-01 07:48:07', '2024-10-01 07:48:07'),
(176, NULL, '127.0.0.1', 'leads/1/convert', 'http://127.0.0.1:8000/leads/1/convert', 'GET', 'laravel-crm.leads.convert-to-deal', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2619, 'Tuesday', 13, '2024-10-01 07:48:12', '2024-10-01 07:48:12'),
(177, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'GET', 'laravel-crm.leads.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1582, 'Tuesday', 13, '2024-10-01 07:49:10', '2024-10-01 07:49:10'),
(178, NULL, '127.0.0.1', 'leads/1', 'http://127.0.0.1:8000/leads/1', 'GET', 'laravel-crm.leads.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2035, 'Tuesday', 13, '2024-10-01 07:51:46', '2024-10-01 07:51:46'),
(179, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1785, 'Tuesday', 13, '2024-10-01 07:51:47', '2024-10-01 07:51:47'),
(180, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1853, 'Tuesday', 13, '2024-10-01 07:51:48', '2024-10-01 07:51:48'),
(181, NULL, '127.0.0.1', 'notes', 'http://127.0.0.1:8000/notes', 'GET', 'laravel-crm.notes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1618, 'Tuesday', 13, '2024-10-01 07:51:54', '2024-10-01 07:51:54'),
(182, NULL, '127.0.0.1', 'tasks', 'http://127.0.0.1:8000/tasks', 'GET', 'laravel-crm.tasks.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1386, 'Tuesday', 13, '2024-10-01 07:52:02', '2024-10-01 07:52:02'),
(183, NULL, '127.0.0.1', 'calls', 'http://127.0.0.1:8000/calls', 'GET', 'laravel-crm.calls.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1513, 'Tuesday', 13, '2024-10-01 07:52:12', '2024-10-01 07:52:12'),
(184, NULL, '127.0.0.1', 'meetings', 'http://127.0.0.1:8000/meetings', 'GET', 'laravel-crm.meetings.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1571, 'Tuesday', 13, '2024-10-01 07:52:14', '2024-10-01 07:52:14'),
(185, NULL, '127.0.0.1', 'lunches', 'http://127.0.0.1:8000/lunches', 'GET', 'laravel-crm.lunches.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1472, 'Tuesday', 13, '2024-10-01 07:52:16', '2024-10-01 07:52:16'),
(186, NULL, '127.0.0.1', 'files', 'http://127.0.0.1:8000/files', 'GET', 'laravel-crm.files.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1939, 'Tuesday', 13, '2024-10-01 07:52:18', '2024-10-01 07:52:18'),
(187, NULL, '127.0.0.1', 'files', 'http://127.0.0.1:8000/files', 'GET', 'laravel-crm.files.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2939, 'Tuesday', 13, '2024-10-01 08:00:29', '2024-10-01 08:00:29'),
(188, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1691, 'Tuesday', 13, '2024-10-01 08:00:47', '2024-10-01 08:00:47'),
(189, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1819, 'Tuesday', 13, '2024-10-01 08:00:59', '2024-10-01 08:00:59'),
(190, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1375, 'Tuesday', 13, '2024-10-01 08:01:40', '2024-10-01 08:01:40'),
(191, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1358, 'Tuesday', 13, '2024-10-01 08:01:43', '2024-10-01 08:01:43'),
(192, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1438, 'Tuesday', 13, '2024-10-01 08:01:46', '2024-10-01 08:01:46'),
(193, NULL, '127.0.0.1', 'crm/organisations/1/autocomplete', 'http://127.0.0.1:8000/crm/organisations/1/autocomplete?_=1727789506555', 'GET', 'laravel-crm.organisations.autocomplete', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1264, 'Tuesday', 13, '2024-10-01 08:02:03', '2024-10-01 08:02:03'),
(194, NULL, '127.0.0.1', 'crm/people/1/autocomplete', 'http://127.0.0.1:8000/crm/people/1/autocomplete?_=1727789506556', 'GET', 'laravel-crm.people.autocomplete', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1232, 'Tuesday', 13, '2024-10-01 08:02:23', '2024-10-01 08:02:23'),
(195, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'POST', 'laravel-crm.quotes.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1294, 'Tuesday', 13, '2024-10-01 08:04:09', '2024-10-01 08:04:09'),
(196, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1618, 'Tuesday', 13, '2024-10-01 08:04:10', '2024-10-01 08:04:10'),
(197, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1238, 'Tuesday', 13, '2024-10-01 08:04:15', '2024-10-01 08:04:15'),
(198, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2197, 'Tuesday', 13, '2024-10-01 08:18:45', '2024-10-01 08:18:45'),
(199, NULL, '127.0.0.1', 'invoices', 'http://127.0.0.1:8000/invoices', 'GET', 'laravel-crm.invoices.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1275, 'Tuesday', 13, '2024-10-01 08:18:56', '2024-10-01 08:18:56'),
(200, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2019, 'Tuesday', 13, '2024-10-01 08:19:01', '2024-10-01 08:19:01'),
(201, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1679, 'Tuesday', 13, '2024-10-01 08:19:03', '2024-10-01 08:19:03'),
(202, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1110, 'Tuesday', 13, '2024-10-01 08:19:06', '2024-10-01 08:19:06'),
(203, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1383, 'Tuesday', 13, '2024-10-01 08:19:09', '2024-10-01 08:19:09'),
(204, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'POST', 'laravel-crm.deals.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1022, 'Tuesday', 13, '2024-10-01 08:19:12', '2024-10-01 08:19:12'),
(205, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1341, 'Tuesday', 13, '2024-10-01 08:19:13', '2024-10-01 08:19:13'),
(206, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'POST', 'laravel-crm.deals.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1031, 'Tuesday', 13, '2024-10-01 08:20:23', '2024-10-01 08:20:23'),
(207, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1263, 'Tuesday', 13, '2024-10-01 08:20:24', '2024-10-01 08:20:24'),
(208, NULL, '127.0.0.1', 'deals/1/won', 'http://127.0.0.1:8000/deals/1/won', 'GET', 'laravel-crm.deals.won', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1625, 'Tuesday', 13, '2024-10-01 08:20:29', '2024-10-01 08:20:29'),
(209, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1718, 'Tuesday', 13, '2024-10-01 08:20:30', '2024-10-01 08:20:30'),
(210, NULL, '127.0.0.1', 'deals/1/edit', 'http://127.0.0.1:8000/deals/1/edit', 'GET', 'laravel-crm.deals.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1654, 'Tuesday', 13, '2024-10-01 08:20:34', '2024-10-01 08:20:34'),
(211, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2083, 'Tuesday', 13, '2024-10-01 08:20:41', '2024-10-01 08:20:41'),
(212, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2082, 'Tuesday', 13, '2024-10-01 08:20:46', '2024-10-01 08:20:46'),
(213, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1395, 'Tuesday', 13, '2024-10-01 08:20:49', '2024-10-01 08:20:49'),
(214, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1636, 'Tuesday', 13, '2024-10-01 08:20:52', '2024-10-01 08:20:52'),
(215, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1289, 'Tuesday', 13, '2024-10-01 08:20:55', '2024-10-01 08:20:55'),
(216, NULL, '127.0.0.1', 'products/create', 'http://127.0.0.1:8000/products/create', 'GET', 'laravel-crm.products.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1450, 'Tuesday', 13, '2024-10-01 08:20:58', '2024-10-01 08:20:58'),
(217, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'POST', 'laravel-crm.products.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1320, 'Tuesday', 13, '2024-10-01 08:21:59', '2024-10-01 08:21:59'),
(218, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1424, 'Tuesday', 13, '2024-10-01 08:22:00', '2024-10-01 08:22:00'),
(219, NULL, '127.0.0.1', 'products/create', 'http://127.0.0.1:8000/products/create', 'GET', 'laravel-crm.products.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1947, 'Tuesday', 13, '2024-10-01 08:22:03', '2024-10-01 08:22:03'),
(220, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'POST', 'laravel-crm.products.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 891, 'Tuesday', 13, '2024-10-01 08:23:04', '2024-10-01 08:23:04'),
(221, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1109, 'Tuesday', 13, '2024-10-01 08:23:06', '2024-10-01 08:23:06'),
(222, NULL, '127.0.0.1', 'products/create', 'http://127.0.0.1:8000/products/create', 'GET', 'laravel-crm.products.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1973, 'Tuesday', 13, '2024-10-01 08:23:08', '2024-10-01 08:23:08'),
(223, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'POST', 'laravel-crm.products.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1915, 'Tuesday', 13, '2024-10-01 08:23:41', '2024-10-01 08:23:41'),
(224, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2170, 'Tuesday', 13, '2024-10-01 08:23:43', '2024-10-01 08:23:43'),
(225, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1260, 'Tuesday', 13, '2024-10-01 08:23:48', '2024-10-01 08:23:48'),
(226, NULL, '127.0.0.1', 'clients/create', 'http://127.0.0.1:8000/clients/create', 'GET', 'laravel-crm.clients.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2059, 'Tuesday', 13, '2024-10-01 08:23:56', '2024-10-01 08:23:56'),
(227, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'POST', 'laravel-crm.clients.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1350, 'Tuesday', 13, '2024-10-01 08:24:07', '2024-10-01 08:24:07'),
(228, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1526, 'Tuesday', 13, '2024-10-01 08:24:08', '2024-10-01 08:24:08'),
(229, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1245, 'Tuesday', 13, '2024-10-01 08:24:16', '2024-10-01 08:24:16'),
(230, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1517, 'Tuesday', 13, '2024-10-01 08:24:19', '2024-10-01 08:24:19'),
(231, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'POST', 'laravel-crm.organisations.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1803, 'Tuesday', 13, '2024-10-01 08:25:26', '2024-10-01 08:25:26'),
(232, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1926, 'Tuesday', 13, '2024-10-01 08:25:27', '2024-10-01 08:25:27'),
(233, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1889, 'Tuesday', 13, '2024-10-01 08:25:33', '2024-10-01 08:25:33'),
(234, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'POST', 'laravel-crm.organisations.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1733, 'Tuesday', 13, '2024-10-01 08:26:35', '2024-10-01 08:26:35'),
(235, NULL, '127.0.0.1', 'organisations/create', 'http://127.0.0.1:8000/organisations/create', 'GET', 'laravel-crm.organisations.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1975, 'Tuesday', 13, '2024-10-01 08:26:36', '2024-10-01 08:26:36'),
(236, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1788, 'Tuesday', 13, '2024-10-01 08:26:39', '2024-10-01 08:26:39'),
(237, NULL, '127.0.0.1', 'people/create', 'http://127.0.0.1:8000/people/create', 'GET', 'laravel-crm.people.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1708, 'Tuesday', 13, '2024-10-01 08:26:42', '2024-10-01 08:26:42'),
(238, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'POST', 'laravel-crm.people.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1344, 'Tuesday', 13, '2024-10-01 08:27:11', '2024-10-01 08:27:11'),
(239, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1489, 'Tuesday', 13, '2024-10-01 08:27:12', '2024-10-01 08:27:12'),
(240, NULL, '127.0.0.1', 'people/create', 'http://127.0.0.1:8000/people/create', 'GET', 'laravel-crm.people.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2006, 'Tuesday', 13, '2024-10-01 08:27:18', '2024-10-01 08:27:18'),
(241, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'POST', 'laravel-crm.people.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 957, 'Tuesday', 13, '2024-10-01 08:27:36', '2024-10-01 08:27:36'),
(242, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1132, 'Tuesday', 13, '2024-10-01 08:27:38', '2024-10-01 08:27:38'),
(243, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1855, 'Tuesday', 13, '2024-10-01 08:27:47', '2024-10-01 08:27:47'),
(244, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1122, 'Tuesday', 13, '2024-10-01 08:27:51', '2024-10-01 08:27:51'),
(245, NULL, '127.0.0.1', 'crm-teams/create', 'http://127.0.0.1:8000/crm-teams/create', 'GET', 'laravel-crm.teams.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1423, 'Tuesday', 13, '2024-10-01 08:27:54', '2024-10-01 08:27:54'),
(246, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'POST', 'laravel-crm.teams.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1369, 'Tuesday', 13, '2024-10-01 08:28:13', '2024-10-01 08:28:13'),
(247, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1428, 'Tuesday', 13, '2024-10-01 08:28:14', '2024-10-01 08:28:14'),
(248, NULL, '127.0.0.1', 'crm-teams/create', 'http://127.0.0.1:8000/crm-teams/create', 'GET', 'laravel-crm.teams.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1533, 'Tuesday', 13, '2024-10-01 08:28:17', '2024-10-01 08:28:17'),
(249, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'POST', 'laravel-crm.teams.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1736, 'Tuesday', 13, '2024-10-01 08:28:25', '2024-10-01 08:28:25'),
(250, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1808, 'Tuesday', 13, '2024-10-01 08:28:26', '2024-10-01 08:28:26'),
(251, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1157, 'Tuesday', 13, '2024-10-01 08:28:38', '2024-10-01 08:28:38'),
(252, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1896, 'Tuesday', 13, '2024-10-01 08:28:45', '2024-10-01 08:28:45'),
(253, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1649, 'Tuesday', 13, '2024-10-01 08:29:00', '2024-10-01 08:29:00'),
(254, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1839, 'Tuesday', 13, '2024-10-01 08:29:01', '2024-10-01 08:29:01'),
(255, NULL, '127.0.0.1', 'clients/2', 'http://127.0.0.1:8000/clients/2', 'GET', 'laravel-crm.clients.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2163, 'Tuesday', 13, '2024-10-01 08:29:10', '2024-10-01 08:29:10'),
(256, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1652, 'Tuesday', 13, '2024-10-01 08:29:13', '2024-10-01 08:29:13'),
(257, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2160, 'Tuesday', 13, '2024-10-01 08:29:23', '2024-10-01 08:29:23'),
(258, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1379, 'Tuesday', 13, '2024-10-01 08:29:25', '2024-10-01 08:29:25'),
(259, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1381, 'Tuesday', 13, '2024-10-01 08:29:27', '2024-10-01 08:29:27'),
(260, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1240, 'Tuesday', 13, '2024-10-01 08:29:30', '2024-10-01 08:29:30'),
(261, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1488, 'Tuesday', 13, '2024-10-01 08:29:36', '2024-10-01 08:29:36'),
(262, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2037, 'Tuesday', 13, '2024-10-01 08:29:40', '2024-10-01 08:29:40'),
(263, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1324, 'Tuesday', 13, '2024-10-01 08:29:41', '2024-10-01 08:29:41'),
(264, NULL, '127.0.0.1', 'crm/people/2/autocomplete', 'http://127.0.0.1:8000/crm/people/2/autocomplete?_=1727791181478', 'GET', 'laravel-crm.people.autocomplete', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 892, 'Tuesday', 14, '2024-10-01 08:30:00', '2024-10-01 08:30:00'),
(265, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'POST', 'laravel-crm.leads.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1979, 'Tuesday', 14, '2024-10-01 08:30:10', '2024-10-01 08:30:10'),
(266, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1092, 'Tuesday', 14, '2024-10-01 08:30:12', '2024-10-01 08:30:12'),
(267, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1310, 'Tuesday', 14, '2024-10-01 08:30:18', '2024-10-01 08:30:18'),
(268, NULL, '127.0.0.1', 'crm/organisations/2/autocomplete', 'http://127.0.0.1:8000/crm/organisations/2/autocomplete?_=1727791218435', 'GET', 'laravel-crm.organisations.autocomplete', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 927, 'Tuesday', 14, '2024-10-01 08:30:35', '2024-10-01 08:30:35'),
(269, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'POST', 'laravel-crm.leads.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1042, 'Tuesday', 14, '2024-10-01 08:30:44', '2024-10-01 08:30:44'),
(270, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1203, 'Tuesday', 14, '2024-10-01 08:30:45', '2024-10-01 08:30:45'),
(271, NULL, '127.0.0.1', 'leads/board', 'http://127.0.0.1:8000/leads/board', 'GET', 'laravel-crm.leads.board', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1359, 'Tuesday', 14, '2024-10-01 08:30:51', '2024-10-01 08:30:51'),
(272, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create?stage=1', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1964, 'Tuesday', 14, '2024-10-01 08:31:00', '2024-10-01 08:31:00'),
(273, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 985, 'Tuesday', 14, '2024-10-01 08:31:04', '2024-10-01 08:31:04'),
(274, NULL, '127.0.0.1', 'leads/board', 'http://127.0.0.1:8000/leads/board', 'GET', 'laravel-crm.leads.board', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1181, 'Tuesday', 14, '2024-10-01 08:31:05', '2024-10-01 08:31:05'),
(275, NULL, '127.0.0.1', 'leads/filter', 'http://127.0.0.1:8000/leads/filter', 'POST', 'laravel-crm.leads.filter', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 998, 'Tuesday', 14, '2024-10-01 08:31:14', '2024-10-01 08:31:14'),
(276, NULL, '127.0.0.1', 'leads/board', 'http://127.0.0.1:8000/leads/board', 'GET', 'laravel-crm.leads.board', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1227, 'Tuesday', 14, '2024-10-01 08:31:15', '2024-10-01 08:31:15'),
(277, NULL, '127.0.0.1', 'leads/board', 'http://127.0.0.1:8000/leads/board', 'GET', 'laravel-crm.leads.board', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1832, 'Tuesday', 14, '2024-10-01 08:31:21', '2024-10-01 08:31:21'),
(278, NULL, '127.0.0.1', 'leads/list', 'http://127.0.0.1:8000/leads/list', 'GET', 'laravel-crm.leads.list', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1389, 'Tuesday', 14, '2024-10-01 08:31:27', '2024-10-01 08:31:27'),
(279, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1546, 'Tuesday', 14, '2024-10-01 08:31:28', '2024-10-01 08:31:28'),
(280, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1923, 'Tuesday', 14, '2024-10-01 08:31:32', '2024-10-01 08:31:32'),
(281, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1791, 'Tuesday', 14, '2024-10-01 08:32:42', '2024-10-01 08:32:42'),
(282, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2058, 'Tuesday', 14, '2024-10-01 08:41:13', '2024-10-01 08:41:13'),
(283, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2064, 'Tuesday', 14, '2024-10-01 08:41:40', '2024-10-01 08:41:40'),
(284, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'POST', 'laravel-crm.deals.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1775, 'Tuesday', 14, '2024-10-01 08:42:05', '2024-10-01 08:42:05'),
(285, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1931, 'Tuesday', 14, '2024-10-01 08:42:06', '2024-10-01 08:42:06'),
(286, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1806, 'Tuesday', 14, '2024-10-01 08:42:10', '2024-10-01 08:42:10'),
(287, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'POST', 'laravel-crm.deals.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 855, 'Tuesday', 14, '2024-10-01 08:42:49', '2024-10-01 08:42:49'),
(288, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2190, 'Tuesday', 14, '2024-10-01 08:42:51', '2024-10-01 08:42:51'),
(289, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1914, 'Tuesday', 14, '2024-10-01 08:43:09', '2024-10-01 08:43:09'),
(290, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'POST', 'laravel-crm.deals.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1425, 'Tuesday', 14, '2024-10-01 08:44:48', '2024-10-01 08:44:48'),
(291, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1553, 'Tuesday', 14, '2024-10-01 08:44:49', '2024-10-01 08:44:49'),
(292, NULL, '127.0.0.1', 'deals/3/edit', 'http://127.0.0.1:8000/deals/3/edit', 'GET', 'laravel-crm.deals.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1476, 'Tuesday', 14, '2024-10-01 08:44:56', '2024-10-01 08:44:56'),
(293, NULL, '127.0.0.1', 'deals/3', 'http://127.0.0.1:8000/deals/3', 'PUT', 'laravel-crm.deals.update', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1790, 'Tuesday', 14, '2024-10-01 08:45:00', '2024-10-01 08:45:00'),
(294, NULL, '127.0.0.1', 'deals/3', 'http://127.0.0.1:8000/deals/3', 'GET', 'laravel-crm.deals.show', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2124, 'Tuesday', 14, '2024-10-01 08:45:02', '2024-10-01 08:45:02'),
(295, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1608, 'Tuesday', 14, '2024-10-01 08:45:09', '2024-10-01 08:45:09'),
(296, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1863, 'Tuesday', 14, '2024-10-01 08:45:14', '2024-10-01 08:45:14'),
(297, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1672, 'Tuesday', 14, '2024-10-01 08:45:17', '2024-10-01 08:45:17'),
(298, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2046, 'Tuesday', 14, '2024-10-01 08:45:28', '2024-10-01 08:45:28'),
(299, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'POST', 'laravel-crm.quotes.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1890, 'Tuesday', 14, '2024-10-01 08:49:01', '2024-10-01 08:49:01'),
(300, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2143, 'Tuesday', 14, '2024-10-01 08:49:03', '2024-10-01 08:49:03'),
(301, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2046, 'Tuesday', 14, '2024-10-01 08:49:11', '2024-10-01 08:49:11'),
(302, NULL, '127.0.0.1', 'orders/create', 'http://127.0.0.1:8000/orders/create', 'GET', 'laravel-crm.orders.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1530, 'Tuesday', 14, '2024-10-01 08:49:15', '2024-10-01 08:49:15'),
(303, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'POST', 'laravel-crm.orders.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1424, 'Tuesday', 14, '2024-10-01 08:49:29', '2024-10-01 08:49:29'),
(304, NULL, '127.0.0.1', 'orders/create', 'http://127.0.0.1:8000/orders/create', 'GET', 'laravel-crm.orders.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1789, 'Tuesday', 14, '2024-10-01 08:49:30', '2024-10-01 08:49:30'),
(305, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'POST', 'laravel-crm.orders.store', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2008, 'Tuesday', 14, '2024-10-01 08:57:20', '2024-10-01 08:57:20'),
(306, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1127, 'Tuesday', 14, '2024-10-01 08:57:21', '2024-10-01 08:57:21'),
(307, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1602, 'Tuesday', 14, '2024-10-01 08:59:40', '2024-10-01 08:59:40'),
(308, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2012, 'Tuesday', 14, '2024-10-01 09:00:15', '2024-10-01 09:00:15'),
(309, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2167, 'Wednesday', 6, '2024-10-02 00:39:43', '2024-10-02 00:39:43'),
(310, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2121, 'Wednesday', 6, '2024-10-02 00:41:07', '2024-10-02 00:41:07'),
(311, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1722, 'Wednesday', 6, '2024-10-02 00:41:10', '2024-10-02 00:41:10'),
(312, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2075, 'Wednesday', 6, '2024-10-02 00:41:12', '2024-10-02 00:41:12'),
(313, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2182, 'Wednesday', 6, '2024-10-02 00:41:14', '2024-10-02 00:41:14'),
(314, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1589, 'Wednesday', 6, '2024-10-02 00:41:16', '2024-10-02 00:41:16'),
(315, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1570, 'Wednesday', 6, '2024-10-02 00:41:19', '2024-10-02 00:41:19'),
(316, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1677, 'Wednesday', 6, '2024-10-02 00:48:34', '2024-10-02 00:48:34'),
(317, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1804, 'Wednesday', 6, '2024-10-02 00:48:38', '2024-10-02 00:48:38'),
(318, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1447, 'Wednesday', 9, '2024-10-02 03:46:33', '2024-10-02 03:46:33'),
(319, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2031, 'Wednesday', 9, '2024-10-02 03:47:07', '2024-10-02 03:47:07'),
(320, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2374, 'Wednesday', 9, '2024-10-02 03:48:44', '2024-10-02 03:48:44'),
(321, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1977, 'Wednesday', 9, '2024-10-02 03:48:49', '2024-10-02 03:48:49'),
(322, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2052, 'Wednesday', 9, '2024-10-02 03:48:53', '2024-10-02 03:48:53'),
(323, NULL, '127.0.0.1', 'notes', 'http://127.0.0.1:8000/notes', 'GET', 'laravel-crm.notes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1783, 'Wednesday', 9, '2024-10-02 03:48:56', '2024-10-02 03:48:56'),
(324, NULL, '127.0.0.1', 'calls', 'http://127.0.0.1:8000/calls', 'GET', 'laravel-crm.calls.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1892, 'Wednesday', 9, '2024-10-02 03:48:58', '2024-10-02 03:48:58'),
(325, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2144, 'Wednesday', 9, '2024-10-02 03:49:00', '2024-10-02 03:49:00'),
(326, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1660, 'Wednesday', 9, '2024-10-02 03:49:01', '2024-10-02 03:49:01'),
(327, NULL, '127.0.0.1', 'organisations', 'http://127.0.0.1:8000/organisations', 'GET', 'laravel-crm.organisations.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1788, 'Wednesday', 9, '2024-10-02 03:49:04', '2024-10-02 03:49:04'),
(328, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1611, 'Wednesday', 9, '2024-10-02 03:49:07', '2024-10-02 03:49:07'),
(329, NULL, '127.0.0.1', 'users', 'http://127.0.0.1:8000/users', 'GET', 'laravel-crm.users.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1647, 'Wednesday', 9, '2024-10-02 03:49:09', '2024-10-02 03:49:09'),
(330, NULL, '127.0.0.1', 'crm-teams', 'http://127.0.0.1:8000/crm-teams', 'GET', 'laravel-crm.teams.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1211, 'Wednesday', 9, '2024-10-02 03:49:15', '2024-10-02 03:49:15'),
(331, NULL, '127.0.0.1', 'crm-teams/create', 'http://127.0.0.1:8000/crm-teams/create', 'GET', 'laravel-crm.teams.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1866, 'Wednesday', 9, '2024-10-02 03:49:19', '2024-10-02 03:49:19'),
(332, NULL, '127.0.0.1', 'products', 'http://127.0.0.1:8000/products', 'GET', 'laravel-crm.products.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1533, 'Wednesday', 9, '2024-10-02 03:49:25', '2024-10-02 03:49:25'),
(333, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1182, 'Wednesday', 9, '2024-10-02 03:49:28', '2024-10-02 03:49:28'),
(334, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1676, 'Wednesday', 9, '2024-10-02 03:49:40', '2024-10-02 03:49:40');
INSERT INTO `usage_requests` (`id`, `team_id`, `host`, `path`, `url`, `method`, `route`, `visitor`, `user_agent`, `response_time`, `day`, `hour`, `created_at`, `updated_at`) VALUES
(335, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1930, 'Wednesday', 9, '2024-10-02 03:51:41', '2024-10-02 03:51:41'),
(336, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'GET', 'laravel-crm.roles.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1675, 'Wednesday', 9, '2024-10-02 03:51:46', '2024-10-02 03:51:46'),
(337, NULL, '127.0.0.1', 'labels', 'http://127.0.0.1:8000/labels', 'GET', 'laravel-crm.labels.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1595, 'Wednesday', 9, '2024-10-02 03:51:56', '2024-10-02 03:51:56'),
(338, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1793, 'Wednesday', 9, '2024-10-02 03:51:57', '2024-10-02 03:51:57'),
(339, NULL, '127.0.0.1', 'product-categories', 'http://127.0.0.1:8000/product-categories', 'GET', 'laravel-crm.product-categories.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1871, 'Wednesday', 9, '2024-10-02 03:52:00', '2024-10-02 03:52:00'),
(340, NULL, '127.0.0.1', 'integrations/xero', 'http://127.0.0.1:8000/integrations/xero', 'GET', 'laravel-crm.integrations.xero', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2009, 'Wednesday', 9, '2024-10-02 03:52:03', '2024-10-02 03:52:03'),
(341, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2133, 'Wednesday', 9, '2024-10-02 03:52:05', '2024-10-02 03:52:05'),
(342, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1283, 'Wednesday', 9, '2024-10-02 03:52:14', '2024-10-02 03:52:14'),
(343, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1580, 'Wednesday', 9, '2024-10-02 03:52:16', '2024-10-02 03:52:16'),
(344, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1926, 'Wednesday', 9, '2024-10-02 03:52:17', '2024-10-02 03:52:17'),
(345, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1196, 'Wednesday', 9, '2024-10-02 03:52:22', '2024-10-02 03:52:22'),
(346, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 4263, 'Wednesday', 9, '2024-10-02 04:05:50', '2024-10-02 04:05:50'),
(347, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1311, 'Wednesday', 9, '2024-10-02 04:14:03', '2024-10-02 04:14:03'),
(348, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1388, 'Wednesday', 9, '2024-10-02 04:14:06', '2024-10-02 04:14:06'),
(349, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1656, 'Wednesday', 9, '2024-10-02 04:17:42', '2024-10-02 04:17:42'),
(350, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1475, 'Wednesday', 9, '2024-10-02 04:20:11', '2024-10-02 04:20:11'),
(351, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1818, 'Wednesday', 9, '2024-10-02 04:25:10', '2024-10-02 04:25:10'),
(352, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1358, 'Wednesday', 9, '2024-10-02 04:25:16', '2024-10-02 04:25:16'),
(353, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1631, 'Wednesday', 9, '2024-10-02 04:25:19', '2024-10-02 04:25:19'),
(354, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1582, 'Wednesday', 9, '2024-10-02 04:25:23', '2024-10-02 04:25:23'),
(355, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1523, 'Wednesday', 9, '2024-10-02 04:25:26', '2024-10-02 04:25:26'),
(356, NULL, '127.0.0.1', 'leads/create', 'http://127.0.0.1:8000/leads/create?id=5&model=client', 'GET', 'laravel-crm.leads.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2238, 'Wednesday', 9, '2024-10-02 04:25:30', '2024-10-02 04:25:30'),
(357, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1882, 'Wednesday', 9, '2024-10-02 04:25:34', '2024-10-02 04:25:34'),
(358, NULL, '127.0.0.1', 'deals/create', 'http://127.0.0.1:8000/deals/create?id=5&model=client', 'GET', 'laravel-crm.deals.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2068, 'Wednesday', 9, '2024-10-02 04:25:38', '2024-10-02 04:25:38'),
(359, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2051, 'Wednesday', 9, '2024-10-02 04:25:41', '2024-10-02 04:25:41'),
(360, NULL, '127.0.0.1', 'quotes/create', 'http://127.0.0.1:8000/quotes/create?id=5&model=client', 'GET', 'laravel-crm.quotes.create', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1853, 'Wednesday', 9, '2024-10-02 04:25:43', '2024-10-02 04:25:43'),
(361, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1267, 'Wednesday', 9, '2024-10-02 04:25:49', '2024-10-02 04:25:49'),
(362, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1529, 'Wednesday', 9, '2024-10-02 04:25:53', '2024-10-02 04:25:53'),
(363, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1884, 'Wednesday', 9, '2024-10-02 04:26:31', '2024-10-02 04:26:31'),
(364, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2085, 'Wednesday', 9, '2024-10-02 04:26:33', '2024-10-02 04:26:33'),
(365, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1332, 'Wednesday', 9, '2024-10-02 04:26:34', '2024-10-02 04:26:34'),
(366, NULL, '127.0.0.1', 'clients', 'http://127.0.0.1:8000/clients', 'GET', 'laravel-crm.clients.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1495, 'Wednesday', 9, '2024-10-02 04:26:35', '2024-10-02 04:26:35'),
(367, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1479, 'Wednesday', 10, '2024-10-02 04:30:48', '2024-10-02 04:30:48'),
(368, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1593, 'Wednesday', 10, '2024-10-02 04:30:49', '2024-10-02 04:30:49'),
(369, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1777, 'Wednesday', 10, '2024-10-02 04:30:58', '2024-10-02 04:30:58'),
(370, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2046, 'Wednesday', 10, '2024-10-02 04:31:03', '2024-10-02 04:31:03'),
(371, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1310, 'Wednesday', 10, '2024-10-02 04:31:07', '2024-10-02 04:31:07'),
(372, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1569, 'Wednesday', 10, '2024-10-02 04:31:10', '2024-10-02 04:31:10'),
(373, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1319, 'Wednesday', 10, '2024-10-02 04:31:55', '2024-10-02 04:31:55'),
(374, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2044, 'Wednesday', 10, '2024-10-02 04:31:58', '2024-10-02 04:31:58'),
(375, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2142, 'Thursday', 5, '2024-10-03 00:28:15', '2024-10-03 00:28:15'),
(376, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2486, 'Thursday', 5, '2024-10-03 00:28:18', '2024-10-03 00:28:18'),
(377, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1472, 'Thursday', 6, '2024-10-03 00:31:58', '2024-10-03 00:31:58'),
(378, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1512, 'Thursday', 6, '2024-10-03 00:32:13', '2024-10-03 00:32:13'),
(379, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1818, 'Thursday', 6, '2024-10-03 00:32:45', '2024-10-03 00:32:45'),
(380, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2544, 'Thursday', 6, '2024-10-03 00:34:38', '2024-10-03 00:34:38'),
(381, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1965, 'Thursday', 6, '2024-10-03 00:37:56', '2024-10-03 00:37:56'),
(382, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3424, 'Thursday', 6, '2024-10-03 00:44:10', '2024-10-03 00:44:10'),
(383, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1327, 'Thursday', 6, '2024-10-03 00:44:14', '2024-10-03 00:44:14'),
(384, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1812, 'Thursday', 6, '2024-10-03 00:44:34', '2024-10-03 00:44:34'),
(385, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1231, 'Thursday', 6, '2024-10-03 00:44:41', '2024-10-03 00:44:41'),
(386, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1110, 'Thursday', 6, '2024-10-03 00:45:32', '2024-10-03 00:45:32'),
(387, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1360, 'Thursday', 6, '2024-10-03 00:45:34', '2024-10-03 00:45:34'),
(388, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1547, 'Thursday', 6, '2024-10-03 00:45:35', '2024-10-03 00:45:35'),
(389, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1752, 'Thursday', 6, '2024-10-03 00:45:36', '2024-10-03 00:45:36'),
(390, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2181, 'Thursday', 6, '2024-10-03 00:45:38', '2024-10-03 00:45:38'),
(391, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1398, 'Thursday', 6, '2024-10-03 00:45:41', '2024-10-03 00:45:41'),
(392, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1571, 'Thursday', 6, '2024-10-03 00:45:43', '2024-10-03 00:45:43'),
(393, NULL, '127.0.0.1', 'quotes', 'http://127.0.0.1:8000/quotes', 'GET', 'laravel-crm.quotes.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1637, 'Thursday', 6, '2024-10-03 00:45:49', '2024-10-03 00:45:49'),
(394, NULL, '127.0.0.1', 'invoices', 'http://127.0.0.1:8000/invoices', 'GET', 'laravel-crm.invoices.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1701, 'Thursday', 6, '2024-10-03 00:46:21', '2024-10-03 00:46:21'),
(395, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1965, 'Thursday', 6, '2024-10-03 00:48:13', '2024-10-03 00:48:13'),
(396, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1820, 'Thursday', 6, '2024-10-03 00:48:23', '2024-10-03 00:48:23'),
(397, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2089, 'Thursday', 6, '2024-10-03 00:48:25', '2024-10-03 00:48:25'),
(398, NULL, '127.0.0.1', 'activities', 'http://127.0.0.1:8000/activities', 'GET', 'laravel-crm.activities.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1268, 'Thursday', 6, '2024-10-03 00:48:27', '2024-10-03 00:48:27'),
(399, NULL, '127.0.0.1', 'orders', 'http://127.0.0.1:8000/orders', 'GET', 'laravel-crm.orders.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1362, 'Thursday', 6, '2024-10-03 00:48:29', '2024-10-03 00:48:29'),
(400, NULL, '127.0.0.1', 'deliveries', 'http://127.0.0.1:8000/deliveries', 'GET', 'laravel-crm.deliveries.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1244, 'Thursday', 6, '2024-10-03 00:48:34', '2024-10-03 00:48:34'),
(401, NULL, '127.0.0.1', 'people', 'http://127.0.0.1:8000/people', 'GET', 'laravel-crm.people.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1717, 'Thursday', 6, '2024-10-03 00:48:36', '2024-10-03 00:48:36'),
(402, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2203, 'Thursday', 6, '2024-10-03 00:48:58', '2024-10-03 00:48:58'),
(403, NULL, '127.0.0.1', 'integrations/xero', 'http://127.0.0.1:8000/integrations/xero', 'GET', 'laravel-crm.integrations.xero', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1939, 'Thursday', 6, '2024-10-03 00:49:09', '2024-10-03 00:49:09'),
(404, NULL, '127.0.0.1', 'pipelines', 'http://127.0.0.1:8000/pipelines', 'GET', 'laravel-crm.pipelines.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1359, 'Thursday', 6, '2024-10-03 00:49:11', '2024-10-03 00:49:11'),
(405, NULL, '127.0.0.1', 'settings', 'http://127.0.0.1:8000/settings', 'GET', 'laravel-crm.settings.edit', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1774, 'Thursday', 6, '2024-10-03 00:49:17', '2024-10-03 00:49:17'),
(406, NULL, '127.0.0.1', 'roles', 'http://127.0.0.1:8000/roles', 'GET', 'laravel-crm.roles.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1776, 'Thursday', 6, '2024-10-03 00:49:19', '2024-10-03 00:49:19'),
(407, NULL, '127.0.0.1', 'pipeline-stages', 'http://127.0.0.1:8000/pipeline-stages', 'GET', 'laravel-crm.pipeline-stages.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1964, 'Thursday', 6, '2024-10-03 00:49:21', '2024-10-03 00:49:21'),
(408, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1795, 'Thursday', 6, '2024-10-03 00:49:23', '2024-10-03 00:49:23'),
(409, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1868, 'Thursday', 6, '2024-10-03 00:49:27', '2024-10-03 00:49:27'),
(410, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3760, 'Thursday', 6, '2024-10-03 00:58:00', '2024-10-03 00:58:00'),
(411, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1913, 'Thursday', 6, '2024-10-03 00:58:01', '2024-10-03 00:58:01'),
(412, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1076, 'Thursday', 6, '2024-10-03 00:58:03', '2024-10-03 00:58:03'),
(413, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 3630, 'Thursday', 6, '2024-10-03 01:06:16', '2024-10-03 01:06:16'),
(414, NULL, '127.0.0.1', 'tax-rates', 'http://127.0.0.1:8000/tax-rates', 'GET', 'laravel-crm.tax-rates.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1764, 'Thursday', 6, '2024-10-03 01:06:17', '2024-10-03 01:06:17'),
(415, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1374, 'Thursday', 6, '2024-10-03 01:06:24', '2024-10-03 01:06:24'),
(416, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1522, 'Thursday', 6, '2024-10-03 01:07:25', '2024-10-03 01:07:25'),
(417, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1706, 'Thursday', 6, '2024-10-03 01:07:26', '2024-10-03 01:07:26'),
(418, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1942, 'Thursday', 6, '2024-10-03 01:07:28', '2024-10-03 01:07:28'),
(419, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1932, 'Thursday', 6, '2024-10-03 01:07:53', '2024-10-03 01:07:53'),
(420, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1264, 'Thursday', 6, '2024-10-03 01:07:55', '2024-10-03 01:07:55'),
(421, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1406, 'Thursday', 6, '2024-10-03 01:07:56', '2024-10-03 01:07:56'),
(422, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1556, 'Thursday', 6, '2024-10-03 01:07:57', '2024-10-03 01:07:57'),
(423, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1746, 'Thursday', 6, '2024-10-03 01:21:18', '2024-10-03 01:21:18'),
(424, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1624, 'Thursday', 6, '2024-10-03 01:21:25', '2024-10-03 01:21:25'),
(425, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1555, 'Thursday', 6, '2024-10-03 01:21:54', '2024-10-03 01:21:54'),
(426, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1653, 'Thursday', 6, '2024-10-03 01:21:55', '2024-10-03 01:21:55'),
(427, NULL, '127.0.0.1', '/', 'http://127.0.0.1:8000', 'GET', 'laravel-crm.dashboard', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1319, 'Thursday', 6, '2024-10-03 01:21:57', '2024-10-03 01:21:57'),
(428, NULL, '127.0.0.1', 'leads', 'http://127.0.0.1:8000/leads', 'GET', 'laravel-crm.leads.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1332, 'Thursday', 6, '2024-10-03 01:22:09', '2024-10-03 01:22:09'),
(429, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1313, 'Thursday', 6, '2024-10-03 01:22:12', '2024-10-03 01:22:12'),
(430, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1765, 'Thursday', 6, '2024-10-03 01:25:19', '2024-10-03 01:25:19'),
(431, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 2234, 'Thursday', 6, '2024-10-03 01:25:21', '2024-10-03 01:25:21'),
(432, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1388, 'Thursday', 6, '2024-10-03 01:25:22', '2024-10-03 01:25:22'),
(433, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1540, 'Thursday', 6, '2024-10-03 01:25:23', '2024-10-03 01:25:23'),
(434, NULL, '127.0.0.1', 'deals', 'http://127.0.0.1:8000/deals', 'GET', 'laravel-crm.deals.index', '*0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1300, 'Thursday', 6, '2024-10-03 01:25:32', '2024-10-03 01:25:32');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `crm_access` tinyint(1) NOT NULL DEFAULT 0,
  `last_online_at` timestamp NULL DEFAULT NULL,
  `current_crm_team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `crm_access`, `last_online_at`, `current_crm_team_id`) VALUES
(1, 'Yashpal Modi', 'admin@admin.com', NULL, '$2y$10$HPFp6p3/l/iXdErTROdLoeQU62gYBX2KlWiUHsVjy/Pfy1g9GzYc2', NULL, '2024-10-01 06:33:29', '2024-10-01 06:33:29', 1, '2024-10-03 01:25:31', NULL),
(2, 'Harshal Patel', 'harshal@yopmail.com', NULL, '$2y$10$Bh.Q/fYl84CmMqMXJIy6Z.cI3qbMIXbHuW.gQuglEKw3dRvezpmuO', NULL, '2024-10-01 07:15:36', '2024-10-01 07:15:36', 0, NULL, NULL),
(3, 'Prof. Anibal Sporer', 'tbashirian@example.net', '2024-10-01 07:26:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3GRmv27yZJ', '2024-10-01 07:26:47', '2024-10-01 07:26:47', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xero_contacts`
--

CREATE TABLE `xero_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organisation_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xero_invoices`
--

CREATE TABLE `xero_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `xero_type` varchar(255) NOT NULL,
  `xero_id` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `total_tax` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `amount_due` int(11) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `amount_credited` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `line_amount_types` varchar(255) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `fully_paid_at` datetime DEFAULT NULL,
  `xero_updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xero_items`
--

CREATE TABLE `xero_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inventory_tracked` tinyint(1) NOT NULL DEFAULT 0,
  `is_purchased` tinyint(1) NOT NULL DEFAULT 0,
  `purchase_price` int(11) DEFAULT NULL,
  `purchase_description` varchar(255) DEFAULT NULL,
  `is_sold` tinyint(1) NOT NULL DEFAULT 0,
  `sell_price` int(11) DEFAULT NULL,
  `sell_description` varchar(255) DEFAULT NULL,
  `quantity_on_hand` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xero_people`
--

CREATE TABLE `xero_people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xero_purchase_orders`
--

CREATE TABLE `xero_purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `xero_type` varchar(255) NOT NULL,
  `xero_id` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `total_tax` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `line_amount_types` varchar(255) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `xero_updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xero_tokens`
--

CREATE TABLE `xero_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_token` text DEFAULT NULL,
  `access_token` text NOT NULL,
  `expires_in` varchar(255) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `scopes` varchar(255) NOT NULL,
  `auth_event_id` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `tenant_type` varchar(255) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  `created_date_utc` varchar(255) DEFAULT NULL,
  `updated_date_utc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_causeable_type_causeable_id_index` (`causeable_type`,`causeable_id`),
  ADD KEY `activities_timelineable_type_timelineable_id_index` (`timelineable_type`,`timelineable_id`),
  ADD KEY `activities_recordable_type_recordable_id_index` (`recordable_type`,`recordable_id`),
  ADD KEY `activities_team_id_index` (`team_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_addressable_type_addressable_id_index` (`addressable_type`,`addressable_id`),
  ADD KEY `addresses_user_created_id_foreign` (`user_created_id`),
  ADD KEY `addresses_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `addresses_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `addresses_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `addresses_team_id_index` (`team_id`),
  ADD KEY `addresses_address_type_id_index` (`address_type_id`);

--
-- Indexes for table `address_types`
--
ALTER TABLE `address_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_types_team_id_index` (`team_id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_callable_type_callable_id_index` (`callable_type`,`callable_id`),
  ADD KEY `calls_user_created_id_foreign` (`user_created_id`),
  ADD KEY `calls_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `calls_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `calls_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `calls_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `calls_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `calls_team_id_index` (`team_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_clientable_type_clientable_id_index` (`clientable_type`,`clientable_id`),
  ADD KEY `clients_user_created_id_foreign` (`user_created_id`),
  ADD KEY `clients_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `clients_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `clients_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `clients_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `clients_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `clients_team_id_index` (`team_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_contactable_type_contactable_id_index` (`contactable_type`,`contactable_id`),
  ADD KEY `contacts_entityable_type_entityable_id_index` (`entityable_type`,`entityable_id`),
  ADD KEY `contacts_user_created_id_foreign` (`user_created_id`),
  ADD KEY `contacts_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `contacts_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `contacts_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `contacts_team_id_index` (`team_id`);

--
-- Indexes for table `contact_contact_type`
--
ALTER TABLE `contact_contact_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_contact_type_contact_id_index` (`contact_id`),
  ADD KEY `contact_contact_type_contact_type_id_index` (`contact_type_id`);

--
-- Indexes for table `contact_types`
--
ALTER TABLE `contact_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_types_team_id_index` (`team_id`);

--
-- Indexes for table `crm_teams`
--
ALTER TABLE `crm_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_teams_user_id_foreign` (`user_id`),
  ADD KEY `crm_teams_team_id_index` (`team_id`);

--
-- Indexes for table `crm_team_invitations`
--
ALTER TABLE `crm_team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crm_team_invitations_crm_team_id_email_unique` (`crm_team_id`,`email`);

--
-- Indexes for table `crm_team_user`
--
ALTER TABLE `crm_team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crm_team_user_crm_team_id_user_id_unique` (`crm_team_id`,`user_id`),
  ADD KEY `crm_team_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_user_created_id_foreign` (`user_created_id`),
  ADD KEY `deals_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `deals_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `deals_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `deals_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `deals_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `deals_lead_id_index` (`lead_id`),
  ADD KEY `deals_person_id_index` (`person_id`),
  ADD KEY `deals_organisation_id_index` (`organisation_id`),
  ADD KEY `deals_team_id_index` (`team_id`);

--
-- Indexes for table `deal_products`
--
ALTER TABLE `deal_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_products_team_id_index` (`team_id`),
  ADD KEY `deal_products_deal_id_index` (`deal_id`),
  ADD KEY `deal_products_product_id_index` (`product_id`),
  ADD KEY `deal_products_product_variation_id_index` (`product_variation_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_user_created_id_foreign` (`user_created_id`),
  ADD KEY `deliveries_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `deliveries_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `deliveries_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `deliveries_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `deliveries_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `deliveries_team_id_index` (`team_id`),
  ADD KEY `deliveries_order_id_index` (`order_id`);

--
-- Indexes for table `delivery_products`
--
ALTER TABLE `delivery_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_products_team_id_index` (`team_id`),
  ADD KEY `delivery_products_delivery_id_index` (`delivery_id`),
  ADD KEY `delivery_products_order_product_id_index` (`order_product_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_is_trusted_index` (`is_trusted`),
  ADD KEY `devices_is_untrusted_index` (`is_untrusted`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_emailable_type_emailable_id_index` (`emailable_type`,`emailable_id`),
  ADD KEY `emails_user_created_id_foreign` (`user_created_id`),
  ADD KEY `emails_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `emails_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `emails_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `emails_team_id_index` (`team_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_team_id_index` (`team_id`),
  ADD KEY `fields_field_group_id_index` (`field_group_id`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_team_id_index` (`team_id`);

--
-- Indexes for table `field_models`
--
ALTER TABLE `field_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_models_team_id_index` (`team_id`),
  ADD KEY `field_models_field_id_index` (`field_id`);

--
-- Indexes for table `field_options`
--
ALTER TABLE `field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_options_team_id_index` (`team_id`);

--
-- Indexes for table `field_values`
--
ALTER TABLE `field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_values_field_valueable_type_field_valueable_id_index` (`field_valueable_type`,`field_valueable_id`),
  ADD KEY `field_values_field_id_index` (`field_id`),
  ADD KEY `field_values_team_id_index` (`team_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_fileable_type_fileable_id_index` (`fileable_type`,`fileable_id`),
  ADD KEY `files_user_created_id_foreign` (`user_created_id`),
  ADD KEY `files_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `files_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `files_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `files_team_id_index` (`team_id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industries_team_id_index` (`team_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_created_id_foreign` (`user_created_id`),
  ADD KEY `invoices_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `invoices_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `invoices_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `invoices_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `invoices_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `invoices_team_id_index` (`team_id`),
  ADD KEY `invoices_order_id_index` (`order_id`),
  ADD KEY `invoices_person_id_index` (`person_id`),
  ADD KEY `invoices_organisation_id_index` (`organisation_id`);

--
-- Indexes for table `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_lines_team_id_index` (`team_id`),
  ADD KEY `invoice_lines_invoice_id_index` (`invoice_id`),
  ADD KEY `invoice_lines_product_id_index` (`product_id`),
  ADD KEY `invoice_lines_product_variation_id_index` (`product_variation_id`),
  ADD KEY `invoice_lines_order_product_id_index` (`order_product_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `labels_team_id_index` (`team_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_user_created_id_foreign` (`user_created_id`),
  ADD KEY `leads_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `leads_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `leads_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `leads_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `leads_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `leads_person_id_index` (`person_id`),
  ADD KEY `leads_organisation_id_index` (`organisation_id`),
  ADD KEY `leads_lead_status_id_index` (`lead_status_id`),
  ADD KEY `leads_lead_source_id_index` (`lead_source_id`),
  ADD KEY `leads_team_id_index` (`team_id`);

--
-- Indexes for table `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_sources_team_id_index` (`team_id`);

--
-- Indexes for table `lead_statuses`
--
ALTER TABLE `lead_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_statuses_team_id_index` (`team_id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logins_device_id_index` (`device_id`);

--
-- Indexes for table `lunches`
--
ALTER TABLE `lunches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lunches_lunchable_type_lunchable_id_index` (`lunchable_type`,`lunchable_id`),
  ADD KEY `lunches_user_created_id_foreign` (`user_created_id`),
  ADD KEY `lunches_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `lunches_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `lunches_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `lunches_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `lunches_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `lunches_team_id_index` (`team_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_meetingable_type_meetingable_id_index` (`meetingable_type`,`meetingable_id`),
  ADD KEY `meetings_user_created_id_foreign` (`user_created_id`),
  ADD KEY `meetings_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `meetings_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `meetings_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `meetings_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `meetings_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `meetings_team_id_index` (`team_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_noteable_type_noteable_id_index` (`noteable_type`,`noteable_id`),
  ADD KEY `notes_user_created_id_foreign` (`user_created_id`),
  ADD KEY `notes_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `notes_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `notes_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `notes_team_id_index` (`team_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_created_id_foreign` (`user_created_id`),
  ADD KEY `orders_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `orders_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `orders_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `orders_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `orders_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `orders_team_id_index` (`team_id`),
  ADD KEY `orders_lead_id_index` (`lead_id`),
  ADD KEY `orders_deal_id_index` (`deal_id`),
  ADD KEY `orders_quote_id_index` (`quote_id`),
  ADD KEY `orders_person_id_index` (`person_id`),
  ADD KEY `orders_organisation_id_index` (`organisation_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_team_id_index` (`team_id`),
  ADD KEY `order_products_order_id_index` (`order_id`),
  ADD KEY `order_products_product_id_index` (`product_id`),
  ADD KEY `order_products_product_variation_id_index` (`product_variation_id`);

--
-- Indexes for table `organisations`
--
ALTER TABLE `organisations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organisations_user_created_id_foreign` (`user_created_id`),
  ADD KEY `organisations_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `organisations_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `organisations_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `organisations_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `organisations_team_id_index` (`team_id`),
  ADD KEY `organisations_organisation_type_id_index` (`organisation_type_id`),
  ADD KEY `organisations_industry_id_index` (`industry_id`),
  ADD KEY `organisations_timezone_id_index` (`timezone_id`);

--
-- Indexes for table `organisation_types`
--
ALTER TABLE `organisation_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organisation_types_team_id_index` (`team_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `people_organisation_id_foreign` (`organisation_id`),
  ADD KEY `people_user_created_id_foreign` (`user_created_id`),
  ADD KEY `people_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `people_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `people_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `people_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `people_team_id_index` (`team_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_phoneable_type_phoneable_id_index` (`phoneable_type`,`phoneable_id`),
  ADD KEY `phones_user_created_id_foreign` (`user_created_id`),
  ADD KEY `phones_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `phones_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `phones_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `phones_team_id_index` (`team_id`);

--
-- Indexes for table `pipelines`
--
ALTER TABLE `pipelines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pipelines_team_id_index` (`team_id`);

--
-- Indexes for table `pipeline_stages`
--
ALTER TABLE `pipeline_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pipeline_stages_team_id_index` (`team_id`);

--
-- Indexes for table `pipeline_stage_probabilities`
--
ALTER TABLE `pipeline_stage_probabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pipeline_stage_probabilities_team_id_index` (`team_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_created_id_foreign` (`user_created_id`),
  ADD KEY `products_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `products_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `products_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `products_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `products_team_id_index` (`team_id`),
  ADD KEY `products_product_category_id_index` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_team_id_index` (`team_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_prices_team_id_index` (`team_id`),
  ADD KEY `product_prices_product_id_index` (`product_id`),
  ADD KEY `product_prices_product_variation_id_index` (`product_variation_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_team_id_index` (`team_id`),
  ADD KEY `product_variations_product_id_index` (`product_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders_user_created_id_foreign` (`user_created_id`),
  ADD KEY `purchase_orders_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `purchase_orders_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `purchase_orders_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `purchase_orders_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `purchase_orders_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `purchase_orders_team_id_index` (`team_id`),
  ADD KEY `purchase_orders_order_id_index` (`order_id`),
  ADD KEY `purchase_orders_person_id_index` (`person_id`),
  ADD KEY `purchase_orders_organisation_id_index` (`organisation_id`);

--
-- Indexes for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_lines_team_id_index` (`team_id`),
  ADD KEY `purchase_order_lines_purchase_order_id_index` (`purchase_order_id`),
  ADD KEY `purchase_order_lines_product_id_index` (`product_id`),
  ADD KEY `purchase_order_lines_product_variation_id_index` (`product_variation_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotes_user_created_id_foreign` (`user_created_id`),
  ADD KEY `quotes_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `quotes_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `quotes_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `quotes_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `quotes_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `quotes_team_id_index` (`team_id`),
  ADD KEY `quotes_lead_id_index` (`lead_id`),
  ADD KEY `quotes_deal_id_index` (`deal_id`),
  ADD KEY `quotes_person_id_index` (`person_id`),
  ADD KEY `quotes_organisation_id_index` (`organisation_id`);

--
-- Indexes for table `quote_products`
--
ALTER TABLE `quote_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_products_team_id_index` (`team_id`),
  ADD KEY `quote_products_quote_id_index` (`quote_id`),
  ADD KEY `quote_products_product_id_index` (`product_id`),
  ADD KEY `quote_products_product_variation_id_index` (`product_variation_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_team_id_index` (`team_id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_taskable_type_taskable_id_index` (`taskable_type`,`taskable_id`),
  ADD KEY `tasks_user_created_id_foreign` (`user_created_id`),
  ADD KEY `tasks_user_updated_id_foreign` (`user_updated_id`),
  ADD KEY `tasks_user_deleted_id_foreign` (`user_deleted_id`),
  ADD KEY `tasks_user_restored_id_foreign` (`user_restored_id`),
  ADD KEY `tasks_user_owner_id_foreign` (`user_owner_id`),
  ADD KEY `tasks_user_assigned_id_foreign` (`user_assigned_id`),
  ADD KEY `tasks_team_id_index` (`team_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_team_id_index` (`team_id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usage_requests`
--
ALTER TABLE `usage_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_current_crm_team_id_index` (`current_crm_team_id`);

--
-- Indexes for table `xero_contacts`
--
ALTER TABLE `xero_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xero_contacts_team_id_index` (`team_id`);

--
-- Indexes for table `xero_invoices`
--
ALTER TABLE `xero_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xero_invoices_team_id_index` (`team_id`);

--
-- Indexes for table `xero_items`
--
ALTER TABLE `xero_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xero_items_team_id_index` (`team_id`);

--
-- Indexes for table `xero_people`
--
ALTER TABLE `xero_people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xero_people_team_id_index` (`team_id`);

--
-- Indexes for table `xero_purchase_orders`
--
ALTER TABLE `xero_purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xero_purchase_orders_team_id_index` (`team_id`);

--
-- Indexes for table `xero_tokens`
--
ALTER TABLE `xero_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `address_types`
--
ALTER TABLE `address_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_contact_type`
--
ALTER TABLE `contact_contact_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_types`
--
ALTER TABLE `contact_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crm_teams`
--
ALTER TABLE `crm_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crm_team_invitations`
--
ALTER TABLE `crm_team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_team_user`
--
ALTER TABLE `crm_team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deal_products`
--
ALTER TABLE `deal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_products`
--
ALTER TABLE `delivery_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `field_models`
--
ALTER TABLE `field_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_options`
--
ALTER TABLE `field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_values`
--
ALTER TABLE `field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_lines`
--
ALTER TABLE `invoice_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_statuses`
--
ALTER TABLE `lead_statuses`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lunches`
--
ALTER TABLE `lunches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organisations`
--
ALTER TABLE `organisations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `organisation_types`
--
ALTER TABLE `organisation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pipelines`
--
ALTER TABLE `pipelines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pipeline_stages`
--
ALTER TABLE `pipeline_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pipeline_stage_probabilities`
--
ALTER TABLE `pipeline_stage_probabilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quote_products`
--
ALTER TABLE `quote_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `usage_requests`
--
ALTER TABLE `usage_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xero_contacts`
--
ALTER TABLE `xero_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xero_invoices`
--
ALTER TABLE `xero_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xero_items`
--
ALTER TABLE `xero_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xero_people`
--
ALTER TABLE `xero_people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xero_purchase_orders`
--
ALTER TABLE `xero_purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xero_tokens`
--
ALTER TABLE `xero_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `addresses_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `addresses_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `addresses_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `calls_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `calls_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `calls_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `calls_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `calls_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clients_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clients_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clients_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clients_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clients_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `crm_teams`
--
ALTER TABLE `crm_teams`
  ADD CONSTRAINT `crm_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `crm_team_invitations`
--
ALTER TABLE `crm_team_invitations`
  ADD CONSTRAINT `crm_team_invitations_crm_team_id_foreign` FOREIGN KEY (`crm_team_id`) REFERENCES `crm_teams` (`id`);

--
-- Constraints for table `crm_team_user`
--
ALTER TABLE `crm_team_user`
  ADD CONSTRAINT `crm_team_user_crm_team_id_foreign` FOREIGN KEY (`crm_team_id`) REFERENCES `crm_teams` (`id`),
  ADD CONSTRAINT `crm_team_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `deals_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `deals_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `deals_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deals_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deals_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deals_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deals_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deals_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `deliveries_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deliveries_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deliveries_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deliveries_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deliveries_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deliveries_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `delivery_products`
--
ALTER TABLE `delivery_products`
  ADD CONSTRAINT `delivery_products_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`);

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emails_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emails_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emails_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `field_models`
--
ALTER TABLE `field_models`
  ADD CONSTRAINT `field_models_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`);

--
-- Constraints for table `field_values`
--
ALTER TABLE `field_values`
  ADD CONSTRAINT `field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `invoices_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `invoices_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `invoices_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD CONSTRAINT `invoice_lines_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `invoice_lines_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`),
  ADD CONSTRAINT `invoice_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `invoice_lines_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`);

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_lead_source_id_foreign` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_sources` (`id`),
  ADD CONSTRAINT `leads_lead_status_id_foreign` FOREIGN KEY (`lead_status_id`) REFERENCES `lead_statuses` (`id`),
  ADD CONSTRAINT `leads_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `leads_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `leads_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leads_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leads_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leads_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leads_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leads_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lunches`
--
ALTER TABLE `lunches`
  ADD CONSTRAINT `lunches_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lunches_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lunches_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lunches_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lunches_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lunches_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `meetings_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `meetings_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `meetings_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `meetings_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `meetings_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notes_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notes_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notes_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`),
  ADD CONSTRAINT `orders_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `orders_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `orders_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `orders_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`),
  ADD CONSTRAINT `orders_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `organisations`
--
ALTER TABLE `organisations`
  ADD CONSTRAINT `organisations_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `people_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `people_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `people_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `people_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `people_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `phones_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `phones_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `phones_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `purchase_orders_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `purchase_orders_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `purchase_orders_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD CONSTRAINT `purchase_order_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_order_lines_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`),
  ADD CONSTRAINT `purchase_order_lines_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`);

--
-- Constraints for table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`),
  ADD CONSTRAINT `quotes_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `quotes_organisation_id_foreign` FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `quotes_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `quotes_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotes_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotes_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotes_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotes_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotes_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_assigned_id_foreign` FOREIGN KEY (`user_assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_user_created_id_foreign` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_user_deleted_id_foreign` FOREIGN KEY (`user_deleted_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_user_owner_id_foreign` FOREIGN KEY (`user_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_user_restored_id_foreign` FOREIGN KEY (`user_restored_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_user_updated_id_foreign` FOREIGN KEY (`user_updated_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_current_crm_team_id_foreign` FOREIGN KEY (`current_crm_team_id`) REFERENCES `crm_teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
