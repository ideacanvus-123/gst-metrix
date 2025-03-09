-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2025 at 07:06 AM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pet_d_agogy`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_points`
--

CREATE TABLE `about_us_points` (
  `id` int NOT NULL,
  `cms_page_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `count` int DEFAULT NULL,
  `is_deleted` enum('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `about_us_points`
--

INSERT INTO `about_us_points` (`id`, `cms_page_id`, `title`, `count`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'Happy Clients', 120, '0', '2024-12-26 14:12:29', '2025-01-18 06:01:59'),
(2, 2, 'Years Of Work', 10, '0', '2024-12-26 14:13:16', '2025-01-18 06:02:02'),
(3, 2, 'Team Members', 50, '0', '2024-12-26 14:13:38', '2025-01-18 06:02:05'),
(4, 2, 'Happy Pets', 100, '0', '2024-12-26 14:13:58', '2025-01-18 06:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `behance_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `platform_fee` float(10,2) DEFAULT NULL,
  `service_tax` float(10,2) DEFAULT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `is_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `contact_email`, `profile_image`, `phone`, `address`, `password`, `linkedin_link`, `behance_link`, `twitter_link`, `platform_fee`, `service_tax`, `is_deleted`, `is_enabled`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admincontact@gmail.com', NULL, '(+551800) 45996-789', 'Kestopur, Udayan Pally, Baguihati, Kolkata, West Bengal, India', 'U2FsdGVkX19lh2EBbflBzmbxC4LO213oVmz8JrBjU0s=', 'https://www.linkedin.com/home?originalSubdomain=in', 'https://www.behance.net/', 'https://x.com/?lang=en&mx=2', 6.00, 7.00, '0', '1', '2024-12-11 14:14:04', '2025-02-20 05:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `appoinment_pet_details`
--

CREATE TABLE `appoinment_pet_details` (
  `id` int NOT NULL,
  `appoinment_id` int NOT NULL,
  `user_pet_id` int NOT NULL,
  `note` longtext COLLATE utf8_general_ci,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `appoinment_pet_details`
--

INSERT INTO `appoinment_pet_details` (`id`, `appoinment_id`, `user_pet_id`, `note`, `createdAt`, `updatedAT`) VALUES
(1, 1, 10, 'hihi', '2025-01-31 05:07:13', '2025-01-31 05:07:13'),
(2, 2, 1, 'take special care', '2025-01-31 07:07:36', '2025-01-31 07:07:36'),
(3, 3, 1, 'take special care', '2025-01-31 08:36:23', '2025-01-31 08:36:23'),
(4, 1, 12, 'qeeqew', '2025-01-31 05:07:13', '2025-01-31 10:09:32'),
(5, 4, 12, 'kjkj', '2025-01-31 11:53:46', '2025-01-31 11:53:46'),
(6, 4, 10, 'kjk', '2025-01-31 11:53:46', '2025-01-31 11:53:46'),
(7, 5, 1, 'take special care', '2025-01-31 12:12:44', '2025-01-31 12:12:44'),
(8, 6, 12, 'ihh', '2025-01-31 12:35:49', '2025-01-31 12:35:49'),
(9, 6, 10, 'jhj', '2025-01-31 12:35:49', '2025-01-31 12:35:49'),
(10, 7, 12, 'huh', '2025-01-31 12:41:55', '2025-01-31 12:41:55'),
(11, 7, 10, 'kj', '2025-01-31 12:41:55', '2025-01-31 12:41:55'),
(12, 1, 1, 'take special care', '2025-02-04 10:15:56', '2025-02-04 10:15:56'),
(13, 1, 1, 'take special care', '2025-02-04 10:19:43', '2025-02-04 10:19:43'),
(14, 3, 1, 'take special care', '2025-02-04 10:27:58', '2025-02-04 10:27:58'),
(15, 6, 12, 'jo', '2025-02-05 05:39:15', '2025-02-05 05:39:15'),
(16, 6, 10, 'kk', '2025-02-05 05:39:15', '2025-02-05 05:39:15'),
(17, 5, 1, 'take special care', '2025-02-05 12:57:25', '2025-02-05 12:57:25'),
(18, 6, 1, 'take special care', '2025-02-05 13:00:14', '2025-02-05 13:00:14'),
(19, 2, 39, 'rsersrs', '2025-02-17 06:33:17', '2025-02-17 06:33:17'),
(20, 2, 40, '', '2025-02-17 06:33:17', '2025-02-17 06:33:17'),
(21, 4, 39, 'ytuyt', '2025-02-18 05:44:11', '2025-02-18 05:44:11'),
(22, 4, 40, '', '2025-02-18 05:44:11', '2025-02-18 05:44:11'),
(23, 5, 39, 'test', '2025-02-18 13:26:33', '2025-02-18 13:26:33'),
(24, 5, 40, '', '2025-02-18 13:26:33', '2025-02-18 13:26:33'),
(25, 6, 39, 'test', '2025-02-18 13:30:43', '2025-02-18 13:30:43'),
(26, 6, 40, '', '2025-02-18 13:30:43', '2025-02-18 13:30:43'),
(27, 7, 39, 'test', '2025-02-18 13:32:24', '2025-02-18 13:32:24'),
(28, 7, 40, '', '2025-02-18 13:32:24', '2025-02-18 13:32:24'),
(29, 8, 39, '', '2025-02-20 06:06:15', '2025-02-20 06:06:15'),
(30, 8, 40, '', '2025-02-20 06:06:15', '2025-02-20 06:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `sitter_id` int DEFAULT NULL,
  `slot_id` int DEFAULT NULL,
  `my_pet_id` int DEFAULT NULL,
  `selected_slot_id` int DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `booking_status` enum('Ongoing','Upcoming','Completed','Not-attended','Canceled') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Upcoming',
  `sitter_service_id` int NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `total_payble_amount` float(10,2) DEFAULT NULL,
  `paid` enum('0','1') NOT NULL DEFAULT '0',
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `rescheduled_by_user` enum('0','1') NOT NULL DEFAULT '0',
  `rescheduled_by_sitter` enum('0','1') NOT NULL DEFAULT '0',
  `visit_per_day` varchar(255) DEFAULT NULL,
  `appointment_type` enum('atMyPlace','atClientLocation') NOT NULL DEFAULT 'atClientLocation',
  `completeTime` datetime DEFAULT NULL,
  `adminAmount` float(10,2) DEFAULT '0.00',
  `sitterAmount` float(10,2) DEFAULT '0.00',
  `note` longtext,
  `cancel_by` enum('user','sitter') DEFAULT NULL,
  `payment_intent_id` varchar(125) DEFAULT NULL,
  `client_secret` varchar(125) DEFAULT NULL,
  `user_address_id` int DEFAULT NULL,
  `flat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `service_time` enum('one','repeat','') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `service_tax` float(10,2) DEFAULT NULL,
  `platform_fee` float(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_days`
--

CREATE TABLE `appointment_days` (
  `id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `day_id` int DEFAULT NULL,
  `selected_slot_id` int DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` enum('upcoming','ongoing','complete','not-attend') DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `time_type` enum('night','visit') DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_slot_visits`
--

CREATE TABLE `appointment_slot_visits` (
  `id` int NOT NULL,
  `slot_id` int NOT NULL,
  `appointment_day_id` int NOT NULL,
  `status` enum('upcoming','ongoing','complete','not-attend') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'upcoming',
  `otp` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_image`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1736147582194_image-1736147582164.webp', 1, '0', '2024-11-26 14:23:47', '2024-11-26 14:23:47'),
(2, 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1736147836389_image-1736147836354.webp', 1, '0', '2024-11-26 14:24:14', '2024-11-26 14:24:14'),
(3, 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1736147938442_image-1736147938363.webp', 1, '0', '2024-11-26 14:24:14', '2024-11-26 14:24:14'),
(4, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739513640725_image-1739513640721.webp', 1, '1', '2025-02-14 06:14:00', '2025-02-14 08:10:41'),
(15, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739965067886_image-1739965067881.webp', 1, '1', '2025-02-19 11:37:47', '2025-02-19 11:38:10'),
(16, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739965134362_image-1739965134358.webp', 1, '0', '2025-02-19 11:38:54', '2025-02-19 11:38:54'),
(17, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739970583755_image-1739970583534.webp', 1, '0', '2025-02-19 13:09:43', '2025-02-19 13:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

CREATE TABLE `booking_statuses` (
  `id` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status`, `color_code`, `createdAt`, `updatedAt`) VALUES
(1, 'Upcoming', 'appointment_upcoming_status', '2024-11-12 07:17:28', '2024-11-12 07:17:28'),
(2, 'Not-attended', 'appointment_not_attended_status', '2024-11-12 07:18:23', '2024-11-12 07:18:23'),
(3, 'Canceled', 'appointment_cancel_status', '2024-11-12 07:18:23', '2024-11-12 07:18:23'),
(4, 'Completed', 'appointment_completed_status', '2024-11-12 07:18:23', '2024-11-12 07:18:23'),
(5, 'Ongoing', 'appointment_ongoing_status', '2024-11-12 07:18:23', '2024-11-12 07:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `sitter_id` int DEFAULT NULL,
  `is_deleted` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `sitter_id`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 72, '0', '2025-01-18 11:39:02', '2025-01-21 06:40:57'),
(2, 1, 45, '1', '2025-01-21 06:32:41', '2025-01-21 06:40:46'),
(3, 51, 72, '0', '2025-02-10 13:11:44', '2025-02-10 13:11:44'),
(4, 51, 91, '0', '2025-02-10 13:56:17', '2025-02-10 13:56:17'),
(5, 63, 100, '0', '2025-02-12 11:35:27', '2025-02-17 12:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `state_id` int NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city_name`, `latitude`, `longitude`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Birmingham', '33.5186', '-86.8104', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(2, 1, 'Montgomery', '32.3792', '-86.3077', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(3, 2, 'Anchorage', '61.2181', '-149.9003', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(4, 2, 'Fairbanks', '64.8378', '-147.7164', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(5, 3, 'Phoenix', '33.4484', '-112.0740', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(6, 3, 'Tucson', '32.2226', '-110.9747', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(7, 4, 'Little Rock', '34.7465', '-92.2896', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(8, 4, 'Fort Smith', '35.3859', '-94.3985', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(9, 5, 'Los Angeles', '34.0522', '-118.2437', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(10, 5, 'San Francisco', '37.7749', '-122.4194', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(11, 6, 'Denver', '39.7392', '-104.9903', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(12, 6, 'Colorado Springs', '38.8339', '-104.8214', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(13, 7, 'Miami', '25.7617', '-80.1918', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(14, 7, 'Orlando', '28.5383', '-81.3792', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(15, 8, 'Atlanta', '33.7490', '-84.3880', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(16, 8, 'Savannah', '32.0809', '-81.0912', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(17, 9, 'Honolulu', '21.3069', '-157.8583', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(18, 9, 'Hilo', '19.7297', '-155.0900', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(19, 10, 'Chicago', '41.8781', '-87.6298', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(20, 10, 'Springfield', '39.7983', '-89.6547', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(21, 11, 'New Orleans', '29.9511', '-90.0715', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(22, 11, 'Baton Rouge', '30.4515', '-91.1871', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(23, 12, 'Detroit', '42.3314', '-83.0458', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(24, 12, 'Grand Rapids', '42.9634', '-85.6681', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(25, 13, 'New York City', '40.7128', '-74.0060', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(26, 13, 'Buffalo', '42.8864', '-78.8784', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(27, 14, 'Houston', '29.7604', '-95.3698', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(28, 14, 'Austin', '30.2672', '-97.7431', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `cities_all`
--

CREATE TABLE `cities_all` (
  `id` int NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `type`, `title`, `content`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'privacy_policy', NULL, '<p>Privacy Policy</p><p>Effective Date: [05/02/25]</p><p><br></p><p>1. Introduction</p><p>Welcome to MyVoyages, a travel and lifestyle platform that connects users, allows itinerary curation, and facilitates booking services through our MVP concierges. By accessing or using MyVoyages, you agree to be bound by these Terms &amp; Conditions.</p><p><br></p><p>2. Eligibility &amp; Account Registration -</p><p>Users must be at least 18 years old to create an account.</p><p>- Users are responsible for maintaining the security of their accounts and passwords.</p><p>- MyVoyages reserves the right to suspend or terminate accounts that violate these terms.</p><p><br></p><p>3. Platform Usage &amp; Content -</p><p>Users can curate, share, and interact with travel content via the app.</p><p>- Any content shared must comply with community guidelines (no hate speech, illegal activities, or misinformation).</p><p>- MyVoyages reserves the right to remove or restrict content that violates policies.</p><p><br></p><p>4. Booking &amp; MVP Concierge Services</p><p>- Users can submit curated itineraries for travel planning and booking assistance with MVP concierges.</p><p>- MyVoyages acts as a facilitator, and all bookings are subject to the terms of the respective service providers.</p><p>- MyVoyages is not responsible for cancellations, service failures, or disputes between users and service providers.</p><p><br></p><p>5. Fees, Payments &amp; Refunds</p><p>- MyVoyages may charge subscription fees, booking commissions, or service fees as outlined in pricing terms.</p><p>- Fees are non-refundable, except in cases where MyVoyages explicitly agrees to a refund.</p><p>- Users must comply with payment processing policies when making transactions via the platform.</p><p><br></p><p>6. Intellectual Property</p><p>- MyVoyages retains all intellectual property rights related to the platform, branding, and proprietary features.</p><p>- Users grant MyVoyages a license to display user-generated content (e.g., reviews, itineraries) within the platform.</p><p><br></p><p>7. Limitation of Liability</p><p>- MyVoyages is not responsible for travel disruptions, financial losses, or service issues related to bookings.</p><p>- Users agree to use the platform at their own risk and acknowledge that third-party services may be involved.</p><p><br></p><p>8. Dispute Resolution</p><p>- Any disputes will first be attempted to be resolved through customer support.</p><p>- If unresolved, disputes will be subject to arbitration or jurisdiction of [Insert Legal Location] courts.</p><p><br></p><p>9. Modifications to Terms</p><p>- MyVoyages reserves the right to update or modify these terms at any time.</p><p>- Users will be notified of material changes and must agree to continue using the platform.</p><p><br></p><p>10. Contact Information</p><p>For questions, users can contact mailto:support@myvoyages.com.</p>', NULL, '2023-03-22 07:49:50', '2025-02-20 06:58:27'),
(2, 'about_us', 'Who we are !', '<p>Pet D Agogy About Us</p><p>Effective Date: [05/02/25]</p><p><br></p><p>2. Eligibility &amp; Account Registration -</p><p>Users must be at least 18 years old to create an account.</p><p>- Users are responsible for maintaining the security of their accounts and passwords.</p><p>- MyVoyages reserves the right to suspend or terminate accounts that violate these terms.</p><p><br></p><p>3. Platform Usage &amp; Content -</p><p>Users can curate, share, and interact with travel content via the app.</p><p>- Any content shared must comply with community guidelines (no hate speech, illegal activities, or misinformation).</p><p>- MyVoyages reserves the right to remove or restrict content that violates policies.</p><p><br></p><p>4. Booking &amp; MVP Concierge Services</p><p>- Users can submit curated itineraries for travel planning and booking assistance with MVP concierges.</p><p>- MyVoyages acts as a facilitator, and all bookings are subject to the terms of the respective service providers.</p><p>- MyVoyages is not responsible for cancellations, service failures, or disputes between users and service providers.</p><p><br></p><p>5. Fees, Payments &amp; Refunds</p><p>- MyVoyages may charge subscription fees, booking commissions, or service fees as outlined in pricing terms.</p><p>- Fees are non-refundable, except in cases where MyVoyages explicitly agrees to a refund.</p><p>- Users must comply with payment processing policies when making transactions via the platform.</p><p><br></p><p>6. Intellectual Property</p><p>- MyVoyages retains all intellectual property rights related to the platform, branding, and proprietary features.</p><p>- Users grant MyVoyages a license to display user-generated content (e.g., reviews, itineraries) within the platform.</p><p><br></p><p>7. Limitation of Liability</p><p>- MyVoyages is not responsible for travel disruptions, financial losses, or service issues related to bookings.</p><p>- Users agree to use the platform at their own risk and acknowledge that third-party services may be involved.</p><p><br></p><p>8. Dispute Resolution</p><p>- Any disputes will first be attempted to be resolved through customer support.</p><p>- If unresolved, disputes will be subject to arbitration or jurisdiction of [Insert Legal Location] courts.</p><p><br></p><p>9. Modifications to Terms</p><p>- MyVoyages reserves the right to update or modify these terms at any time.</p><p>- Users will be notified of material changes and must agree to continue using the platform.</p><p><br></p><p>10. Contact Information</p><p>For questions, users can contact mailto:support@myvoyages.com.</p>', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1740031708872_image-1740031708868.webp', '2023-03-22 07:49:50', '2025-02-20 06:40:13'),
(3, 'terms_conditions', NULL, '<p>Terms &amp; Conditions</p><p>Effective Date: [05/02/25]</p><p><br></p><p>1. Introduction</p><p>Welcome to MyVoyages, a travel and lifestyle platform that connects users, allows itinerary curation, and facilitates booking services through our MVP concierges. By accessing or using MyVoyages, you agree to be bound by these Terms &amp; Conditions.</p><p><br></p><p>2. Eligibility &amp; Account Registration -</p><p>Users must be at least 18 years old to create an account.</p><p>- Users are responsible for maintaining the security of their accounts and passwords.</p><p>- MyVoyages reserves the right to suspend or terminate accounts that violate these terms.</p><p><br></p><p>3. Platform Usage &amp; Content -</p><p>Users can curate, share, and interact with travel content via the app.</p><p>- Any content shared must comply with community guidelines (no hate speech, illegal activities, or misinformation).</p><p>- MyVoyages reserves the right to remove or restrict content that violates policies.</p><p><br></p><p>4. Booking &amp; MVP Concierge Services</p><p>- Users can submit curated itineraries for travel planning and booking assistance with MVP concierges.</p><p>- MyVoyages acts as a facilitator, and all bookings are subject to the terms of the respective service providers.</p><p>- MyVoyages is not responsible for cancellations, service failures, or disputes between users and service providers.</p><p><br></p><p>5. Fees, Payments &amp; Refunds</p><p>- MyVoyages may charge subscription fees, booking commissions, or service fees as outlined in pricing terms.</p><p>- Fees are non-refundable, except in cases where MyVoyages explicitly agrees to a refund.</p><p>- Users must comply with payment processing policies when making transactions via the platform.</p><p><br></p><p>6. Intellectual Property</p><p>- MyVoyages retains all intellectual property rights related to the platform, branding, and proprietary features.</p><p>- Users grant MyVoyages a license to display user-generated content (e.g., reviews, itineraries) within the platform.</p><p><br></p><p>7. Limitation of Liability</p><p>- MyVoyages is not responsible for travel disruptions, financial losses, or service issues related to bookings.</p><p>- Users agree to use the platform at their own risk and acknowledge that third-party services may be involved.</p><p><br></p><p>8. Dispute Resolution</p><p>- Any disputes will first be attempted to be resolved through customer support.</p><p>- If unresolved, disputes will be subject to arbitration or jurisdiction of [Insert Legal Location] courts.</p><p><br></p><p>9. Modifications to Terms</p><p>- MyVoyages reserves the right to update or modify these terms at any time.</p><p>- Users will be notified of material changes and must agree to continue using the platform.</p><p><br></p><p>10. Contact Information</p><p>For questions, users can contact mailto:support@myvoyages.com.</p>', NULL, '2023-03-22 07:49:50', '2025-02-20 06:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `user_id`, `full_name`, `email`, `phone`, `address`, `message`, `subject`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '1', '2024-12-27 14:17:47', '2025-02-04 08:23:01'),
(2, NULL, 'Jyoti', 'jyotivankala123@gmail.com', '07980507843', NULL, 'nn', 'nnn', '1', '2025-01-18 07:20:27', '2025-02-04 10:56:01'),
(3, NULL, 'Jyoti', 'jyotivankala123@gmail.com', '07980507843', NULL, 'nn', 'nnn', '0', '2025-01-18 07:20:43', '2025-01-18 07:20:43'),
(4, NULL, 'Jyoti', 'jyotivankala123@gmail.com', '07980507843', NULL, 'nn', 'nnn', '0', '2025-01-18 07:30:33', '2025-01-18 07:30:33'),
(5, NULL, 'Jyoti', 'jyotivankala123@gmail.com', '07980507843', NULL, 'nn', 'nnn', '0', '2025-01-18 07:34:06', '2025-01-18 07:34:06'),
(6, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'sdmv', 'sdaf', '0', '2025-01-18 07:41:01', '2025-01-18 07:41:01'),
(7, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'sdmv', 'sdaf', '0', '2025-01-18 07:42:34', '2025-01-18 07:42:34'),
(8, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'sdmv', 'sdaf', '0', '2025-01-18 07:43:16', '2025-01-18 07:43:16'),
(9, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'm', 'io', '0', '2025-01-18 08:03:29', '2025-01-18 08:03:29'),
(10, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'm', 'io', '0', '2025-01-18 08:03:50', '2025-01-18 08:03:50'),
(11, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'm', 'io', '0', '2025-01-18 08:04:24', '2025-01-18 08:04:24'),
(12, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '07980507843', NULL, 'jmkj', 'hihih', '0', '2025-01-20 05:58:00', '2025-01-20 05:58:00'),
(13, NULL, 'Jyoti Vankala', 'jyotivankala123@gmail.com', '99999999999999', NULL, 'jjj', '9999999', '0', '2025-01-21 14:32:47', '2025-01-21 14:32:47'),
(14, NULL, 'fgjhguih jknuyuh kj hiijinn j huguyuyh jguyijokj uyguyuiio hyguhij gu iuiojiohuyfty uhjkh u yg gyfbnjg ', 'k@gmail.com', '624535768', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.ghukhn k y iuihuiytu hk nmhuyt   kmhuyt6tijo jty7ruhjk jfyt 7iojhftruh jftyuopknnrfrkky7', 'gyuy hy nmgytrfy hftyu hryt7 drtyg httfy drtdtf httyfty drt', '0', '2025-01-21 14:33:13', '2025-01-21 14:33:13'),
(15, NULL, 'fgjhguih jknuyuh kj hiijinn j huguyuyh jguyijokj uyguyuiio hyguhij gu iuiojiohuyfty uhjkh u yg gyfbnjg ', 'k@gmail.com', '624535768', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.ghukhn k y iuihuiytu hk nmhuyt   kmhuyt6tijo jty7ruhjk jfyt 7iojhftruh jftyuopknnrfrkky7', 'gyuy hy nmgytrfy hftyu hryt7 drtyg httfy drtdtf httyfty drt', '0', '2025-01-21 14:33:19', '2025-01-21 14:33:19'),
(16, NULL, 'fgjhguih jknuyuh kj hiijinn j huguyuyh jguyijokj uyguyuiio hyguhij gu iuiojiohuyfty uhjkh u yg gyfbnjg ', 'k@gmail.com', '62453576', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.ghukhn k y iuihuiytu hk nmhuyt   kmhuyt6tijo jty7ruhjk jfyt 7iojhftruh jftyuopknnrfrkky7', 'gyuy hy nmgytrfy hftyu hryt7 drtyg httfy drtdtf httyfty drt', '0', '2025-01-21 14:33:54', '2025-01-21 14:33:54'),
(17, NULL, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '0', '2025-01-27 09:10:33', '2025-01-27 09:10:33'),
(18, NULL, 'test', 'test8@gmail.com', '4512754815', NULL, 'test message ', '', '0', '2025-01-27 09:22:02', '2025-01-27 09:22:02'),
(19, NULL, 'test', 'test8@gmail.com', '4512754815', NULL, 'test message ', '', '0', '2025-01-27 09:23:32', '2025-01-27 09:23:32'),
(20, NULL, 'test', 'test5@gmail.com', '1234568525', NULL, 'test', '', '0', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(21, NULL, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '0', '2025-02-04 07:52:39', '2025-02-04 07:52:39'),
(22, 65, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '0', '2025-02-04 07:56:37', '2025-02-04 07:56:37'),
(23, 83, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '0', '2025-02-06 13:59:03', '2025-02-06 13:59:03'),
(24, 89, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '1', '2025-02-07 12:58:58', '2025-02-20 05:11:55'),
(25, 89, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '0', '2025-02-07 13:34:13', '2025-02-07 13:34:13'),
(26, 0, 'Sukla Manna', 'sukla@mail.com', '8987676565', NULL, 'I have some issues , please contact with me', '', '0', '2025-02-07 13:40:33', '2025-02-07 13:40:33'),
(27, 0, 'test9', 'test9@gmail.com', '1254587854', NULL, 'test', '', '0', '2025-02-07 13:40:56', '2025-02-07 13:40:56'),
(28, 0, 'subrata', 'k@gmail.com', '5742356825', NULL, 'k', '', '0', '2025-02-08 13:00:29', '2025-02-08 13:00:29'),
(29, 0, 'test5', 'test5@gmail.com', '1478548547', NULL, 'test', '', '0', '2025-02-12 07:16:16', '2025-02-12 07:16:16'),
(30, 0, 'Jyoti Vankala hjguy', 'kl@gmail.com', '077980507843', NULL, 'vhb', '', '0', '2025-02-13 12:43:53', '2025-02-13 12:43:53'),
(31, 0, 'bzjz zmz zjz', 'k@gmail.com', '4664998979', NULL, 'vznz Nx  Jz z zjz z Kdb z zzzbdbz snud  zbzj  dbzjBs  zvdjzbz BDHZ ZJ DZ DJZ  ZSK D ZJD Z SID NZJD Z XJSBD ZKSDJ ZDKVZ DZKD  ZKZBD ZKSBZ ZKSBX ZKD Z DKZBDNDKBX ZJDDV ZKDBD ZNDDJ Z ZJDBD DNXJDBD ZKZBX ZNZJDBX ZNXHD ZNSJDBD ZKJD XNZJDBX ZKZBD Z dnskskx', '', '0', '2025-02-13 12:47:36', '2025-02-13 12:47:36'),
(32, 0, 'sanjay', 'sanjay3@yopmail.com', '6742876797', NULL, 'hdhz xzmd', '', '0', '2025-02-18 13:25:00', '2025-02-18 13:25:00'),
(33, 0, 'sanjay', 'sanjay3@yopmail.com', '6742876797', NULL, '12@apro', '', '0', '2025-02-18 13:26:32', '2025-02-18 13:26:32'),
(34, 0, 'sanjay', 'sanjay3@yopmail.com', '6742876797', NULL, 'gourango ', '', '0', '2025-02-18 13:27:25', '2025-02-18 13:27:25'),
(35, 0, 'sanjay', 'sanjay3@yopmail.com', '6742876797', NULL, 'ffhe', '', '0', '2025-02-18 13:27:48', '2025-02-18 13:27:48'),
(36, 0, 'sub', 'sub@gmail.com', '6161616161', NULL, 'sukla dekho ki aseche data base e', '', '0', '2025-02-18 13:28:43', '2025-02-18 13:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int NOT NULL,
  `week_day` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `week_day`, `createdAt`, `updatedAt`) VALUES
(1, 'Monday', '2024-11-23 14:16:12', '2024-11-23 14:16:12'),
(2, 'Tuesday', '2024-11-23 14:16:21', '2024-11-23 14:16:21'),
(3, 'Wednesday', '2024-11-23 14:16:29', '2024-11-23 14:16:29'),
(4, 'Thursday', '2024-11-23 14:16:43', '2024-11-23 14:16:43'),
(5, 'Friday', '2024-11-23 14:16:50', '2024-11-23 14:16:50'),
(6, 'Saturday', '2024-11-23 14:16:59', '2024-11-23 14:16:59'),
(7, 'Sunday', '2024-11-23 14:17:12', '2024-11-23 14:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_about_us`
--

CREATE TABLE `homepage_about_us` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `context` longtext COLLATE utf8_general_ci,
  `skill_one` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `skill_two` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `skill_three` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `skill_four` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `homepage_about_us`
--

INSERT INTO `homepage_about_us` (`id`, `title`, `header`, `context`, `skill_one`, `skill_two`, `skill_three`, `skill_four`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'About Us', 'Best Agency For Your Pets', 'We have been setting new standards for pet-care facilities. Individual suites are offered in all CarePress locations, and they are spotless and climate controlled, with excellent food, bedding, and a broad variety of tailored activities and services. ', 'Skilled Personal', 'Pets Care 24/7 ', 'Best Veterinars ', ' Quality Food', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739868834366_image-1739868834136.webp', '2024-12-11 12:58:53', '2025-02-19 14:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_banners`
--

CREATE TABLE `homepage_banners` (
  `id` int NOT NULL,
  `image` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `context` longtext COLLATE utf8_general_ci,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `homepage_banners`
--

INSERT INTO `homepage_banners` (`id`, `image`, `context`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1734431020214.webp', 'Best Care Of Our \r\nLittle Friends', '2024-12-11 12:55:45', '2024-12-11 12:55:45'),
(3, 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1734431116831.webp', 'Best Food Of Our \r\nLittle Friends', '2024-12-11 12:55:45', '2024-12-11 12:55:45'),
(11, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739875136165_image-1739875136164.webp', 'knk', '2025-02-18 10:39:01', '2025-02-18 10:39:01'),
(15, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739971987358_image-1739971987357.webp', 'dsdfksjdfsdofjeofhdjvnkfdfhenfkvndnfew dfjfkn j pfjdk fje  d', '2025-02-19 13:33:09', '2025-02-19 13:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_scanners`
--

CREATE TABLE `homepage_scanners` (
  `id` int NOT NULL,
  `image` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `context` longtext COLLATE utf8_general_ci,
  `google_scanner` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `apple_scanner` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `google_play_link` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `app_store_link` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `homepage_scanners`
--

INSERT INTO `homepage_scanners` (`id`, `image`, `context`, `google_scanner`, `apple_scanner`, `google_play_link`, `app_store_link`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739868725300_image-1739868725299.webp', 'Download the app and use Pet D Agogyany', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739868447181_image-1739868447180.webp', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739868444218_image-1739868444217.webp', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1737468876883_image-1737468876882.webp', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1737468876883_image-1737468876882.webp', '2024-12-11 13:05:49', '2025-02-20 05:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `my_pets`
--

CREATE TABLE `my_pets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pet_size_id` int NOT NULL,
  `pet_id` int NOT NULL,
  `is_active` enum('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `is_deleted` enum('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `my_pets`
--

INSERT INTO `my_pets` (`id`, `user_id`, `pet_size_id`, `pet_id`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, '1', '0', '2024-12-04 14:34:31', '2024-12-04 14:34:31'),
(2, 1, 2, 1, '1', '0', '2024-12-04 14:34:31', '2024-12-04 14:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `to_user_id` int DEFAULT NULL,
  `from_user_id` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `read_unread` enum('0','1') DEFAULT '0',
  `for_admin` enum('0','1') NOT NULL DEFAULT '0',
  `message` longtext,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int NOT NULL,
  `pet_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `pet_name`, `image`, `slug`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'Dog', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1739005749882.svg', 'dog', '1', '0', '2024-11-26 13:37:59', '2024-11-26 13:37:59'),
(2, 'Cat', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1739005794857.svg', 'cat', '1', '0', '2024-11-26 13:37:59', '2024-11-26 13:37:59'),
(3, 'Rabbit', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1739005703416.svg', 'rabbit', '1', '0', '2024-11-26 13:37:59', '2024-11-26 13:37:59'),
(4, 'Bird', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1739005851443.svg', 'bird', '1', '0', '2024-11-26 13:37:59', '2025-02-13 13:57:48'),
(14, 'zx', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739952670384_image-1739952670381.webp', 'zx', '1', '1', '2025-02-19 08:11:11', '2025-02-19 10:43:22'),
(15, 'nhjhkoukjkuyiuiuyuhkjiuyuykghuyukgfkjhhiuiobmhvjhi', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739970489369_image-1739970489366.webp', 'nhjhkoukjkuyiuiuyuhkjiuyuykghuyukgfkjhhiuiobmhvjhi', '1', '1', '2025-02-19 13:08:10', '2025-02-19 13:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `pet_services`
--

CREATE TABLE `pet_services` (
  `id` int NOT NULL,
  `time_type` enum('night','visit') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_location_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext,
  `color_code` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pet_services`
--

INSERT INTO `pet_services` (`id`, `time_type`, `service_name`, `service_location_id`, `image`, `description`, `color_code`, `slug`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'night', 'Pet Boarding', 2, 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739602351730_image-1739602351729.webp', 'Your pets stay overnight ', '#63A027', 'pet-boarding', 1, '0', '2024-11-26 11:28:19', '2025-02-19 12:29:25'),
(2, 'night', 'Pet House Sitting', 1, 'https://www.pet-d-agogy-api.acelance.com/uploads/service_images/compressed_1737110886963_image-1737110886889.webp', 'Takes care of your pets', '#8D7B52', 'pet-house/sitting', 1, '0', '2024-11-26 11:28:19', '2025-02-15 05:13:49'),
(3, 'visit', 'Drop In Visits', 1, 'https://www.pet-d-agogy-api.acelance.com/uploads/service_images/compressed_1737110998928_image-1737110998600.webp', 'Drops by your home', '#AAA189', 'drop-in-visits', 1, '0', '2024-11-26 11:28:19', '2024-11-26 11:28:19'),
(4, 'visit', 'Pet Walking', 1, 'https://www.pet-d-agogy-api.acelance.com/uploads/service_images/compressed_1737114051719_image-1737114051579.webp', 'Pet gets a walk', '#B35E47', 'pet-walking', 1, '0', '2024-11-26 11:28:19', '2025-02-19 13:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `pet_sizes`
--

CREATE TABLE `pet_sizes` (
  `id` int NOT NULL,
  `size` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pet_sizes`
--

INSERT INTO `pet_sizes` (`id`, `size`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'Small(0-40 lbs)', '1', '0', '2024-12-04 14:05:26', '2024-12-04 14:05:26'),
(2, 'Medium(16-40 lbs)', '1', '0', '2024-12-04 14:06:54', '2024-12-04 14:06:54'),
(3, 'Large(40-100 lbs)', '1', '0', '2024-12-04 14:07:21', '2024-12-04 14:07:21'),
(4, 'Giant(100+ lbs)', '1', '0', '2024-12-04 14:07:52', '2024-12-04 14:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `recent_searches`
--

CREATE TABLE `recent_searches` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `recent_search` varchar(255) DEFAULT NULL,
  `sitter_id` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `recent_searches`
--

INSERT INTO `recent_searches` (`id`, `user_id`, `recent_search`, `sitter_id`, `createdAt`, `updatedAt`) VALUES
(2, 2, 'kane', 1, '2024-12-05 04:52:55', '2024-12-05 04:52:55'),
(3, 2, 'kane', 1, '2024-12-05 05:32:30', '2024-12-05 05:32:30'),
(7, 16, 'kol', 1, '2025-01-03 06:42:30', '2025-01-03 06:42:30'),
(9, 21, 'abcd', 3, '2025-01-03 13:10:18', '2025-01-03 13:10:18'),
(12, 16, 'kgjhg', 4, '2025-01-14 09:52:44', '2025-01-14 09:52:44'),
(35, 69, 'subrata ', 45, '2025-01-17 13:30:53', '2025-01-17 13:30:53'),
(36, 89, 'provider19', 87, '2025-02-05 09:31:25', '2025-02-05 09:31:25'),
(40, 89, 'Pro. vider', 91, '2025-02-05 10:04:04', '2025-02-05 10:04:04'),
(51, 63, 'bbs as', 77, '2025-02-06 05:11:04', '2025-02-06 05:11:04'),
(52, 63, 'Jyoti', 38, '2025-02-06 05:29:00', '2025-02-06 05:29:00'),
(53, 58, 'Jyoti', 38, '2025-02-06 12:10:18', '2025-02-06 12:10:18'),
(54, 58, 'Edward Washington', 2, '2025-02-06 12:10:27', '2025-02-06 12:10:27'),
(55, 58, 'Osam Qasi', 13, '2025-02-06 12:10:46', '2025-02-06 12:10:46'),
(56, 58, 'Pro. vider', 91, '2025-02-06 12:38:34', '2025-02-06 12:38:34'),
(57, 95, 'Pro. vider', 91, '2025-02-07 07:34:28', '2025-02-07 07:34:28'),
(58, 51, 'provider19', 87, '2025-02-07 12:28:46', '2025-02-07 12:28:46'),
(59, 63, 'provider19', 87, '2025-02-08 06:27:17', '2025-02-08 06:27:17'),
(60, 63, 'Provider 01', 72, '2025-02-08 07:27:27', '2025-02-08 07:27:27'),
(61, 63, 'Pro. vider', 91, '2025-02-10 05:33:33', '2025-02-10 05:33:33'),
(62, 63, 'Pro. vider', 91, '2025-02-10 05:33:33', '2025-02-10 05:33:33'),
(63, 51, 'Provider 01', 72, '2025-02-10 13:45:28', '2025-02-10 13:45:28'),
(64, 51, 'Pro. vider', 91, '2025-02-10 13:55:58', '2025-02-10 13:55:58'),
(65, 63, 'Jyoti Vankala', 98, '2025-02-11 06:50:07', '2025-02-11 06:50:07'),
(66, 109, 'provider19', 87, '2025-02-17 13:15:52', '2025-02-17 13:15:52'),
(67, 109, 'provider19', 87, '2025-02-17 13:15:52', '2025-02-17 13:15:52'),
(68, 39, 'Pro. vider', 91, '2025-02-18 11:15:44', '2025-02-18 11:15:44'),
(69, 39, 'provider19', 87, '2025-02-18 11:15:56', '2025-02-18 11:15:56'),
(70, 39, 'Povider for Tester 1', 85, '2025-02-18 11:16:04', '2025-02-18 11:16:04'),
(71, 39, 'Provider 01', 72, '2025-02-18 11:16:14', '2025-02-18 11:16:14'),
(72, 39, 'Povider for Tester', 84, '2025-02-18 11:16:22', '2025-02-18 11:16:22'),
(73, 39, 'Provider 02', 82, '2025-02-18 11:16:38', '2025-02-18 11:16:38'),
(74, 39, 'provider9', 66, '2025-02-18 11:16:46', '2025-02-18 11:16:46'),
(75, 1, 'As hh', 100, '2025-02-18 14:20:37', '2025-02-18 14:20:37'),
(76, 109, 'As hh', 100, '2025-02-20 06:22:59', '2025-02-20 06:22:59'),
(77, 109, 'As hh', 100, '2025-02-20 06:22:59', '2025-02-20 06:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `sitter_id` int DEFAULT NULL,
  `appointment_id` int DEFAULT NULL,
  `review` longtext,
  `rating` int NOT NULL DEFAULT '5',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `sitter_id`, `appointment_id`, `review`, `rating`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(6, 4, 4, 4, 'werttt', 4, '0', '2024-12-05 10:44:58', '2024-12-05 10:44:58'),
(7, 2, 4, 3, 'heyyyy', 1, '0', '2024-12-05 10:44:58', '2024-12-05 10:44:58'),
(8, 1, 45, 3, 'heyyyy', 1, '0', '2024-12-05 10:44:58', '2024-12-05 10:44:58'),
(17, 89, 87, 1, 'fff', 2, '0', '2025-02-05 09:46:26', '2025-02-05 09:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `selected_slots`
--

CREATE TABLE `selected_slots` (
  `id` int NOT NULL,
  `sitter_id` int NOT NULL,
  `slot_id` int NOT NULL,
  `selected_day_id` int NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` int NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `selected_slots`
--

INSERT INTO `selected_slots` (`id`, `sitter_id`, `slot_id`, `selected_day_id`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 2, 1, '1', 0, '2024-12-28 12:31:27', '2024-12-28 12:31:27'),
(2, 2, 3, 2, '1', 0, '2024-12-28 12:31:27', '2024-12-28 12:31:27'),
(3, 2, 2, 3, '1', 0, '2024-12-28 12:31:27', '2024-12-28 12:31:27'),
(4, 2, 1, 4, '1', 0, '2024-12-28 12:31:27', '2024-12-28 12:31:27'),
(5, 2, 3, 5, '1', 0, '2024-12-28 12:31:27', '2024-12-28 12:31:27'),
(6, 2, 2, 6, '1', 0, '2024-12-28 18:26:23', '2024-12-28 18:26:23'),
(7, 2, 1, 7, '1', 0, '2024-12-28 18:26:23', '2024-12-28 18:26:23'),
(8, 3, 6, 3, '1', 0, '2024-12-28 18:26:23', '2024-12-28 18:26:23'),
(9, 3, 7, 2, '1', 0, '2024-12-28 18:26:23', '2024-12-28 18:26:23'),
(10, 3, 3, 1, '1', 0, '2024-12-28 18:26:23', '2024-12-28 18:26:23'),
(11, 4, 10, 1, '1', 0, '2024-12-30 10:08:54', '2024-12-30 10:08:54'),
(12, 4, 11, 1, '1', 0, '2024-12-30 10:08:54', '2024-12-30 10:08:54'),
(13, 4, 10, 3, '1', 0, '2024-12-30 10:08:54', '2024-12-30 10:08:54'),
(14, 4, 11, 2, '1', 0, '2024-12-30 10:08:54', '2024-12-30 10:08:54'),
(15, 4, 12, 1, '1', 0, '2024-12-30 10:08:54', '2024-12-30 10:08:54'),
(21, 5, 13, 1, '1', 0, '2024-12-30 11:05:43', '2024-12-30 11:05:43'),
(22, 5, 14, 1, '1', 0, '2024-12-30 11:05:43', '2024-12-30 11:05:43'),
(23, 5, 15, 3, '1', 0, '2024-12-30 11:05:43', '2024-12-30 11:05:43'),
(24, 5, 13, 2, '1', 0, '2024-12-30 11:05:43', '2024-12-30 11:05:43'),
(25, 5, 14, 1, '1', 0, '2024-12-30 11:05:43', '2024-12-30 11:05:43'),
(26, 13, 16, 1, '1', 0, '2024-12-30 11:14:44', '2024-12-30 11:14:44'),
(27, 13, 17, 1, '1', 0, '2024-12-30 11:14:44', '2024-12-30 11:14:44'),
(28, 13, 16, 3, '1', 0, '2024-12-30 11:14:44', '2024-12-30 11:14:44'),
(29, 13, 17, 2, '1', 0, '2024-12-30 11:14:44', '2024-12-30 11:14:44'),
(30, 13, 16, 2, '1', 0, '2024-12-30 11:14:44', '2024-12-30 11:14:44'),
(52, 11, 18, 1, '1', 0, '2024-12-30 13:25:03', '2024-12-30 13:25:03'),
(53, 11, 20, 1, '1', 0, '2024-12-30 13:28:13', '2024-12-30 13:28:13'),
(54, 11, 21, 6, '1', 0, '2024-12-30 13:30:00', '2024-12-30 13:30:00'),
(55, 14, 22, 1, '1', 0, '2024-12-30 16:19:45', '2024-12-30 16:19:45'),
(56, 14, 22, 2, '1', 0, '2024-12-30 16:20:22', '2024-12-30 16:20:22'),
(57, 14, 22, 3, '1', 0, '2024-12-30 16:20:24', '2024-12-30 16:20:24'),
(62, 38, 31, 1, '1', 0, '2025-01-07 12:01:19', '2025-01-07 12:01:19'),
(63, 38, 31, 2, '1', 0, '2025-01-07 12:01:21', '2025-01-07 12:01:21'),
(64, 38, 31, 3, '1', 0, '2025-01-07 12:01:24', '2025-01-07 12:01:24'),
(65, 45, 35, 1, '1', 0, '2025-01-07 14:04:40', '2025-01-07 14:04:40'),
(66, 45, 34, 1, '1', 0, '2025-01-07 14:04:45', '2025-01-07 14:04:45'),
(67, 45, 36, 5, '1', 0, '2025-01-07 14:04:53', '2025-01-07 14:04:53'),
(68, 45, 34, 5, '1', 0, '2025-01-07 14:04:54', '2025-01-07 14:04:54'),
(71, 54, 43, 1, '1', 0, '2025-01-14 11:43:01', '2025-01-14 11:43:01'),
(72, 70, 44, 2, '1', 0, '2025-01-17 13:56:00', '2025-01-17 13:56:00'),
(73, 70, 44, 1, '1', 0, '2025-01-17 13:56:04', '2025-01-17 13:56:04'),
(75, 70, 44, 6, '1', 0, '2025-01-17 13:56:53', '2025-01-17 13:56:53'),
(76, 72, 1, 42, '1', 0, '2025-01-18 07:16:56', '2025-01-18 07:16:56'),
(77, 77, 46, 1, '1', 0, '2025-01-18 16:07:44', '2025-01-18 16:07:44'),
(78, 77, 46, 2, '1', 0, '2025-01-18 16:07:46', '2025-01-18 16:07:46'),
(79, 77, 46, 3, '1', 0, '2025-01-18 16:07:47', '2025-01-18 16:07:47'),
(80, 77, 46, 6, '1', 0, '2025-01-18 16:07:49', '2025-01-18 16:07:49'),
(81, 82, 48, 180, '1', 0, '2025-01-21 13:59:09', '2025-01-21 13:59:09'),
(82, 82, 49, 180, '1', 0, '2025-01-21 13:59:17', '2025-01-21 13:59:17'),
(83, 82, 48, 181, '1', 0, '2025-01-21 13:59:30', '2025-01-21 13:59:30'),
(84, 82, 49, 181, '1', 0, '2025-01-21 13:59:38', '2025-01-21 13:59:38'),
(85, 82, 48, 182, '1', 0, '2025-01-21 13:59:47', '2025-01-21 13:59:47'),
(86, 82, 49, 182, '1', 0, '2025-01-21 13:59:59', '2025-01-21 13:59:59'),
(87, 84, 50, 1, '1', 0, '2025-01-22 05:54:09', '2025-01-22 05:54:09'),
(88, 84, 51, 1, '1', 0, '2025-01-22 05:54:10', '2025-01-22 05:54:10'),
(90, 84, 51, 2, '1', 0, '2025-01-22 05:54:13', '2025-01-22 05:54:13'),
(91, 84, 50, 3, '1', 0, '2025-01-22 05:54:16', '2025-01-22 05:54:16'),
(92, 84, 51, 3, '1', 0, '2025-01-22 05:54:17', '2025-01-22 05:54:17'),
(93, 84, 50, 4, '1', 0, '2025-01-22 05:54:19', '2025-01-22 05:54:19'),
(94, 84, 51, 4, '1', 0, '2025-01-22 05:54:21', '2025-01-22 05:54:21'),
(95, 84, 50, 7, '1', 0, '2025-01-22 05:54:23', '2025-01-22 05:54:23'),
(96, 84, 51, 7, '1', 0, '2025-01-22 05:54:24', '2025-01-22 05:54:24'),
(97, 85, 52, 1, '1', 0, '2025-01-22 06:11:18', '2025-01-22 06:11:18'),
(98, 85, 53, 1, '1', 0, '2025-01-22 06:11:19', '2025-01-22 06:11:19'),
(99, 85, 52, 2, '1', 0, '2025-01-22 06:11:21', '2025-01-22 06:11:21'),
(100, 85, 53, 2, '1', 0, '2025-01-22 06:11:23', '2025-01-22 06:11:23'),
(101, 85, 52, 3, '1', 0, '2025-01-22 06:11:24', '2025-01-22 06:11:24'),
(102, 85, 53, 3, '1', 0, '2025-01-22 06:11:25', '2025-01-22 06:11:25'),
(103, 85, 52, 4, '1', 0, '2025-01-22 06:11:27', '2025-01-22 06:11:27'),
(104, 85, 53, 4, '1', 0, '2025-01-22 06:11:29', '2025-01-22 06:11:29'),
(105, 85, 52, 5, '1', 0, '2025-01-22 06:11:32', '2025-01-22 06:11:32'),
(106, 85, 53, 5, '1', 0, '2025-01-22 06:11:33', '2025-01-22 06:11:33'),
(107, 87, 54, 2, '1', 0, '2025-01-23 07:20:23', '2025-01-23 07:20:23'),
(108, 87, 54, 4, '1', 0, '2025-01-23 07:46:27', '2025-01-23 07:46:27'),
(109, 87, 54, 5, '1', 0, '2025-01-23 07:46:34', '2025-01-23 07:46:34'),
(110, 87, 54, 6, '1', 0, '2025-01-23 07:46:38', '2025-01-23 07:46:38'),
(111, 87, 55, 4, '1', 0, '2025-01-23 07:46:50', '2025-01-23 07:46:50'),
(112, 87, 55, 5, '1', 0, '2025-01-23 07:46:54', '2025-01-23 07:46:54'),
(113, 87, 55, 6, '1', 0, '2025-01-23 07:46:57', '2025-01-23 07:46:57'),
(114, 87, 56, 6, '1', 0, '2025-01-23 07:47:02', '2025-01-23 07:47:02'),
(115, 87, 56, 5, '1', 0, '2025-01-23 07:47:08', '2025-01-23 07:47:08'),
(116, 87, 56, 4, '1', 0, '2025-01-23 07:47:12', '2025-01-23 07:47:12'),
(117, 87, 57, 4, '1', 0, '2025-01-23 07:47:17', '2025-01-23 07:47:17'),
(118, 87, 57, 5, '1', 0, '2025-01-23 07:47:21', '2025-01-23 07:47:21'),
(119, 87, 58, 6, '1', 0, '2025-01-23 07:47:28', '2025-01-23 07:47:28'),
(120, 91, 59, 1, '1', 0, '2025-02-04 09:19:10', '2025-02-04 09:19:10'),
(121, 91, 60, 1, '1', 0, '2025-02-04 09:19:15', '2025-02-04 09:19:15'),
(122, 91, 59, 2, '1', 0, '2025-02-04 09:19:18', '2025-02-04 09:19:18'),
(123, 91, 60, 2, '1', 0, '2025-02-04 09:19:21', '2025-02-04 09:19:21'),
(124, 91, 59, 3, '1', 0, '2025-02-04 09:19:26', '2025-02-04 09:19:26'),
(125, 91, 60, 3, '1', 0, '2025-02-04 09:19:30', '2025-02-04 09:19:30'),
(126, 91, 59, 4, '1', 0, '2025-02-04 09:19:38', '2025-02-04 09:19:38'),
(127, 91, 60, 4, '1', 0, '2025-02-04 09:19:40', '2025-02-04 09:19:40'),
(128, 91, 59, 5, '1', 0, '2025-02-04 09:19:42', '2025-02-04 09:19:42'),
(129, 91, 59, 6, '1', 0, '2025-02-04 09:19:45', '2025-02-04 09:19:45'),
(130, 91, 60, 7, '1', 0, '2025-02-04 09:19:49', '2025-02-04 09:19:49'),
(131, 96, 61, 1, '1', 0, '2025-02-08 13:17:54', '2025-02-08 13:17:54'),
(132, 98, 62, 1, '1', 0, '2025-02-11 06:30:09', '2025-02-11 06:30:09'),
(133, 98, 63, 1, '1', 0, '2025-02-11 06:30:11', '2025-02-11 06:30:11'),
(134, 98, 64, 1, '1', 0, '2025-02-11 06:30:12', '2025-02-11 06:30:12'),
(135, 98, 62, 2, '1', 0, '2025-02-11 06:30:14', '2025-02-11 06:30:14'),
(136, 98, 63, 2, '1', 0, '2025-02-11 06:30:15', '2025-02-11 06:30:15'),
(137, 98, 64, 2, '1', 0, '2025-02-11 06:30:16', '2025-02-11 06:30:16'),
(138, 98, 62, 3, '1', 0, '2025-02-11 06:30:18', '2025-02-11 06:30:18'),
(139, 98, 63, 3, '1', 0, '2025-02-11 06:30:19', '2025-02-11 06:30:19'),
(140, 98, 64, 3, '1', 0, '2025-02-11 06:30:20', '2025-02-11 06:30:20'),
(141, 98, 62, 4, '1', 0, '2025-02-11 06:30:22', '2025-02-11 06:30:22'),
(142, 98, 63, 4, '1', 0, '2025-02-11 06:30:23', '2025-02-11 06:30:23'),
(143, 98, 64, 4, '1', 0, '2025-02-11 06:30:24', '2025-02-11 06:30:24'),
(144, 98, 62, 5, '1', 0, '2025-02-11 06:30:27', '2025-02-11 06:30:27'),
(145, 98, 63, 5, '1', 0, '2025-02-11 06:30:28', '2025-02-11 06:30:28'),
(146, 98, 64, 5, '1', 0, '2025-02-11 06:30:29', '2025-02-11 06:30:29'),
(147, 98, 62, 6, '1', 0, '2025-02-11 06:30:31', '2025-02-11 06:30:31'),
(148, 98, 63, 6, '1', 0, '2025-02-11 06:30:32', '2025-02-11 06:30:32'),
(149, 98, 64, 6, '1', 0, '2025-02-11 06:30:33', '2025-02-11 06:30:33'),
(150, 98, 62, 7, '1', 0, '2025-02-11 06:30:35', '2025-02-11 06:30:35'),
(151, 98, 63, 7, '1', 0, '2025-02-11 06:30:36', '2025-02-11 06:30:36'),
(152, 100, 65, 1, '1', 0, '2025-02-12 11:28:06', '2025-02-12 11:28:06'),
(153, 100, 65, 2, '1', 0, '2025-02-12 11:28:07', '2025-02-12 11:28:07'),
(154, 100, 65, 3, '1', 0, '2025-02-12 11:28:09', '2025-02-12 11:28:09'),
(155, 111, 66, 7, '1', 0, '2025-02-18 10:53:44', '2025-02-18 10:53:44'),
(156, 111, 67, 6, '1', 0, '2025-02-18 10:53:46', '2025-02-18 10:53:46'),
(157, 112, 68, 1, '1', 0, '2025-02-18 11:27:43', '2025-02-18 11:27:43'),
(158, 113, 75, 2, '1', 0, '2025-02-18 12:41:57', '2025-02-18 12:41:57'),
(161, 113, 75, 4, '1', 0, '2025-02-18 12:42:10', '2025-02-18 12:42:10'),
(162, 113, 76, 4, '1', 0, '2025-02-18 12:42:11', '2025-02-18 12:42:11'),
(163, 113, 75, 3, '1', 0, '2025-02-18 12:42:15', '2025-02-18 12:42:15'),
(164, 113, 77, 2, '1', 0, '2025-02-18 12:42:18', '2025-02-18 12:42:18'),
(166, 114, 78, 1, '1', 0, '2025-02-18 12:55:06', '2025-02-18 12:55:06'),
(167, 114, 79, 1, '1', 0, '2025-02-18 12:55:10', '2025-02-18 12:55:10'),
(168, 114, 80, 1, '1', 0, '2025-02-18 12:55:19', '2025-02-18 12:55:19'),
(169, 114, 81, 1, '1', 0, '2025-02-18 12:55:24', '2025-02-18 12:55:24'),
(170, 114, 78, 2, '1', 0, '2025-02-18 12:56:35', '2025-02-18 12:56:35'),
(171, 114, 79, 2, '1', 0, '2025-02-18 12:56:36', '2025-02-18 12:56:36'),
(172, 114, 81, 2, '1', 0, '2025-02-18 12:56:38', '2025-02-18 12:56:38'),
(173, 114, 80, 2, '1', 0, '2025-02-18 12:56:39', '2025-02-18 12:56:39'),
(174, 114, 79, 4, '1', 0, '2025-02-18 12:56:41', '2025-02-18 12:56:41'),
(175, 114, 81, 4, '1', 0, '2025-02-18 12:56:43', '2025-02-18 12:56:43'),
(176, 114, 78, 4, '1', 0, '2025-02-18 12:56:43', '2025-02-18 12:56:43'),
(177, 114, 80, 4, '1', 0, '2025-02-18 12:56:45', '2025-02-18 12:56:45'),
(178, 114, 79, 3, '1', 0, '2025-02-18 12:56:46', '2025-02-18 12:56:46'),
(179, 114, 81, 3, '1', 0, '2025-02-18 12:56:48', '2025-02-18 12:56:48'),
(180, 114, 78, 3, '1', 0, '2025-02-18 12:56:48', '2025-02-18 12:56:48'),
(181, 114, 80, 3, '1', 0, '2025-02-18 12:56:49', '2025-02-18 12:56:49'),
(182, 114, 79, 5, '1', 0, '2025-02-18 12:56:57', '2025-02-18 12:56:57'),
(183, 114, 81, 5, '1', 0, '2025-02-18 12:56:59', '2025-02-18 12:56:59'),
(184, 114, 78, 5, '1', 0, '2025-02-18 12:57:00', '2025-02-18 12:57:00'),
(185, 114, 80, 5, '1', 0, '2025-02-18 12:57:02', '2025-02-18 12:57:02'),
(186, 114, 79, 6, '1', 0, '2025-02-18 12:57:05', '2025-02-18 12:57:05'),
(187, 114, 78, 6, '1', 0, '2025-02-18 12:57:07', '2025-02-18 12:57:07'),
(188, 114, 79, 7, '1', 0, '2025-02-18 12:57:10', '2025-02-18 12:57:10'),
(189, 114, 78, 7, '1', 0, '2025-02-18 12:57:11', '2025-02-18 12:57:11'),
(193, 27, 86, 1, '1', 1, '2025-02-19 12:08:00', '2025-02-19 12:08:00'),
(194, 27, 87, 2, '1', 1, '2025-02-19 12:08:04', '2025-02-19 12:08:04'),
(195, 27, 88, 2, '1', 1, '2025-02-19 12:10:03', '2025-02-19 12:10:03'),
(196, 27, 89, 1, '1', 1, '2025-02-19 12:12:27', '2025-02-19 12:12:27'),
(200, 27, 94, 1, '1', 0, '2025-02-20 07:03:22', '2025-02-20 07:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `selected_slot_days`
--

CREATE TABLE `selected_slot_days` (
  `id` int NOT NULL,
  `day_id` int NOT NULL,
  `sitter_id` int NOT NULL,
  `is_active` enum('0','1') COLLATE utf8_general_ci DEFAULT '1',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `selected_slot_days`
--

INSERT INTO `selected_slot_days` (`id`, `day_id`, `sitter_id`, `is_active`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, '1', '2024-12-28 12:29:41', '2024-12-28 12:29:41'),
(2, 2, 2, '1', '2024-12-28 12:29:41', '2024-12-28 12:29:41'),
(3, 3, 2, '1', '2024-12-28 12:29:41', '2024-12-28 12:29:41'),
(4, 4, 2, '1', '2024-12-28 18:20:31', '2024-12-28 18:20:31'),
(5, 5, 2, '1', '2024-12-28 18:20:31', '2024-12-28 18:20:31'),
(6, 6, 2, '1', '2024-12-28 18:20:31', '2024-12-28 18:20:31'),
(7, 7, 2, '1', '2024-12-30 10:07:41', '2024-12-30 10:07:41'),
(8, 2, 4, '1', '2024-12-30 10:07:41', '2024-12-30 10:07:41'),
(9, 3, 4, '1', '2024-12-30 10:07:41', '2024-12-30 10:07:41'),
(13, 1, 5, '1', '2024-12-30 11:08:44', '2024-12-30 11:08:44'),
(14, 2, 5, '1', '2024-12-30 11:08:44', '2024-12-30 11:08:44'),
(15, 3, 5, '1', '2024-12-30 11:08:44', '2024-12-30 11:08:44'),
(19, 1, 13, '1', '2024-12-30 11:14:13', '2024-12-30 11:14:13'),
(20, 2, 13, '1', '2024-12-30 11:14:13', '2024-12-30 11:14:13'),
(21, 3, 13, '1', '2024-12-30 11:14:13', '2024-12-30 11:14:13'),
(35, 6, 13, '1', '2024-12-30 11:41:12', '2024-12-30 11:41:12'),
(45, 1, 11, '1', '2024-12-30 11:48:41', '2024-12-30 11:48:41'),
(46, 2, 11, '1', '2024-12-30 11:49:15', '2024-12-30 11:49:15'),
(48, 6, 11, '1', '2024-12-30 13:00:34', '2024-12-30 13:00:34'),
(49, 5, 11, '1', '2024-12-30 13:29:38', '2024-12-30 13:29:38'),
(50, 1, 14, '1', '2024-12-30 16:18:59', '2024-12-30 16:18:59'),
(51, 2, 14, '1', '2024-12-30 16:19:02', '2024-12-30 16:19:02'),
(52, 3, 14, '1', '2024-12-30 16:19:03', '2024-12-30 16:19:03'),
(54, 5, 34, '1', '2025-01-06 11:56:03', '2025-01-06 11:56:03'),
(55, 2, 34, '1', '2025-01-06 11:56:04', '2025-01-06 11:56:04'),
(58, 4, 34, '1', '2025-01-06 11:56:07', '2025-01-06 11:56:07'),
(59, 6, 34, '1', '2025-01-06 11:56:07', '2025-01-06 11:56:07'),
(63, 1, 34, '1', '2025-01-06 11:56:15', '2025-01-06 11:56:15'),
(65, 7, 34, '1', '2025-01-06 11:56:28', '2025-01-06 11:56:28'),
(66, 3, 34, '1', '2025-01-06 11:56:30', '2025-01-06 11:56:30'),
(90, 2, 35, '1', '2025-01-06 14:14:11', '2025-01-06 14:14:11'),
(95, 6, 35, '1', '2025-01-06 14:14:17', '2025-01-06 14:14:17'),
(98, 7, 35, '1', '2025-01-06 14:14:23', '2025-01-06 14:14:23'),
(100, 4, 35, '1', '2025-01-06 14:15:10', '2025-01-06 14:15:10'),
(102, 3, 35, '1', '2025-01-06 14:15:18', '2025-01-06 14:15:18'),
(103, 5, 35, '1', '2025-01-06 14:15:19', '2025-01-06 14:15:19'),
(106, 1, 35, '1', '2025-01-06 14:23:37', '2025-01-06 14:23:37'),
(132, 1, 36, '1', '2025-01-07 07:20:54', '2025-01-07 07:20:54'),
(133, 2, 36, '1', '2025-01-07 07:20:55', '2025-01-07 07:20:55'),
(134, 5, 36, '1', '2025-01-07 07:20:56', '2025-01-07 07:20:56'),
(135, 1, 38, '1', '2025-01-07 12:00:28', '2025-01-07 12:00:28'),
(136, 2, 38, '1', '2025-01-07 12:00:29', '2025-01-07 12:00:29'),
(137, 3, 38, '1', '2025-01-07 12:00:32', '2025-01-07 12:00:32'),
(140, 2, 40, '1', '2025-01-07 12:42:09', '2025-01-07 12:42:09'),
(142, 4, 40, '1', '2025-01-07 12:42:12', '2025-01-07 12:42:12'),
(143, 5, 40, '1', '2025-01-07 12:42:14', '2025-01-07 12:42:14'),
(144, 6, 40, '1', '2025-01-07 12:42:15', '2025-01-07 12:42:15'),
(145, 7, 40, '1', '2025-01-07 12:42:16', '2025-01-07 12:42:16'),
(146, 1, 45, '1', '2025-01-07 14:02:51', '2025-01-07 14:02:51'),
(147, 3, 45, '1', '2025-01-07 14:02:54', '2025-01-07 14:02:54'),
(148, 5, 45, '1', '2025-01-07 14:02:55', '2025-01-07 14:02:55'),
(149, 2, 33, '1', '2025-01-10 08:07:40', '2025-01-10 08:07:40'),
(151, 3, 33, '1', '2025-01-10 08:07:42', '2025-01-10 08:07:42'),
(154, 1, 60, '1', '2025-01-10 11:37:22', '2025-01-10 11:37:22'),
(155, 2, 60, '1', '2025-01-10 11:37:23', '2025-01-10 11:37:23'),
(156, 3, 60, '1', '2025-01-10 11:37:24', '2025-01-10 11:37:24'),
(157, 4, 60, '1', '2025-01-10 11:37:24', '2025-01-10 11:37:24'),
(158, 7, 60, '1', '2025-01-10 11:37:25', '2025-01-10 11:37:25'),
(160, 5, 60, '1', '2025-01-10 11:37:27', '2025-01-10 11:37:27'),
(161, 6, 60, '1', '2025-01-10 11:51:18', '2025-01-10 11:51:18'),
(162, 2, 66, '1', '2025-01-06 11:56:04', '2025-01-06 11:56:04'),
(163, 1, 54, '1', '2025-01-14 11:41:47', '2025-01-14 11:41:47'),
(164, 2, 54, '1', '2025-01-14 11:42:06', '2025-01-14 11:42:06'),
(166, 1, 70, '1', '2025-01-17 13:55:04', '2025-01-17 13:55:04'),
(168, 2, 70, '1', '2025-01-17 13:55:58', '2025-01-17 13:55:58'),
(169, 3, 70, '1', '2025-01-17 13:56:15', '2025-01-17 13:56:15'),
(170, 4, 70, '1', '2025-01-17 13:56:16', '2025-01-17 13:56:16'),
(172, 6, 70, '1', '2025-01-17 13:56:20', '2025-01-17 13:56:20'),
(173, 5, 70, '1', '2025-01-17 13:56:25', '2025-01-17 13:56:25'),
(174, 6, 72, '1', '2025-01-18 07:09:25', '2025-01-18 07:09:25'),
(175, 1, 77, '1', '2025-01-18 16:07:18', '2025-01-18 16:07:18'),
(176, 2, 77, '1', '2025-01-18 16:07:19', '2025-01-18 16:07:19'),
(177, 3, 77, '1', '2025-01-18 16:07:21', '2025-01-18 16:07:21'),
(178, 6, 77, '1', '2025-01-18 16:07:24', '2025-01-18 16:07:24'),
(179, 4, 67, '1', '2025-01-21 09:47:02', '2025-01-21 09:47:02'),
(180, 2, 82, '1', '2025-01-21 13:57:56', '2025-01-21 13:57:56'),
(181, 3, 82, '1', '2025-01-21 13:58:02', '2025-01-21 13:58:02'),
(182, 4, 82, '1', '2025-01-21 13:58:06', '2025-01-21 13:58:06'),
(183, 1, 84, '1', '2025-01-22 05:49:31', '2025-01-22 05:49:31'),
(184, 2, 84, '1', '2025-01-22 05:49:34', '2025-01-22 05:49:34'),
(185, 3, 84, '1', '2025-01-22 05:53:37', '2025-01-22 05:53:37'),
(186, 4, 84, '1', '2025-01-22 05:53:39', '2025-01-22 05:53:39'),
(187, 7, 84, '1', '2025-01-22 05:53:40', '2025-01-22 05:53:40'),
(188, 1, 85, '1', '2025-01-22 06:10:52', '2025-01-22 06:10:52'),
(189, 2, 85, '1', '2025-01-22 06:10:54', '2025-01-22 06:10:54'),
(191, 4, 85, '1', '2025-01-22 06:10:56', '2025-01-22 06:10:56'),
(192, 5, 85, '1', '2025-01-22 06:10:57', '2025-01-22 06:10:57'),
(193, 2, 87, '1', '2025-01-23 07:17:43', '2025-01-23 07:17:43'),
(194, 3, 87, '1', '2025-01-23 07:17:44', '2025-01-23 07:17:44'),
(195, 4, 87, '1', '2025-01-23 07:45:12', '2025-01-23 07:45:12'),
(196, 5, 87, '1', '2025-01-23 07:45:16', '2025-01-23 07:45:16'),
(197, 6, 87, '1', '2025-01-23 07:45:20', '2025-01-23 07:45:20'),
(198, 1, 91, '1', '2025-02-04 09:17:55', '2025-02-04 09:17:55'),
(199, 2, 91, '1', '2025-02-04 09:18:01', '2025-02-04 09:18:01'),
(200, 3, 91, '1', '2025-02-04 09:18:03', '2025-02-04 09:18:03'),
(201, 4, 91, '1', '2025-02-04 09:18:04', '2025-02-04 09:18:04'),
(202, 5, 91, '1', '2025-02-04 09:18:05', '2025-02-04 09:18:05'),
(203, 6, 91, '1', '2025-02-04 09:18:07', '2025-02-04 09:18:07'),
(204, 7, 91, '1', '2025-02-04 09:18:13', '2025-02-04 09:18:13'),
(205, 1, 96, '1', '2025-02-08 13:17:37', '2025-02-08 13:17:37'),
(206, 2, 96, '1', '2025-02-08 13:17:38', '2025-02-08 13:17:38'),
(207, 3, 96, '1', '2025-02-08 13:17:40', '2025-02-08 13:17:40'),
(208, 1, 98, '1', '2025-02-11 06:29:18', '2025-02-11 06:29:18'),
(209, 2, 98, '1', '2025-02-11 06:29:19', '2025-02-11 06:29:19'),
(210, 3, 98, '1', '2025-02-11 06:29:20', '2025-02-11 06:29:20'),
(211, 4, 98, '1', '2025-02-11 06:29:21', '2025-02-11 06:29:21'),
(212, 5, 98, '1', '2025-02-11 06:29:22', '2025-02-11 06:29:22'),
(213, 6, 98, '1', '2025-02-11 06:29:23', '2025-02-11 06:29:23'),
(214, 7, 98, '1', '2025-02-11 06:29:24', '2025-02-11 06:29:24'),
(215, 1, 100, '1', '2025-02-12 11:27:53', '2025-02-12 11:27:53'),
(216, 2, 100, '1', '2025-02-12 11:27:55', '2025-02-12 11:27:55'),
(217, 3, 100, '1', '2025-02-12 11:27:56', '2025-02-12 11:27:56'),
(218, 3, 104, '1', '2025-02-13 14:42:13', '2025-02-13 14:42:13'),
(219, 1, 110, '1', '2025-02-18 10:47:49', '2025-02-18 10:47:49'),
(220, 7, 111, '1', '2025-02-18 10:52:58', '2025-02-18 10:52:58'),
(221, 6, 111, '1', '2025-02-18 10:52:59', '2025-02-18 10:52:59'),
(222, 1, 112, '1', '2025-02-18 11:25:16', '2025-02-18 11:25:16'),
(223, 7, 112, '1', '2025-02-18 11:25:17', '2025-02-18 11:25:17'),
(224, 1, 113, '1', '2025-02-18 12:29:28', '2025-02-18 12:29:28'),
(225, 2, 113, '1', '2025-02-18 12:29:30', '2025-02-18 12:29:30'),
(226, 3, 113, '1', '2025-02-18 12:29:32', '2025-02-18 12:29:32'),
(227, 4, 113, '1', '2025-02-18 12:29:33', '2025-02-18 12:29:33'),
(228, 6, 113, '1', '2025-02-18 12:44:32', '2025-02-18 12:44:32'),
(229, 1, 114, '1', '2025-02-18 12:52:39', '2025-02-18 12:52:39'),
(230, 2, 114, '1', '2025-02-18 12:52:41', '2025-02-18 12:52:41'),
(231, 4, 114, '1', '2025-02-18 12:52:42', '2025-02-18 12:52:42'),
(232, 3, 114, '1', '2025-02-18 12:52:44', '2025-02-18 12:52:44'),
(233, 5, 114, '1', '2025-02-18 12:52:45', '2025-02-18 12:52:45'),
(234, 6, 114, '1', '2025-02-18 12:52:46', '2025-02-18 12:52:46'),
(235, 7, 114, '1', '2025-02-18 12:52:47', '2025-02-18 12:52:47'),
(238, 1, 27, '1', '2025-02-19 12:07:57', '2025-02-19 12:07:57'),
(239, 2, 27, '1', '2025-02-19 12:07:58', '2025-02-19 12:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `service_locations`
--

CREATE TABLE `service_locations` (
  `id` int NOT NULL,
  `location` varchar(255) NOT NULL,
  `location_type` enum('atMyPlace','atClientLocation') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service_locations`
--

INSERT INTO `service_locations` (`id`, `location`, `location_type`, `createdAt`, `updatedAt`) VALUES
(1, 'At my place', 'atMyPlace', '2024-11-25 12:35:16', '2024-11-25 12:35:16'),
(2, 'At client location', 'atClientLocation', '2024-11-25 12:35:33', '2024-11-25 12:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_account_details`
--

CREATE TABLE `sitter_account_details` (
  `id` int NOT NULL,
  `sitter_id` int DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `stripe_account_id` varchar(255) DEFAULT NULL,
  `account_status` int NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sitter_account_details`
--

INSERT INTO `sitter_account_details` (`id`, `sitter_id`, `currency`, `country`, `stripe_account_id`, `account_status`, `createdAt`, `updatedAt`) VALUES
(5, 2, 'usd', 'USA', 'acct_1Qaz46FoUnNgYdF2', 1, '2024-12-28 12:24:30', '2024-12-28 12:26:13'),
(6, 3, 'usd', 'USA', 'acct_1Qb4XlC71F32oukN', 1, '2024-12-28 18:15:30', '2024-12-28 18:16:01'),
(7, 4, 'usd', 'USA', 'acct_1Qbfr1C0DpjY2Vb1', 1, '2024-12-30 10:05:52', '2024-12-30 10:06:24'),
(8, 5, 'usd', 'USA', 'acct_1QbgeGFlBCSAFag6', 1, '2024-12-30 10:56:47', '2024-12-30 10:57:20'),
(9, 13, 'usd', 'USA', 'acct_1QbgyqFwNEOVjqlD', 1, '2024-12-30 11:18:01', '2024-12-30 11:24:46'),
(10, 38, 'usd', 'USA', 'acct_1QebijC7Xvuetsu7', 1, '2025-01-07 12:17:26', '2025-01-07 12:17:52'),
(11, 23, 'usd', 'USA', 'acct_1QewGuCAbXJgJR7C', 0, '2025-01-08 10:14:05', '2025-01-08 10:14:05'),
(20, 77, 'usd', 'USA', 'acct_1Qjc2TCGW8yDriMR', 1, '2025-01-21 07:38:30', '2025-01-21 07:39:07'),
(21, 84, 'usd', 'USA', 'acct_1QjwvEC5jeUeFDv4', 1, '2025-01-22 05:56:26', '2025-01-22 05:57:21'),
(22, 85, 'usd', 'USA', 'acct_1QjxBYCGteH9SjDR', 1, '2025-01-22 06:13:17', '2025-01-29 13:05:24'),
(24, 91, 'usd', 'USA', 'acct_1QoiCMFxTchwzfwX', 1, '2025-02-04 09:13:47', '2025-02-04 09:14:26'),
(25, 98, 'usd', 'USA', 'acct_1QrCqmC8B3bKUvJI', 1, '2025-02-11 06:21:50', '2025-02-11 06:22:21'),
(26, 100, 'usd', 'USA', 'acct_1Qre98CKzVx798iC', 1, '2025-02-12 11:30:35', '2025-02-12 11:30:59'),
(29, 111, 'usd', 'USA', 'acct_1Qtoa8Flyx82oFXR', 1, '2025-02-18 11:03:25', '2025-02-18 11:07:53'),
(30, 112, 'usd', 'USA', 'acct_1QtozSCRaE97pTFW', 0, '2025-02-18 11:29:35', '2025-02-18 11:29:35'),
(31, 114, 'usd', 'USA', 'acct_1QtqdBCTH0W1SNoh', 0, '2025-02-18 13:14:41', '2025-02-18 13:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_details`
--

CREATE TABLE `sitter_details` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about_me` longtext,
  `avg_rating` float(10,1) DEFAULT NULL,
  `service_location_id` int DEFAULT NULL,
  `house_or_flat_no` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sitter_details`
--

INSERT INTO `sitter_details` (`id`, `user_id`, `cover_image`, `address`, `about_me`, `avg_rating`, `service_location_id`, `house_or_flat_no`, `landmark`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/cover-image-1734623941748.webp', '656 Hollywood Blvd', 'Hello this Elizabeth Harper', 2.4, NULL, 'NaN', 'NaN', '1', '0', '2024-12-28 11:32:54', '2024-12-28 11:32:54'),
(2, 3, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1735409331212_cover-image-1735409330818.webp', '1200 Getty Center Dr', 'Hello this Cristin Devid', 3.0, NULL, 'NaN', 'NaN', '1', '0', '2024-12-28 18:10:51', '2024-12-28 18:40:41'),
(3, 4, 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735553021232_profile-image-1735553021229.webp', '1200 Getty Center Dr', 'Hello this Elizabeth', 5.0, NULL, 'NaN', 'NaN', '1', '0', '2024-12-30 10:05:09', '2024-12-30 10:05:09'),
(4, 5, 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735556126081_profile-image-1735556126078.webp', '1200 Getty Center Dr', 'Hello this Elizabeth', 2.0, NULL, 'NaN', 'NaN', '1', '0', '2024-12-30 10:56:11', '2024-12-30 10:56:11'),
(5, 13, 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735557304710_profile-image-1735557304707.webp', '1200 Getty Center Dr', 'Hello this Osam', 3.5, NULL, 'NaN', 'NaN', '1', '0', '2024-12-30 11:15:38', '2024-12-30 11:15:38'),
(9, 30, 'https://www.pet-d-agogy-api.acelance.com/uploads/profile_images/profile-image-1734947481632.jpg', 'Kolkata kestopur', 'Hello this care is like your home', 5.0, NULL, '', 'Near bus stand', '1', '0', '2025-01-06 10:03:18', '2025-01-06 10:03:28'),
(11, 34, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736160503787_cover-image-1736160503787.webp', 'Hyderabad, Telangana, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum p', 4.0, NULL, '', '', '1', '0', '2025-01-06 10:48:24', '2025-01-06 10:48:24'),
(12, 35, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736171874955_cover-image-1736171874920.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum p', 3.0, NULL, '', '', '1', '0', '2025-01-06 13:57:55', '2025-01-06 13:59:01'),
(13, 36, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736234230851_cover-image-1736234230848.webp', 'Usaquén, Bogota, Colombia', 'test about', 4.0, NULL, 'test', '', '1', '0', '2025-01-07 07:17:11', '2025-01-07 07:18:35'),
(14, 37, 'https://www.pet-d-agogy-api.acelance.com/uploads/profile_images/profile-image-1734947481632.jpg', 'Kolkata kestopur', 'Hello this care is like your home', 5.0, NULL, '32', 'Near bus stand', '1', '0', '2025-01-07 08:18:43', '2025-01-07 08:18:43'),
(15, 12, 'https://www.pet-d-agogy-api.acelance.com/uploads/profile_images/profile-image-1734947481632.jpg', 'Kolkata kestopur', 'Hello this care is like your home', 3.0, NULL, '32', 'Near bus stand', '1', '0', '2025-01-07 10:55:31', '2025-01-07 10:55:31'),
(16, 38, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736251162197_cover-image-1736251162195.webp', 'Springfield, IL, USA', 'hello this is noone', 2.0, NULL, 'hi', 'by', '1', '0', '2025-01-07 11:59:22', '2025-01-07 11:59:22'),
(17, 40, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736253322509_cover-image-1736253322476.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsumbs', 4.0, NULL, '', '', '1', '0', '2025-01-07 12:33:00', '2025-01-07 13:26:24'),
(19, 45, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736258490364_cover-image-1736258490363.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem bdhzjdn', 3.0, NULL, '', '', '1', '0', '2025-01-07 14:01:30', '2025-01-07 14:01:30'),
(20, 27, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736314703399_cover-image-1736314703397.webp', 'Azimganj, West Bengal, India', 'test', 4.0, NULL, '', '', '1', '0', '2025-01-08 05:38:23', '2025-01-08 05:38:23'),
(21, 52, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736419415440_cover-image-1736419415438.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum p', 3.0, NULL, '', '', '1', '0', '2025-01-09 10:43:35', '2025-01-09 11:03:24'),
(22, 54, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736421100549_cover-image-1736421100549.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem jdjdnzn', 5.0, NULL, '27/j adhar chandra das lane', 'poland club', '1', '0', '2025-01-09 11:11:41', '2025-01-09 11:11:41'),
(23, 55, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736428479397_cover-image-1736428479395.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem djjsnzm', 3.0, NULL, '27/j adhar chandra das lane ', 'Poland club', '1', '0', '2025-01-09 13:14:39', '2025-01-09 13:14:39'),
(24, 33, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736496307100_cover-image-1736496307097.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem sbjBsbB', NULL, NULL, '', '', '1', '0', '2025-01-10 08:05:07', '2025-01-10 08:05:07'),
(25, 59, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736498201132_cover-image-1736498201050.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem', NULL, NULL, '', '', '1', '0', '2025-01-10 08:36:41', '2025-01-17 07:46:21'),
(26, 60, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736507785698_cover-image-1736507785656.webp', 'Chinatown, Yaowarat Road, Samphanthawong, Bangkok, Thailand', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing', NULL, NULL, '', '', '1', '0', '2025-01-10 11:16:26', '2025-01-10 11:16:26'),
(27, 66, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1736511635862_cover-image-1736511635775.webp', 'Springfield, IL, USA', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets hdjz zjzbnz djdbz sjz sj', NULL, NULL, '27/ j adhar chandra das lane ', 'p. k club', '1', '0', '2025-01-10 12:20:36', '2025-01-10 12:20:36'),
(29, 56, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737109842221_cover-image-1737109842220.webp', 'North 24 Parganas, India', 'फिज़ा में महकती शाम हो तुम,\nप्यार में झलकता जाम हो तुम,\nसीने में छुपाए फिरते हैं चाहत तुम्हारी,\nमेरी जिंदगी का दूसरा नाम हो तुम।', NULL, NULL, '', '', '1', '0', '2025-01-17 10:30:42', '2025-01-17 10:30:42'),
(30, 32, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737120338249_cover-image-1737120338244.webp', 'North 24 Parganas, India', 'xnxbxb. ', NULL, NULL, '', '', '1', '0', '2025-01-17 13:25:38', '2025-01-17 13:25:38'),
(31, 70, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737121839473_cover-image-1737121839472.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsumcc', NULL, NULL, '', '', '1', '0', '2025-01-17 13:50:39', '2025-01-17 13:53:41'),
(32, 71, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737125197205_cover-image-1737125197204.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum ', NULL, NULL, '', '', '1', '0', '2025-01-17 14:46:37', '2025-01-17 14:46:37'),
(33, 72, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737184638034_image-1737184637999.webp', 'Kolkata kestopur', 'Hello this care is like your home', NULL, NULL, '32', 'Near bus stand', '1', '0', '2025-01-18 07:08:42', '2025-01-18 07:29:23'),
(34, 67, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737184646019_cover-image-1737184646017.webp', 'Delhi, India', 'test', NULL, NULL, '', '', '1', '0', '2025-01-18 07:17:26', '2025-01-18 07:17:26'),
(35, 73, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737199367072_cover-image-1737199367070.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem ', NULL, NULL, '', '', '1', '0', '2025-01-18 11:22:47', '2025-01-18 11:22:47'),
(36, 74, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737200986718_cover-image-1737200986717.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem', NULL, NULL, '', '', '1', '0', '2025-01-18 11:49:46', '2025-01-18 11:49:46'),
(37, 75, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737204144734_cover-image-1737204144732.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem ', NULL, NULL, '', '', '1', '0', '2025-01-18 12:42:24', '2025-01-18 12:42:24'),
(38, 76, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737206443894_cover-image-1737206443892.webp', 'North 24 Parganas, India', 'Lorem ipsum has been used in typesetting since the 1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem dgdgagz', NULL, NULL, '', '', '1', '0', '2025-01-18 13:20:44', '2025-01-20 07:03:25'),
(39, 77, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737216266191_cover-image-1737216266188.webp', 'Kolkata, West Bengal, India', 'usejhbv', NULL, NULL, '43', 'kolkata', '1', '0', '2025-01-18 16:04:26', '2025-01-18 16:04:26'),
(40, 78, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737357053927_cover-image-1737357053925.webp', 'North 24 Parganas, India', '1500s. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages. It was introduced to the digital world in ', NULL, NULL, '', '', '1', '0', '2025-01-20 07:10:54', '2025-01-20 07:10:54'),
(41, 79, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737358327837_cover-image-1737358327836.webp', 'North 24 Parganas, India', 'shhdb shdbzbd', NULL, NULL, '', '', '1', '0', '2025-01-20 07:32:08', '2025-01-20 07:32:08'),
(42, 82, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737184638034_image-1737184637999.webp', 'Kolkata yatragachi', 'Hello this care is like your home', NULL, NULL, '32', 'Near bus stand', '1', '0', '2025-01-21 13:53:01', '2025-01-21 13:53:01'),
(43, 84, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737525157975_cover-image-1737525157842.webp', 'Kestopur, Kolkata, West Bengal, India', 'jdjeje', NULL, NULL, '26', 'hdudu', '1', '0', '2025-01-22 05:52:38', '2025-01-22 05:52:38'),
(44, 85, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737526206902_cover-image-1737526206757.webp', 'Kestopur, Kolkata, West Bengal, India', 'vshsh', NULL, NULL, '1717', 'hsh', '1', '0', '2025-01-22 06:10:07', '2025-01-22 06:10:07'),
(45, 87, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1737614717265_cover-image-1737614717181.webp', 'North 24 Parganas, India', 'dghs ueve. she. ahe a sue jahr as. rhshebsbs dghs ueve. she. ahe a sue jahr as. rhshebsbs dghs ueve. she. ahe a sue jahr as. rhshebsbs dghs ueve. she. ahe a sue jahr as. rhshebsbs', 2.9, NULL, 'fff', 'ddd', '1', '0', '2025-01-23 06:45:17', '2025-02-05 09:46:26'),
(46, 91, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1738660165061_cover-image-1738660164902.webp', 'Players Club, Refaitpur, Chandrahati, Uttar Hazipur P, West Bengal, India', 'ggg', 5.0, NULL, '888', 'players club', '1', '0', '2025-02-04 09:09:25', '2025-02-04 09:09:25'),
(47, 97, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1738934654406_cover-image-1738934654309.webp', 'Puri, Odisha, India', 'about for testing', NULL, NULL, 'APT Building', 'Near sea', '1', '0', '2025-02-07 13:24:19', '2025-02-07 13:24:19'),
(48, 96, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739020596484_cover-image-1739020596443.webp', 'North 24 Parganas, India', 'b z z x', NULL, NULL, 'jsjsnxmz ', 'hzjzbx', '1', '0', '2025-02-08 13:16:36', '2025-02-08 13:16:36'),
(49, 98, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739254657340_cover-image-1739254657340.webp', 'Kolkata kestopur', 'Hello this care is like your home', NULL, NULL, '32', 'Near bus stand', '1', '0', '2025-02-11 06:18:50', '2025-02-11 06:18:50'),
(50, 100, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739359650661_cover-image-1739359650563.webp', 'Kolkata, West Bengal, India', 'syshsu', NULL, NULL, 'ajj', 'ayayy', '1', '0', '2025-02-12 11:27:31', '2025-02-12 11:27:31'),
(51, 104, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739457639713_cover-image-1739457639712.webp', 'North 24 Parganas, India', 'shzbzbx', NULL, NULL, 'hjdjsbzbz', 'hznzbxh', '1', '0', '2025-02-13 14:40:40', '2025-02-13 14:40:40'),
(52, 106, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739511682442_cover-image-1739511682440.webp', 'Kolkata, West Bengal, India', 'hksfhksdfhdsjhk', NULL, NULL, 'tejkh', 'jdksfhjh', '1', '0', '2025-02-14 05:41:22', '2025-02-14 05:41:22'),
(53, 110, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739875645092_cover-image-1739875645090.webp', 'Prayagraj, Uttar Pradesh, India', 'bdbd', NULL, NULL, 'hhh', 'shhs', '1', '0', '2025-02-18 10:47:25', '2025-02-18 10:47:25'),
(54, 111, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739875854977_cover-image-1739875854975.webp', 'North 24 Parganas, India', 'ना बंधन है, ना फेरे हैं,\nएक एहसास है जिसमें हम तेरे हैं।', NULL, NULL, 'kestopur', 'misit dokan', '1', '0', '2025-02-18 10:50:55', '2025-02-18 10:50:55'),
(55, 112, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739877651824_cover-image-1739877651797.webp', 'New York, NY, USA', 'hsjs zmx z zjd Msdb zzk znzid z zhd z db', NULL, NULL, 'racon street', 'mandir', '1', '0', '2025-02-18 11:23:05', '2025-02-18 11:23:13'),
(56, 113, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739880890726_cover-image-1739880890725.webp', 'North 24 Parganas, India', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum Kal kajer sese jokhon gourango sir ke bollam sobai sir appreciate tho durer kotha ulte abar bole dilo ', NULL, NULL, 'b _4', 'nfnfjfnfj', '1', '0', '2025-02-18 12:14:51', '2025-02-18 12:20:31'),
(57, 114, 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/compressed_1739883079174_cover-image-1739883079171.webp', 'North 24 Parganas, India', 'bzjz Mx  z z x (\" *', NULL, NULL, 'hzjf  fnz ', 'bzkd Nfhz d', '1', '0', '2025-02-18 12:51:31', '2025-02-18 12:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_pet_categories`
--

CREATE TABLE `sitter_pet_categories` (
  `id` int NOT NULL,
  `sitter_id` int DEFAULT NULL,
  `pet_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sitter_pet_categories`
--

INSERT INTO `sitter_pet_categories` (`id`, `sitter_id`, `pet_id`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 1, 1, '0', '2024-12-28 11:34:14', '2024-12-28 11:34:14'),
(2, 2, 2, 1, '0', '2024-12-28 11:34:14', '2024-12-28 11:34:14'),
(3, 2, 3, 1, '0', '2024-12-28 18:27:28', '2024-12-28 18:27:28'),
(4, 2, 4, 1, '0', '2024-12-28 18:27:28', '2024-12-28 18:27:28'),
(7, 5, 1, 1, '0', '2024-12-30 10:57:35', '2024-12-30 10:57:35'),
(8, 5, 2, 1, '0', '2024-12-30 10:57:35', '2024-12-30 10:57:35'),
(9, 13, 1, 1, '0', '2024-12-30 11:24:52', '2024-12-30 11:24:52'),
(10, 13, 2, 1, '0', '2024-12-30 11:24:52', '2024-12-30 11:24:52'),
(11, 4, 1, 1, '0', '2024-12-31 07:29:16', '2024-12-31 07:29:16'),
(12, 4, 2, 1, '0', '2024-12-31 07:29:16', '2024-12-31 07:29:16'),
(13, 4, 3, 1, '0', '2024-12-31 07:29:16', '2024-12-31 07:29:16'),
(39, 34, 1, 1, '0', '2025-01-06 12:09:03', '2025-01-06 12:09:03'),
(40, 34, 2, 1, '0', '2025-01-06 12:09:03', '2025-01-06 12:09:03'),
(41, 34, 3, 1, '0', '2025-01-06 12:09:03', '2025-01-06 12:09:03'),
(42, 34, 4, 1, '0', '2025-01-06 12:09:03', '2025-01-06 12:09:03'),
(47, 35, 1, 1, '0', '2025-01-06 13:59:03', '2025-01-06 13:59:03'),
(48, 35, 2, 1, '0', '2025-01-06 13:59:03', '2025-01-06 13:59:03'),
(49, 35, 3, 1, '0', '2025-01-06 13:59:03', '2025-01-06 13:59:03'),
(50, 35, 4, 1, '0', '2025-01-06 13:59:03', '2025-01-06 13:59:03'),
(51, 36, 1, 1, '0', '2025-01-07 07:20:20', '2025-01-07 07:20:20'),
(52, 36, 2, 1, '0', '2025-01-07 07:20:20', '2025-01-07 07:20:20'),
(53, 12, 1, 1, '0', '2025-01-07 10:56:36', '2025-01-07 10:56:36'),
(54, 12, 2, 1, '0', '2025-01-07 10:56:36', '2025-01-07 10:56:36'),
(55, 38, 3, 1, '0', '2025-01-07 11:59:35', '2025-01-07 11:59:35'),
(56, 38, 4, 1, '0', '2025-01-07 11:59:35', '2025-01-07 11:59:35'),
(70, 40, 1, 1, '0', '2025-01-07 13:26:28', '2025-01-07 13:26:28'),
(71, 40, 2, 1, '0', '2025-01-07 13:26:28', '2025-01-07 13:26:28'),
(72, 40, 4, 1, '0', '2025-01-07 13:26:28', '2025-01-07 13:26:28'),
(73, 45, 1, 1, '0', '2025-01-07 14:01:38', '2025-01-07 14:01:38'),
(87, 52, 1, 1, '0', '2025-01-09 10:45:46', '2025-01-09 10:45:46'),
(88, 52, 4, 1, '0', '2025-01-09 10:45:46', '2025-01-09 10:45:46'),
(89, 55, 1, 1, '0', '2025-01-09 13:15:02', '2025-01-09 13:15:02'),
(90, 55, 4, 1, '0', '2025-01-09 13:15:02', '2025-01-09 13:15:02'),
(91, 33, 1, 1, '0', '2025-01-10 08:05:15', '2025-01-10 08:05:15'),
(92, 60, 3, 1, '0', '2025-01-10 11:16:34', '2025-01-10 11:16:34'),
(93, 66, 3, 1, '0', '2025-01-10 12:20:44', '2025-01-10 12:20:44'),
(94, 54, 2, 1, '0', '2025-01-14 11:36:32', '2025-01-14 11:36:32'),
(95, 54, 3, 1, '0', '2025-01-14 11:36:32', '2025-01-14 11:36:32'),
(100, 59, 1, 1, '0', '2025-01-17 07:47:45', '2025-01-17 07:47:45'),
(101, 56, 1, 1, '0', '2025-01-17 10:30:46', '2025-01-17 10:30:46'),
(102, 32, 1, 1, '0', '2025-01-17 13:25:44', '2025-01-17 13:25:44'),
(103, 32, 2, 1, '0', '2025-01-17 13:25:44', '2025-01-17 13:25:44'),
(104, 32, 3, 1, '0', '2025-01-17 13:25:44', '2025-01-17 13:25:44'),
(105, 32, 4, 1, '0', '2025-01-17 13:25:44', '2025-01-17 13:25:44'),
(108, 70, 1, 1, '0', '2025-01-17 13:53:42', '2025-01-17 13:53:42'),
(109, 70, 4, 1, '0', '2025-01-17 13:53:42', '2025-01-17 13:53:42'),
(110, 71, 1, 1, '0', '2025-01-17 14:46:40', '2025-01-17 14:46:40'),
(111, 71, 4, 1, '0', '2025-01-17 14:46:40', '2025-01-17 14:46:40'),
(112, 72, 1, 1, '0', '2025-01-18 07:18:57', '2025-01-18 07:18:57'),
(113, 72, 2, 1, '0', '2025-01-18 07:18:57', '2025-01-18 07:18:57'),
(114, 73, 2, 1, '0', '2025-01-18 11:22:51', '2025-01-18 11:22:51'),
(115, 73, 3, 1, '0', '2025-01-18 11:22:51', '2025-01-18 11:22:51'),
(116, 74, 4, 1, '0', '2025-01-18 11:49:48', '2025-01-18 11:49:48'),
(120, 75, 4, 1, '0', '2025-01-18 12:42:41', '2025-01-18 12:42:41'),
(121, 77, 1, 1, '0', '2025-01-18 16:04:35', '2025-01-18 16:04:35'),
(122, 77, 2, 1, '0', '2025-01-18 16:04:35', '2025-01-18 16:04:35'),
(123, 77, 3, 1, '0', '2025-01-18 16:04:35', '2025-01-18 16:04:35'),
(124, 77, 4, 1, '0', '2025-01-18 16:04:35', '2025-01-18 16:04:35'),
(125, 76, 1, 1, '0', '2025-01-20 07:03:28', '2025-01-20 07:03:28'),
(126, 78, 1, 1, '0', '2025-01-20 07:10:56', '2025-01-20 07:10:56'),
(127, 79, 4, 1, '0', '2025-01-20 07:32:10', '2025-01-20 07:32:10'),
(128, 82, 3, 1, '0', '2025-01-21 13:56:45', '2025-01-21 13:56:45'),
(129, 82, 4, 1, '0', '2025-01-21 13:56:45', '2025-01-21 13:56:45'),
(130, 84, 1, 1, '0', '2025-01-22 05:52:57', '2025-01-22 05:52:57'),
(131, 84, 2, 1, '0', '2025-01-22 05:52:57', '2025-01-22 05:52:57'),
(132, 84, 3, 1, '0', '2025-01-22 05:52:57', '2025-01-22 05:52:57'),
(133, 84, 4, 1, '0', '2025-01-22 05:52:57', '2025-01-22 05:52:57'),
(134, 85, 1, 1, '0', '2025-01-22 06:10:11', '2025-01-22 06:10:11'),
(135, 85, 2, 1, '0', '2025-01-22 06:10:11', '2025-01-22 06:10:11'),
(136, 85, 3, 1, '0', '2025-01-22 06:10:11', '2025-01-22 06:10:11'),
(137, 85, 4, 1, '0', '2025-01-22 06:10:11', '2025-01-22 06:10:11'),
(139, 87, 1, 1, '0', '2025-01-23 07:36:28', '2025-01-23 07:36:28'),
(140, 87, 2, 1, '0', '2025-01-23 07:36:28', '2025-01-23 07:36:28'),
(141, 87, 3, 1, '0', '2025-01-23 07:36:28', '2025-01-23 07:36:28'),
(142, 87, 4, 1, '0', '2025-01-23 07:36:28', '2025-01-23 07:36:28'),
(143, 91, 1, 1, '0', '2025-02-04 09:09:32', '2025-02-04 09:09:32'),
(144, 91, 2, 1, '0', '2025-02-04 09:09:32', '2025-02-04 09:09:32'),
(145, 91, 3, 1, '0', '2025-02-04 09:09:32', '2025-02-04 09:09:32'),
(146, 91, 4, 1, '0', '2025-02-04 09:09:32', '2025-02-04 09:09:32'),
(147, 67, 1, 1, '0', '2025-02-07 05:03:28', '2025-02-07 05:03:28'),
(148, 67, 2, 1, '0', '2025-02-07 05:03:28', '2025-02-07 05:03:28'),
(153, 97, 1, 1, '0', '2025-02-07 13:28:44', '2025-02-07 13:28:44'),
(154, 97, 2, 1, '0', '2025-02-07 13:28:44', '2025-02-07 13:28:44'),
(155, 97, 3, 1, '0', '2025-02-07 13:28:44', '2025-02-07 13:28:44'),
(156, 97, 4, 1, '0', '2025-02-07 13:28:44', '2025-02-07 13:28:44'),
(157, 96, 1, 1, '0', '2025-02-08 13:16:41', '2025-02-08 13:16:41'),
(158, 96, 4, 1, '0', '2025-02-08 13:16:41', '2025-02-08 13:16:41'),
(159, 98, 1, 1, '0', '2025-02-11 06:28:53', '2025-02-11 06:28:53'),
(160, 98, 2, 1, '0', '2025-02-11 06:28:53', '2025-02-11 06:28:53'),
(161, 98, 3, 1, '0', '2025-02-11 06:28:53', '2025-02-11 06:28:53'),
(162, 98, 4, 1, '0', '2025-02-11 06:28:53', '2025-02-11 06:28:53'),
(163, 100, 1, 1, '0', '2025-02-12 11:27:36', '2025-02-12 11:27:36'),
(164, 100, 2, 1, '0', '2025-02-12 11:27:36', '2025-02-12 11:27:36'),
(165, 100, 3, 1, '0', '2025-02-12 11:27:36', '2025-02-12 11:27:36'),
(166, 100, 4, 1, '0', '2025-02-12 11:27:36', '2025-02-12 11:27:36'),
(167, 104, 1, 1, '0', '2025-02-13 14:40:42', '2025-02-13 14:40:42'),
(168, 106, 1, 1, '0', '2025-02-14 05:41:27', '2025-02-14 05:41:27'),
(169, 106, 2, 1, '0', '2025-02-14 05:41:27', '2025-02-14 05:41:27'),
(170, 106, 3, 1, '0', '2025-02-14 05:41:27', '2025-02-14 05:41:27'),
(171, 106, 4, 1, '0', '2025-02-14 05:41:27', '2025-02-14 05:41:27'),
(172, 110, 1, 1, '0', '2025-02-18 10:47:29', '2025-02-18 10:47:29'),
(173, 110, 2, 1, '0', '2025-02-18 10:47:29', '2025-02-18 10:47:29'),
(174, 110, 3, 1, '0', '2025-02-18 10:47:29', '2025-02-18 10:47:29'),
(175, 111, 1, 1, '0', '2025-02-18 10:50:58', '2025-02-18 10:50:58'),
(176, 112, 4, 1, '0', '2025-02-18 11:23:18', '2025-02-18 11:23:18'),
(181, 113, 1, 1, '0', '2025-02-18 12:20:34', '2025-02-18 12:20:34'),
(182, 113, 2, 1, '0', '2025-02-18 12:20:34', '2025-02-18 12:20:34'),
(183, 113, 3, 1, '0', '2025-02-18 12:20:34', '2025-02-18 12:20:34'),
(184, 113, 4, 1, '0', '2025-02-18 12:20:34', '2025-02-18 12:20:34'),
(185, 114, 1, 1, '0', '2025-02-18 12:51:34', '2025-02-18 12:51:34'),
(186, 114, 2, 1, '0', '2025-02-18 12:51:34', '2025-02-18 12:51:34'),
(187, 114, 3, 1, '0', '2025-02-18 12:51:34', '2025-02-18 12:51:34'),
(188, 114, 4, 1, '0', '2025-02-18 12:51:34', '2025-02-18 12:51:34'),
(189, 27, 1, 1, '0', '2025-02-20 06:52:55', '2025-02-20 06:52:55'),
(190, 27, 2, 1, '0', '2025-02-20 06:52:55', '2025-02-20 06:52:55'),
(191, 27, 3, 1, '0', '2025-02-20 06:52:55', '2025-02-20 06:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_pet_services`
--

CREATE TABLE `sitter_pet_services` (
  `id` int NOT NULL,
  `sitter_id` int NOT NULL,
  `pet_service_id` int NOT NULL,
  `service_location_id` int DEFAULT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sitter_pet_services`
--

INSERT INTO `sitter_pet_services` (`id`, `sitter_id`, `pet_service_id`, `service_location_id`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 1, 2, '1', '0', '2024-12-28 12:43:55', '2024-12-28 12:43:55'),
(2, 2, 2, 1, '1', '0', '2024-12-28 12:43:55', '2024-12-28 12:43:55'),
(3, 2, 3, 1, '1', '0', '2024-12-28 12:43:55', '2024-12-28 12:43:55'),
(5, 2, 4, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(20, 13, 4, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(21, 13, 3, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(22, 4, 3, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(23, 4, 2, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(24, 5, 1, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(25, 5, 3, 1, '1', '0', '2024-12-28 18:19:09', '2024-12-28 18:19:09'),
(41, 34, 1, NULL, '1', '0', '2025-01-06 12:09:05', '2025-01-06 12:09:05'),
(42, 34, 2, NULL, '1', '0', '2025-01-06 12:09:05', '2025-01-06 12:09:05'),
(43, 34, 3, NULL, '1', '0', '2025-01-06 12:09:05', '2025-01-06 12:09:05'),
(48, 35, 1, NULL, '1', '0', '2025-01-06 13:59:05', '2025-01-06 13:59:05'),
(49, 35, 2, NULL, '1', '0', '2025-01-06 13:59:05', '2025-01-06 13:59:05'),
(50, 35, 3, NULL, '1', '0', '2025-01-06 13:59:05', '2025-01-06 13:59:05'),
(51, 35, 4, NULL, '1', '0', '2025-01-06 13:59:05', '2025-01-06 13:59:05'),
(64, 36, 2, NULL, '1', '0', '2025-01-07 07:20:33', '2025-01-07 07:20:33'),
(65, 12, 1, NULL, '1', '0', '2025-01-07 10:57:38', '2025-01-07 10:57:38'),
(66, 12, 2, NULL, '1', '0', '2025-01-07 10:57:38', '2025-01-07 10:57:38'),
(67, 38, 2, NULL, '1', '0', '2025-01-07 11:59:39', '2025-01-07 11:59:39'),
(68, 38, 3, NULL, '1', '0', '2025-01-07 11:59:39', '2025-01-07 11:59:39'),
(76, 40, 1, NULL, '1', '0', '2025-01-07 13:26:31', '2025-01-07 13:26:31'),
(77, 40, 4, NULL, '1', '0', '2025-01-07 13:26:31', '2025-01-07 13:26:31'),
(78, 45, 1, NULL, '1', '0', '2025-01-07 14:01:42', '2025-01-07 14:01:42'),
(79, 45, 2, NULL, '1', '0', '2025-01-07 14:01:42', '2025-01-07 14:01:42'),
(82, 27, 1, NULL, '1', '0', '2025-01-08 05:38:31', '2025-01-08 05:38:31'),
(83, 27, 2, NULL, '1', '0', '2025-01-08 05:38:31', '2025-01-08 05:38:31'),
(84, 27, 3, NULL, '1', '0', '2025-01-08 05:38:31', '2025-01-08 05:38:31'),
(87, 52, 4, NULL, '1', '0', '2025-01-09 10:45:47', '2025-01-09 10:45:47'),
(88, 55, 4, NULL, '1', '0', '2025-01-09 13:15:09', '2025-01-09 13:15:09'),
(89, 33, 2, NULL, '1', '0', '2025-01-10 08:05:20', '2025-01-10 08:05:20'),
(90, 60, 1, NULL, '1', '0', '2025-01-10 11:16:39', '2025-01-10 11:16:39'),
(91, 66, 3, NULL, '1', '0', '2025-01-10 12:20:48', '2025-01-10 12:20:48'),
(94, 54, 1, NULL, '1', '0', '2025-01-14 11:40:30', '2025-01-14 11:40:30'),
(95, 54, 2, NULL, '1', '0', '2025-01-14 11:40:30', '2025-01-14 11:40:30'),
(96, 54, 3, NULL, '1', '0', '2025-01-14 11:40:30', '2025-01-14 11:40:30'),
(97, 54, 4, NULL, '1', '0', '2025-01-14 11:40:30', '2025-01-14 11:40:30'),
(101, 59, 4, NULL, '1', '0', '2025-01-17 07:47:50', '2025-01-17 07:47:50'),
(102, 56, 1, NULL, '1', '0', '2025-01-17 10:30:49', '2025-01-17 10:30:49'),
(107, 32, 1, NULL, '1', '0', '2025-01-17 13:25:46', '2025-01-17 13:25:46'),
(108, 32, 2, NULL, '1', '0', '2025-01-17 13:25:46', '2025-01-17 13:25:46'),
(109, 32, 3, NULL, '1', '0', '2025-01-17 13:25:46', '2025-01-17 13:25:46'),
(110, 32, 4, NULL, '1', '0', '2025-01-17 13:25:46', '2025-01-17 13:25:46'),
(113, 70, 1, NULL, '1', '0', '2025-01-17 13:53:44', '2025-01-17 13:53:44'),
(114, 70, 4, NULL, '1', '0', '2025-01-17 13:53:44', '2025-01-17 13:53:44'),
(115, 71, 1, NULL, '1', '0', '2025-01-17 14:46:42', '2025-01-17 14:46:42'),
(116, 71, 4, NULL, '1', '0', '2025-01-17 14:46:42', '2025-01-17 14:46:42'),
(117, 72, 1, NULL, '1', '0', '2025-01-18 07:19:09', '2025-01-18 07:19:09'),
(118, 72, 2, NULL, '1', '0', '2025-01-18 07:19:09', '2025-01-18 07:19:09'),
(119, 73, 2, NULL, '1', '0', '2025-01-18 11:22:54', '2025-01-18 11:22:54'),
(120, 73, 3, NULL, '1', '0', '2025-01-18 11:22:54', '2025-01-18 11:22:54'),
(121, 74, 4, NULL, '1', '0', '2025-01-18 11:49:51', '2025-01-18 11:49:51'),
(122, 67, 1, NULL, '1', '0', '2025-01-18 12:22:00', '2025-01-18 12:22:00'),
(123, 67, 2, NULL, '1', '0', '2025-01-18 12:22:00', '2025-01-18 12:22:00'),
(124, 67, 3, NULL, '1', '0', '2025-01-18 12:22:00', '2025-01-18 12:22:00'),
(125, 75, 4, NULL, '1', '0', '2025-01-18 12:42:44', '2025-01-18 12:42:44'),
(126, 77, 1, NULL, '1', '0', '2025-01-18 16:04:44', '2025-01-18 16:04:44'),
(127, 77, 2, NULL, '1', '0', '2025-01-18 16:04:44', '2025-01-18 16:04:44'),
(128, 77, 3, NULL, '1', '0', '2025-01-18 16:04:44', '2025-01-18 16:04:44'),
(129, 77, 4, NULL, '1', '0', '2025-01-18 16:04:44', '2025-01-18 16:04:44'),
(130, 76, 4, NULL, '1', '0', '2025-01-20 07:03:31', '2025-01-20 07:03:31'),
(131, 78, 4, NULL, '1', '0', '2025-01-20 07:10:59', '2025-01-20 07:10:59'),
(132, 79, 4, NULL, '1', '0', '2025-01-20 07:32:12', '2025-01-20 07:32:12'),
(133, 82, 3, NULL, '1', '0', '2025-01-21 13:57:01', '2025-01-21 13:57:01'),
(134, 82, 4, NULL, '1', '0', '2025-01-21 13:57:01', '2025-01-21 13:57:01'),
(135, 84, 1, NULL, '1', '0', '2025-01-22 05:53:01', '2025-01-22 05:53:01'),
(136, 84, 2, NULL, '1', '0', '2025-01-22 05:53:01', '2025-01-22 05:53:01'),
(137, 84, 3, NULL, '1', '0', '2025-01-22 05:53:01', '2025-01-22 05:53:01'),
(138, 85, 1, NULL, '1', '0', '2025-01-22 06:10:15', '2025-01-22 06:10:15'),
(139, 85, 2, NULL, '1', '0', '2025-01-22 06:10:15', '2025-01-22 06:10:15'),
(140, 85, 3, NULL, '1', '0', '2025-01-22 06:10:15', '2025-01-22 06:10:15'),
(141, 85, 4, NULL, '1', '0', '2025-01-22 06:10:15', '2025-01-22 06:10:15'),
(144, 87, 1, NULL, '1', '0', '2025-01-23 07:35:00', '2025-01-23 07:35:00'),
(145, 87, 2, NULL, '1', '0', '2025-01-23 07:35:00', '2025-01-23 07:35:00'),
(146, 87, 3, NULL, '1', '0', '2025-01-23 07:35:00', '2025-01-23 07:35:00'),
(147, 87, 4, NULL, '1', '0', '2025-01-23 07:35:00', '2025-01-23 07:35:00'),
(148, 91, 1, NULL, '1', '0', '2025-02-04 09:09:38', '2025-02-04 09:09:38'),
(149, 91, 2, NULL, '1', '0', '2025-02-04 09:09:38', '2025-02-04 09:09:38'),
(150, 91, 3, NULL, '1', '0', '2025-02-04 09:09:38', '2025-02-04 09:09:38'),
(151, 91, 4, NULL, '1', '0', '2025-02-04 09:09:38', '2025-02-04 09:09:38'),
(156, 97, 1, NULL, '1', '0', '2025-02-07 13:28:55', '2025-02-07 13:28:55'),
(157, 97, 2, NULL, '1', '0', '2025-02-07 13:28:55', '2025-02-07 13:28:55'),
(158, 97, 3, NULL, '1', '0', '2025-02-07 13:28:55', '2025-02-07 13:28:55'),
(159, 97, 4, NULL, '1', '0', '2025-02-07 13:28:55', '2025-02-07 13:28:55'),
(160, 96, 1, NULL, '1', '0', '2025-02-08 13:16:45', '2025-02-08 13:16:45'),
(161, 96, 4, NULL, '1', '0', '2025-02-08 13:16:45', '2025-02-08 13:16:45'),
(162, 98, 1, NULL, '1', '0', '2025-02-11 06:28:57', '2025-02-11 06:28:57'),
(163, 98, 2, NULL, '1', '0', '2025-02-11 06:28:57', '2025-02-11 06:28:57'),
(164, 98, 3, NULL, '1', '0', '2025-02-11 06:28:57', '2025-02-11 06:28:57'),
(165, 98, 4, NULL, '1', '0', '2025-02-11 06:28:57', '2025-02-11 06:28:57'),
(166, 100, 1, NULL, '1', '0', '2025-02-12 11:27:40', '2025-02-12 11:27:40'),
(167, 100, 2, NULL, '1', '0', '2025-02-12 11:27:40', '2025-02-12 11:27:40'),
(168, 100, 3, NULL, '1', '0', '2025-02-12 11:27:40', '2025-02-12 11:27:40'),
(169, 100, 4, NULL, '1', '0', '2025-02-12 11:27:40', '2025-02-12 11:27:40'),
(170, 104, 2, NULL, '1', '0', '2025-02-13 14:40:45', '2025-02-13 14:40:45'),
(171, 106, 1, NULL, '1', '0', '2025-02-14 05:41:31', '2025-02-14 05:41:31'),
(172, 106, 2, NULL, '1', '0', '2025-02-14 05:41:31', '2025-02-14 05:41:31'),
(173, 106, 3, NULL, '1', '0', '2025-02-14 05:41:31', '2025-02-14 05:41:31'),
(174, 106, 4, NULL, '1', '0', '2025-02-14 05:41:31', '2025-02-14 05:41:31'),
(175, 110, 1, NULL, '1', '0', '2025-02-18 10:47:32', '2025-02-18 10:47:32'),
(176, 110, 2, NULL, '1', '0', '2025-02-18 10:47:32', '2025-02-18 10:47:32'),
(177, 110, 3, NULL, '1', '0', '2025-02-18 10:47:32', '2025-02-18 10:47:32'),
(178, 110, 4, NULL, '1', '0', '2025-02-18 10:47:32', '2025-02-18 10:47:32'),
(179, 111, 4, NULL, '1', '0', '2025-02-18 10:51:02', '2025-02-18 10:51:02'),
(182, 112, 3, NULL, '1', '0', '2025-02-18 11:27:12', '2025-02-18 11:27:12'),
(187, 113, 1, NULL, '1', '0', '2025-02-18 12:20:42', '2025-02-18 12:20:42'),
(188, 113, 2, NULL, '1', '0', '2025-02-18 12:20:42', '2025-02-18 12:20:42'),
(189, 113, 3, NULL, '1', '0', '2025-02-18 12:20:42', '2025-02-18 12:20:42'),
(190, 113, 4, NULL, '1', '0', '2025-02-18 12:20:42', '2025-02-18 12:20:42'),
(191, 114, 1, NULL, '1', '0', '2025-02-18 12:51:42', '2025-02-18 12:51:42'),
(192, 114, 2, NULL, '1', '0', '2025-02-18 12:51:42', '2025-02-18 12:51:42'),
(193, 114, 3, NULL, '1', '0', '2025-02-18 12:51:42', '2025-02-18 12:51:42'),
(194, 114, 4, NULL, '1', '0', '2025-02-18 12:51:42', '2025-02-18 12:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_pet_services_sizes`
--

CREATE TABLE `sitter_pet_services_sizes` (
  `id` int NOT NULL,
  `sitter_id` int NOT NULL,
  `sitter_service_id` int NOT NULL,
  `size_id` int NOT NULL,
  `size` varchar(255) NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sitter_pet_services_sizes`
--

INSERT INTO `sitter_pet_services_sizes` (`id`, `sitter_id`, `sitter_service_id`, `size_id`, `size`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 1, 1, 'Small(0-40) lbs', '0', '0', '2024-12-28 12:44:41', '2025-02-07 10:27:24'),
(2, 2, 2, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-28 12:44:41', '2024-12-28 12:44:41'),
(3, 2, 3, 3, 'Large(40-100) lbs', '1', '0', '2024-12-28 12:44:41', '2024-12-28 12:44:41'),
(4, 2, 4, 4, 'Giant(100+) lbs', '1', '0', '2024-12-28 12:44:41', '2024-12-28 12:44:41'),
(5, 12, 1, 1, 'Small(0-40) lbs', '0', '0', '2024-12-28 12:48:37', '2025-02-07 10:27:24'),
(6, 21, 1, 2, 'Medium(16-40) lbs', '0', '0', '2024-12-28 12:48:37', '2025-02-07 10:27:24'),
(7, 22, 1, 3, 'Large(40-100) lbs', '0', '0', '2024-12-28 12:48:37', '2025-02-07 10:27:24'),
(8, 23, 1, 4, 'Giant(100+) lbs', '0', '0', '2024-12-28 12:48:37', '2025-02-07 10:27:25'),
(9, 24, 1, 1, 'Small(0-40) lbs', '0', '0', '2024-12-28 12:50:26', '2025-02-07 10:27:25'),
(10, 25, 1, 2, 'Medium(16-40) lbs', '0', '0', '2024-12-28 12:50:26', '2025-02-07 10:27:25'),
(11, 26, 1, 3, 'Large(40-100) lbs', '0', '0', '2024-12-28 12:50:26', '2025-02-07 10:27:25'),
(13, 28, 2, 1, 'Small(0-40) lbs', '1', '0', '2024-12-28 12:51:37', '2024-12-28 12:51:37'),
(14, 29, 2, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-28 12:51:37', '2024-12-28 12:51:37'),
(15, 29, 2, 3, 'Large(40-100) lbs', '1', '0', '2024-12-28 12:51:37', '2024-12-28 12:51:37'),
(16, 29, 2, 4, 'Giant(100+) lbs', '1', '0', '2024-12-28 12:51:37', '2024-12-28 12:51:37'),
(17, 29, 1, 1, 'Small(0-40) lbs', '0', '0', '2024-12-28 12:51:49', '2025-02-07 10:27:25'),
(18, 29, 1, 2, 'Medium(16-40) lbs', '0', '0', '2024-12-28 12:51:49', '2025-02-07 10:27:25'),
(19, 29, 1, 3, 'Large(40-100) lbs', '0', '0', '2024-12-28 12:51:49', '2025-02-07 10:27:25'),
(20, 29, 1, 4, 'Giant(100+) lbs', '0', '0', '2024-12-28 12:51:49', '2025-02-07 10:27:25'),
(21, 3, 2, 1, 'Small(0-40) lbs', '1', '0', '2024-12-28 18:28:06', '2024-12-28 18:28:06'),
(22, 3, 2, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-28 18:28:06', '2024-12-28 18:28:06'),
(23, 3, 2, 3, 'Large(40-100) lbs', '1', '0', '2024-12-28 18:28:06', '2024-12-28 18:28:06'),
(24, 3, 2, 4, 'Giant(100+) lbs', '1', '0', '2024-12-28 18:28:06', '2024-12-28 18:28:06'),
(25, 4, 3, 1, 'Small(0-40) lbs', '1', '0', '2024-12-30 10:09:09', '2024-12-30 10:09:09'),
(26, 4, 3, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-30 10:09:09', '2024-12-30 10:09:09'),
(27, 4, 3, 3, 'Large(40-100) lbs', '1', '0', '2024-12-30 10:09:09', '2024-12-30 10:09:09'),
(28, 4, 3, 4, 'Giant(100+) lbs', '1', '0', '2024-12-30 10:09:09', '2024-12-30 10:09:09'),
(29, 5, 4, 1, 'Small(0-40) lbs', '1', '0', '2024-12-30 11:09:59', '2024-12-30 11:09:59'),
(30, 5, 4, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-30 11:09:59', '2024-12-30 11:09:59'),
(31, 5, 4, 3, 'Large(40-100) lbs', '1', '0', '2024-12-30 11:09:59', '2024-12-30 11:09:59'),
(32, 5, 4, 4, 'Giant(100+) lbs', '1', '0', '2024-12-30 11:09:59', '2024-12-30 11:09:59'),
(33, 13, 5, 1, 'Small(0-40) lbs', '1', '0', '2024-12-30 11:13:49', '2024-12-30 11:13:49'),
(34, 13, 5, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-30 11:13:49', '2024-12-30 11:13:49'),
(35, 13, 5, 3, 'Large(40-100) lbs', '1', '0', '2024-12-30 11:13:49', '2024-12-30 11:13:49'),
(36, 13, 5, 4, 'Giant(100+) lbs', '1', '0', '2024-12-30 11:13:49', '2024-12-30 11:13:49'),
(37, 38, 6, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-07 12:20:20', '2025-01-07 12:20:20'),
(38, 38, 6, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-07 12:20:20', '2025-01-07 12:20:20'),
(39, 38, 6, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-07 12:20:20', '2025-01-07 12:20:20'),
(40, 38, 6, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-07 12:20:20', '2025-01-07 12:20:20'),
(41, 38, 7, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-07 12:20:30', '2025-01-07 12:20:30'),
(42, 38, 7, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-07 12:20:30', '2025-01-07 12:20:30'),
(43, 38, 7, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-07 12:20:30', '2025-01-07 12:20:30'),
(44, 38, 7, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-07 12:20:30', '2025-01-07 12:20:30'),
(45, 38, 8, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-07 12:32:08', '2025-01-07 12:32:08'),
(46, 38, 8, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-07 12:32:08', '2025-01-07 12:32:08'),
(47, 38, 8, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-07 12:32:08', '2025-01-07 12:32:08'),
(48, 38, 8, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-07 12:32:08', '2025-01-07 12:32:08'),
(49, 45, 9, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-07 14:34:18', '2025-01-07 14:34:18'),
(50, 45, 9, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-07 14:34:18', '2025-01-07 14:34:18'),
(51, 45, 9, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-07 14:34:18', '2025-01-07 14:34:18'),
(52, 45, 9, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-07 14:34:18', '2025-01-07 14:34:18'),
(53, 66, 10, 2, 'Medium(16-40) lbs', '1', '0', '2024-12-30 10:09:09', '2024-12-30 10:09:09'),
(54, 72, 11, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-18 07:23:55', '2025-01-18 07:23:55'),
(55, 72, 11, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-18 07:23:55', '2025-01-18 07:23:55'),
(56, 72, 11, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-18 07:23:55', '2025-01-18 07:23:55'),
(57, 72, 11, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-18 07:23:55', '2025-01-18 07:23:55'),
(58, 77, 12, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-21 07:39:26', '2025-01-21 07:39:26'),
(59, 77, 12, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-21 07:39:26', '2025-01-21 07:39:26'),
(60, 77, 12, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-21 07:39:26', '2025-01-21 07:39:26'),
(61, 77, 12, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-21 07:39:26', '2025-01-21 07:39:26'),
(62, 77, 13, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-21 07:39:33', '2025-01-21 07:39:33'),
(63, 77, 13, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-21 07:39:33', '2025-01-21 07:39:33'),
(64, 77, 13, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-21 07:39:33', '2025-01-21 07:39:33'),
(65, 77, 13, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-21 07:39:33', '2025-01-21 07:39:33'),
(66, 82, 14, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-21 14:06:23', '2025-01-21 14:06:23'),
(67, 82, 14, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-21 14:06:23', '2025-01-21 14:06:23'),
(68, 82, 14, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-21 14:06:23', '2025-01-21 14:06:23'),
(69, 82, 14, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-21 14:06:23', '2025-01-21 14:06:23'),
(70, 82, 15, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-21 14:06:37', '2025-01-21 14:06:37'),
(71, 82, 15, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-21 14:06:37', '2025-01-21 14:06:37'),
(72, 82, 15, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-21 14:06:37', '2025-01-21 14:06:37'),
(73, 82, 15, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-21 14:06:37', '2025-01-21 14:06:37'),
(74, 84, 16, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-22 05:58:05', '2025-01-22 05:58:05'),
(75, 84, 16, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-22 05:58:05', '2025-01-22 05:58:05'),
(76, 84, 16, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-22 05:58:05', '2025-01-22 05:58:05'),
(77, 84, 16, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-22 05:58:05', '2025-01-22 05:58:05'),
(78, 84, 17, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-22 05:58:10', '2025-01-22 05:58:10'),
(79, 84, 17, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-22 05:58:10', '2025-01-22 05:58:10'),
(80, 84, 17, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-22 05:58:10', '2025-01-22 05:58:10'),
(81, 84, 17, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-22 05:58:10', '2025-01-22 05:58:10'),
(82, 84, 18, 1, 'Small(0-40 lbs)', '0', '0', '2025-01-22 05:58:15', '2025-02-07 09:55:08'),
(83, 84, 18, 2, 'Medium(16-40 lbs)', '0', '0', '2025-01-22 05:58:15', '2025-02-07 09:55:08'),
(84, 84, 18, 3, 'Large(40-100 lbs)', '0', '0', '2025-01-22 05:58:15', '2025-02-07 09:55:08'),
(85, 84, 18, 4, 'Giant(100+ lbs)', '0', '0', '2025-01-22 05:58:15', '2025-02-07 09:55:08'),
(86, 84, 19, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-22 05:58:18', '2025-01-22 05:58:18'),
(87, 84, 19, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-22 05:58:18', '2025-01-22 05:58:18'),
(88, 84, 19, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-22 05:58:18', '2025-01-22 05:58:18'),
(89, 84, 19, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-22 05:58:18', '2025-01-22 05:58:18'),
(90, 85, 20, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-22 06:14:13', '2025-01-22 06:14:13'),
(91, 85, 20, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-22 06:14:13', '2025-01-22 06:14:13'),
(92, 85, 20, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-22 06:14:13', '2025-01-22 06:14:13'),
(93, 85, 20, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-22 06:14:13', '2025-01-22 06:14:13'),
(94, 87, 21, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:24:49', '2025-01-23 07:24:49'),
(95, 87, 21, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:24:49', '2025-01-23 07:24:49'),
(96, 87, 21, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:24:49', '2025-01-23 07:24:49'),
(97, 87, 21, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:24:49', '2025-01-23 07:24:49'),
(98, 87, 22, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:35:27', '2025-01-23 07:35:27'),
(99, 87, 22, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:35:27', '2025-01-23 07:35:27'),
(100, 87, 22, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:35:27', '2025-01-23 07:35:27'),
(101, 87, 22, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:35:27', '2025-01-23 07:35:27'),
(102, 87, 23, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:35:32', '2025-01-23 07:35:32'),
(103, 87, 23, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:35:32', '2025-01-23 07:35:32'),
(104, 87, 23, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:35:32', '2025-01-23 07:35:32'),
(105, 87, 23, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:35:32', '2025-01-23 07:35:32'),
(106, 87, 24, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:35:36', '2025-01-23 07:35:36'),
(107, 87, 24, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:35:36', '2025-01-23 07:35:36'),
(108, 87, 24, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:35:36', '2025-01-23 07:35:36'),
(109, 87, 24, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:35:36', '2025-01-23 07:35:36'),
(110, 87, 25, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:37:31', '2025-01-23 07:37:31'),
(111, 87, 25, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:37:31', '2025-01-23 07:37:31'),
(112, 87, 25, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:37:31', '2025-01-23 07:37:31'),
(113, 87, 25, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:37:31', '2025-01-23 07:37:31'),
(114, 87, 26, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:37:36', '2025-01-23 07:37:36'),
(115, 87, 26, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:37:36', '2025-01-23 07:37:36'),
(116, 87, 26, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:37:36', '2025-01-23 07:37:36'),
(117, 87, 26, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:37:36', '2025-01-23 07:37:36'),
(118, 87, 27, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:37:40', '2025-01-23 07:37:40'),
(119, 87, 27, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:37:40', '2025-01-23 07:37:40'),
(120, 87, 27, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:37:40', '2025-01-23 07:37:40'),
(121, 87, 27, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:37:40', '2025-01-23 07:37:40'),
(122, 87, 28, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:37:45', '2025-01-23 07:37:45'),
(123, 87, 28, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:37:45', '2025-01-23 07:37:45'),
(124, 87, 28, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:37:45', '2025-01-23 07:37:45'),
(125, 87, 28, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:37:45', '2025-01-23 07:37:45'),
(126, 87, 29, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:37:54', '2025-01-23 07:37:54'),
(127, 87, 29, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:37:54', '2025-01-23 07:37:54'),
(128, 87, 29, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:37:54', '2025-01-23 07:37:54'),
(129, 87, 29, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:37:54', '2025-01-23 07:37:54'),
(130, 87, 30, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:37:57', '2025-01-23 07:37:57'),
(131, 87, 30, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:37:57', '2025-01-23 07:37:57'),
(132, 87, 30, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:37:57', '2025-01-23 07:37:57'),
(133, 87, 30, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:37:57', '2025-01-23 07:37:57'),
(134, 87, 31, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:38:02', '2025-01-23 07:38:02'),
(135, 87, 31, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:38:02', '2025-01-23 07:38:02'),
(136, 87, 31, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:38:02', '2025-01-23 07:38:02'),
(137, 87, 31, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:38:02', '2025-01-23 07:38:02'),
(138, 87, 32, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:38:05', '2025-01-23 07:38:05'),
(139, 87, 32, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:38:05', '2025-01-23 07:38:05'),
(140, 87, 32, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:38:05', '2025-01-23 07:38:05'),
(141, 87, 32, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:38:05', '2025-01-23 07:38:05'),
(142, 87, 33, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:38:16', '2025-01-23 07:38:16'),
(143, 87, 33, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:38:16', '2025-01-23 07:38:16'),
(144, 87, 33, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:38:16', '2025-01-23 07:38:16'),
(145, 87, 33, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:38:16', '2025-01-23 07:38:16'),
(146, 87, 34, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:38:19', '2025-01-23 07:38:19'),
(147, 87, 34, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:38:19', '2025-01-23 07:38:19'),
(148, 87, 34, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:38:19', '2025-01-23 07:38:19'),
(149, 87, 34, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:38:19', '2025-01-23 07:38:19'),
(150, 87, 35, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:38:23', '2025-01-23 07:38:23'),
(151, 87, 35, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:38:23', '2025-01-23 07:38:23'),
(152, 87, 35, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:38:23', '2025-01-23 07:38:23'),
(153, 87, 35, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:38:23', '2025-01-23 07:38:23'),
(154, 87, 36, 1, 'Small(0-40 lbs)', '1', '0', '2025-01-23 07:38:28', '2025-01-23 07:38:28'),
(155, 87, 36, 2, 'Medium(16-40 lbs)', '1', '0', '2025-01-23 07:38:28', '2025-01-23 07:38:28'),
(156, 87, 36, 3, 'Large(40-100 lbs)', '1', '0', '2025-01-23 07:38:28', '2025-01-23 07:38:28'),
(157, 87, 36, 4, 'Giant(100+ lbs)', '1', '0', '2025-01-23 07:38:28', '2025-01-23 07:38:28'),
(158, 91, 37, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-04 09:24:18', '2025-02-04 09:24:18'),
(159, 91, 37, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-04 09:24:18', '2025-02-04 09:24:18'),
(160, 91, 37, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-04 09:24:18', '2025-02-04 09:24:18'),
(161, 91, 37, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-04 09:24:18', '2025-02-04 09:24:18'),
(162, 91, 38, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-04 09:24:33', '2025-02-04 09:24:33'),
(163, 91, 38, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-04 09:24:33', '2025-02-04 09:24:33'),
(164, 91, 38, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-04 09:24:33', '2025-02-04 09:24:33'),
(165, 91, 38, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-04 09:24:33', '2025-02-04 09:24:33'),
(166, 91, 39, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-04 09:24:39', '2025-02-04 09:24:39'),
(167, 91, 39, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-04 09:24:39', '2025-02-04 09:24:39'),
(168, 91, 39, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-04 09:24:39', '2025-02-04 09:24:39'),
(169, 91, 39, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-04 09:24:39', '2025-02-04 09:24:39'),
(170, 91, 40, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-04 09:24:45', '2025-02-04 09:24:45'),
(171, 91, 40, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-04 09:24:45', '2025-02-04 09:24:45'),
(172, 91, 40, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-04 09:24:45', '2025-02-04 09:24:45'),
(173, 91, 40, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-04 09:24:45', '2025-02-04 09:24:45'),
(203, 67, 46, 1, 'Small(0-40 lbs)', '1', '1', '2025-02-07 07:37:57', '2025-02-07 07:45:59'),
(204, 67, 46, 3, 'Large(40-100 lbs)', '1', '1', '2025-02-07 07:37:57', '2025-02-07 07:45:59'),
(205, 67, 46, 2, 'Medium(16-40 lbs)', '1', '1', '2025-02-07 07:37:57', '2025-02-07 07:45:59'),
(206, 67, 47, 1, 'Small(0-40 lbs)', '0', '0', '2025-02-07 10:10:29', '2025-02-07 10:27:26'),
(207, 67, 47, 3, 'Large(40-100 lbs)', '0', '0', '2025-02-07 10:10:29', '2025-02-07 10:27:26'),
(208, 98, 48, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:32:58', '2025-02-11 06:32:58'),
(209, 98, 48, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:32:58', '2025-02-11 06:32:58'),
(210, 98, 48, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:32:58', '2025-02-11 06:32:58'),
(211, 98, 48, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:32:58', '2025-02-11 06:32:58'),
(212, 98, 49, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:33:43', '2025-02-11 06:33:43'),
(213, 98, 49, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:33:43', '2025-02-11 06:33:43'),
(214, 98, 49, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:33:43', '2025-02-11 06:33:43'),
(215, 98, 49, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:33:43', '2025-02-11 06:33:43'),
(216, 98, 50, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:33:56', '2025-02-11 06:33:56'),
(217, 98, 50, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:33:56', '2025-02-11 06:33:56'),
(218, 98, 50, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:33:56', '2025-02-11 06:33:56'),
(219, 98, 50, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:33:56', '2025-02-11 06:33:56'),
(220, 98, 51, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:34:02', '2025-02-11 06:34:02'),
(221, 98, 51, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:34:02', '2025-02-11 06:34:02'),
(222, 98, 51, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:34:02', '2025-02-11 06:34:02'),
(223, 98, 51, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:34:02', '2025-02-11 06:34:02'),
(224, 98, 52, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:34:19', '2025-02-11 06:34:19'),
(225, 98, 52, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:34:19', '2025-02-11 06:34:19'),
(226, 98, 52, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:34:19', '2025-02-11 06:34:19'),
(227, 98, 52, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:34:19', '2025-02-11 06:34:19'),
(228, 98, 53, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:34:40', '2025-02-11 06:34:40'),
(229, 98, 53, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:34:40', '2025-02-11 06:34:40'),
(230, 98, 53, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:34:40', '2025-02-11 06:34:40'),
(231, 98, 53, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:34:40', '2025-02-11 06:34:40'),
(232, 98, 54, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:34:49', '2025-02-11 06:34:49'),
(233, 98, 54, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:34:49', '2025-02-11 06:34:49'),
(234, 98, 54, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:34:49', '2025-02-11 06:34:49'),
(235, 98, 54, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:34:49', '2025-02-11 06:34:49'),
(236, 98, 55, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:36:03', '2025-02-11 06:36:03'),
(237, 98, 55, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:36:03', '2025-02-11 06:36:03'),
(238, 98, 55, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:36:03', '2025-02-11 06:36:03'),
(239, 98, 55, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:36:03', '2025-02-11 06:36:03'),
(240, 98, 56, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(241, 98, 56, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(242, 98, 56, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(243, 98, 56, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(244, 98, 57, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:36:30', '2025-02-11 06:36:30'),
(245, 98, 57, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:36:30', '2025-02-11 06:36:30'),
(246, 98, 57, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:36:30', '2025-02-11 06:36:30'),
(247, 98, 57, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:36:30', '2025-02-11 06:36:30'),
(248, 98, 58, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:36:39', '2025-02-11 06:36:39'),
(249, 98, 58, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:36:39', '2025-02-11 06:36:39'),
(250, 98, 58, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:36:39', '2025-02-11 06:36:39'),
(251, 98, 58, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:36:39', '2025-02-11 06:36:39'),
(252, 98, 59, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:36:52', '2025-02-11 06:36:52'),
(253, 98, 59, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:36:52', '2025-02-11 06:36:52'),
(254, 98, 59, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:36:52', '2025-02-11 06:36:52'),
(255, 98, 59, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:36:52', '2025-02-11 06:36:52'),
(256, 98, 60, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:40:36', '2025-02-11 06:40:36'),
(257, 98, 60, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:40:36', '2025-02-11 06:40:36'),
(258, 98, 60, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:40:36', '2025-02-11 06:40:36'),
(259, 98, 60, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:40:36', '2025-02-11 06:40:36'),
(260, 98, 61, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:40:47', '2025-02-11 06:40:47'),
(261, 98, 61, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:40:47', '2025-02-11 06:40:47'),
(262, 98, 61, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:40:47', '2025-02-11 06:40:47'),
(263, 98, 61, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:40:47', '2025-02-11 06:40:47'),
(264, 98, 62, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-11 06:40:53', '2025-02-11 06:40:53'),
(265, 98, 62, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-11 06:40:53', '2025-02-11 06:40:53'),
(266, 98, 62, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-11 06:40:53', '2025-02-11 06:40:53'),
(267, 98, 62, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-11 06:40:53', '2025-02-11 06:40:53'),
(268, 100, 63, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:05', '2025-02-12 11:33:05'),
(269, 100, 63, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:05', '2025-02-12 11:33:05'),
(270, 100, 63, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:05', '2025-02-12 11:33:05'),
(271, 100, 63, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:05', '2025-02-12 11:33:05'),
(272, 100, 64, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:08', '2025-02-12 11:33:08'),
(273, 100, 64, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:08', '2025-02-12 11:33:08'),
(274, 100, 64, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:08', '2025-02-12 11:33:08'),
(275, 100, 64, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:08', '2025-02-12 11:33:08'),
(276, 100, 65, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:18', '2025-02-12 11:33:18'),
(277, 100, 65, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:18', '2025-02-12 11:33:18'),
(278, 100, 65, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:18', '2025-02-12 11:33:18'),
(279, 100, 65, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:18', '2025-02-12 11:33:18'),
(280, 100, 66, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:22', '2025-02-12 11:33:22'),
(281, 100, 66, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:22', '2025-02-12 11:33:22'),
(282, 100, 66, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:22', '2025-02-12 11:33:22'),
(283, 100, 66, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:22', '2025-02-12 11:33:22'),
(284, 100, 67, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:28', '2025-02-12 11:33:28'),
(285, 100, 67, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:28', '2025-02-12 11:33:28'),
(286, 100, 67, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:28', '2025-02-12 11:33:28'),
(287, 100, 67, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:28', '2025-02-12 11:33:28'),
(288, 100, 68, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:32', '2025-02-12 11:33:32'),
(289, 100, 68, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:32', '2025-02-12 11:33:32'),
(290, 100, 68, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:32', '2025-02-12 11:33:32'),
(291, 100, 68, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:32', '2025-02-12 11:33:32'),
(292, 100, 69, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:36', '2025-02-12 11:33:36'),
(293, 100, 69, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:36', '2025-02-12 11:33:36'),
(294, 100, 69, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:36', '2025-02-12 11:33:36'),
(295, 100, 69, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:36', '2025-02-12 11:33:36'),
(296, 100, 70, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-12 11:33:40', '2025-02-12 11:33:40'),
(297, 100, 70, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-12 11:33:40', '2025-02-12 11:33:40'),
(298, 100, 70, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-12 11:33:40', '2025-02-12 11:33:40'),
(299, 100, 70, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-12 11:33:40', '2025-02-12 11:33:40'),
(300, 27, 71, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-13 10:09:59', '2025-02-13 10:14:26'),
(301, 27, 71, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-13 10:09:59', '2025-02-13 10:14:26'),
(302, 111, 72, 1, 'Small(0-40 lbs)', '1', '0', '2025-02-18 11:07:42', '2025-02-18 11:07:42'),
(303, 111, 72, 2, 'Medium(16-40 lbs)', '1', '0', '2025-02-18 11:07:42', '2025-02-18 11:07:42'),
(304, 111, 72, 3, 'Large(40-100 lbs)', '1', '0', '2025-02-18 11:07:42', '2025-02-18 11:07:42'),
(305, 111, 72, 4, 'Giant(100+ lbs)', '1', '0', '2025-02-18 11:07:42', '2025-02-18 11:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_services`
--

CREATE TABLE `sitter_services` (
  `id` int NOT NULL,
  `sitter_id` int NOT NULL,
  `pet_id` int DEFAULT NULL,
  `pet_service_id` int NOT NULL,
  `about_us` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `price` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sitter_services`
--

INSERT INTO `sitter_services` (`id`, `sitter_id`, `pet_id`, `pet_service_id`, `about_us`, `price`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 67, 1, 1, 'Loreum ipsum loreaum ipsum', '200', '0', '0', '2024-12-28 12:51:49', '2025-02-07 10:27:25'),
(2, 2, 2, 2, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '500', '1', '0', '2024-12-28 18:28:06', '2024-12-28 18:28:06'),
(3, 2, 3, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '700', '1', '0', '2024-12-30 10:09:09', '2024-12-30 10:09:09'),
(4, 2, 4, 4, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '100', '1', '0', '2024-12-30 11:09:59', '2024-12-30 11:09:59'),
(5, 13, 1, 1, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '300', '1', '0', '2024-12-30 11:13:49', '2024-12-30 11:13:49'),
(6, 38, 3, 2, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-01-07 12:20:20', '2025-01-07 12:20:20'),
(7, 38, 4, 2, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '40', '1', '0', '2025-01-07 12:20:30', '2025-01-07 12:20:30'),
(8, 38, 4, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-01-07 12:32:08', '2025-01-07 12:32:08'),
(9, 45, 1, 1, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-01-07 14:34:18', '2025-01-07 14:34:18'),
(10, 66, 3, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-01-07 14:34:18', '2025-01-07 14:34:18'),
(11, 72, 1, 1, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-01-18 07:23:55', '2025-01-18 07:23:55'),
(12, 77, 1, 1, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-21 07:39:26', '2025-01-21 07:39:26'),
(13, 77, 1, 3, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-21 07:39:33', '2025-01-21 07:39:33'),
(14, 82, 3, 3, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-01-21 14:06:23', '2025-01-21 14:06:23'),
(15, 82, 4, 4, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-01-21 14:06:37', '2025-01-21 14:06:37'),
(16, 84, 1, 3, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-22 05:58:05', '2025-01-22 05:58:05'),
(17, 84, 2, 3, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-22 05:58:10', '2025-01-22 05:58:10'),
(18, 84, 1, 3, 'Loreum ipsum loreaum ipsum', '100', '0', '0', '2025-01-22 05:58:15', '2025-02-07 09:55:08'),
(19, 84, 4, 3, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-22 05:58:18', '2025-01-22 05:58:18'),
(20, 85, 4, 3, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-22 06:14:13', '2025-01-22 06:14:13'),
(21, 87, 1, 4, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-01-23 07:24:49', '2025-01-23 07:24:49'),
(22, 87, 1, 1, 'Loreum ipsum loreaum ipsum', '100', '1', '0', '2025-01-23 07:35:27', '2025-01-23 07:35:27'),
(23, 87, 1, 2, 'Loreum ipsum loreaum ipsum', '50', '1', '0', '2025-01-23 07:35:32', '2025-01-23 07:35:32'),
(24, 87, 1, 3, 'Loreum ipsum loreaum ipsum', '40', '1', '0', '2025-01-23 07:35:36', '2025-01-23 07:35:36'),
(25, 87, 2, 1, 'Loreum ipsum loreaum ipsum', '30', '1', '0', '2025-01-23 07:37:31', '2025-01-23 07:37:31'),
(26, 87, 2, 2, 'Loreum ipsum loreaum ipsum', '20', '1', '0', '2025-01-23 07:37:36', '2025-01-23 07:37:36'),
(27, 87, 2, 3, 'Loreum ipsum loreaum ipsum', '10', '1', '0', '2025-01-23 07:37:40', '2025-01-23 07:37:40'),
(28, 87, 2, 4, 'Loreum ipsum loreaum ipsum', '20', '1', '0', '2025-01-23 07:37:45', '2025-01-23 07:37:45'),
(29, 87, 3, 1, 'Loreum ipsum loreaum ipsum', '300', '1', '0', '2025-01-23 07:37:54', '2025-01-23 07:37:54'),
(30, 87, 3, 2, 'Loreum ipsum loreaum ipsum', '1000', '1', '0', '2025-01-23 07:37:57', '2025-01-23 07:37:57'),
(31, 87, 3, 3, 'Loreum ipsum loreaum ipsum', '2000', '1', '0', '2025-01-23 07:38:02', '2025-01-23 07:38:02'),
(32, 87, 3, 4, 'Loreum ipsum loreaum ipsum', '2500', '1', '0', '2025-01-23 07:38:05', '2025-01-23 07:38:05'),
(33, 87, 4, 1, 'Loreum ipsum loreaum ipsum', '70', '1', '0', '2025-01-23 07:38:16', '2025-01-23 07:38:16'),
(34, 87, 4, 2, 'Loreum ipsum loreaum ipsum', '1005', '1', '0', '2025-01-23 07:38:19', '2025-01-23 07:38:19'),
(35, 87, 4, 3, 'Loreum ipsum loreaum ipsum', '1007', '1', '0', '2025-01-23 07:38:23', '2025-01-23 07:38:23'),
(36, 87, 4, 4, 'Loreum ipsum loreaum ipsum', '1009', '1', '0', '2025-01-23 07:38:28', '2025-01-23 07:38:28'),
(37, 91, 1, 1, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-02-04 09:24:18', '2025-02-04 09:24:18'),
(38, 91, 1, 2, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-02-04 09:24:33', '2025-02-04 09:24:33'),
(39, 91, 1, 3, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-02-04 09:24:39', '2025-02-04 09:24:39'),
(40, 91, 1, 4, 'Loreum ipsum loreaum ipsum', '200', '1', '0', '2025-02-04 09:24:45', '2025-02-04 09:24:45'),
(41, 67, 4, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-02-06 08:55:31', '2025-02-06 08:55:31'),
(42, 67, 4, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-02-06 08:56:11', '2025-02-06 08:56:11'),
(43, 67, 4, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '50', '1', '0', '2025-02-06 08:57:14', '2025-02-06 08:57:14'),
(44, 67, 1, 3, 'Experienced and caring pet sitter dedicated to providing your furry friends with the attention and love they deserve', '5000', '1', '0', '2025-02-06 08:57:52', '2025-02-07 07:00:36'),
(45, 67, 2, 1, 'test', '500', '1', '0', '2025-02-07 05:38:33', '2025-02-07 06:59:57'),
(46, 67, 2, 3, 'jsdf;sakfj sa;lkfj;dskl fjaksjf alsfjdkjdf jskd f;asdksdafj laskdjf askdfjpaoijrskdfja j', '400', '1', '1', '2025-02-07 07:31:01', '2025-02-07 07:45:59'),
(47, 67, 1, 2, 'testsets', '425', '0', '0', '2025-02-07 10:10:29', '2025-02-07 10:27:26'),
(48, 98, 1, 1, 'provider a about us', '20', '1', '0', '2025-02-11 06:32:58', '2025-02-11 06:32:58'),
(49, 98, 1, 2, 'provider a about us', '30', '1', '0', '2025-02-11 06:33:43', '2025-02-11 06:33:43'),
(50, 98, 1, 3, 'priif a about us', '10', '1', '0', '2025-02-11 06:33:56', '2025-02-11 06:33:56'),
(51, 98, 1, 4, 'priif a about us', '50', '1', '0', '2025-02-11 06:34:02', '2025-02-11 06:34:02'),
(52, 98, 2, 1, 'priif a about us', '50', '1', '0', '2025-02-11 06:34:19', '2025-02-11 06:34:19'),
(53, 98, 2, 2, 'priif a about us', '60', '1', '0', '2025-02-11 06:34:40', '2025-02-11 06:34:40'),
(54, 98, 2, 3, 'priif a about us', '70', '1', '0', '2025-02-11 06:34:49', '2025-02-11 06:34:49'),
(55, 98, 2, 4, 'xfkf a about us', '100', '1', '0', '2025-02-11 06:36:03', '2025-02-11 06:36:03'),
(56, 98, 3, 1, 'xfkf a about us', '20', '1', '0', '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(57, 98, 3, 2, 'xfkf a about us', '30', '1', '0', '2025-02-11 06:36:30', '2025-02-11 06:36:30'),
(58, 98, 3, 3, 'xfkf a about us', '40', '1', '0', '2025-02-11 06:36:39', '2025-02-11 06:36:39'),
(59, 98, 3, 4, 'xfkf a about us', '45', '1', '0', '2025-02-11 06:36:52', '2025-02-11 06:36:52'),
(60, 98, 4, 2, 'fff a about us', '50', '1', '0', '2025-02-11 06:40:36', '2025-02-11 06:40:36'),
(61, 98, 4, 3, 'fff a about us', '50', '1', '0', '2025-02-11 06:40:47', '2025-02-11 06:40:47'),
(62, 98, 4, 4, 'fff a about us', '10', '1', '0', '2025-02-11 06:40:53', '2025-02-11 06:40:53'),
(63, 100, 1, 1, 'fff a about us', '10', '1', '0', '2025-02-12 11:33:04', '2025-02-12 11:33:04'),
(64, 100, 1, 2, 'fff a about us', '10', '1', '0', '2025-02-12 11:33:08', '2025-02-12 11:33:08'),
(65, 100, 1, 3, 'fff a about us', '30', '1', '0', '2025-02-12 11:33:18', '2025-02-12 11:33:18'),
(66, 100, 1, 4, 'fff a about us', '50', '1', '0', '2025-02-12 11:33:22', '2025-02-12 11:33:22'),
(67, 100, 2, 1, 'fff a about us', '50', '1', '0', '2025-02-12 11:33:28', '2025-02-12 11:33:28'),
(68, 100, 2, 2, 'fff a about us', '50', '1', '0', '2025-02-12 11:33:32', '2025-02-12 11:33:32'),
(69, 100, 2, 3, 'fff a about us', '50', '1', '0', '2025-02-12 11:33:36', '2025-02-12 11:33:36'),
(70, 100, 2, 4, 'fff a about us', '50', '1', '0', '2025-02-12 11:33:40', '2025-02-12 11:33:40'),
(71, 27, 3, 2, 'test', '50', '1', '0', '2025-02-13 10:09:59', '2025-02-13 10:14:26'),
(72, 111, 1, 4, 'fff a about us', '50', '1', '0', '2025-02-18 11:07:42', '2025-02-18 11:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `sitter_videos_images`
--

CREATE TABLE `sitter_videos_images` (
  `id` int NOT NULL,
  `sitter_id` int NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_duration` varchar(255) DEFAULT NULL,
  `file_type` enum('image','video') NOT NULL DEFAULT 'image',
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sitter_videos_images`
--

INSERT INTO `sitter_videos_images` (`id`, `sitter_id`, `file_path`, `thumbnail`, `video_duration`, `file_type`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735389357978_image-1735389355323.webp', NULL, NULL, 'image', '1', '0', '2024-12-28 12:35:58', '2024-12-28 12:35:58'),
(2, 2, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735389357968_image-1735389355214.webp', NULL, NULL, 'image', '1', '0', '2024-12-28 12:35:58', '2024-12-28 12:35:58'),
(3, 2, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735389357979_image-1735389355682.webp', NULL, NULL, 'image', '1', '0', '2024-12-28 12:35:58', '2024-12-28 12:35:58'),
(4, 2, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1735389376749.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1735389406241.webp', NULL, 'video', '1', '0', '2024-12-28 12:36:49', '2024-12-28 12:36:49'),
(5, 2, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1735409802900.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1735409878972.webp', NULL, 'video', '1', '0', '2024-12-28 18:18:04', '2024-12-28 18:18:04'),
(6, 3, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735409894307_image-1735409893977.webp', NULL, NULL, 'image', '1', '0', '2024-12-28 18:18:14', '2024-12-28 18:18:14'),
(7, 3, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735409894309_image-1735409893985.webp', NULL, NULL, 'image', '1', '0', '2024-12-28 18:18:14', '2024-12-28 18:18:14'),
(8, 3, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735409894309_image-1735409894171.webp', NULL, NULL, 'image', '1', '0', '2024-12-28 18:18:14', '2024-12-28 18:18:14'),
(9, 4, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735553422592_image-1735553422282.webp', NULL, NULL, 'image', '1', '0', '2024-12-30 10:10:22', '2024-12-30 10:10:22'),
(10, 4, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1735553512028.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1735553576695.webp', NULL, 'video', '1', '0', '2024-12-30 10:13:01', '2024-12-30 10:13:01'),
(11, 5, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735556536850_image-1735556536847.webp', NULL, NULL, 'image', '1', '0', '2024-12-30 11:02:16', '2024-12-30 11:02:16'),
(12, 5, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1735556554149.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1735556556476.webp', NULL, 'video', '1', '0', '2024-12-30 11:02:37', '2024-12-30 11:02:37'),
(13, 13, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1735557345067_image-1735557345064.webp', NULL, NULL, 'image', '1', '0', '2024-12-30 11:15:45', '2024-12-30 11:15:45'),
(14, 13, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1735557349945.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1735557351595.webp', NULL, 'video', '1', '0', '2024-12-30 11:15:52', '2024-12-30 11:15:52'),
(25, 34, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736162601526.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736162601823.webp', NULL, 'video', '1', '0', '2025-01-06 11:23:23', '2025-01-06 11:23:23'),
(26, 34, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736162608849.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736162609132.webp', NULL, 'video', '1', '0', '2025-01-06 11:23:29', '2025-01-06 11:23:29'),
(27, 34, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736162613151.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736162613347.webp', NULL, 'video', '1', '0', '2025-01-06 11:23:33', '2025-01-06 11:23:33'),
(28, 34, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736162642075.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736162642338.webp', NULL, 'video', '1', '0', '2025-01-06 11:24:03', '2025-01-06 11:24:03'),
(29, 34, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736162651812.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736162652086.webp', NULL, 'video', '1', '0', '2025-01-06 11:24:12', '2025-01-06 11:24:12'),
(30, 34, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736162661196.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736162661352.webp', NULL, 'video', '1', '0', '2025-01-06 11:24:22', '2025-01-06 11:24:22'),
(57, 35, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736171970943.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736171971193.webp', NULL, 'video', '1', '0', '2025-01-06 13:59:32', '2025-01-06 13:59:32'),
(58, 35, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736171976282.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736171976519.webp', NULL, 'video', '1', '0', '2025-01-06 13:59:37', '2025-01-06 13:59:37'),
(59, 35, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736171980357.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736171980610.webp', NULL, 'video', '1', '0', '2025-01-06 13:59:41', '2025-01-06 13:59:41'),
(60, 35, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736171983760.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736171983927.webp', NULL, 'video', '1', '0', '2025-01-06 13:59:44', '2025-01-06 13:59:44'),
(61, 35, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736171998899.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736171999175.webp', NULL, 'video', '1', '0', '2025-01-06 13:59:59', '2025-01-06 13:59:59'),
(63, 38, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736251194641.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736251195393.webp', NULL, 'video', '1', '0', '2025-01-07 11:59:57', '2025-01-07 11:59:57'),
(64, 38, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736251222953_image-1736251222857.webp', NULL, NULL, 'image', '1', '0', '2025-01-07 12:00:23', '2025-01-07 12:00:23'),
(65, 40, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736256400689.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736256401166.webp', NULL, 'video', '1', '0', '2025-01-07 13:26:42', '2025-01-07 13:26:42'),
(66, 40, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736256405247.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736256405707.webp', NULL, 'video', '1', '0', '2025-01-07 13:26:46', '2025-01-07 13:26:46'),
(67, 40, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736256408578.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736256408975.webp', NULL, 'video', '1', '0', '2025-01-07 13:26:49', '2025-01-07 13:26:49'),
(69, 45, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736258507160.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736258507666.webp', NULL, 'video', '1', '0', '2025-01-07 14:01:48', '2025-01-07 14:01:48'),
(70, 45, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736258537432.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736258537735.webp', NULL, 'video', '1', '0', '2025-01-07 14:02:18', '2025-01-07 14:02:18'),
(71, 45, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736258540549.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736258541031.webp', NULL, 'video', '1', '0', '2025-01-07 14:02:21', '2025-01-07 14:02:21'),
(78, 55, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736430788764.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736430789711.webp', NULL, 'video', '1', '0', '2025-01-09 13:53:18', '2025-01-09 13:53:18'),
(79, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736496331849.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736496332163.webp', NULL, 'video', '1', '0', '2025-01-10 08:05:34', '2025-01-10 08:05:34'),
(80, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736496337248.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736496337694.webp', NULL, 'video', '1', '0', '2025-01-10 08:05:39', '2025-01-10 08:05:39'),
(81, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736496346408.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736496346845.webp', NULL, 'video', '1', '0', '2025-01-10 08:05:48', '2025-01-10 08:05:48'),
(82, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736496369030_image-1736496368949.webp', NULL, NULL, 'image', '1', '0', '2025-01-10 08:06:09', '2025-01-10 08:06:09'),
(83, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736496380952_image-1736496380920.webp', NULL, NULL, 'image', '1', '0', '2025-01-10 08:06:21', '2025-01-10 08:06:21'),
(84, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736496391506_image-1736496391436.webp', NULL, NULL, 'image', '1', '0', '2025-01-10 08:06:31', '2025-01-10 08:06:31'),
(85, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736496401180_image-1736496401113.webp', NULL, NULL, 'image', '1', '0', '2025-01-10 08:06:41', '2025-01-10 08:06:41'),
(87, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736496557213.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736496557484.webp', NULL, 'video', '1', '0', '2025-01-10 08:09:18', '2025-01-10 08:09:18'),
(88, 33, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736496575090.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736496575348.webp', NULL, 'video', '1', '0', '2025-01-10 08:09:36', '2025-01-10 08:09:36'),
(89, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507804702.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507804991.webp', NULL, 'video', '1', '0', '2025-01-10 11:16:47', '2025-01-10 11:16:47'),
(90, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507811275.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507811600.webp', NULL, 'video', '1', '0', '2025-01-10 11:16:52', '2025-01-10 11:16:52'),
(91, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507814590.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507814881.webp', NULL, 'video', '1', '0', '2025-01-10 11:16:55', '2025-01-10 11:16:55'),
(92, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507817859.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507818153.webp', NULL, 'video', '1', '0', '2025-01-10 11:16:58', '2025-01-10 11:16:58'),
(93, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507820983.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507821255.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:02', '2025-01-10 11:17:02'),
(94, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507825267.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507825528.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:06', '2025-01-10 11:17:06'),
(95, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507831410.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507831838.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:12', '2025-01-10 11:17:12'),
(96, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507845050.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507845481.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:26', '2025-01-10 11:17:26'),
(97, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507848560.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507850131.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:30', '2025-01-10 11:17:30'),
(98, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507854506.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507854946.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:35', '2025-01-10 11:17:35'),
(99, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507858834.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507859108.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:39', '2025-01-10 11:17:39'),
(100, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507862366.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507862651.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:43', '2025-01-10 11:17:43'),
(101, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507865387.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507865761.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:46', '2025-01-10 11:17:46'),
(102, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507868139.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507868405.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:49', '2025-01-10 11:17:49'),
(103, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507873962.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507874323.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:55', '2025-01-10 11:17:55'),
(104, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507877293.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507877547.webp', NULL, 'video', '1', '0', '2025-01-10 11:17:58', '2025-01-10 11:17:58'),
(105, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507879824.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507880059.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:00', '2025-01-10 11:18:00'),
(106, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507884811.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507885170.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:06', '2025-01-10 11:18:06'),
(107, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507887775.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507888045.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:09', '2025-01-10 11:18:09'),
(108, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507890742.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507891090.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:11', '2025-01-10 11:18:11'),
(109, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507907100.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507907385.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:28', '2025-01-10 11:18:28'),
(110, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507910343.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507910860.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:31', '2025-01-10 11:18:31'),
(111, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507913403.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507913708.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:34', '2025-01-10 11:18:34'),
(112, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507918317.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507918623.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:39', '2025-01-10 11:18:39'),
(113, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507923486.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507923766.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:44', '2025-01-10 11:18:44'),
(114, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736507929072.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736507929338.webp', NULL, 'video', '1', '0', '2025-01-10 11:18:50', '2025-01-10 11:18:50'),
(116, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509223995.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509224250.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:25', '2025-01-10 11:40:25'),
(117, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509228630.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509228942.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:29', '2025-01-10 11:40:29'),
(118, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509231688.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509231960.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:32', '2025-01-10 11:40:32'),
(119, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509234573.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509234935.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:35', '2025-01-10 11:40:35'),
(120, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509237457.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509237723.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:38', '2025-01-10 11:40:38'),
(121, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509240573.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509240895.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:41', '2025-01-10 11:40:41'),
(122, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509247533.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509247825.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:48', '2025-01-10 11:40:48'),
(123, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509251395.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509251583.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:52', '2025-01-10 11:40:52'),
(124, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736509255761.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736509255938.webp', NULL, 'video', '1', '0', '2025-01-10 11:40:56', '2025-01-10 11:40:56'),
(126, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736509851384_image-1736509851309.webp', NULL, NULL, 'image', '1', '0', '2025-01-10 11:50:51', '2025-01-10 11:50:51'),
(127, 60, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1736509859117_image-1736509859083.webp', NULL, NULL, 'image', '1', '0', '2025-01-10 11:50:59', '2025-01-10 11:50:59'),
(128, 54, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736855394859.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736855397279.webp', NULL, 'video', '1', '0', '2025-01-14 11:50:01', '2025-01-14 11:50:01'),
(129, 54, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1736855419812.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1736855422738.webp', NULL, 'video', '1', '0', '2025-01-14 11:50:24', '2025-01-14 11:50:24'),
(141, 70, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737121888671.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737121891507.webp', NULL, 'video', '1', '0', '2025-01-17 13:51:33', '2025-01-17 13:51:33'),
(143, 70, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737122344845.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737122345709.webp', NULL, 'video', '1', '0', '2025-01-17 13:59:06', '2025-01-17 13:59:06'),
(144, 70, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737122487648.mkv', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737122502455.webp', NULL, 'video', '1', '0', '2025-01-17 14:01:44', '2025-01-17 14:01:44'),
(158, 19, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737125234778_image-1737125234744.webp', NULL, NULL, 'image', '1', '0', '2025-01-17 14:47:14', '2025-01-17 14:47:14'),
(174, 72, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737184638034_image-1737184637999.webp', NULL, NULL, 'image', '1', '0', '2025-01-18 07:17:18', '2025-01-18 07:17:18'),
(175, 72, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737184687288.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737184689470.webp', NULL, 'video', '1', '0', '2025-01-18 07:18:11', '2025-01-18 07:18:11'),
(188, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204226464.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204227026.webp', NULL, 'video', '1', '0', '2025-01-18 12:43:49', '2025-01-18 12:43:49'),
(189, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204242624.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204243274.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:04', '2025-01-18 12:44:04'),
(190, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204247569.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204247891.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:08', '2025-01-18 12:44:08'),
(191, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204250650.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204251104.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:12', '2025-01-18 12:44:12'),
(193, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204278413.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204278770.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:39', '2025-01-18 12:44:39'),
(194, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204286423.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204286887.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:47', '2025-01-18 12:44:47'),
(195, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204291164.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204291449.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:52', '2025-01-18 12:44:52'),
(196, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204298796.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204299089.webp', NULL, 'video', '1', '0', '2025-01-18 12:44:59', '2025-01-18 12:44:59'),
(197, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204304082.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204304320.webp', NULL, 'video', '1', '0', '2025-01-18 12:45:05', '2025-01-18 12:45:05'),
(198, 75, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737204310229.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737204310442.webp', NULL, 'video', '1', '0', '2025-01-18 12:45:11', '2025-01-18 12:45:11'),
(199, 77, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737216290602.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737216294773.webp', NULL, 'video', '1', '0', '2025-01-18 16:04:58', '2025-01-18 16:04:58'),
(200, 77, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737216305078.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737216307947.webp', NULL, 'video', '1', '0', '2025-01-18 16:05:09', '2025-01-18 16:05:09'),
(201, 76, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737356639698.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737356640189.webp', NULL, 'video', '1', '0', '2025-01-20 07:04:02', '2025-01-20 07:04:02'),
(202, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357080034.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357080523.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:21', '2025-01-20 07:11:21'),
(203, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357084011.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357084713.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:25', '2025-01-20 07:11:25'),
(204, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357087754.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357088049.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:28', '2025-01-20 07:11:28'),
(205, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357091057.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357091500.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:32', '2025-01-20 07:11:32'),
(206, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357094921.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357095250.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:36', '2025-01-20 07:11:36'),
(207, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357102053.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357102416.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:43', '2025-01-20 07:11:43'),
(208, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357108910.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357109324.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:50', '2025-01-20 07:11:50'),
(209, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357116230.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357116562.webp', NULL, 'video', '1', '0', '2025-01-20 07:11:57', '2025-01-20 07:11:57'),
(212, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357183155.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357188877.webp', NULL, 'video', '1', '0', '2025-01-20 07:13:09', '2025-01-20 07:13:09'),
(213, 78, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737357502310.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737357569762.webp', NULL, 'video', '1', '0', '2025-01-20 07:19:31', '2025-01-20 07:19:31'),
(215, 79, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737446483715.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737446489409.webp', NULL, 'video', '1', '0', '2025-01-21 08:01:33', '2025-01-21 08:01:33'),
(216, 79, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737446809472.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737446811527.webp', NULL, 'video', '1', '0', '2025-01-21 08:06:53', '2025-01-21 08:06:53'),
(217, 79, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737447426637.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737447427785.webp', NULL, 'video', '1', '0', '2025-01-21 08:17:08', '2025-01-21 08:17:08'),
(226, 82, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737467765556_image-1737467765523.webp', NULL, NULL, 'image', '1', '0', '2025-01-21 13:56:05', '2025-01-21 13:56:05'),
(227, 82, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737467770930.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737467772551.webp', NULL, 'video', '1', '0', '2025-01-21 13:56:14', '2025-01-21 13:56:14'),
(228, 84, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737525189979.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737525196274.webp', NULL, 'video', '1', '0', '2025-01-22 05:53:17', '2025-01-22 05:53:17'),
(229, 84, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737525466274_image-1737525465923.webp', NULL, NULL, 'image', '1', '0', '2025-01-22 05:57:46', '2025-01-22 05:57:46'),
(230, 84, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737525477023_image-1737525477015.webp', NULL, NULL, 'image', '1', '0', '2025-01-22 05:57:57', '2025-01-22 05:57:57'),
(231, 84, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737525714462.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737525717548.webp', NULL, 'video', '1', '0', '2025-01-22 06:01:59', '2025-01-22 06:01:59'),
(232, 84, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737525728449.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737525731456.webp', NULL, 'video', '1', '0', '2025-01-22 06:02:12', '2025-01-22 06:02:12'),
(234, 85, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737526238128.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737526238379.webp', NULL, 'video', '1', '0', '2025-01-22 06:10:38', '2025-01-22 06:10:38'),
(235, 85, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737526445510_image-1737526445507.webp', NULL, NULL, 'image', '1', '0', '2025-01-22 06:14:05', '2025-01-22 06:14:05'),
(236, 85, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737526445512_image-1737526445507.webp', NULL, NULL, 'image', '1', '0', '2025-01-22 06:14:05', '2025-01-22 06:14:05'),
(241, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616034269_image-1737616032942.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:07:14', '2025-01-23 07:07:14'),
(242, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616034269_image-1737616032850.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:07:14', '2025-01-23 07:07:14'),
(243, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616034268_image-1737616032639.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:07:14', '2025-01-23 07:07:14'),
(244, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616034269_image-1737616032901.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:07:14', '2025-01-23 07:07:14'),
(250, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616078720_image-1737616077769.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:07:58', '2025-01-23 07:07:58'),
(251, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616078719_image-1737616077572.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:07:58', '2025-01-23 07:07:58'),
(252, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616078721_image-1737616078188.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:08:00', '2025-01-23 07:08:00'),
(253, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616078721_image-1737616077830.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:08:02', '2025-01-23 07:08:02'),
(254, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616078721_image-1737616078408.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:08:02', '2025-01-23 07:08:02'),
(255, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737616091079_image-1737616090767.webp', NULL, NULL, 'image', '1', '0', '2025-01-23 07:08:12', '2025-01-23 07:08:12'),
(256, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616132934.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616135970.webp', NULL, 'video', '1', '0', '2025-01-23 07:08:58', '2025-01-23 07:08:58'),
(257, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616145085.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616147070.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:08', '2025-01-23 07:09:08'),
(258, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616152832.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616153425.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:15', '2025-01-23 07:09:15'),
(259, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616165141.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616165795.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:27', '2025-01-23 07:09:27'),
(260, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616169396.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616170448.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:31', '2025-01-23 07:09:31'),
(261, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616173723.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616174508.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:35', '2025-01-23 07:09:35'),
(262, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616177527.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616178103.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:39', '2025-01-23 07:09:39'),
(263, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1737616181811.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1737616182573.webp', NULL, 'video', '1', '0', '2025-01-23 07:09:43', '2025-01-23 07:09:43'),
(278, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1738057926550.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1738057929053.webp', '0m 18s', 'video', '1', '0', '2025-01-28 09:52:10', '2025-01-28 09:52:10'),
(279, 87, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1738058336708.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1738058337495.webp', '0m 10s', 'video', '1', '0', '2025-01-28 09:58:58', '2025-01-28 09:58:58'),
(280, 91, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1738660192833.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1738660196886.webp', '0m 10s', 'video', '1', '0', '2025-02-04 09:09:58', '2025-02-04 09:09:58'),
(281, 91, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1738660335958_image-1738660335952.webp', NULL, NULL, 'image', '1', '0', '2025-02-04 09:12:15', '2025-02-04 09:12:15'),
(287, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632401_image-1739020631541.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(288, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632401_image-1739020631356.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(289, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632401_image-1739020630989.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(290, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632401_image-1739020629714.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(291, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632402_image-1739020632012.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(292, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632401_image-1739020631688.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(293, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632402_image-1739020632066.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(294, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739020632402_image-1739020632167.webp', NULL, NULL, 'image', '1', '0', '2025-02-08 13:17:12', '2025-02-08 13:17:12'),
(295, 96, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739020645119.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739020646095.webp', '0m 13s', 'video', '1', '0', '2025-02-08 13:17:27', '2025-02-08 13:17:27'),
(296, 98, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739254766945_image-1739254766941.webp', NULL, NULL, 'image', '1', '0', '2025-02-11 06:19:26', '2025-02-11 06:19:26'),
(297, 98, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739254766945_image-1739254766941.webp', NULL, NULL, 'image', '1', '0', '2025-02-11 06:19:26', '2025-02-11 06:19:26'),
(298, 98, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739254786301.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739254810670.webp', '0m 18s', 'video', '1', '0', '2025-02-11 06:20:13', '2025-02-11 06:20:13'),
(299, 100, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739359890210_image-1739359890205.webp', NULL, NULL, 'image', '1', '0', '2025-02-12 11:31:30', '2025-02-12 11:31:30'),
(300, 100, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739359890210_image-1739359890205.webp', NULL, NULL, 'image', '1', '0', '2025-02-12 11:31:30', '2025-02-12 11:31:30'),
(301, 100, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739359908806.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739359914365.webp', '0m 5s', 'video', '1', '0', '2025-02-12 11:31:56', '2025-02-12 11:31:56'),
(303, 104, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739457678543.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739457679335.webp', '0m 13s', 'video', '1', '0', '2025-02-13 14:41:20', '2025-02-13 14:41:20'),
(304, 104, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739457687643_image-1739457687270.webp', NULL, NULL, 'image', '1', '0', '2025-02-13 14:41:27', '2025-02-13 14:41:27'),
(307, 104, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739457703836_image-1739457703618.webp', NULL, NULL, 'image', '1', '0', '2025-02-13 14:41:44', '2025-02-13 14:41:44'),
(308, 104, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739457709337_image-1739457709074.webp', NULL, NULL, 'image', '1', '0', '2025-02-13 14:41:49', '2025-02-13 14:41:49'),
(309, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739875877940.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739875880842.webp', '0m 13s', 'video', '1', '0', '2025-02-18 10:51:22', '2025-02-18 10:51:22'),
(310, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739875893578_image-1739875892850.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 10:51:33', '2025-02-18 10:51:33'),
(311, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739875905648_image-1739875902435.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 10:51:46', '2025-02-18 10:51:46'),
(312, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739875918692_image-1739875918662.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 10:51:58', '2025-02-18 10:51:58'),
(313, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739875926104_image-1739875925099.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 10:52:06', '2025-02-18 10:52:06'),
(314, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739875937597_image-1739875935653.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 10:52:18', '2025-02-18 10:52:18'),
(315, 111, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739875949732.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739875966256.webp', '0m 17s', 'video', '1', '0', '2025-02-18 10:52:47', '2025-02-18 10:52:47'),
(316, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739877822118.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739877825613.webp', '0m 24s', 'video', '1', '0', '2025-02-18 11:23:46', '2025-02-18 11:23:46'),
(317, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739877850129_image-1739877848849.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 11:24:11', '2025-02-18 11:24:11'),
(318, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739877861524_image-1739877860671.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 11:24:21', '2025-02-18 11:24:21'),
(319, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739877871365_image-1739877870678.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 11:24:32', '2025-02-18 11:24:32'),
(320, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739877882824_image-1739877881630.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 11:24:43', '2025-02-18 11:24:43'),
(321, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739877894365_image-1739877893474.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 11:24:55', '2025-02-18 11:24:55'),
(322, 112, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739877906915.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739877908749.webp', '0m 13s', 'video', '1', '0', '2025-02-18 11:25:09', '2025-02-18 11:25:09'),
(323, 113, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739881289914.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739881290766.webp', '0m 13s', 'video', '1', '0', '2025-02-18 12:21:31', '2025-02-18 12:21:31'),
(324, 113, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739881299145_image-1739881299025.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:21:39', '2025-02-18 12:21:39'),
(325, 113, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739881350435_image-1739881350120.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:22:30', '2025-02-18 12:22:30'),
(326, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739883109040.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739883110691.webp', '0m 13s', 'video', '1', '0', '2025-02-18 12:51:51', '2025-02-18 12:51:51'),
(327, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739883116350.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739883118084.webp', '0m 24s', 'video', '1', '0', '2025-02-18 12:51:58', '2025-02-18 12:51:58'),
(328, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739883128740_image-1739883128561.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:52:09', '2025-02-18 12:52:09'),
(329, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739883128739_image-1739883127713.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:52:09', '2025-02-18 12:52:09'),
(330, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739883128741_image-1739883128708.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:52:09', '2025-02-18 12:52:09'),
(331, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739883128740_image-1739883128069.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:52:09', '2025-02-18 12:52:09'),
(332, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739883128740_image-1739883128390.webp', NULL, NULL, 'image', '1', '0', '2025-02-18 12:52:09', '2025-02-18 12:52:09'),
(333, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739883137479.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739883139380.webp', '0m 30s', 'video', '1', '0', '2025-02-18 12:52:20', '2025-02-18 12:52:20'),
(334, 114, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1739883144668.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1739883146045.webp', '0m 15s', 'video', '1', '0', '2025-02-18 12:52:26', '2025-02-18 12:52:26'),
(335, 27, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739958265937_image-1739958265777.webp', NULL, NULL, 'image', '1', '0', '2025-02-19 09:44:25', '2025-02-19 09:44:25'),
(336, 27, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739958265936_image-1739958265776.webp', NULL, NULL, 'image', '1', '0', '2025-02-19 09:44:25', '2025-02-19 09:44:25'),
(337, 27, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739958265934_image-1739958265775.webp', NULL, NULL, 'image', '1', '0', '2025-02-19 09:44:25', '2025-02-19 09:44:25'),
(338, 27, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739958265937_image-1739958265825.webp', NULL, NULL, 'image', '1', '0', '2025-02-19 09:44:26', '2025-02-19 09:44:26'),
(339, 27, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1739958784949_image-1739958784945.webp', NULL, NULL, 'image', '1', '0', '2025-02-19 09:53:05', '2025-02-19 09:53:05'),
(340, 27, 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/image-1740035125514.mp4', 'https://www.pet-d-agogy-api.acelance.com/uploads/Post_Thumbnail/Post_Thumbnail1740035126791.webp', '0m 11s', 'video', '1', '0', '2025-02-20 07:05:27', '2025-02-20 07:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int NOT NULL,
  `sitter_id` int DEFAULT NULL,
  `appointment_id` int DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `is_locked` enum('0','1') DEFAULT '0',
  `booked` enum('0','1') NOT NULL DEFAULT '0',
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `sitter_id`, `appointment_id`, `start_time`, `end_time`, `is_locked`, `booked`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, NULL, '14:00', '15:00', NULL, '0', '1', '0', '2024-12-28 12:27:21', '2024-12-28 12:27:21'),
(2, 2, NULL, '11:00', '12:00', '0', '0', '1', '0', '2024-12-28 12:27:41', '2025-01-29 13:00:00'),
(3, 2, NULL, '19:00', '21:00', NULL, '0', '1', '0', '2024-12-28 12:27:51', '2024-12-28 12:27:51'),
(4, 3, NULL, '19:00', '21:00', NULL, '0', '1', '0', '2024-12-28 18:19:25', '2024-12-28 18:19:25'),
(5, 3, NULL, '19:00', '21:00', NULL, '0', '1', '0', '2024-12-28 18:19:54', '2024-12-28 18:19:54'),
(6, 3, NULL, '12:00', '13:00', NULL, '0', '1', '0', '2024-12-28 18:20:08', '2024-12-28 18:20:08'),
(7, 3, NULL, '06:00', '09:00', NULL, '0', '1', '0', '2024-12-28 18:20:15', '2024-12-28 18:20:15'),
(10, 4, NULL, '06:00', '09:00', NULL, '0', '1', '0', '2024-12-30 10:07:10', '2024-12-30 10:07:10'),
(11, 4, NULL, '10:00', '11:00', NULL, '0', '1', '0', '2024-12-30 10:07:17', '2024-12-30 10:07:17'),
(12, 4, NULL, '14:00', '15:00', NULL, '0', '1', '0', '2024-12-30 10:08:45', '2024-12-30 10:08:45'),
(13, 5, NULL, '14:00', '15:00', NULL, '0', '1', '0', '2024-12-30 10:57:54', '2024-12-30 10:57:54'),
(14, 5, NULL, '11:00', '12:00', NULL, '0', '1', '0', '2024-12-30 10:58:01', '2024-12-30 10:58:01'),
(15, 5, NULL, '09:00', '10:00', NULL, '0', '1', '0', '2024-12-30 10:58:10', '2024-12-30 10:58:10'),
(16, 13, NULL, '09:00', '10:00', NULL, '0', '1', '0', '2024-12-30 11:14:00', '2024-12-30 11:14:00'),
(17, 13, NULL, '11:00', '12:00', NULL, '0', '1', '0', '2024-12-30 11:14:09', '2024-12-30 11:14:09'),
(18, 11, NULL, '17:19', '17:20', NULL, '0', '1', '0', '2024-12-30 11:46:54', '2024-12-30 11:46:54'),
(20, 11, NULL, '18:48', '18:48', NULL, '0', '1', '0', '2024-12-30 13:18:31', '2024-12-30 13:18:31'),
(21, 11, NULL, '18:59', '18:0', NULL, '0', '1', '0', '2024-12-30 13:29:46', '2024-12-30 13:29:46'),
(23, 34, NULL, '23:27', '17:27', '0', '0', '1', '0', '2025-01-06 11:57:44', '2025-01-06 11:57:44'),
(31, 38, NULL, '18:31', '19:31', '0', '0', '1', '0', '2025-01-07 12:01:07', '2025-01-07 12:01:07'),
(32, 40, NULL, '18:11', '18:11', '0', '0', '1', '0', '2025-01-07 12:41:38', '2025-01-07 12:41:38'),
(34, 45, NULL, '19:30', '19:30', '0', '0', '1', '0', '2025-01-07 14:03:29', '2025-01-07 14:03:29'),
(35, 45, NULL, '6:30', '10:30', '0', '0', '1', '0', '2025-01-07 14:03:55', '2025-01-07 14:03:55'),
(36, 45, NULL, '7:30', '11:30', '0', '0', '1', '0', '2025-01-07 14:04:15', '2025-01-07 14:04:15'),
(42, 66, NULL, '7:30', '11:30', '0', '0', '1', '0', '2025-01-07 14:04:15', '2025-01-07 14:04:15'),
(43, 54, NULL, '17:13', '17:19', '0', '0', '1', '0', '2025-01-14 11:41:30', '2025-01-14 11:41:30'),
(44, 70, NULL, '20:25', '21:25', '0', '0', '1', '0', '2025-01-17 13:55:53', '2025-01-17 13:55:53'),
(45, 72, NULL, '22:00', '24:00', '0', '0', '1', '0', '2025-01-18 07:09:08', '2025-01-18 07:09:08'),
(46, 77, NULL, '21:37', '23:37', '0', '0', '1', '0', '2025-01-18 16:07:36', '2025-01-18 16:07:36'),
(47, 67, NULL, '15:20', '15:24', '0', '0', '1', '0', '2025-01-21 09:47:12', '2025-01-21 09:47:12'),
(48, 82, NULL, '20:00', '22:00', '0', '0', '1', '0', '2025-01-21 13:57:33', '2025-01-21 13:57:33'),
(49, 82, NULL, '21:00', '22:00', '0', '0', '1', '0', '2025-01-21 13:57:41', '2025-01-21 13:57:41'),
(50, 84, NULL, '20:00', '21:00', '0', '0', '1', '0', '2025-01-22 05:49:14', '2025-01-22 05:49:14'),
(51, 84, NULL, '5:23', '9:23', '0', '0', '1', '0', '2025-01-22 05:54:00', '2025-01-22 05:54:00'),
(52, 85, NULL, '7:40', '10:40', '0', '0', '1', '0', '2025-01-22 06:11:02', '2025-01-22 06:11:02'),
(53, 85, NULL, '0:41', '13:41', '0', '0', '1', '0', '2025-01-22 06:11:14', '2025-01-22 06:11:14'),
(54, 87, NULL, '6:0', '11:0', '0', '0', '1', '0', '2025-01-23 07:19:52', '2025-01-30 10:00:00'),
(55, 87, NULL, '21:00', '22:00', '0', '0', '1', '0', '2025-01-23 07:38:47', '2025-01-23 07:38:47'),
(56, 87, NULL, '20:00', '21:00', '0', '0', '1', '0', '2025-01-23 07:39:24', '2025-01-23 07:39:24'),
(57, 87, NULL, '19:00', '20:00', '0', '0', '1', '0', '2025-01-23 07:39:36', '2025-01-23 07:39:36'),
(58, 87, NULL, '18:00', '19:00', '0', '0', '1', '0', '2025-01-23 07:40:35', '2025-01-23 07:40:35'),
(59, 91, 5, '10:50', '14:48', '0', '1', '1', '0', '2025-02-04 09:18:49', '2025-02-04 11:25:29'),
(60, 91, 5, '16:48', '18:48', '0', '1', '1', '0', '2025-02-04 09:19:01', '2025-02-04 11:25:29'),
(61, 96, NULL, '15:47', '18:47', '0', '0', '1', '0', '2025-02-08 13:17:49', '2025-02-08 13:17:49'),
(62, 98, NULL, '6:0', '9:0', '0', '0', '1', '0', '2025-02-11 06:29:37', '2025-02-11 06:29:37'),
(63, 98, NULL, '10:0', '13:0', '0', '0', '1', '0', '2025-02-11 06:29:51', '2025-02-11 06:29:51'),
(64, 98, NULL, '3:0', '17:0', '0', '0', '1', '0', '2025-02-11 06:30:05', '2025-02-11 06:30:05'),
(65, 100, 1, '13:57', '16:57', '0', '0', '1', '0', '2025-02-12 11:28:01', '2025-02-18 12:52:49'),
(66, 111, NULL, '5:30', '10:30', '0', '0', '1', '0', '2025-02-18 10:53:19', '2025-02-18 10:53:19'),
(67, 111, NULL, '15:30', '22:30', '0', '0', '1', '0', '2025-02-18 10:53:39', '2025-02-18 10:53:39'),
(68, 112, NULL, '3:0', '22:0', '0', '0', '1', '0', '2025-02-18 11:27:36', '2025-02-18 11:27:36'),
(78, 114, NULL, '0:0', '6:0', '0', '0', '1', '0', '2025-02-18 12:53:26', '2025-02-18 12:53:26'),
(79, 114, NULL, '6:30', '12:30', '0', '0', '1', '0', '2025-02-18 12:54:01', '2025-02-18 12:54:01'),
(80, 114, NULL, '13:0', '18:30', '0', '0', '1', '0', '2025-02-18 12:54:25', '2025-02-18 12:54:25'),
(81, 114, NULL, '19:0', '23:30', '0', '0', '1', '0', '2025-02-18 12:54:44', '2025-02-18 12:54:44'),
(94, 27, NULL, '12:34', '13:40', '0', '0', '1', '0', '2025-02-20 07:03:19', '2025-02-20 07:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `slot_status`
--

CREATE TABLE `slot_status` (
  `id` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `slot_status`
--

INSERT INTO `slot_status` (`id`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'upcoming', '2024-11-25 13:46:07', '2024-11-25 13:46:07'),
(2, 'canceled', '2024-11-25 13:46:18', '2024-11-25 13:46:18'),
(3, 'rescheduled', '2024-11-25 13:46:18', '2024-11-25 13:46:18'),
(4, 'complete', '2024-11-25 13:46:18', '2024-11-25 13:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `latitude`, `longitude`, `createdAt`, `updatedAt`) VALUES
(1, 'Alabama', '32.318230', '86.902298', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(2, 'Alaska', '61.370716', '-152.404419', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(3, 'Arizona', '34.048927', '-111.093735', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(4, 'Arkansas', '34.746613', '-92.288986', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(5, 'California', '36.778259', '-119.417931', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(6, 'Colorado', '39.550051', '-105.782066', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(7, 'Florida', '27.994402', '-81.760254', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(8, 'Georgia', '32.165622', '-82.900075', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(9, 'Hawaii', '19.896766', '-155.582779', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(10, 'Illinois', '40.633125', '-89.398529', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(11, 'Louisiana', '31.244823', '-92.145024', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(12, 'Michigan', '44.314844', '-85.602364', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(13, 'New York', '43.299428', '-74.217933', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(14, 'Texas', '31.968599', '-99.901813', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(15, 'Wyoming', '43.075968', '-107.290284', '2025-01-22 12:27:27', '2025-01-22 12:27:27'),
(16, 'Indiana', '40.267194', '-86.134902', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(17, 'Iowa', '41.878003', '-93.097702', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(18, 'Kansas', '39.011902', '-98.484246', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(19, 'Kentucky', '37.839333', '-84.270018', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(20, 'Maine', '45.253783', '-69.445469', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(21, 'Maryland', '39.045755', '-76.641271', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(22, 'Massachusetts', '42.407211', '-71.382437', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(23, 'Minnesota', '46.729553', '-94.685900', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(24, 'Mississippi', '32.354668', '-89.398528', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(25, 'Missouri', '37.964253', '-91.831833', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(26, 'Montana', '46.879682', '-110.362566', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(27, 'Nebraska', '41.492537', '-99.901813', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(28, 'Nevada', '38.802610', '-116.419389', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(29, 'New Hampshire', '43.193852', '-71.572395', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(30, 'New Jersey', '40.058324', '-74.405661', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(31, 'New Mexico', '34.972730', '-105.032363', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(32, 'North Carolina', '35.759573', '-79.019300', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(33, 'North Dakota', '47.551493', '-101.002012', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(34, 'Ohio', '40.417287', '-82.907123', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(35, 'Oklahoma', '35.007752', '-97.092877', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(36, 'Oregon', '43.804133', '-120.554201', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(37, 'Pennsylvania', '41.203322', '-77.194525', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(38, 'Rhode Island', '41.580095', '-71.477429', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(39, 'South Carolina', '33.836081', '-81.163725', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(40, 'South Dakota', '43.969515', '-99.901813', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(41, 'Tennessee', '35.517491', '-86.580447', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(42, 'Utah', '39.320980', '-111.093731', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(43, 'Vermont', '44.558803', '-72.577841', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(44, 'Virginia', '37.431573', '-78.656894', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(45, 'Washington', '47.751074', '-120.740139', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(46, 'West Virginia', '38.597626', '-80.454903', '2025-01-22 12:32:01', '2025-01-22 12:32:01'),
(47, 'Wisconsin', '43.784440', '-88.787868', '2025-01-22 12:32:01', '2025-01-22 12:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `sitter_id` int DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `appoinment_id` int DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `transaction_currency` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `transaction_type` enum('credit','debit') DEFAULT NULL,
  `transaction_status` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '"0:- In Progress,\r\n1:- Accepted,\r\n2:- Declined,\r\n3:- Request"',
  `appointment_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `sitter_id`, `transaction_id`, `appoinment_id`, `booking_id`, `type`, `order_id`, `transaction_currency`, `amount`, `transaction_type`, `transaction_status`, `appointment_id`, `createdAt`, `updatedAt`) VALUES
(1, 65, 1, 'ch_3QmaFeC0ZsTtkWR91QSho5fG', 13, 'BID1738153204344', 'booking', 'BID1738153204344', 'usd', 1, 'debit', '1', 13, '2025-01-29 12:31:46', '2025-01-29 12:31:46'),
(2, 89, 87, 'ch_3QmpZxC0ZsTtkWR90J9NqGYj', 14, 'BID1738210380959', 'booking', 'BID1738210380959', 'usd', 53, 'debit', '1', 14, '2025-01-30 04:44:52', '2025-01-30 04:44:52'),
(3, 89, 87, 'ch_3QmpZxC0ZsTtkWR90J9NqGYj', 14, 'BID1738210380959', 'booking', 'BID1738210380959', 'usd', 53, 'debit', '1', 14, '2025-01-30 04:44:52', '2025-01-30 04:44:52'),
(4, 89, 87, 'ch_3QmqXAC0ZsTtkWR90SJjzKFf', 15, 'BID1738215772059', 'booking', 'BID1738215772059', 'usd', 159, 'debit', '1', 15, '2025-01-30 05:44:01', '2025-01-30 05:44:01'),
(5, 89, 87, 'ch_3QmqXAC0ZsTtkWR90SJjzKFf', 15, 'BID1738215772059', 'booking', 'BID1738215772059', 'usd', 159, 'debit', '1', 15, '2025-01-30 05:44:01', '2025-01-30 05:44:01'),
(6, 89, 87, 'ch_3Qmt7MC0ZsTtkWR90tErJcDG', 21, 'BID1738225726569', 'booking', 'BID1738225726569', 'usd', 159, 'debit', '1', 21, '2025-01-30 08:46:57', '2025-01-30 08:46:57'),
(7, 89, 87, 'ch_3Qmt7MC0ZsTtkWR90tErJcDG', 21, 'BID1738225726569', 'booking', 'BID1738225726569', 'usd', 159, 'debit', '1', 21, '2025-01-30 08:46:57', '2025-01-30 08:46:57'),
(8, 89, 87, 'ch_3Qmtr3C0ZsTtkWR90uyX5kcx', 23, 'BID1738228554084', 'booking', 'BID1738228554084', 'usd', 169.6, 'debit', '1', 23, '2025-01-30 09:17:20', '2025-01-30 09:17:20'),
(9, 89, 87, 'ch_3Qmtr3C0ZsTtkWR90uyX5kcx', 23, 'BID1738228554084', 'booking', 'BID1738228554084', 'usd', 169.6, 'debit', '1', 23, '2025-01-30 09:17:21', '2025-01-30 09:17:21'),
(10, 89, 87, 'ch_3QmxTDC0ZsTtkWR91lmRfNgP', 24, 'BID1738242432796', 'booking', 'BID1738242432796', 'usd', 106, 'debit', '1', 24, '2025-01-30 13:08:43', '2025-01-30 13:08:43'),
(11, 89, 87, 'ch_3QmxTDC0ZsTtkWR91lmRfNgP', 24, 'BID1738242432796', 'booking', 'BID1738242432796', 'usd', 106, 'debit', '1', 24, '2025-01-30 13:08:43', '2025-01-30 13:08:43'),
(12, 89, 87, 'ch_3QnC4AC0ZsTtkWR918CZqpBr', 25, 'BID1738298549909', 'booking', 'BID1738298549909', 'usd', 212, 'debit', '1', 25, '2025-01-31 04:46:11', '2025-01-31 04:46:11'),
(13, 89, 87, 'ch_3QnC4AC0ZsTtkWR918CZqpBr', 25, 'BID1738298549909', 'booking', 'BID1738298549909', 'usd', 212, 'debit', '1', 25, '2025-01-31 04:46:11', '2025-01-31 04:46:11'),
(14, 89, 87, 'ch_3QnCRsC0ZsTtkWR90VbdhhVM', 1, 'BID1738300033610', 'booking', 'BID1738300033610', 'usd', 106, 'debit', '1', 1, '2025-01-31 05:11:14', '2025-01-31 05:11:14'),
(15, 89, 87, 'ch_3QnCRsC0ZsTtkWR90VbdhhVM', 1, 'BID1738300033610', 'booking', 'BID1738300033610', 'usd', 106, 'debit', '1', 1, '2025-01-31 05:11:14', '2025-01-31 05:11:14'),
(16, 89, 87, 'ch_3QnInqC0ZsTtkWR910kUXPCY', 4, 'BID1738324426357', 'booking', 'BID1738324426357', 'usd', 106, 'debit', '1', 4, '2025-01-31 11:55:12', '2025-01-31 11:55:12'),
(17, 89, 87, 'ch_3QnInqC0ZsTtkWR910kUXPCY', 4, 'BID1738324426357', 'booking', 'BID1738324426357', 'usd', 106, 'debit', '1', 4, '2025-01-31 11:55:12', '2025-01-31 11:55:12'),
(18, 89, 87, 'ch_3QnJS9C0ZsTtkWR90lupzdOQ', 6, 'BID1738326949623', 'booking', 'BID1738326949623', 'usd', 212, 'debit', '1', 6, '2025-01-31 12:37:55', '2025-01-31 12:37:55'),
(19, 89, 87, 'ch_3QnJS9C0ZsTtkWR90lupzdOQ', 6, 'BID1738326949623', 'booking', 'BID1738326949623', 'usd', 212, 'debit', '1', 6, '2025-01-31 12:37:55', '2025-01-31 12:37:55'),
(20, 89, 87, 'ch_3QnJXuC0ZsTtkWR91lTkiYCH', 7, 'BID1738327315541', 'booking', 'BID1738327315541', 'usd', 106, 'debit', '1', 7, '2025-01-31 12:42:39', '2025-01-31 12:42:39'),
(21, 89, 87, 'ch_3QnJXuC0ZsTtkWR91lTkiYCH', 7, 'BID1738327315541', 'booking', 'BID1738327315541', 'usd', 106, 'debit', '1', 7, '2025-01-31 12:42:39', '2025-01-31 12:42:39'),
(22, 89, 87, 'ch_3QohAUC0ZsTtkWR90oSxPsrX', 9, 'BID1738656445111', 'booking', 'BID1738656445111', 'usd', 318, 'debit', '1', 9, '2025-02-04 08:08:29', '2025-02-04 08:08:29'),
(23, 89, 87, 'ch_3QohAUC0ZsTtkWR90oSxPsrX', 9, 'BID1738656445111', 'booking', 'BID1738656445111', 'usd', 318, 'debit', '1', 9, '2025-02-04 08:08:29', '2025-02-04 08:08:29'),
(24, 89, 91, 'ch_3QojFIC0ZsTtkWR91W7Lu452', 2, 'BID1738664431560', 'booking', 'BID1738664431560', 'usd', 424, 'debit', '1', 2, '2025-02-04 10:21:26', '2025-02-04 10:21:26'),
(25, 89, 91, 'ch_3QojFIC0ZsTtkWR91W7Lu452', 2, 'BID1738664431560', 'booking', 'BID1738664431560', 'usd', 424, 'debit', '1', 2, '2025-02-04 10:21:26', '2025-02-04 10:21:26'),
(26, 89, 91, 'ch_3QokFFC0ZsTtkWR91wDqqSus', 5, 'BID1738668220296', 'booking', 'BID1738668220296', 'usd', 3392, 'debit', '1', 5, '2025-02-04 11:25:29', '2025-02-04 11:25:29'),
(27, 89, 91, 'ch_3QokFFC0ZsTtkWR91wDqqSus', 5, 'BID1738668220296', 'booking', 'BID1738668220296', 'usd', 3392, 'debit', '1', 5, '2025-02-04 11:25:29', '2025-02-04 11:25:29'),
(28, 89, 87, 'ch_3Qp1KgC0ZsTtkWR91RfAnjD0', 6, 'BID1738733955514', 'booking', 'BID1738733955514', 'usd', 42.4, 'debit', '1', 6, '2025-02-05 05:39:58', '2025-02-05 05:39:58'),
(29, 89, 87, 'ch_3Qp1KgC0ZsTtkWR91RfAnjD0', 6, 'BID1738733955514', 'booking', 'BID1738733955514', 'usd', 42.4, 'debit', '1', 6, '2025-02-05 05:39:58', '2025-02-05 05:39:58'),
(30, 89, 91, 'ch_3Qp2mHC0ZsTtkWR913lwIBvF', 8, 'BID1738739454214', 'booking', 'BID1738739454214', 'usd', 2544, 'debit', '1', 8, '2025-02-05 07:12:48', '2025-02-05 07:12:48'),
(31, 89, 91, 'ch_3Qp2mHC0ZsTtkWR913lwIBvF', 8, 'BID1738739454214', 'booking', 'BID1738739454214', 'usd', 2544, 'debit', '1', 8, '2025-02-05 07:12:48', '2025-02-05 07:12:48'),
(32, 89, 87, 'ch_3Qp4DTC0ZsTtkWR90bOIpspO', 1, 'BID1738744091410', 'booking', 'BID1738744091410', 'usd', 212, 'debit', '1', 1, '2025-02-05 08:54:40', '2025-02-05 08:54:40'),
(33, 89, 87, 'ch_3Qp4DTC0ZsTtkWR90bOIpspO', 1, 'BID1738744091410', 'booking', 'BID1738744091410', 'usd', 212, 'debit', '1', 1, '2025-02-05 08:54:40', '2025-02-05 08:54:40'),
(34, 89, 91, 'ch_3Qp5U7C0ZsTtkWR91VpBQ5Pw', 2, 'BID1738749917810', 'booking', 'BID1738749917810', 'usd', 848, 'debit', '1', 2, '2025-02-05 10:08:25', '2025-02-05 10:08:25'),
(35, 89, 91, 'ch_3Qp5U7C0ZsTtkWR91VpBQ5Pw', 2, 'BID1738749917810', 'booking', 'BID1738749917810', 'usd', 848, 'debit', '1', 2, '2025-02-05 10:08:25', '2025-02-05 10:08:25'),
(36, 89, 91, 'ch_3Qp5nbC0ZsTtkWR91maIeLDP', 3, 'BID1738751125945', 'booking', 'BID1738751125945', 'usd', 2120, 'debit', '1', 3, '2025-02-05 10:27:34', '2025-02-05 10:27:34'),
(37, 89, 91, 'ch_3Qp5nbC0ZsTtkWR91maIeLDP', 3, 'BID1738751125945', 'booking', 'BID1738751125945', 'usd', 2120, 'debit', '1', 3, '2025-02-05 10:27:34', '2025-02-05 10:27:34'),
(38, 89, 91, 'ch_3Qp7oPC0ZsTtkWR91VOR8Udc', 4, 'BID1738758821516', 'booking', 'BID1738758821516', 'usd', 636, 'debit', '1', 4, '2025-02-05 12:35:02', '2025-02-05 12:35:02'),
(39, 89, 91, 'ch_3Qp7oPC0ZsTtkWR91VOR8Udc', 4, 'BID1738758821516', 'booking', 'BID1738758821516', 'usd', 636, 'debit', '1', 4, '2025-02-05 12:35:02', '2025-02-05 12:35:02'),
(40, 99, 100, 'ch_3QreulC0ZsTtkWR90T1n7Noz', 7, 'BID1739362754600', 'booking', 'BID1739362754600', 'usd', 31.8, 'debit', '1', 7, '2025-02-12 12:20:11', '2025-02-12 12:20:11'),
(41, 99, 100, 'ch_3QreulC0ZsTtkWR90T1n7Noz', 7, 'BID1739362754600', 'booking', 'BID1739362754600', 'usd', 31.8, 'debit', '1', 7, '2025-02-12 12:20:11', '2025-02-12 12:20:11'),
(42, 99, 98, 'ch_3QrfTaC0ZsTtkWR90l77QTU6', 8, 'BID1739364930708', 'booking', 'BID1739364930708', 'usd', 42.4, 'debit', '1', 8, '2025-02-12 12:56:11', '2025-02-12 12:56:11'),
(43, 99, 98, 'ch_3QrfTaC0ZsTtkWR90l77QTU6', 8, 'BID1739364930708', 'booking', 'BID1739364930708', 'usd', 42.4, 'debit', '1', 8, '2025-02-12 12:56:11', '2025-02-12 12:56:11'),
(44, 99, 100, 'ch_3Qrh8cC0ZsTtkWR91I0EN5UV', 1, 'BID1739370978759', 'booking', 'BID1739370978759', 'usd', 477, 'debit', '1', 1, '2025-02-12 14:43:25', '2025-02-12 14:43:25'),
(45, 99, 100, 'ch_3Qrh8cC0ZsTtkWR91I0EN5UV', 1, 'BID1739370978759', 'booking', 'BID1739370978759', 'usd', 477, 'debit', '1', 1, '2025-02-12 14:43:25', '2025-02-12 14:43:25'),
(46, 99, 98, 'ch_3Qruh6C0ZsTtkWR90Qgv67Y8', 2, 'BID1739423411869', 'booking', 'BID1739423411869', 'usd', 63.6, 'debit', '1', 2, '2025-02-13 05:12:00', '2025-02-13 05:12:00'),
(47, 99, 98, 'ch_3Qruh6C0ZsTtkWR90Qgv67Y8', 2, 'BID1739423411869', 'booking', 'BID1739423411869', 'usd', 63.6, 'debit', '1', 2, '2025-02-13 05:12:00', '2025-02-13 05:12:00'),
(48, 99, 100, 'ch_3Qrw5zC0ZsTtkWR91MXoW3e8', 1, 'BID1739428808282', 'booking', 'BID1739428808282', 'usd', 95.4, 'debit', '1', 1, '2025-02-13 06:40:51', '2025-02-13 06:40:51'),
(49, 99, 100, 'ch_3Qrw5zC0ZsTtkWR91MXoW3e8', 1, 'BID1739428808282', 'booking', 'BID1739428808282', 'usd', 95.4, 'debit', '1', 1, '2025-02-13 06:40:51', '2025-02-13 06:40:51'),
(50, 107, 100, 'ch_3Qrw5zC0ZsTtkWR91MXoW3e8', 1, 'BID1739428808282', 'booking', 'BID1739428808282', 'usd', 95.4, 'debit', '1', 1, '2025-02-18 12:52:06', '2025-02-18 12:52:06'),
(51, 107, 100, 'ch_3Qrw5zC0ZsTtkWR91MXoW3e8', 1, 'BID1739428808282', 'booking', 'BID1739428808282', 'usd', 95.4, 'debit', '1', 1, '2025-02-18 12:52:49', '2025-02-18 12:52:49'),
(52, 107, 87, 'ch_3QtqyuC0ZsTtkWR90aIOk8VJ', 7, 'BID1739885544148', 'booking', 'BID1739885544148', 'usd', 113, 'debit', '1', 7, '2025-02-18 13:41:27', '2025-02-18 13:41:27'),
(53, 107, 45, 'ch_3QuSufC0ZsTtkWR90IkN66sC', 8, 'BID1740031575311', 'booking', 'BID1740031575311', 'usd', 56.5, 'debit', '1', 8, '2025-02-20 06:08:16', '2025-02-20 06:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `unique_user_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `user_type` enum('user','provider') DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `login_type` enum('normal','google','apple','facebook') NOT NULL DEFAULT 'normal',
  `sitter_id` int DEFAULT NULL,
  `social_login_id` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `user_name_ab` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `profile_completed` varchar(255) DEFAULT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_user_id`, `full_name`, `email`, `phone`, `address`, `zip_code`, `city`, `latitude`, `longitude`, `password`, `otp`, `user_type`, `profile_image`, `login_type`, `sitter_id`, `social_login_id`, `slug`, `user_name_ab`, `is_active`, `profile_completed`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, '0000001', 'Jyoti Vankala', 'jyotivankala123@gmail.com', '7980507889', '656 Hollywood Blvd', '90028', 'Los Angeles', '34.1016523', '-118.3231954', 'U2FsdGVkX18hwUIwZ8lnwiGswKhsDS5u0bYpOJIKSzQ=', 7839, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1737977039877_image-1737977039871.webp', 'normal', NULL, NULL, 'jyoti', 'JV', '1', NULL, '0', '2024-11-27 10:12:42', '2025-02-13 07:56:00'),
(2, '0000002', 'Edward Washington', 'edward@gmail.com', '3939292929', '656 Hollywood Blvd', '10001', 'Los Angele', '39.798976', '-89.644368', 'U2FsdGVkX1/HOQowcmmNbwFJwTDFrQ/y0+F5w8KvePQ=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/profile-image-1734623995985.webp', 'normal', 1, NULL, 'john-doe', 'JD', '0', 'completed', '0', '2024-11-27 10:13:06', '2025-02-13 10:48:45'),
(3, '0000003', 'Cristin devid', 'cristin@gmail.com', '654554543433', '1200 Getty Center Dr', '90012', 'Los Angele', '39.798976', '-89.644368', 'U2FsdGVkX1/HOQowcmmNbwFJwTDFrQ/y0+F5w8KvePQ=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735563740959_profile-image-1735563740417.webp', 'normal', 2, NULL, 'john-doe', 'JD', '1', NULL, '0', '2024-11-27 10:13:06', '2024-12-28 18:40:41'),
(4, '0000004', 'Elizabeth Harper', 'elizabeth@gmail.com', '7980507953', '1200 Getty Center Dr', '90012', 'Los Angele', '39.798976', '-89.644368', 'U2FsdGVkX1/HOQowcmmNbwFJwTDFrQ/y0+F5w8KvePQ=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735553021232_profile-image-1735553021229.webp', 'normal', 3, NULL, 'john-doe', 'JD', '1', NULL, '0', '2024-11-27 10:13:06', '2024-12-30 10:05:09'),
(5, '0000005', 'Kann Wall', 'kane@gmail.com', '7980507953', '1200 Getty Center Dr', '90012', 'Los Angele', '39.798976', '-89.644368', 'U2FsdGVkX1/HOQowcmmNbwFJwTDFrQ/y0+F5w8KvePQ=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735556126081_profile-image-1735556126078.webp', 'normal', 4, NULL, 'john-doe', 'JD', '1', NULL, '0', '2024-11-27 10:13:06', '2024-12-30 10:56:11'),
(6, '0000006', 'Virat kohli', 'virat@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, 'google', NULL, '85949393992', 'virat-kohli', 'V K', '1', NULL, '0', '2024-11-27 13:04:22', '2025-02-13 08:04:01'),
(7, '0000007', 'Antho Dev', 'dev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, 'google', NULL, '8594243292', 'antho-dev', 'A D', '1', NULL, '0', '2024-11-27 13:17:23', '2025-01-29 12:16:12'),
(8, '0000008', 'David Anothoy', 'David@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, 'google', NULL, '99390290222', 'david-anothoy', 'DA', '1', NULL, '0', '2024-11-27 13:30:20', '2024-11-27 13:30:20'),
(9, '0000009', 'Edward Washington', 'edward@gmail.com', '13939292929', 'Hollywood Walk of Fame', '90028', 'Los Angele', '39.798976', '-89.644368', NULL, NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/image-1734432540951.webp', 'google', 5, '99390290222', 'edwrd-washington', 'EW', '1', NULL, '0', '2024-11-27 13:31:36', '2024-11-27 13:35:02'),
(10, '0000010', 'Ponds Mo', 'pond@gmail.com', '7980507953', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18V/VLB3mVH17y+LXCeL4JXi54Sj0mMt6U=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'ponds-mo', 'PM', '1', NULL, '0', '2024-12-05 11:51:00', '2024-12-05 11:51:00'),
(11, '0000011', 'Edward Washington', 'edward@gmail.com', '3939292929', 'Hollywood Walk of Fame', '90028', NULL, '34.1016523', '-118.3231954', 'U2FsdGVkX181VVPz+FKZATj2dorASQg11awFD71XlEY=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/cover_images/cover-image-1732714411061.jpg', 'normal', 6, NULL, 'bikram', 'B', '1', NULL, '0', '2024-12-19 14:00:00', '2024-12-24 06:41:51'),
(12, '0000012', 'Dummy Provider', 'puja@gmail.com', '9999911111', 'Kolkata kestopur', '700102', NULL, '22.597243612828432', '88.43791142038765', 'U2FsdGVkX18gKmtWLHrh3uN82s6sJhWv2f+yEv5SMkM=', 4302, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/profile-image-1734947481632.jpg', 'normal', 15, NULL, 'puja-manna', 'PM', '1', 'completed', '0', '2024-12-27 10:19:06', '2025-01-07 10:57:44'),
(13, '0000013', 'Osam Qasi', 'qasi@gmail.com', '7980507953', '1200 Getty Center Dr', '90012', NULL, '39.798976', '-89.644368', 'U2FsdGVkX1++ZnRFTfQyUxBE+ntd5tHrFWJjMUyfG+c=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1735563804577_profile-image-1735563804058.webp', 'normal', 5, NULL, 'osam-qsai', 'OQ', '1', NULL, '0', '2024-12-30 11:13:26', '2024-12-30 11:15:38'),
(15, '0000015', 'subrata is a qa of aprodence company', 'sj@gmail.com', '6289931925', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+pGtAKOgNcG11xe2njtfPXC7x/cYi8iqQ=', 6052, 'provider', NULL, 'normal', NULL, NULL, 'subrata-is-a-qa-of-aprodence-company', 'SIAQOAC', '1', 'completed', '0', '2025-01-02 13:28:00', '2025-01-07 08:46:57'),
(16, '0000016', 'Test5', 'test5@gmail.com', '1232541478', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18j6tCGj8dAA49TluNVvqv+7uvEPdUk/U0=', NULL, 'user', NULL, 'normal', NULL, NULL, 'test5', 'T', '1', NULL, '1', '2025-01-03 06:34:30', '2025-02-12 14:00:16'),
(17, '0000017', 'subata-user', 'sj@gmail.com', '6289931925', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18HilzFKG6MmZIgSOMc70xglTYCKtfwL/o=', NULL, 'user', NULL, 'normal', NULL, NULL, 'subata-user', 'S', '1', NULL, '0', '2025-01-03 07:10:29', '2025-01-31 12:15:57'),
(18, '0000018', 'subrata-provider', 'subrata.jana@aprodence.com', '6289931926', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18r3cH0YXdkDurLT5Vf/3EbZEkqInr7Mfs=', NULL, 'user', NULL, 'normal', NULL, NULL, 'subrata-provider', 'S', '1', NULL, '1', '2025-01-03 09:17:28', '2025-01-03 09:17:28'),
(19, '0000019', 'subrata-provider1', 's1@gmail.com', '9979467697', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19HkeczeiNb4VtxPEkwajf4hr9rf0g9Yjg=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-provider1', 'S', '1', 'completed', '0', '2025-01-03 09:58:20', '2025-01-03 13:42:13'),
(20, '0000020', 'Puja Manna', 'puja@gmail.com', '8000000001', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18bWMsS3lNXqDhKcoFauRbDQWbJiLDEkBg=', NULL, 'user', NULL, 'normal', NULL, NULL, 'puja-manna-1', 'PM', '1', NULL, '0', '2025-01-03 11:41:22', '2025-01-31 12:15:58'),
(21, '0000021', 'Bikram pramanik', 'biki.pramanik.biki@gmail.com', '1234567845', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/q0LiYW7X+w/sDFnmFXXFoA+t7vaqkrAI=', NULL, 'user', NULL, 'normal', NULL, NULL, 'bikram-pramanik', 'BP', '1', NULL, '0', '2025-01-03 12:33:20', '2025-01-03 12:33:20'),
(22, '0000022', 'Bikram Pramanik', 'biki.pamanik.biki@gmail.com', '1234578458', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+CwK6F+SuESPYYUWovdJt45lRCNBylXRk=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'bikram-pramanik-1', 'BP', '1', '', '0', '2025-01-04 12:48:36', '2025-01-04 13:22:38'),
(23, NULL, 'subrata ', 'kapoorrohav@gmail.com', '6467929679', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18z+TbTg7rgf7EnOBZHdWqNNudclOS7oJc=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-1', NULL, '1', '', '1', '2025-01-06 05:13:14', '2025-01-07 08:56:15'),
(24, NULL, 'subrata ', 'ka@gmail.com', '7997989765', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+PFxn9q0j1JFxYSa+YsiHw0SLbn6cOr7A=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-2', NULL, '1', NULL, '0', '2025-01-06 05:13:53', '2025-01-06 05:13:53'),
(25, '0000025', 'rohan', 'r@gmail.com', '6767623764', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19LFZK95GggqMfOSTYSLTMLxSMG+KYcoqY=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'rohan', 'R', '1', 'completed', '0', '2025-01-06 05:14:30', '2025-01-06 05:19:27'),
(26, '0000026', 'Rohan kapoor', 'rk@gmail.com', '8967659795', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+xpB/ZKoYEqME7vnVUG7TUbZvyuiEavsA=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'rohan-kapoor', 'RK', '1', '', '0', '2025-01-06 05:20:32', '2025-01-06 07:38:35'),
(27, '0000027', 'test6', 'test6@gmail.com', '1234568569', 'Azimganj, West Bengal, India', '', NULL, '24.2351094', '88.26071879999999', 'U2FsdGVkX1+dK4l67ByDw1l7KjyoNOu+uW8a4IFXUpM=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736314703035_profile-image-1736314703031.webp', 'normal', 20, NULL, 'test6', 'T', '1', 'completed', '0', '2025-01-06 05:37:02', '2025-02-20 07:05:35'),
(29, '0000029', 'Sukla', 'su@mail.com', '9333333339', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18VvDEChRL/V9cLVxcTnK1URXcrt/++oFs=', NULL, 'user', NULL, 'normal', NULL, NULL, 'sukla', 'S', '1', NULL, '0', '2025-01-06 07:34:31', '2025-01-31 12:15:58'),
(30, '0000030', 'Perfection of Care', 'care@gmail.com', '80000000002', 'Kolkata kestopur', '700102', NULL, '22.597243612828432', '88.43791142038765', 'U2FsdGVkX1/454Qz7LQ2OOsz6qUh4eR7Bxh5rgjdpiY=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/profile-image-1734947481632.jpg', 'normal', 9, NULL, 'dummy-user-1', 'DU', '1', NULL, '0', '2025-01-06 07:35:38', '2025-01-06 10:03:28'),
(31, '0000031', 'provided', 'p@gmail.com', '5766565565', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/Cs/D15p+4tATcipDfpE3kd/NYkVGpgkk=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'provided', 'P', '1', '', '0', '2025-01-06 07:45:27', '2025-01-06 07:45:28'),
(32, '0000032', 'ptovider1', 'p1@gmail.com', '4667359795', 'North 24 Parganas, India', '', NULL, '22.6011627', '88.4325705', 'U2FsdGVkX19huIN2+1KsjGJ4MJ3ejHO4N5pnjfZZf24=', 9252, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737120337901_profile-image-1737120337898.webp', 'normal', 30, NULL, 'ptovider1', 'P', '1', 'completed', '0', '2025-01-06 08:01:06', '2025-01-17 13:26:12'),
(33, '0000033', 'provider2', 'p2@gmail.com', '5967655979', 'North 24 Parganas, India', '', NULL, '22.6011697', '88.4325674', 'U2FsdGVkX19OkPxLCxsSweFTWSjOjJugDooT0YX32Yk=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736496306570_profile-image-1736496306563.webp', 'normal', 24, NULL, 'provider2', 'P', '1', 'completed', '0', '2025-01-06 08:29:17', '2025-01-10 08:15:59'),
(34, '0000034', 'provider', 'pro@gmail.com', '9867686799', 'Hyderabad, Telangana, India', '', NULL, '17.406498', '78.47724389999999', 'U2FsdGVkX1/M6DS+hOYzXtV+T7BeWd2hzW7/aLUwNZw=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736160503482_profile-image-1736160503450.webp', 'normal', 11, NULL, 'provider-1', 'P', '1', '', '0', '2025-01-06 10:47:25', '2025-01-06 12:45:13'),
(35, '0000035', 'provider', 'pro1@gmail.com', '4967656766', 'North 24 Parganas, India', '', NULL, '22.6011491', '88.4325562', 'U2FsdGVkX193ReFSC+KejdwAp2Na6z5h1LttVY1CUhw=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736171874303_profile-image-1736171874299.webp', 'normal', 12, NULL, 'provider-2', 'P', '1', '', '0', '2025-01-06 13:56:46', '2025-01-06 14:23:32'),
(36, '0000036', 'test7', 'test7@gmail.com', '1234321234', 'Usaquén, Bogota, Colombia', '', NULL, '4.7033366999999995', '-74.0328803', 'U2FsdGVkX1/0JlsUTOBGvZU5BbQy9GTHFLv1mN3yKQA=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736234230524_profile-image-1736234230521.webp', 'normal', 13, NULL, 'test7', 'T', '1', 'completed', '0', '2025-01-07 07:15:30', '2025-01-07 07:23:11'),
(37, '0000037', 'Dummy Provider', 'provider@gmail.com', '9999911111', 'Kolkata kestopur', '700102', NULL, '22.597243612828432', '88.43791142038765', 'U2FsdGVkX193AG4iMpda2+IuOqBCmbcYqqN8pkd09Pk=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1736250294485_image-1736250294480.webp', 'normal', 14, NULL, 'dummy-provider', 'DP', '1', NULL, '0', '2025-01-07 08:12:31', '2025-01-07 08:18:43'),
(38, '0000038', 'Jyoti', 'jy@gmail.com', '9784648488', 'Springfield, IL, USA', '', NULL, '39.78172130000001', '-89.6501481', 'U2FsdGVkX1+M0RfcmVBaxp8GPq0fOU5N9IW3UQ9Cx5g=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736251161840_profile-image-1736251161838.webp', 'normal', 16, NULL, 'jyoti-1', 'J', '1', 'completed', '0', '2025-01-07 11:58:03', '2025-01-07 12:18:40'),
(39, '0000039', 'Subrata is a user in pet_dagogy application by aprodence', 'kapoorrohav@gmail.com', '6745688624', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX187VowzXzbqRT8Xi0u7zEfEDQbRP7RUNms=', NULL, 'user', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739877164735_image-1739877164563.webp', 'normal', NULL, NULL, 'subrata-is-a-user-in-petdagogy-application-by-aprodence', 'SIAUIPABA', '1', NULL, '1', '2025-01-07 12:07:40', '2025-02-18 11:36:40'),
(40, '0000040', 'subrata is a provider in pet_dagogy by aprodence', 'subrata.jana@aprodence.com', '9797976597', 'North 24 Parganas, India', '', NULL, '22.6011486', '88.4325519', 'U2FsdGVkX19IedPjDDOLtcYp90VZDNHc4RvCgw3hJoc=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736253179751_profile-image-1736253179669.webp', 'normal', 17, NULL, 'subrata-is-a-provider-in-petdagogy-by-aprodence', 'SIAPIPBA', '1', 'completed', '1', '2025-01-07 12:30:06', '2025-01-07 13:26:31'),
(41, NULL, 'subrata ', 'subrata.jana@aprodence.com', '6764579496', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19p8PDRzy1FBOqZ3Cv1Tk1sjDZRcskyAc4=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-3', NULL, '1', NULL, '1', '2025-01-07 13:37:38', '2025-01-07 13:37:38'),
(42, NULL, 'subrata ', 'subrata.jana@aprodence.com', '6764579496', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/0YI784FSSZy0ghQvkSLBpIsZ8MTWemVQ=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-4', NULL, '1', NULL, '1', '2025-01-07 13:38:46', '2025-01-07 13:38:46'),
(43, NULL, 'subrata ', 'subrata.jana@aprodence.com', '6764579496', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19fYQLkN3tQxauMy2agKSHzCZ75s6SyHCA=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-5', NULL, '1', NULL, '1', '2025-01-07 13:40:54', '2025-01-07 13:40:54'),
(44, '0000044', 'Dummy Provider', 'providerrr@gmail.com', '9999911112', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+Rng4hC8pfORWC8CgLOyPfcTSDGvcx//c=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'dummy-provider-1', 'DP', '1', NULL, '0', '2025-01-07 13:52:49', '2025-01-07 13:52:49'),
(45, '0000045', 'subrata ', 'subrata.jana@aprodence.com', '1977997979', 'North 24 Parganas, India', '', NULL, '22.601151', '88.4325482', 'U2FsdGVkX19XtdFuPV8bkiMmWOPPLUJW2AuM939Kaeg=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736258490004_profile-image-1736258489970.webp', 'normal', 19, NULL, 'subrata-6', 'S', '1', 'completed', '0', '2025-01-07 14:00:14', '2025-01-07 14:19:56'),
(47, '0000047', 'Jyoti Vankala', 'jyotivankala12389@gmail.com', '07980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18g6gWXX0p1CKWhkuuhHfqncBGZH4yPulE=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-1', 'JV', '1', NULL, '0', '2025-01-08 07:52:10', '2025-01-08 07:52:10'),
(48, '0000048', 'Jyoti Vankala', 'jyotivankala1231@gmail.com', '77980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19NYgF3xKwiOZjn60X7VVKcXNRcQWpOEdU=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-2', 'JV', '1', NULL, '0', '2025-01-08 08:08:02', '2025-01-08 08:08:02'),
(49, '0000049', 'Jyoti Vankala', 'jyotivankfffala1231@gmail.com', '77980507841', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/9sPj2sBLmQx2he66puNLXSYQsNrQq7e0=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-3', 'JV', '1', NULL, '0', '2025-01-08 08:27:02', '2025-01-08 08:27:02'),
(50, '0000050', 'Jyoti Vankala', 'jyotivankala19923@gmail.com', '047980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18j7L/egChUyFXBDxi33i5A+HwkWigiGVw=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-4', 'JV', '1', NULL, '0', '2025-01-08 09:35:33', '2025-01-08 09:35:33'),
(51, '0000051', 'Jyoti Vankala hjguyhgk ikjhuhiu khuuknmn j', 'kl@gmail.com', '077980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/oNEHLK26AbktN+G6gn7w0/QGGQuvWTQw=', 6989, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1739185263157_image-1739185263126.webp', 'normal', NULL, NULL, 'jyoti-vankala-5', 'JV', '1', NULL, '0', '2025-01-08 12:52:54', '2025-02-13 14:20:21'),
(52, '0000052', 'provided344', 'p3@gmail.com', '9897989767', 'North 24 Parganas, India', '', NULL, '22.601149', '88.4325553', 'U2FsdGVkX1/jmnt5i2GH8nrSKh5jyOzNqRpLB/fjMFs=', 3251, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736419414983_profile-image-1736419414979.webp', 'normal', 21, NULL, 'provided3', 'P', '1', 'completed', '0', '2025-01-09 10:27:00', '2025-01-09 11:05:14'),
(53, '0000053', 'provider4', 'p4@gmail.com', '9797646979', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19FVBXR3VcD8cM+2fJLazNYtlxSXgqjGUY=', 4303, 'user', NULL, 'normal', NULL, NULL, 'provider4', 'P', '1', NULL, '0', '2025-01-09 11:07:15', '2025-01-10 08:48:45'),
(54, '0000054', 'provider', 'p4@gmail.com', '9767655769', 'North 24 Parganas, India', '', NULL, '22.6011552', '88.4325505', 'U2FsdGVkX1/PkMF6L7CDtphPsRNNYv6XzUSkpDCXmtk=', 3106, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736421100005_profile-image-1736421099992.webp', 'normal', 22, NULL, 'provider-3', 'P', '1', 'completed', '0', '2025-01-09 11:08:21', '2025-01-14 11:49:50'),
(55, '0000055', 'provider5', 'p5@gmail.com', '4667646979', 'North 24 Parganas, India', '', NULL, '22.6011492', '88.4325515', 'U2FsdGVkX18ewIIMWwyQZJNntiYkNiXr9WNDgOEtJfY=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736428478816_profile-image-1736428478812.webp', 'normal', 23, NULL, 'provider5', 'P', '1', 'completed', '0', '2025-01-09 11:46:13', '2025-01-09 13:53:25'),
(56, '0000056', 'provider5', 'p6@gmail.com', '6289931999', 'North 24 Parganas, India', '', NULL, '22.6011638', '88.4325629', 'U2FsdGVkX1+4Ui0yo5OdA1Nm+8OrlDFALa4mOOuWiRQ=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737109841785_profile-image-1737109841708.webp', 'normal', 29, NULL, 'provider5-1', 'P', '1', 'completed', '0', '2025-01-09 12:27:42', '2025-01-17 10:37:36'),
(57, '0000057', 'user', 'u2@gmail.com', '6289931999', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+Nt8USZly4vYCfS6P978+1XKX3E2pR49Q=', 3106, 'user', NULL, 'normal', NULL, NULL, 'user', 'U', '1', NULL, '0', '2025-01-09 12:28:51', '2025-01-14 06:39:57'),
(58, '0000058', 'kkm', 'jyotivankala@gmail.com', '708979805078', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/ATJPrQru7zgDRe4nm+eMlRnbyfiX+UYI=', 5371, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1736757911941_image-1736757911932.webp', 'normal', NULL, NULL, 'jyoti-vankala-6', 'JV', '1', NULL, '0', '2025-01-10 05:29:34', '2025-02-11 12:30:16'),
(59, '0000059', 'provider7', 'p7@gmail.com', '7474747474', 'North 24 Parganas, India', '', NULL, '22.6011711', '88.4325713', 'U2FsdGVkX1+FcDCqiWZtvzCjRH+Au0OSJwaib8nx4Oc=', 2806, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736498200698_profile-image-1736498200693.webp', 'normal', 25, NULL, 'provider7', 'P', '1', 'completed', '0', '2025-01-10 08:27:32', '2025-01-17 07:50:10'),
(60, '0000060', 'provider8', 'p8@gmail.com', '6799797989', 'Chinatown, Yaowarat Road, Samphanthawong, Bangkok, Thailand', '', NULL, '13.7402796', '100.5097677', 'U2FsdGVkX1+FePZGW8SkvNnx3DkuC8BT+4zI+n3z5gc=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736507784826_profile-image-1736507784823.webp', 'normal', 26, NULL, 'provider8', 'P', '1', 'completed', '0', '2025-01-10 11:15:15', '2025-01-10 11:51:24'),
(61, '0000061', 'Jyoti Vankala', 'jyotivajjnkala972@gmail.com', '848949393933', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX182lOzuQpIEoaxDEEmdoyIm4bPmmMetGJc=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-7', 'JV', '1', NULL, '0', '2025-01-10 12:01:39', '2025-01-10 12:01:39'),
(63, '0000063', 'Jyoti Vankala', 'jyotivankala972@gmail.com', '407980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/KP3LQxNxOFjMQg7aNdVa/aCyMWwV2lJA=', 3418, 'user', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739526944987_image-1739526944981.webp', 'normal', NULL, NULL, 'jyoti-vankala-8', 'JV', '1', NULL, '0', '2025-01-10 12:08:09', '2025-02-14 10:43:41'),
(64, '0000064', 'Jyoti Vankala', 'jyotivankala1253@gmail.com', '067980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+VtcD2/R00LcdQH/G38ndW8Enxqyjm0jY=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-9', 'JV', '1', NULL, '0', '2025-01-10 12:09:45', '2025-01-10 12:09:45'),
(65, '0000065', 'Jyoti Vankala', 'jyotivankaljja123@gmail.com', '79980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18LWwYxFnrB1Y8KAsGeL22PslhH09ntzy0=', NULL, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1736771560969_image-1736771560652.webp', 'normal', NULL, NULL, 'jyoti-vankala-10', 'JV', '1', NULL, '0', '2025-01-10 12:12:01', '2025-02-04 09:40:54'),
(66, '0000066', 'provider9', 'p9@gmail.com', '7667676676', 'Springfield, IL, USA', '', NULL, '39.78172130000001', '-89.6501481', 'U2FsdGVkX1+9JH/soT4hbTzfe3/n/3Oe02EC9h4T4bk=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1736511635254_profile-image-1736511635252.webp', 'normal', 27, NULL, 'provider9', 'P', '1', 'completed', '0', '2025-01-10 12:19:13', '2025-01-10 12:20:59'),
(67, '0000067', 'Test 8', 'test8@gmail.com', '1234546578', 'Delhi, India', '', NULL, 'null', 'null', 'U2FsdGVkX1/5qU7uKgb3oQUaBN/+2bIF4cxdipEBHXc=', 6858, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737184645720_profile-image-1737184645718.webp', 'normal', 34, NULL, 'test-8', 'T8', '1', 'completed', '0', '2025-01-15 12:43:53', '2025-02-07 14:57:38'),
(68, '0000068', 'Sukla Roy', 'roy@mail.com', '9999999993', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18cvJs1CAFyLvvgg4jEuf5T/vhuPxxyqmI=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'sukla-roy', 'SR', '1', NULL, '0', '2025-01-16 11:24:15', '2025-01-16 11:24:15'),
(69, '0000069', 'Jyoti Vankala', 'jyotivankala12rr3@gmail.com', '017980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/chK+p8QyO1NhIoJCPctnpAcHvHygKEQo=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-11', 'JV', '1', NULL, '0', '2025-01-16 14:19:57', '2025-01-16 14:19:57'),
(70, '0000070', 'subrata10', 'p10@gmail.com', '6574253568', 'North 24 Parganas, India', '', NULL, '22.6011558', '88.432558', 'U2FsdGVkX1+/TTUbsWrnrnXGdNugZUsJDEjmFKtfe9Q=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737121839203_profile-image-1737121839166.webp', 'normal', 31, NULL, 'subrata10', 'S', '1', 'completed', '0', '2025-01-17 13:49:48', '2025-01-17 14:02:54'),
(71, '0000071', 'subrata11', 'p11@gmail.com', '6257435268', 'North 24 Parganas, India', '', NULL, '22.6011646', '88.4325638', 'U2FsdGVkX1+3+ZwwJgIcjsaINhBjxZsWzPPuXoksjbs=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737125196875_profile-image-1737125196873.webp', 'normal', 32, NULL, 'subrata11', 'S', '1', 'completed', '0', '2025-01-17 14:46:05', '2025-01-17 14:57:34'),
(72, '0000072', 'Provider 01', 'provider1@gmail.com', '90000000001', 'Kolkata kestopur', '700102', NULL, '22.601151', '88.4325482', 'U2FsdGVkX1+g71O5eO9INuAiRcjLrVhM18vI1yE39jk=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737184638034_image-1737184637999.webp', 'normal', 33, NULL, 'provider-01', 'P0', '1', NULL, '0', '2025-01-18 07:05:25', '2025-01-18 07:29:23'),
(73, '0000073', 'provider12', 'p12@gmail.com', '5741253568', 'North 24 Parganas, India', '', NULL, '22.6011667', '88.4325744', 'U2FsdGVkX19zrg/v2giehiZOgPKn0y3zwruyKpJEj24=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737199366685_profile-image-1737199366682.webp', 'normal', 35, NULL, 'provider12', 'P', '1', 'completed', '0', '2025-01-18 11:07:39', '2025-01-18 11:23:00'),
(74, '0000074', 'provider13', 'p13@gmail.com', '8742513526', 'North 24 Parganas, India', '', NULL, '22.6011576', '88.4325676', 'U2FsdGVkX1/z+q0l3HbSYPzdngAl+bbE4PNrOqDdd5s=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737200986409_profile-image-1737200986407.webp', 'normal', 36, NULL, 'provider13', 'P', '1', 'completed', '0', '2025-01-18 11:49:15', '2025-01-18 11:51:24'),
(75, '0000075', 'provider14', 'p14@gmail.com', '1743526859', 'North 24 Parganas, India', '', NULL, '22.6011687', '88.4325661', 'U2FsdGVkX1/Krr6Xh/qiKNFcrJDiFvCifHFfBF4EQKE=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737204144416_profile-image-1737204144413.webp', 'normal', 37, NULL, 'provider14', 'P', '1', 'completed', '0', '2025-01-18 12:41:38', '2025-01-18 12:46:51'),
(76, '0000076', 'provider15', 'p15@gmail.com', '8742531568', 'North 24 Parganas, India', '', NULL, '22.6011626', '88.4325656', 'U2FsdGVkX1/3/zU0hQOdLAfS+c3dy6DZP3jVPXZe2pM=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737206443462_profile-image-1737206443461.webp', 'normal', 38, NULL, 'provider15', 'P', '1', 'completed', '0', '2025-01-18 13:09:50', '2025-01-20 07:04:46'),
(77, '0000077', 'bbs as', 'bbs@gmail.com', '9784545487', 'Kolkata, West Bengal, India', '', NULL, '22.5743545', '88.3628734', 'U2FsdGVkX19og+VFKV7s8x1cRKZxv44ul3C0lyw4kxk=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737216265530_profile-image-1737216265413.webp', 'normal', 39, NULL, 'bbs-as', 'BA', '1', 'completed', '0', '2025-01-18 16:02:41', '2025-01-21 07:39:10'),
(78, '0000078', 'provider16', 'p16@gmail.com', '7342156895', 'North 24 Parganas, India', '', NULL, '22.6011723', '88.4325761', 'U2FsdGVkX1851SKyxxUJDAop91eJj8G6UonKYS9OkH0=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737357053527_profile-image-1737357053479.webp', 'normal', 40, NULL, 'provider16', 'P', '1', 'completed', '0', '2025-01-20 07:10:17', '2025-01-20 07:24:02'),
(79, '0000079', 'provider17', 'p17@gmail.com', '7258369524', 'North 24 Parganas, India', '', NULL, '22.6011595', '88.4325673', 'U2FsdGVkX1/KWe/UxHrEMtturgD90d8dyhIuG8CftaA=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737358327530_profile-image-1737358327527.webp', 'normal', 41, NULL, 'provider17', 'P', '1', 'completed', '0', '2025-01-20 07:31:37', '2025-01-20 07:33:10'),
(80, '0000080', 'Jyoti Vankala', 'jyotivankalaap@gmail.com', '80009090909', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX185AyOlnBocj8OeJ9ehOpE5MdNlxIKlOD4=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-12', 'JV', '1', NULL, '0', '2025-01-21 08:49:05', '2025-01-21 08:49:05'),
(81, '0000081', 'Name will be About Us instead of About at the Header part of the website', 'Subrata@yopmail.com', '62899319259', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/SrYkQYiMq8BHEJRtBsXo4hEXtzxZ04qk=', 1407, 'user', NULL, 'normal', NULL, NULL, 'name-will-be-about-us-instead-of-about-at-the-header-part-of-the-website', 'NWBAUIOAATHPOTW', '1', NULL, '0', '2025-01-21 13:23:35', '2025-01-21 13:31:11'),
(82, '0000082', 'Provider 02', 'provider2@gmail.com', '90000000003', 'Kolkata yatragachi', '700102', NULL, '22.601151', '88.4325482', 'U2FsdGVkX1+gEuZ+rhPyKYKCDzF0eYXm+UdPv9SVPQY=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com/uploads/provider-files/compressed_1737184638034_image-1737184637999.webp', 'normal', 42, NULL, 'provider-02', 'P0', '1', NULL, '0', '2025-01-21 13:49:26', '2025-01-21 13:53:01'),
(83, '0000083', 'Jyoti Vankala', 'jyotivankalaggf123@gmail.com', '0798050784333', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+n8xM2hlOitTn41d8QW+vKZt6CE59+jQo=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-13', 'JV', '1', NULL, '0', '2025-01-21 14:20:36', '2025-01-21 14:20:36'),
(84, '0000084', 'Povider for Tester', 'providerfortest@mail.com', '3232323232', 'Kestopur, Kolkata, West Bengal, India', '', NULL, '22.597185399999997', '88.43705849999999', 'U2FsdGVkX1/2VxbDI08mzrcNAp6kXJWdMTaXOqvlpj4=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737525157251_profile-image-1737525157247.webp', 'normal', 43, NULL, 'povider-for-tester', 'PFT', '1', 'completed', '0', '2025-01-22 05:45:01', '2025-01-22 06:08:15'),
(85, '0000085', 'Povider for Tester 1', 'providerfortest1@mail.com', '7980507953', 'Kestopur, Kolkata, West Bengal, India', '', NULL, '22.597185399999997', '88.43705849999999', 'U2FsdGVkX1+9MWTOSxicYMDjIVHLvrV0Cs6JVURq2lg=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737526206112_profile-image-1737526206009.webp', 'normal', 44, NULL, 'povider-for-tester-1', 'PFT1', '1', 'completed', '0', '2025-01-22 06:08:01', '2025-01-22 12:19:25'),
(86, '0000086', 'Provider17', 'P17@mail.com', '9999999991', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+WvHphQe1atuurNN8rWFMFZ14WOH0bae0=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'provider17-1', 'P', '1', NULL, '0', '2025-01-22 10:37:26', '2025-01-22 10:37:26'),
(87, '0000087', 'provider19', 'p19@gmail.com', '5743195283', 'North 24 Parganas, India', '', NULL, '22.6011626', '88.4325721', 'U2FsdGVkX1+U7L3lT2zeOLnOlHqTf0PAovzLyFb/zIY=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1737614716645_profile-image-1737614716608.webp', 'normal', 45, NULL, 'provider19', 'P', '1', 'completed', '0', '2025-01-23 05:54:09', '2025-01-23 07:20:25'),
(88, '0000088', 'subrata jana ,mfvjkws  mk wkjeniwfw fiusknkjheij vnkhri', 's@gmail.com', '6289931923', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19n0ERTvzDFFHiv/YAcxwHOt6Qlrm+9Taw=', NULL, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1737972216954_image-1737972216946.webp', 'normal', NULL, NULL, 'subrata-jana', 'SJ', '1', NULL, '0', '2025-01-27 09:59:50', '2025-01-27 10:22:29'),
(89, '0000089', 'Jyoti Vankala', 'jyotiv@gmail.com', '7980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/1KIz4vUxAiLpaI/dpel8722aBzppnb0A=', NULL, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1738238280908_image-1738238280660.webp', 'normal', NULL, NULL, 'jyoti-vankala-14', 'JV', '1', NULL, '0', '2025-01-29 05:34:13', '2025-01-30 11:58:00'),
(90, '0000090', 'Sitter_oneh', 'sitter1@yopmail.com', '6543567657', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/fH0I4v1PJu/rJMHy1q7ETgT+OzvQPw1I=', 3775, 'user', 'https://www.pet-d-agogy-api.acelance.com/uploads/images/compressed_1738653439994_image-1738653439880.webp', 'normal', NULL, NULL, 'sitterone', 'S', '1', NULL, '0', '2025-02-04 07:09:13', '2025-02-04 10:06:48'),
(91, '0000091', 'Pro. vider', 'pro.vidr@gmail.com', '7912378644', 'Players Club, Refaitpur, Chandrahati, Uttar Hazipur P, West Bengal, India', '', NULL, '22.9994725', '88.40787929999999', 'U2FsdGVkX1+2GT3S2vt/wfGyuLhX6cCwT4yiOz07pcU=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1738660164300_profile-image-1738660164248.webp', 'normal', 46, NULL, 'pro-vider', 'PV', '1', 'completed', '0', '2025-02-04 09:07:45', '2025-02-11 06:27:40'),
(92, '0000092', 'Jyoti Vankala', 'jyotivankalar123@gmail.com', '4980507843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+MZ2KWXz46QFxPYgWiCtLICZY0npPuhcY=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-15', 'JV', '1', NULL, '1', '2025-02-05 11:35:33', '2025-02-05 11:36:31'),
(93, '0000093', 'subrata', 'test@yopmail.com', '6423589538', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18dbx6CVXozimekk9VEKjpH+V/YyPEtrOc=', 7509, 'user', NULL, 'normal', NULL, NULL, 'subrata-7', 'S', '1', NULL, '0', '2025-02-07 05:44:58', '2025-02-07 10:36:23'),
(94, '0000094', 'Subrata ', 'test@yopmail.com', '6728531564', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1/FHHrjfkH596ZlpVTsNQeTT7H3Gn9MTh8=', NULL, 'provider', NULL, 'normal', NULL, NULL, 'subrata-8', 'S', '1', '', '0', '2025-02-07 05:48:38', '2025-02-07 07:52:28'),
(95, '0000095', 'Jyoti Vankala', 'j.vankala@gmail.com', '3498348934', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19GqL1HJbaZDdO2CjCm01U8nsSEILJmOxU=', 7190, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-16', 'JV', '1', NULL, '0', '2025-02-07 07:17:16', '2025-02-13 10:16:22'),
(96, '0000096', 'subrata', 'test1@yopmail.com', '6742358253', 'North 24 Parganas, India', '', NULL, '22.6011606', '88.4325585', 'U2FsdGVkX19NeXRkRRpCouYSAVovD3XdyO19sVGkW2k=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739020596085_profile-image-1739020596048.webp', 'normal', 48, NULL, 'subrata-9', 'S', '1', 'completed', '0', '2025-02-07 07:24:36', '2025-02-08 13:17:56'),
(97, '0000097', 'test9', 'test9@gmail.com', '1254587854', 'Puri, Odisha, India', '', NULL, '19.8134554', '85.8312359', 'U2FsdGVkX18sb9IK18Aap+Hyn8EQfXSeEzAew2Y++pk=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1738934649307_profile-image-1738934649105.webp', 'normal', 47, NULL, 'test9', 'T', '1', 'completed', '0', '2025-02-07 13:18:55', '2025-02-07 13:29:27'),
(98, '0000098', 'Jyoti Vankala', 'jyotid@gmail.com', '7980507953', 'Players Club, Refaitpur, Chandrahati, Uttar Hazipur P, West Bengal, India', '700102', NULL, '22.9994725', '88.40787929999999', 'U2FsdGVkX19lgAXpoi2CrFIxwT9Z6v/m/jZ6g0iEuiw=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739254684782_profile-image-1739254684781.webp', 'normal', 49, NULL, 'jyoti-vankala-17', 'JV', '1', 'completed', '0', '2025-02-11 06:12:54', '2025-02-12 11:25:46'),
(99, '0000099', 'Jyoti Vankala', 'klklk@gmail.com', '4943948394', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18Ggd8vQiLOqj1loe11q8lbAy2SMIlRwD0=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jyoti-vankala-18', 'JV', '1', NULL, '0', '2025-02-12 08:03:42', '2025-02-12 08:03:42'),
(100, '0000100', 'As hh', 'gh@gmail.com', '8585555888', 'Kolkata, West Bengal, India', '', NULL, '22.5743545', '88.3628734', 'U2FsdGVkX19oXqxkBZgEk/ZCZ2uTPBHNzdsPDhMlloc=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739359649872_profile-image-1739359649775.webp', 'normal', 50, NULL, 'as-hh', 'AH', '1', 'completed', '0', '2025-02-12 11:26:23', '2025-02-14 05:50:19'),
(101, '0000101', 'Test5', 'test5@gmail.com', '1232456543', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+ehDJOhvCdkzHC8KYAquiujM2H0nLycS4=', NULL, 'user', NULL, 'normal', NULL, NULL, 'test5-1', 'T', '0', NULL, '0', '2025-02-13 10:51:30', '2025-02-13 13:21:18'),
(102, '0000102', 'ram', 'ram@gmail.com', '4752835698', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+SSsgCpGwO43RW19tVODmGpxxRiCEVdVw=', NULL, 'user', NULL, 'normal', NULL, NULL, 'ram', 'R', '1', NULL, '1', '2025-02-13 14:36:02', '2025-02-13 14:38:18'),
(103, '0000103', 'ram', 'ram@gmail.com', '9467979797', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+KFFqkDZ5LYj+dIJsuO9lHf/eTV+9+Irw=', NULL, 'user', NULL, 'normal', NULL, NULL, 'ram-1', 'R', '1', NULL, '0', '2025-02-13 14:39:00', '2025-02-13 14:39:00'),
(104, '0000104', 'ram', 'ram@gmail.com', '7452876979', 'North 24 Parganas, India', '', NULL, '22.601161', '88.432567', 'U2FsdGVkX1+p0/lYcTAXflIJl1nrQUgXuiMi+CcEU9M=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739457639357_profile-image-1739457639287.webp', 'normal', 51, NULL, 'ram-2', 'R', '1', 'completed', '0', '2025-02-13 14:40:13', '2025-02-13 14:42:14'),
(105, '0000105', 'test1', 'test1@gmail.com', '1234364278', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX18VVPKVcEgR6r8mnIKrzPORzuQ3M8MIwps=', NULL, 'user', NULL, 'normal', NULL, NULL, 'test1', 'T', '1', NULL, '1', '2025-02-14 05:38:19', '2025-02-14 05:39:56'),
(106, '0000106', 'tset1', 'test1@gmail.com', '3746214798', 'Kolkata, West Bengal, India', '', NULL, '22.5743545', '88.3628734', 'U2FsdGVkX1/2zOtOWmzP4quRLQn5TGHsobCSJNMlQ3w=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739511682154_profile-image-1739511682152.webp', 'normal', 52, NULL, 'tset1', 'T', '1', 'completed', '0', '2025-02-14 05:40:33', '2025-02-14 05:41:34'),
(107, '0000107', 'test2', 'test2@gmail.com', '1234567843', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19a2AyHt4ucV9IAS27oCCku4RN5NpjidMY=', NULL, 'user', NULL, 'normal', NULL, NULL, 'test2', 'T', '1', NULL, '0', '2025-02-14 06:16:57', '2025-02-14 06:16:57'),
(108, '0000108', 'Rohan Ganguly', 'subrata.jana@aprodence.com', '6289931921', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+KIru7ksC6DYNMrXqK4eLNDOnlIipEgpk=', NULL, 'user', 'https://www.pet-d-agogy-api.acelance.com//uploads/images/compressed_1739529164266_image-1739529164122.webp', 'normal', NULL, NULL, 'rohan-ganguly', 'RG', '1', NULL, '0', '2025-02-14 10:31:36', '2025-02-14 10:33:32'),
(109, '0000109', 'JV', 'rt@gmail.com', '5666754545', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX1+7U48QlYF1AvEm8RKjEa2DGni7JWkuCSA=', NULL, 'user', NULL, 'normal', NULL, NULL, 'jv', 'J', '1', NULL, '0', '2025-02-17 12:28:04', '2025-02-17 12:28:04'),
(110, '0000110', 'Jyoti', 'jyoti@yopmail.com', '4646467679', 'Prayagraj, Uttar Pradesh, India', '', NULL, '25.468338', '81.85460189999999', 'U2FsdGVkX1/By6W5Mmxx/zzdqU7tmb417QPrGewJl6Q=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739875644717_profile-image-1739875644714.webp', 'normal', 53, NULL, 'jyoti-19', 'J', '1', 'completed', '0', '2025-02-18 10:46:41', '2025-02-18 11:09:59'),
(111, '0000111', 'jyoti', 'jyoti1@yopmail.com', '7425385623', 'North 24 Parganas, India', '', NULL, '22.6011924', '88.4326119', 'U2FsdGVkX1+cJYfOCC9I5vs1EtLUkoXvzV5FtGrn0pM=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739875854458_profile-image-1739875854379.webp', 'normal', 54, NULL, 'jyoti-20', 'J', '1', 'completed', '1', '2025-02-18 10:49:56', '2025-02-18 11:18:00'),
(112, '0000112', 'jyoti', 'jyoti1@yopmail.com', '8617068594', 'New York, NY, USA', '', NULL, '40.7127753', '-74.0059728', 'U2FsdGVkX1+35+cCm+LZW9HGwKzevrACd1n6QuLXDaI=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739877651111_profile-image-1739877651076.webp', 'normal', 55, NULL, 'jyoti-21', 'J', '1', 'completed', '0', '2025-02-18 11:19:37', '2025-02-18 11:27:46'),
(113, '0000113', 'sanjay', 'sanjay3@yopmail.com', '6476686766', 'North 24 Parganas, India', '', NULL, '22.601149', '88.4324953', 'U2FsdGVkX194ZsRojRIQxb5TsiZFx+FKRk2L4HPdPoo=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739880890321_profile-image-1739880890320.webp', 'normal', 56, NULL, 'sanjay', 'S', '1', 'completed', '1', '2025-02-18 12:07:05', '2025-02-18 12:49:56'),
(114, '0000114', 'sanjay', 'sanjay3@yopmail.com', '6742876797', 'North 24 Parganas, India', '', NULL, '22.601153', '88.4325348', 'U2FsdGVkX181MyLTLWbsrjZnUhZEEq1HsbAbQ8ROLgI=', NULL, 'provider', 'https://www.pet-d-agogy-api.acelance.com//uploads/profile_images/compressed_1739883078832_profile-image-1739883078649.webp', 'normal', 57, NULL, 'sanjay-1', 'S', '1', 'completed', '0', '2025-02-18 12:50:27', '2025-02-18 13:12:30'),
(115, '0000115', 'subrata user', 'subrata@yopmail.com', '6767676767', NULL, NULL, NULL, NULL, NULL, 'U2FsdGVkX19eGlCyvquljPHTo2jasWpjyPwiPr9zumg=', NULL, 'user', NULL, 'normal', NULL, NULL, 'subrata-user', 'SU', '1', NULL, '0', '2025-02-18 13:47:56', '2025-02-18 13:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `flat_no` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `address`, `flat_no`, `landmark`, `zip_code`, `latitude`, `longitude`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 107, 'refaithpur', NULL, 'beltala', '767888', '89.00000', '89.0000', '0', '1', '2025-01-10 05:32:58', '2025-01-21 05:21:30'),
(2, 107, 'kolkata', '32', 'ad', '768767', 'sd', 'sd', '1', '0', '2025-01-20 08:15:38', '2025-01-20 08:15:38'),
(3, 1, 'Bhattacharyya House, 8, Dr Kartik Bose St, Baithakkhana, Kolkata, West Bengal 700009, India', 'HOUSENO.420', 'IOOI', '700009', '22.5738752', '88.3687424', '0', '0', '2025-01-20 12:05:41', '2025-01-20 12:46:00'),
(5, 1, 'South Dum Dum Municipality, Dum Dum Road, Nagerbazar, Dum Dum, Kolkata, West Bengal, India', '898', 'hih', '0', '22.6205135', '88.3968449', '0', '0', '2025-01-20 12:14:37', '2025-01-28 13:45:41'),
(6, 1, 'Kestopur, Kolkata, West Bengal, India', '8988889', 'NAHIPATA', '0', '22.5971854', '88.43705849999999', '0', '0', '2025-01-20 12:16:55', '2025-01-21 05:21:34'),
(7, 1, 'Bhattacharyya House, 8, Dr Kartik Bose St, Baithakkhana, Kolkata, West Bengal 700009, India', 'j', 'k', '700009', '22.5738752', '88.3687424', '0', '1', '2025-01-20 12:18:28', '2025-01-21 05:21:15'),
(8, 1, 'South Dum Dum Municipality, Dum Dum Road, Nagerbazar, Dum Dum, Kolkata, West Bengal, India', 'HOUSENO.420', 'n', '0', '22.6205135', '88.3968449', '0', '1', '2025-01-20 12:55:12', '2025-01-21 05:20:58'),
(9, 1, 'South Dum Dum Municipality, Dum Dum Road, Nagerbazar, Dum Dum, Kolkata, West Bengal, India', 'HOUSENO.420', 'IOOI', '0', '22.6205135', '88.3968449', '0', '1', '2025-01-20 13:09:43', '2025-01-21 05:21:25'),
(10, 80, '15, Tangra, Kolkata, West Bengal 700010, India', '90909', 'hih', '700010', '22.560768', '88.3851264', '1', '0', '2025-01-21 09:07:09', '2025-01-21 09:07:09'),
(11, 1, 'Kolkata, West Bengal, India', 'HOUSENO.420', 'NAHIPATA', '700007', '22.5643', '88.3693', '1', '0', '2025-01-28 13:45:41', '2025-01-28 13:45:41'),
(18, 89, 'Majher Para, Kestopur, Kolkata, West Bengal, India', 'HOUSENO.420', 'Players club', '700102', '22.6014014', '88.43246359999999', '1', '0', '2025-02-04 06:31:07', '2025-02-05 11:45:02'),
(19, 89, 'Majher Para, Kestopur, Kolkata, West Bengal, India', 'koo000', 'kjkkk', '700102', '22.6014014', '88.43246359999999', '0', '0', '2025-02-05 10:42:28', '2025-02-05 11:45:02'),
(21, 109, 'Tribeni Ghat, Benimadhabtala, Tribeni, Jatrasudi, West Bengal, India', 'hh', 'iui', '712503', '22.9842121', '88.4018172', '1', '0', '2025-02-17 13:00:53', '2025-02-17 13:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_fcms`
--

CREATE TABLE `user_fcms` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `access_token` longtext,
  `device_type` enum('1','2','3') NOT NULL COMMENT '1-Android,2-IOS,3-Web',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_fcms`
--

INSERT INTO `user_fcms` (`id`, `user_id`, `fcm_token`, `access_token`, `device_type`, `createdAt`, `updatedAt`) VALUES
(6, 6, 'ss23#123', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2LCJlbWFpbCI6InZpcmF0QGdtYWlsLmNvbSIsImlhdCI6MTczMjcxMzM4OCwiZXhwIjoxNzMzMzE4MTg4LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.GNhcdJdqzBLYFIWFUsqQ6Lrri4xfRZmloTxB0wrI73E', '1', '2024-11-27 13:16:28', '2024-11-27 13:16:28'),
(12, 8, 'ss23#123', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4LCJlbWFpbCI6IkRhdmlkQGdtYWlsLmNvbSIsImlhdCI6MTczMjcxNDIyMCwiZXhwIjoxNzMzMzE5MDIwLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.OHF1ViVdiYjhUEr0dpirHiyCK1UMBCHBKKqRZLKxoGI', '1', '2024-11-27 13:30:20', '2024-11-27 13:30:20'),
(15, 10, 'fcm#123456', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMCwiZW1haWwiOiJwb25kQGdtYWlsLmNvbSIsImlhdCI6MTczMzM5OTQ2MCwiZXhwIjoxNzM0MDA0MjYwLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQERFU0tUT1AtNzFPTjcxSCJ9.zM2aqd9lf21l6PrDjefF3buCJVrlaJTbFmbwvati72o', '1', '2024-12-05 11:51:00', '2024-12-05 11:51:00'),
(29, 5, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1LCJlbWFpbCI6ImthbmVAZ21haWwuY29tIiwiaWF0IjoxNzM1NTU2MDM5LCJleHAiOjE3MzYxNjA4MzksImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.YCbtv5Q3ZKCF0XB3yyl9YU7D5wild9CAjLBMl5Psf_c', '1', '2024-12-30 10:53:59', '2024-12-30 10:53:59'),
(30, 4, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0LCJlbWFpbCI6ImVsaXphYmV0aEBnbWFpbC5jb20iLCJpYXQiOjE3MzU1NTY5NTEsImV4cCI6MTczNjE2MTc1MSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.Wt_6QPPkUF9fC8N7RBM8O-0cj6RiKYizNyZl5j8mOxg', '1', '2024-12-30 11:09:11', '2024-12-30 11:09:11'),
(32, 3, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozLCJlbWFpbCI6ImNyaXN0aW5AZ21haWwuY29tIiwiaWF0IjoxNzM1NTYzNTQyLCJleHAiOjE3MzYxNjgzNDIsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.ddffVwzee-kUovJzjZSzYZpN13eg6G92eRspySHkhYc', '1', '2024-12-30 12:59:02', '2024-12-30 12:59:02'),
(51, 17, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNywiZW1haWwiOiJzakBnbWFpbC5jb20iLCJpYXQiOjE3MzU4ODgyMjksImV4cCI6MTczNjQ5MzAyOSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.t9NyvuwLOnRyK7ICWaah3-3n3Ca7G2PidvNfCYkQJH8', '1', '2025-01-03 07:10:29', '2025-01-03 07:10:29'),
(58, 15, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNSwiZW1haWwiOiJzakBnbWFpbC5jb20iLCJpYXQiOjE3MzU4OTYzMzUsImV4cCI6MTczNjUwMTEzNSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.NdF3_E5H-SrqnrcdLH7GRCio_h0H71r89nKd8XAdY1I', '1', '2025-01-03 09:25:35', '2025-01-03 09:25:35'),
(59, 18, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxOCwiZW1haWwiOiJzdWJyYXRhLmphbmFAYXByb2RlbmNlLmNvbSIsImlhdCI6MTczNTg5NjUzNCwiZXhwIjoxNzM2NTAxMzM0LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.xPBAMf817jKR5-9vlg5A-kIiYalP-cbKws2K_f9I1IA', '1', '2025-01-03 09:28:54', '2025-01-03 09:28:54'),
(65, 22, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMiwiZW1haWwiOiJiaWtpLnBhbWFuaWsuYmlraUBnbWFpbC5jb20iLCJpYXQiOjE3MzU5OTQ5MTcsImV4cCI6MTczNjU5OTcxNywiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.IVsA7gE7JVringcV0xDUmwA9nDXI0-EMzFE6lPzVykc', '1', '2025-01-04 12:48:37', '2025-01-04 12:48:37'),
(66, 21, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJiaWtpLnByYW1hbmlrLmJpa2lAZ21haWwuY29tIiwiaWF0IjoxNzM2MDAyMTUyLCJleHAiOjE3MzY2MDY5NTIsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.8FMc1gsXsOShhMjj8v8nC2FTbiC62tXIjSwPVIjTDFc', '1', '2025-01-04 14:49:12', '2025-01-04 14:49:12'),
(68, 25, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNSwiZW1haWwiOiJyQGdtYWlsLmNvbSIsImlhdCI6MTczNjE0MDQ3MCwiZXhwIjoxNzM2NzQ1MjcwLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.LwT4ZPRR-hKFgQndW_s2m_77Xz7C9bEAiIo1K0oPHD0', '1', '2025-01-06 05:14:30', '2025-01-06 05:14:30'),
(69, 26, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNiwiZW1haWwiOiJya0BnbWFpbC5jb20iLCJpYXQiOjE3MzYxNDA4MzIsImV4cCI6MTczNjc0NTYzMiwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.wjYRE0KLEzbFh2PmAu7WxXduaxOGgPkHH_cLkGBL_KU', '1', '2025-01-06 05:20:32', '2025-01-06 05:20:32'),
(77, 14, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNCwiZW1haWwiOiJiaWtpLnByYW1hbmlrLmJpa2lAZ21haWwuY29tIiwiaWF0IjoxNzM2MTQxNzQ5LCJleHAiOjE3MzY3NDY1NDksImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.7OM09aVeiETPUhSXeh5tcjC5U_3_S6h4yT3u4J_FD5M', '1', '2025-01-06 05:35:49', '2025-01-06 05:35:49'),
(87, 28, 'fcm#7891345', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyOCwiZW1haWwiOiJkdW1teUBnbWFpbC5jb20iLCJpYXQiOjE3MzYxNDcwNjQsImV4cCI6MTczNjc1MTg2NCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.YbaUFyoBjV11Q7TCrAUm3riCpTUHfkWyTG1FrraMuIE', '1', '2025-01-06 07:04:24', '2025-01-06 07:04:24'),
(88, 29, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyOSwiZW1haWwiOiJzdUBtYWlsLmNvbSIsImlhdCI6MTczNjE0ODg3MSwiZXhwIjoxNzM2NzUzNjcxLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.t2RonL8hNhz2txvragDdAt1eRiauijY6PFT0ObbrxYE', '1', '2025-01-06 07:34:31', '2025-01-06 07:34:31'),
(89, 30, 'fcm#7891345', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozMCwiZW1haWwiOiJkdW1teUBnbWFpbC5jb20iLCJpYXQiOjE3MzYxNDg5MzgsImV4cCI6MTczNjc1MzczOCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.ZLrGrCHbwmmTSQ3F75qJ4yJg52h492q_k4xnOYczAzg', '1', '2025-01-06 07:35:38', '2025-01-06 07:35:38'),
(90, 31, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozMSwiZW1haWwiOiJwQGdtYWlsLmNvbSIsImlhdCI6MTczNjE0OTUyNywiZXhwIjoxNzM2NzU0MzI3LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.XO6dn0K3YE7KIssSdGs7dsv9WyCzwysoscA9DpB_iEU', '1', '2025-01-06 07:45:27', '2025-01-06 07:45:27'),
(94, 34, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozNCwiZW1haWwiOiJwcm9AZ21haWwuY29tIiwiaWF0IjoxNzM2MTYwNDQ1LCJleHAiOjE3MzY3NjUyNDUsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.7ydklxkGWt2gZAUr2bwdqM7Hl7NIGuM54hfN-RsoavI', '1', '2025-01-06 10:47:25', '2025-01-06 10:47:25'),
(95, 35, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozNSwiZW1haWwiOiJwcm8xQGdtYWlsLmNvbSIsImlhdCI6MTczNjE3MTgwNiwiZXhwIjoxNzM2Nzc2NjA2LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.ne36XPVgsN7XqwJ56QeND-FfBuyOfBoNS5RgNE5Jnds', '1', '2025-01-06 13:56:46', '2025-01-06 13:56:46'),
(102, 36, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozNiwiZW1haWwiOiJ0ZXN0N0BnbWFpbC5jb20iLCJpYXQiOjE3MzYyMzQxMzAsImV4cCI6MTczNjgzODkzMCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.D3K-WM694oxQxJ3-DNwFm-XhiJlutAWoeG5q9TuviEQ', '1', '2025-01-07 07:15:30', '2025-01-07 07:15:30'),
(109, 13, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMywiZW1haWwiOiJxYXNpQGdtYWlsLmNvbSIsImlhdCI6MTczNjI1MDk2NiwiZXhwIjoxNzM2ODU1NzY2LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.Z8Ntsn8vI8zAu0MXYJrSfefIiO1GZ5h4XyrSGuI8xXs', '1', '2025-01-07 11:56:06', '2025-01-07 11:56:06'),
(110, 23, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJrYXBvb3Jyb2hhdkBnbWFpbC5jb20iLCJpYXQiOjE3MzYyNTA5NzcsImV4cCI6MTczNjg1NTc3NywiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9._LP1TWGiT8-yMTyOLLkxBnjeDaUOUrNPLv5vZDk0J-M', '1', '2025-01-07 11:56:17', '2025-01-07 11:56:17'),
(111, 38, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozOCwiZW1haWwiOiJqeUBnbWFpbC5jb20iLCJpYXQiOjE3MzYyNTEwODMsImV4cCI6MTczNjg1NTg4MywiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.pb6N9VDERTQLP2glDaFNwuPOx2-m_pcEV4wdDA1LIAs', '1', '2025-01-07 11:58:03', '2025-01-07 11:58:03'),
(113, 40, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0MCwiZW1haWwiOiJzdWJyYXRhLmphbmFAYXByb2RlbmNlLmNvbSIsImlhdCI6MTczNjI1MzAwNiwiZXhwIjoxNzM2ODU3ODA2LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.cuu3TEUIlS10UHvkEKSjq6apf5f30T2R1chbS-4QLhI', '1', '2025-01-07 12:30:06', '2025-01-07 12:30:06'),
(115, 37, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozNywiZW1haWwiOiJwcm92aWRlckBnbWFpbC5jb20iLCJpYXQiOjE3MzYyNTc5NDEsImV4cCI6MTczNjg2Mjc0MSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.GQS5sEyz3HAn9RwIHpONvVTwBB0jqE-bYgAcQL6T4y4', '1', '2025-01-07 13:52:21', '2025-01-07 13:52:21'),
(116, 44, 'fcm#78913456', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0NCwiZW1haWwiOiJwcm92aWRlcnJyQGdtYWlsLmNvbSIsImlhdCI6MTczNjI1Nzk2OSwiZXhwIjoxNzM2ODYyNzY5LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.ij3WwXXbEUYQol20Ez6I5yovu4pQbEpEeEoHnI0nVSA', '1', '2025-01-07 13:52:49', '2025-01-07 13:52:49'),
(122, 46, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0NiwiZW1haWwiOiJqeW90aXZhbmthbGExMjNnZ0BnbWFpbC5jb20iLCJpYXQiOjE3MzYzMjIxMzgsImV4cCI6MTczNjkyNjkzOCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.K9UKZvA6VzTKt5XNGZmXXeYPm_2cuJIVNaL-a5jCwYw', '1', '2025-01-08 07:42:18', '2025-01-08 07:42:18'),
(123, 47, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0NywiZW1haWwiOiJqeW90aXZhbmthbGExMjM4OUBnbWFpbC5jb20iLCJpYXQiOjE3MzYzMjI3MzAsImV4cCI6MTczNjkyNzUzMCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.UMrKsrJNsyQw68x-rsf8JJQcTBS_5CaQmGcsavZ1PBI', '1', '2025-01-08 07:52:10', '2025-01-08 07:52:10'),
(124, 48, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0OCwiZW1haWwiOiJqeW90aXZhbmthbGExMjMxQGdtYWlsLmNvbSIsImlhdCI6MTczNjMyMzY4MiwiZXhwIjoxNzM2OTI4NDgyLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.MtipP4_NQJR0f00qe4hCUrA4-wLIH-kYYcvwQot3j9s', '1', '2025-01-08 08:08:02', '2025-01-08 08:08:02'),
(125, 49, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0OSwiZW1haWwiOiJqeW90aXZhbmtmZmZhbGExMjMxQGdtYWlsLmNvbSIsImlhdCI6MTczNjMyNDgyMiwiZXhwIjoxNzM2OTI5NjIyLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.5RqPA1Qcz2VAzxhtiALUNkUjA5FfcZX4lY_UV752yzU', '1', '2025-01-08 08:27:02', '2025-01-08 08:27:02'),
(126, 50, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1MCwiZW1haWwiOiJqeW90aXZhbmthbGExOTkyM0BnbWFpbC5jb20iLCJpYXQiOjE3MzYzMjg5MzMsImV4cCI6MTczNjkzMzczMywiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.yUhq6u0DudHThH18lA1pChxr-0K1Ci0aHvpaDn3O1tg', '1', '2025-01-08 09:35:33', '2025-01-08 09:35:33'),
(141, 53, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1MywiZW1haWwiOiJwNEBnbWFpbC5jb20iLCJpYXQiOjE3MzY0MjA5NjMsImV4cCI6MTczNzAyNTc2MywiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.f2LPMugpOnIsAOVuE2ABbblYN_3itjiJk1Omj_yEs5U', '1', '2025-01-09 11:09:23', '2025-01-09 11:09:23'),
(169, 61, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2MSwiZW1haWwiOiJqeW90aXZhbmthbGE5NzJAZ21haWwuY29tIiwiaWF0IjoxNzM2NTEwNDk5LCJleHAiOjE3MzcxMTUyOTksImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.UWyorhYZKe7kprSBazlY2xMtMh2F-xYnmcTjTDB6Gho', '1', '2025-01-10 12:01:39', '2025-01-10 12:01:39'),
(170, 62, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2MiwiZW1haWwiOiJqeW90aXZhbmthbGE5NzJAZ21haWwuY29tIiwiaWF0IjoxNzM2NTEwNzc0LCJleHAiOjE3MzcxMTU1NzQsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.muwvOaKTm0gOBXPOySBX8JFQfZ-i3BIRb0cUYpMG8ko', '1', '2025-01-10 12:06:14', '2025-01-10 12:06:14'),
(172, 64, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2NCwiZW1haWwiOiJqeW90aXZhbmthbGExMjUzQGdtYWlsLmNvbSIsImlhdCI6MTczNjUxMDk4NSwiZXhwIjoxNzM3MTE1Nzg1LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.8DhGzlKDBt_VU9kLFJhlTt07114X_hPELiVSEl6uUys', '1', '2025-01-10 12:09:45', '2025-01-10 12:09:45'),
(201, 2, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyLCJlbWFpbCI6ImVkd2FyZEBnbWFpbC5jb20iLCJpYXQiOjE3MzcwMTkwNDAsImV4cCI6MTczNzYyMzg0MCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.ISdMeaGiyhZ9526aEV1dG8MkqF7hWERH28zHM9Wlw8k', '1', '2025-01-16 09:17:20', '2025-01-16 09:17:20'),
(205, 68, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2OCwiZW1haWwiOiJyb3lAbWFpbC5jb20iLCJpYXQiOjE3MzcwMjY2NzYsImV4cCI6MTczNzYzMTQ3NiwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.jCEfMx5sLfBnrXiZzz3ybXZlrtNPnuemsuYxamddJEY', '1', '2025-01-16 11:24:36', '2025-01-16 11:24:36'),
(217, 56, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1NiwiZW1haWwiOiJwNkBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjAyMzksImV4cCI6MTczNzcyNTAzOSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.SBMl--Q05aCRMMeAadXyOVT1OFF6rGe3s4Dk8SBZils', '1', '2025-01-17 13:23:59', '2025-01-17 13:23:59'),
(219, 69, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2OSwiZW1haWwiOiJqeW90aXZhbmthbGExMnJyM0BnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjA2MzIsImV4cCI6MTczNzcyNTQzMiwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.vVFzSQqbusG1DQqU5VuWnr0pDPJDT1lQL7-Qoh62p2Q', '1', '2025-01-17 13:30:32', '2025-01-17 13:30:32'),
(221, 32, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozMiwiZW1haWwiOiJwMUBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjA5MzAsImV4cCI6MTczNzcyNTczMCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.v5hM4I5B_HzCDKk4ZbbLrLZje4-318y_Fqp3EsO-98A', '1', '2025-01-17 13:35:30', '2025-01-17 13:35:30'),
(222, 33, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozMywiZW1haWwiOiJwMkBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjA5NzgsImV4cCI6MTczNzcyNTc3OCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.NzX9fVdFlldWb3ezFq3Hh9DcjdhZXYxOZZgPyXJf2l8', '1', '2025-01-17 13:36:18', '2025-01-17 13:36:18'),
(223, 52, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1MiwiZW1haWwiOiJwM0BnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjEwODAsImV4cCI6MTczNzcyNTg4MCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.fUBM5gJiyzUAbmviz21TMqU9KUkkJnBeAyCuUPyhKRY', '1', '2025-01-17 13:38:00', '2025-01-17 13:38:00'),
(224, 54, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1NCwiZW1haWwiOiJwNEBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjExNTAsImV4cCI6MTczNzcyNTk1MCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.RZTdAl1O8Ftg1h9j-3zUbhrUmSO58HTTkC6mHigtjvg', '1', '2025-01-17 13:39:10', '2025-01-17 13:39:10'),
(225, 55, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1NSwiZW1haWwiOiJwNUBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjExOTQsImV4cCI6MTczNzcyNTk5NCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.Lb4yCctvsef-BJ-ML9HdxyEB77iKexzc2kTn6w20kYk', '1', '2025-01-17 13:39:54', '2025-01-17 13:39:54'),
(227, 60, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2MCwiZW1haWwiOiJwOEBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjE0NzksImV4cCI6MTczNzcyNjI3OSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.Ko8a75n_1Oj6W9g4Q6epJfD_9BFrOxJfxXFK4zRExkM', '1', '2025-01-17 13:44:39', '2025-01-17 13:44:39'),
(228, 66, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2NiwiZW1haWwiOiJwOUBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjE2MTAsImV4cCI6MTczNzcyNjQxMCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.wc2ZFLemAsC_cS1K8DqcdmsotkzJri-4c91dg51yl8g', '1', '2025-01-17 13:46:50', '2025-01-17 13:46:50'),
(231, 70, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3MCwiZW1haWwiOiJwMTBAZ21haWwuY29tIiwiaWF0IjoxNzM3MTI1MTA2LCJleHAiOjE3Mzc3Mjk5MDYsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.ZYFaDNURPQYS1ayA19W-DHMke4cX9GC3U5fUDLB9law', '1', '2025-01-17 14:45:06', '2025-01-17 14:45:06'),
(232, 71, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3MSwiZW1haWwiOiJwMTFAZ21haWwuY29tIiwiaWF0IjoxNzM3MTI1MTY1LCJleHAiOjE3Mzc3Mjk5NjUsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.ytVBj3E63zma91fYCB8dp0yJYqZ6CIrlLOuhDEQV0vU', '1', '2025-01-17 14:46:05', '2025-01-17 14:46:05'),
(233, 19, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxOSwiZW1haWwiOiJzMUBnbWFpbC5jb20iLCJpYXQiOjE3MzcxMjUyMTEsImV4cCI6MTczNzczMDAxMSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.yoUsqA5I7KCBAoqJ-l1dQ0pdJ1XRlmlBzFI8FzIUmVU', '1', '2025-01-17 14:46:51', '2025-01-17 14:46:51'),
(244, 73, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3MywiZW1haWwiOiJwMTJAZ21haWwuY29tIiwiaWF0IjoxNzM3MTk5NTQyLCJleHAiOjE3Mzc4MDQzNDIsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.CYrP8qORvoWydFddcB0ygEXBNdm3D6kGG1JsLFNuY1U', '1', '2025-01-18 11:25:42', '2025-01-18 11:25:42'),
(248, 74, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3NCwiZW1haWwiOiJwMTNAZ21haWwuY29tIiwiaWF0IjoxNzM3MjA0MDIzLCJleHAiOjE3Mzc4MDg4MjMsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.w231ufASUtOgiJE4Vlwl3rYhLr0Qx8o9krGe_S3-f3E', '1', '2025-01-18 12:40:23', '2025-01-18 12:40:23'),
(260, 75, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3NSwiZW1haWwiOiJwMTRAZ21haWwuY29tIiwiaWF0IjoxNzM3MzU2NTY2LCJleHAiOjE3Mzc5NjEzNjYsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.Og7NPW7srGhzEGGbrJ1BAjIYnwNL13THo1fiBLB_awA', '1', '2025-01-20 07:02:46', '2025-01-20 07:02:46'),
(262, 76, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3NiwiZW1haWwiOiJwMTVAZ21haWwuY29tIiwiaWF0IjoxNzM3MzU2OTY0LCJleHAiOjE3Mzc5NjE3NjQsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.Bs24wkUEGHFBjkP_dmXHhW4L2inpRCFERA0jMetjduw', '1', '2025-01-20 07:09:24', '2025-01-20 07:09:24'),
(269, 77, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3NywiZW1haWwiOiJiYnNAZ21haWwuY29tIiwiaWF0IjoxNzM3NDQ0NjMxLCJleHAiOjE3MzgwNDk0MzEsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.lRUc29IVDsDrOS00osX3styf97t7GIT8k4o54vbuCQ4', '1', '2025-01-21 07:30:31', '2025-01-21 07:30:31'),
(271, 80, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4MCwiZW1haWwiOiJqeW90aXZhbmthbGFhcEBnbWFpbC5jb20iLCJpYXQiOjE3Mzc0NDkzNDUsImV4cCI6MTczODA1NDE0NSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.sRCvQkKFbwLyIBqqMStfrQSY53RVckjMSnv1BiNytK4', '1', '2025-01-21 08:49:05', '2025-01-21 08:49:05'),
(276, 81, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4MSwiZW1haWwiOiJTdWJyYXRhQHlvcG1haWwuY29tIiwiaWF0IjoxNzM3NDY1OTkyLCJleHAiOjE3MzgwNzA3OTIsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.VTXByWqdc6wp01CkpDiOplxXsF5jrOyG0_VBnpshfgA', '1', '2025-01-21 13:26:32', '2025-01-21 13:26:32'),
(289, 78, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3OCwiZW1haWwiOiJwMTZAZ21haWwuY29tIiwiaWF0IjoxNzM3NTI0NTM3LCJleHAiOjE3MzgxMjkzMzcsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.N86zXZ2OQWLUGTPBnXd0coh6V2E7fmaWjPQ-TytvjCU', '1', '2025-01-22 05:42:17', '2025-01-22 05:42:17'),
(300, 86, 'fcm#78913456', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4NiwiZW1haWwiOiJQMTdAbWFpbC5jb20iLCJpYXQiOjE3Mzc1NDIyNDYsImV4cCI6MTczODE0NzA0NiwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.tR0AV_twlSQdDWQOVBNBSPQ_7_tjdG2GD-58G3JR33Q', '1', '2025-01-22 10:37:26', '2025-01-22 10:37:26'),
(309, 79, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3OSwiZW1haWwiOiJwMTdAZ21haWwuY29tIiwiaWF0IjoxNzM3NTU3NjAwLCJleHAiOjE3MzgxNjI0MDAsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.AE_O_Md8WU9g7qi5YY25SH2x2pK6KKsuh3XnlwGf8SE', '1', '2025-01-22 14:53:20', '2025-01-22 14:53:20'),
(316, 57, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1NywiZW1haWwiOiJ1MkBnbWFpbC5jb20iLCJpYXQiOjE3Mzc2Mjg2MDUsImV4cCI6MTczODIzMzQwNSwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.hnUm3PwKSJxoc9oyl209UKZhzQw8Hq8nlJn_S_qKJhI', '1', '2025-01-23 10:36:45', '2025-01-23 10:36:45'),
(323, 88, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4OCwiZW1haWwiOiJzQGdtYWlsLmNvbSIsImlhdCI6MTczNzk3MTk5MCwiZXhwIjoxNzM4NTc2NzkwLCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.ONXxQI_qP6xowsdXVa_3_3tc_67ELYCBRCp2ULtDqBY', '1', '2025-01-27 09:59:50', '2025-01-27 09:59:50'),
(337, 87, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4NywiZW1haWwiOiJwMTlAZ21haWwuY29tIiwiaWF0IjoxNzM4MTUzMDIwLCJleHAiOjE3Mzg3NTc4MjAsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.poyBFcZ0a661R_GYf6PZxSq8O1KE1OfjUBMJY6DXm3w', '1', '2025-01-29 12:17:00', '2025-01-29 12:17:00'),
(338, 65, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2NSwiZW1haWwiOiJqeW90aXZhbmthbGpqYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MzgxNTMxNzgsImV4cCI6MTczODc1Nzk3OCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.k1nTPCXgVnP-xkJWPg29WXXY2Q9DJ91AwOm2qpvPDNU', '1', '2025-01-29 12:19:38', '2025-01-29 12:19:38'),
(340, 85, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4NSwiZW1haWwiOiJwcm92aWRlcmZvcnRlc3QxQG1haWwuY29tIiwiaWF0IjoxNzM4MTU1OTA5LCJleHAiOjE3Mzg3NjA3MDksImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.SaODzzzlukD84iUODZerUkzJuBjBnODVFxnz5dAiW20', '1', '2025-01-29 13:05:09', '2025-01-29 13:05:09'),
(350, 1, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJlbWFpbCI6Imp5b3RpdmFua2FsYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MzgyNDU3NDAsImV4cCI6MTczODg1MDU0MCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.u1VmoICsfR0hG2q_qd72TXynLT99Po7pBoWrCNheULQ', '1', '2025-01-30 14:02:20', '2025-01-30 14:02:20'),
(351, 90, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo5MCwiZW1haWwiOiJzaXR0ZXIxQHlvcG1haWwuY29tIiwiaWF0IjoxNzM4NjUyOTUzLCJleHAiOjE3MzkyNTc3NTMsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.spOLqJ-LC6cEdMmcQR79e0FvGhQeCucyfwTGHVZjjt8', '1', '2025-02-04 07:09:13', '2025-02-04 07:09:13'),
(353, 82, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4MiwiZW1haWwiOiJwcm92aWRlcjJAZ21haWwuY29tIiwiaWF0IjoxNzM4NjYzNDIzLCJleHAiOjE3MzkyNjgyMjMsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.nWPTSgutow9GIPBp-hYBv-KEI4p3lWojj4RY-cMmixA', '1', '2025-02-04 10:03:43', '2025-02-04 10:03:43'),
(355, 89, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4OSwiZW1haWwiOiJqeW90aXZAZ21haWwuY29tIiwiaWF0IjoxNzM4NjcyODEzLCJleHAiOjE3MzkyNzc2MTMsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.-M3GypgQLbVJLCw3xtQexQ807qEvqqUsXCIbCUXLFj0', '1', '2025-02-04 12:40:13', '2025-02-04 12:40:13'),
(359, 83, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4MywiZW1haWwiOiJqeW90aXZhbmthbGFnZ2YxMjNAZ21haWwuY29tIiwiaWF0IjoxNzM4NzYwMTg5LCJleHAiOjE3MzkzNjQ5ODksImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.d7lJjxYjM5LiA6UqkHs_J3a8_FuhaVvC-xAp0D8m8NM', '1', '2025-02-05 12:56:29', '2025-02-05 12:56:29'),
(386, 95, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo5NSwiZW1haWwiOiJqLnZhbmthbGFAZ21haWwuY29tIiwiaWF0IjoxNzM4OTEyNjM2LCJleHAiOjE3Mzk1MTc0MzYsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.oMvvIyAyRA_B44AJ6IqyU-rEE0EmpubVagAmVBdEsrs', '1', '2025-02-07 07:17:16', '2025-02-07 07:17:16'),
(393, 45, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0NSwiZW1haWwiOiJzdWJyYXRhLmphbmFAYXByb2RlbmNlLmNvbSIsImlhdCI6MTczODkzMTEzNCwiZXhwIjoxNzM5NTM1OTM0LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.ViBMfjuAmgdak0LPidaqURGgL8SGmmCR-Whe1maqHIM', '1', '2025-02-07 12:25:34', '2025-02-07 12:25:34'),
(402, 96, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo5NiwiZW1haWwiOiJ0ZXN0MUB5b3BtYWlsLmNvbSIsImlhdCI6MTczOTAyMjY0NCwiZXhwIjoxNzM5NjI3NDQ0LCJhdWQiOiJhdWQ6QXByb2RlbmNlIiwiaXNzIjoiQXByb2RlbmNlLXVuZGVmaW5lZC1QUk9EQGFjZWxhbmNlIn0.fCs0jR144UuJc4aHiUVd4isyJ_4erjp8Kwjehbr3Q_Y', '1', '2025-02-08 13:50:44', '2025-02-08 13:50:44'),
(416, 58, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1OCwiZW1haWwiOiJqeW90aXZhbmthbGFAZ21haWwuY29tIiwiaWF0IjoxNzM5Mjc3MDIxLCJleHAiOjE3Mzk4ODE4MjEsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.Mq3GY4H2wqy2r6QRBhpYwWNAG-4msquISoWW7NvZEYg', '1', '2025-02-11 12:30:21', '2025-02-11 12:30:21'),
(419, 99, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo5OSwiZW1haWwiOiJrbGtsa0BnbWFpbC5jb20iLCJpYXQiOjE3MzkzNDc0MjIsImV4cCI6MTczOTk1MjIyMiwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.KRIC1ef_aSPwKJrHAgmIkpH6enGjuk81-leOVakag2g', '1', '2025-02-12 08:03:42', '2025-02-12 08:03:42'),
(429, 101, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMDEsImVtYWlsIjoidGVzdDVAZ21haWwuY29tIiwiaWF0IjoxNzM5NDQ1NTU4LCJleHAiOjE3NDAwNTAzNTgsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.qmkmxyuFZBm2td9cqf5qut75GV6f2Ve3jGp3VdWumJc', '1', '2025-02-13 11:19:18', '2025-02-13 11:19:18'),
(447, 108, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMDgsImVtYWlsIjoic3VicmF0YS5qYW5hQGFwcm9kZW5jZS5jb20iLCJpYXQiOjE3Mzk1MjkwOTYsImV4cCI6MTc0MDEzMzg5NiwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.CNaenu58gmjo2bxO3OD88g8tK21BhVJLCp86R1hL_HM', '1', '2025-02-14 10:31:36', '2025-02-14 10:31:36'),
(454, 63, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2MywiZW1haWwiOiJqeW90aXZhbmthbGE5NzJAZ21haWwuY29tIiwiaWF0IjoxNzM5NjA1ODAxLCJleHAiOjE3NDAyMTA2MDEsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.qVDqNxrwA2vDsjcmDGo7VQwh5B9jCK1a3dgaYY46nBw', '1', '2025-02-15 07:50:01', '2025-02-15 07:50:01'),
(478, 51, '12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1MSwiZW1haWwiOiJrbEBnbWFpbC5jb20iLCJpYXQiOjE3Mzk4ODUwMDAsImV4cCI6MTc0MDQ4OTgwMCwiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.7vCE5qzQ3lys1ztf7HZwlhoFPy-Y26E2xtSz5wGZiKI', '1', '2025-02-18 13:23:20', '2025-02-18 13:23:20'),
(485, 109, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMDksImVtYWlsIjoicnRAZ21haWwuY29tIiwiaWF0IjoxNzQwMDMyMTc1LCJleHAiOjE3NDA2MzY5NzUsImF1ZCI6ImF1ZDpBcHJvZGVuY2UiLCJpc3MiOiJBcHJvZGVuY2UtdW5kZWZpbmVkLVBST0RAYWNlbGFuY2UifQ.C_6LJ2smmykN0YjFQS702YXMFz5nt_0aI2NmyG_nxEA', '1', '2025-02-20 06:16:15', '2025-02-20 06:16:15'),
(486, 27, 'f12345678', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNywiZW1haWwiOiJ0ZXN0NkBnbWFpbC5jb20iLCJpYXQiOjE3NDAwMzMxMzMsImV4cCI6MTc0MDYzNzkzMywiYXVkIjoiYXVkOkFwcm9kZW5jZSIsImlzcyI6IkFwcm9kZW5jZS11bmRlZmluZWQtUFJPREBhY2VsYW5jZSJ9.3Xun7RLVkGMkCa9WTZeuTC0w_MB__V5EGI9R4kylY2Q', '1', '2025-02-20 06:32:13', '2025-02-20 06:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_pets`
--

CREATE TABLE `user_pets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pet_id` int NOT NULL,
  `pet_name` varchar(255) DEFAULT NULL,
  `pet_profile_image` varchar(255) DEFAULT NULL,
  `breed` varchar(255) NOT NULL,
  `gender` enum('male','female','trans-gender') NOT NULL DEFAULT 'male',
  `pet_size_id` int DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `adoption_date` varchar(255) DEFAULT NULL,
  `description` longtext,
  `is_active` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_pets`
--

INSERT INTO `user_pets` (`id`, `user_id`, `pet_id`, `pet_name`, `pet_profile_image`, `breed`, `gender`, `pet_size_id`, `dob`, `adoption_date`, `description`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, 'Sinariko', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/pet-profile-image-1734690348348.jpg', 'abcdef', 'male', 2, '2024-06-04', '2024-06-10', 'My another favourite one', '1', '1', '2025-01-15 12:38:09', '2025-01-16 13:24:48'),
(2, 1, 2, 'Sinariko', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/pet-profile-image-1734690348348.jpg', 'abcdef', 'male', 2, '2024-06-04', '2024-06-10', 'My another favourite one', '1', '1', '2025-01-15 14:36:23', '2025-01-16 13:22:05'),
(3, 1, 3, 'kjj', '', 'hbh', 'male', 1, '2025-01-02', '2025-01-16', 'njjj', '1', '1', '2025-01-15 14:43:56', '2025-01-16 13:25:08'),
(4, 1, 2, 'Pets aba', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_profile/compressed_1736952626317_pet-profile-image-1736952626077.webp', 'kuttanhd', 'male', 4, '2025-01-07', '2025-01-14', 'hhiiii', '1', '0', '2025-01-15 14:51:25', '2025-01-16 13:26:14'),
(5, 1, 2, 'hiii', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_profile/compressed_1736952626317_pet-profile-image-1736952626077.webp', 'kuttanhd', 'male', 2, '2025-01-07', '2025-01-14', 'hhiiii', '1', '0', '2025-01-15 14:51:31', '2025-01-15 14:51:31'),
(6, 1, 2, 'daduuuu', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_profile/compressed_1736952728437_pet-profile-image-1736952728437.webp', 'kuttanhd', 'male', 3, '2025-01-07', '2025-01-14', 'hhiiii', '1', '0', '2025-01-15 14:52:21', '2025-01-16 13:28:31'),
(7, 1, 4, 'Tatupttti', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_profile/compressed_1737021754967_pet-profile-image-1737021754967.webp', 'Hinder', 'male', 4, '2025-01-01', '2025-01-14', 'Hi halooo bhaloo', '1', '0', '2025-01-16 06:25:13', '2025-01-16 14:07:59'),
(8, 1, 2, 'koti', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_profile/compressed_1737039062492_pet-profile-image-1737039062371.webp', 'koroto', 'female', 3, '2024-12-30', '2025-01-02', 'hekkko', '1', '0', '2025-01-16 14:51:47', '2025-01-16 14:51:47'),
(9, 69, 2, 'Tatu', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_profile/compressed_1737119140676_pet-profile-image-1737119140596.webp', 'kkjm', 'female', 2, '2025-01-09', '2025-01-16', 'M', '1', '0', '2025-01-17 13:06:13', '2025-01-17 13:06:13'),
(10, 89, 1, 'Tiger', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738131055038_pet-profile-image-1738131055037.webp', 'Hinder', 'male', 3, '2025-01-02', '2025-01-17', 'HIHIHIH', '1', '0', '2025-01-29 06:12:05', '2025-01-29 06:12:05'),
(11, 16, 2, 'Puspa', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738131359727_pet-profile-image-1738131359724.webp', 'Binder', 'male', 1, '2025-01-10', '2024-12-14', 'hiihih', '1', '0', '2025-01-29 06:16:49', '2025-01-29 06:16:49'),
(12, 89, 1, 'lion', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738318067513_pet-profile-image-1738318066357.webp', 'Hinder', 'female', 2, '2025-01-16', '2025-01-28', 'dddddddddddd', '1', '0', '2025-01-31 10:08:48', '2025-01-31 10:08:48'),
(13, 16, 1, 'Test', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738731860659_pet-profile-image-1738731860659.webp', 'test', 'male', 2, '2025-03-02', '2025-12-02', 'test', '1', '1', '2025-02-05 05:04:21', '2025-02-05 17:17:39'),
(14, 16, 3, 'Bunny', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738821242046_pet-profile-image-1738821242043.webp', 'Any', 'female', 2, '2024-01-02', 'Invalid date', 'Adopted my me', '1', '0', '2025-02-05 05:15:20', '2025-02-06 05:54:02'),
(15, 63, 3, 'daduuuu', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738764568958_pet-profile-image-1738764568956.webp', 'kkjm', 'male', 3, '2025-01-12', '2024-12-29', 'jj', '1', '0', '2025-02-05 14:02:24', '2025-02-11 07:26:25'),
(16, 16, 3, 'Test 2', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738821428474_pet-profile-image-1738821428472.webp', 'test', 'female', 2, '2025-01-02', '2025-03-02', 'test', '1', '1', '2025-02-06 05:57:09', '2025-02-06 05:57:19'),
(17, 51, 2, 'dsog', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738831209457_pet-profile-image-1738831209289.webp', 'jgyu n', 'male', 2, '2025-01-08', '2025-01-11', 'jkik', '1', '1', '2025-02-06 08:40:15', '2025-02-06 10:26:00'),
(18, 51, 1, 'mick7', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738836796099_pet-profile-image-1738836796025.webp', 'doverman', 'male', 3, '2025-02-01', '2025-02-02', 'jji ,n', '1', '0', '2025-02-06 10:24:28', '2025-02-06 10:25:41'),
(19, 63, 3, 'kukhjk', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738844423478_pet-profile-image-1738844423477.webp', 'kjhj', 'female', 4, '2025-01-27', '2025-01-06', 'kkj', '1', '0', '2025-02-06 12:20:30', '2025-02-11 07:26:23'),
(20, 63, 3, 'lk', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738849347129_pet-profile-image-1738849346890.webp', 'nj', 'male', 2, '2025-01-26', '2025-01-26', 'n', '1', '0', '2025-02-06 13:42:30', '2025-02-11 07:26:20'),
(21, 63, 3, 'knj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738850149173_pet-profile-image-1738850148973.webp', 'jh', 'trans-gender', 2, '2025-01-28', '2025-02-03', 'n', '1', '0', '2025-02-06 13:56:27', '2025-02-11 07:26:17'),
(22, 63, 2, 'khjg', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738850853802_pet-profile-image-1738850853802.webp', 'kuyuhg', 'female', 2, '2025-01-26', '2025-01-28', 'jbjk', '1', '0', '2025-02-06 14:08:31', '2025-02-11 07:26:15'),
(23, 58, 3, 'uui', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738904221647_pet-profile-image-1738904221645.webp', 'jggjhj', 'female', 2, '2025-01-27', '2025-01-26', 'jhj', '1', '0', '2025-02-07 04:57:29', '2025-02-07 04:57:29'),
(24, 63, 3, 'ASD', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738918398525_pet-profile-image-1738918398524.webp', 'SDS', 'female', 2, '2025-01-27', '2025-01-25', 'XXX', '1', '0', '2025-02-07 08:53:23', '2025-02-11 07:26:12'),
(25, 63, 3, 'sakd', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738921995986_pet-profile-image-1738921995279.webp', 'sad', 'male', 3, '2025-02-03', '2025-01-26', 'sad', '1', '0', '2025-02-07 09:53:49', '2025-02-08 12:34:47'),
(26, 63, 3, 'kjh', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738923990968_pet-profile-image-1738923990966.webp', 'kj', 'female', 2, '2025-02-04', '2025-01-25', 'j', '1', '0', '2025-02-07 10:26:53', '2025-02-08 12:34:39'),
(27, 63, 1, 'j', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738924028160_pet-profile-image-1738924027880.webp', 'j', 'female', 2, '2025-01-27', '2025-01-27', 'k', '1', '0', '2025-02-07 10:27:30', '2025-02-07 12:27:10'),
(28, 63, 2, 'jbkj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738924084402_pet-profile-image-1738924084162.webp', 'mnhbh', 'male', 2, '2025-02-03', '2025-01-26', 'h', '1', '0', '2025-02-07 10:28:26', '2025-02-07 12:27:06'),
(29, 63, 3, 'kbj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738924117940_pet-profile-image-1738924117800.webp', 'jh', 'female', 2, '2025-02-04', '2025-01-26', 'kj', '1', '0', '2025-02-07 10:29:03', '2025-02-07 12:26:59'),
(30, 51, 2, 'catghjmhn nhjnhjkm jj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1738925780979_pet-profile-image-1738925780977.webp', 'range goraad', 'male', 2, '2025-01-28', '2025-01-28', 'kjerkdnk vjdn sj fdksfskdnmf ksn fkncjnf dknjgkdnk kdnfkjgndfk kfdnkjgndfv dfgkdfn dkjf kndkncvmn sdk klmvsdklfik ds d fvksn kjfdknjs  jknknkns sng skllkdfml  kiuh knign knfgerm fnf dkn nkksdlsldmks sddsnk sdkskm  k fkjjng gm mdkfmgkmlkm gklkd d fdf ', '1', '0', '2025-02-07 11:00:08', '2025-02-07 11:01:05'),
(31, 63, 2, 'jhj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739018207569_pet-profile-image-1739018207568.webp', 'kjjkjkj', 'female', 1, '2025-01-27', '2025-01-27', 'mnjjkkm', '1', '0', '2025-02-08 12:37:20', '2025-02-11 07:26:09'),
(32, 63, 2, 'iiii', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739018253446_pet-profile-image-1739018253445.webp', 'bnbbb', 'female', 2, '2025-02-01', '2025-01-26', 'kkk', '1', '0', '2025-02-08 12:37:56', '2025-02-11 07:26:07'),
(33, 63, 2, 'kljkjk', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739018291042_pet-profile-image-1739018290883.webp', 'uiy', 'female', 4, '2025-02-01', '2025-01-26', 'kjkkjkjk', '1', '0', '2025-02-08 12:38:44', '2025-02-11 07:26:04'),
(34, 63, 3, 'lgfj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739018367808_pet-profile-image-1739018367807.webp', 'dds', 'female', 4, '2025-01-28', '2025-02-04', 'n', '1', '0', '2025-02-08 12:41:36', '2025-02-11 07:23:03'),
(35, 63, 3, 'ljihgvghjn', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739018506457_pet-profile-image-1739018506456.webp', 'ij', 'male', 3, '2025-02-03', '2025-01-26', 'hj', '1', '0', '2025-02-08 12:42:13', '2025-02-11 07:26:01'),
(36, 51, 2, 'gtujhgjjkjkuhiujhihjkhijkhiujhiujhjhjhjkhjkhijknguygjihukjhjkjghjghjgjhghu', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739171612760_pet-profile-image-1739171612687.webp', 'jhgbhj bkj jkhjkm kjhi lljlkjkj kjh kjkhu', 'male', 2, '2025-01-28', '2025-01-25', 'fguy jk gukh jjvhgjfjhk jjbvhjgfhjguhjhj huj jjbh kijhijijl hjg yjgjk jj kf ihj uuhggfyfu u g ugtiuioj bjbjghjgjkhlk kjh hkj knjkjhjh kkhj hkjhjkh  hkjnjkhjkhuyiknkn kjhn jk j kknjkhjhijh jkkjh huj  hkj jhnbuj njbhunk jbuyhn jkbuhknm, jbhujnn  njn mn', '1', '0', '2025-02-10 07:17:03', '2025-02-10 12:23:26'),
(37, 63, 1, 'mmmm kkk skms', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739176111551_pet-profile-image-1739176111550.webp', 'nm kkk', 'female', 3, '2025-01-27', '2025-01-25', 'kkk', '1', '0', '2025-02-10 08:28:37', '2025-02-11 07:22:59'),
(38, 99, 2, 'jjj', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739350291800_pet-profile-image-1739350291799.webp', 'ih', 'male', 1, '2024-11-30', '2025-01-25', 'kjm', '1', '0', '2025-02-12 09:07:49', '2025-02-12 09:07:49'),
(39, 107, 1, 'Pet 1', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739540116816_pet-profile-image-1739540116814.webp', 'Abcd', 'male', 2, '2024-07-08', '2025-12-02', 'test dog', '1', '0', '2025-02-14 13:35:17', '2025-02-14 13:35:17'),
(40, 107, 1, 'Pet 2', 'https://www.pet-d-agogy-api.acelance.com//uploads/pet_profile/compressed_1739541329045_pet-profile-image-1739541329009.webp', 'abcd', 'male', 2, '2025-11-02', 'Invalid date', 'test', '1', '0', '2025-02-14 13:55:29', '2025-02-14 13:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_pets_galleries`
--

CREATE TABLE `user_pets_galleries` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_pet_id` int NOT NULL,
  `type` enum('image','video') NOT NULL DEFAULT 'image',
  `file` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_pets_galleries`
--

INSERT INTO `user_pets_galleries` (`id`, `user_id`, `user_pet_id`, `type`, `file`, `createdAt`, `updatedAt`) VALUES
(32, 1, 4, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737033952546_pet-gallery-image-1737033952428.webp', '2025-01-16 13:26:14', '2025-01-16 13:26:14'),
(36, 1, 6, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737034091782_pet-gallery-image-1737034091421.webp', '2025-01-16 13:28:31', '2025-01-16 13:28:31'),
(37, 1, 6, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737034091781_pet-gallery-image-1737034091237.webp', '2025-01-16 13:28:31', '2025-01-16 13:28:31'),
(38, 1, 6, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737034091782_pet-gallery-image-1737034091425.webp', '2025-01-16 13:28:31', '2025-01-16 13:28:31'),
(39, 1, 7, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737008709534_pet-gallery-image-1737008709532.webp', '2025-01-16 14:07:59', '2025-01-16 14:07:59'),
(40, 1, 7, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737020640418_pet-gallery-image-1737020640417.webp', '2025-01-16 14:07:59', '2025-01-16 14:07:59'),
(41, 1, 7, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737023048841_pet-gallery-image-1737023048825.webp', '2025-01-16 14:07:59', '2025-01-16 14:07:59'),
(42, 1, 7, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737023080430_pet-gallery-image-1737023080146.webp', '2025-01-16 14:07:59', '2025-01-16 14:07:59'),
(43, 1, 7, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737023208809_pet-gallery-image-1737023208631.webp', '2025-01-16 14:07:59', '2025-01-16 14:07:59'),
(44, 1, 8, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737039104177_pet-gallery-image-1737039103498.webp', '2025-01-16 14:51:47', '2025-01-16 14:51:47'),
(45, 1, 8, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737039104176_pet-gallery-image-1737039103087.webp', '2025-01-16 14:51:47', '2025-01-16 14:51:47'),
(46, 1, 8, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737039104177_pet-gallery-image-1737039103208.webp', '2025-01-16 14:51:47', '2025-01-16 14:51:47'),
(47, 69, 9, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737119168905_pet-gallery-image-1737119168877.webp', '2025-01-17 13:06:13', '2025-01-17 13:06:13'),
(48, 69, 9, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1737119168902_pet-gallery-image-1737119168628.webp', '2025-01-17 13:06:13', '2025-01-17 13:06:13'),
(49, 16, 10, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738131123913_pet-gallery-image-1738131123681.webp', '2025-01-29 06:12:05', '2025-01-29 06:12:05'),
(50, 16, 11, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738131406682_pet-gallery-image-1738131406681.webp', '2025-01-29 06:16:49', '2025-01-29 06:16:49'),
(51, 89, 12, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738318114710_pet-gallery-image-1738318114708.webp', '2025-01-31 10:08:48', '2025-01-31 10:08:48'),
(91, 16, 14, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738732519648_pet-gallery-image-1738732519645.webp', '2025-02-06 05:54:02', '2025-02-06 05:54:02'),
(92, 16, 14, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738732519647_pet-gallery-image-1738732519505.webp', '2025-02-06 05:54:02', '2025-02-06 05:54:02'),
(93, 16, 14, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738821220769_pet-gallery-image-1738821220765.webp', '2025-02-06 05:54:02', '2025-02-06 05:54:02'),
(108, 51, 18, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738836808200_pet-gallery-image-1738836808198.webp', '2025-02-06 10:25:41', '2025-02-06 10:25:41'),
(109, 51, 18, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738836814845_pet-gallery-image-1738836814845.webp', '2025-02-06 10:25:41', '2025-02-06 10:25:41'),
(110, 51, 18, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738836819238_pet-gallery-image-1738836819237.webp', '2025-02-06 10:25:41', '2025-02-06 10:25:41'),
(111, 51, 18, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738836824916_pet-gallery-image-1738836824756.webp', '2025-02-06 10:25:41', '2025-02-06 10:25:41'),
(112, 51, 18, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738836835520_pet-gallery-image-1738836835517.webp', '2025-02-06 10:25:41', '2025-02-06 10:25:41'),
(126, 58, 23, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738904247881_pet-gallery-image-1738904247879.webp', '2025-02-07 04:57:29', '2025-02-07 04:57:29'),
(136, 51, 30, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738925911252_pet-gallery-image-1738925910552.webp', '2025-02-07 11:01:05', '2025-02-07 11:01:05'),
(137, 51, 30, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738925932898_pet-gallery-image-1738925932895.webp', '2025-02-07 11:01:05', '2025-02-07 11:01:05'),
(138, 51, 30, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1738925962047_pet-gallery-image-1738925962043.webp', '2025-02-07 11:01:05', '2025-02-07 11:01:05'),
(158, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739171818345_pet-gallery-image-1739171818310.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(159, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190062482_pet-gallery-image-1739190062478.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(160, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190066390_pet-gallery-image-1739190066389.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(161, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190072634_pet-gallery-image-1739190072627.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(162, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190076741_pet-gallery-image-1739190076740.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(163, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190081842_pet-gallery-image-1739190081841.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(164, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190087404_pet-gallery-image-1739190087400.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(165, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190091416_pet-gallery-image-1739190091412.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(166, 51, 36, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739190103632_pet-gallery-image-1739190103631.webp', '2025-02-10 12:23:26', '2025-02-10 12:23:26'),
(167, 99, 38, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739349080744_pet-gallery-image-1739349080707.webp', '2025-02-12 09:07:49', '2025-02-12 09:07:49'),
(168, 99, 38, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739349080712_pet-gallery-image-1739349080706.webp', '2025-02-12 09:07:49', '2025-02-12 09:07:49'),
(169, 99, 38, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739349263821_pet-gallery-image-1739349263580.webp', '2025-02-12 09:07:49', '2025-02-12 09:07:49'),
(170, 99, 38, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739350141064_pet-gallery-image-1739350141064.webp', '2025-02-12 09:07:49', '2025-02-12 09:07:49'),
(171, 107, 39, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739540117273_pet-gallery-image-1739540117231.webp', '2025-02-14 13:35:17', '2025-02-14 13:35:17'),
(172, 107, 39, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739540117273_pet-gallery-image-1739540117232.webp', '2025-02-14 13:35:17', '2025-02-14 13:35:17'),
(173, 107, 40, 'image', 'https://www.pet-d-agogy-api.acelance.com/uploads/pet_gallery_images/compressed_1739541329446_pet-gallery-image-1739541329445.webp', '2025-02-14 13:55:29', '2025-02-14 13:55:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_points`
--
ALTER TABLE `about_us_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appoinment_pet_details`
--
ALTER TABLE `appoinment_pet_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_days`
--
ALTER TABLE `appointment_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_slot_visits`
--
ALTER TABLE `appointment_slot_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_all`
--
ALTER TABLE `cities_all`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_about_us`
--
ALTER TABLE `homepage_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_banners`
--
ALTER TABLE `homepage_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_scanners`
--
ALTER TABLE `homepage_scanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_pets`
--
ALTER TABLE `my_pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_services`
--
ALTER TABLE `pet_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_sizes`
--
ALTER TABLE `pet_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_searches`
--
ALTER TABLE `recent_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_slots`
--
ALTER TABLE `selected_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_slot_days`
--
ALTER TABLE `selected_slot_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_locations`
--
ALTER TABLE `service_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_account_details`
--
ALTER TABLE `sitter_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_details`
--
ALTER TABLE `sitter_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_pet_categories`
--
ALTER TABLE `sitter_pet_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_pet_services`
--
ALTER TABLE `sitter_pet_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_pet_services_sizes`
--
ALTER TABLE `sitter_pet_services_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_services`
--
ALTER TABLE `sitter_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitter_videos_images`
--
ALTER TABLE `sitter_videos_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot_status`
--
ALTER TABLE `slot_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_fcms`
--
ALTER TABLE `user_fcms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pets`
--
ALTER TABLE `user_pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pets_galleries`
--
ALTER TABLE `user_pets_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_points`
--
ALTER TABLE `about_us_points`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoinment_pet_details`
--
ALTER TABLE `appoinment_pet_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment_days`
--
ALTER TABLE `appointment_days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment_slot_visits`
--
ALTER TABLE `appointment_slot_visits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cities_all`
--
ALTER TABLE `cities_all`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `homepage_about_us`
--
ALTER TABLE `homepage_about_us`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage_banners`
--
ALTER TABLE `homepage_banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `homepage_scanners`
--
ALTER TABLE `homepage_scanners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_pets`
--
ALTER TABLE `my_pets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pet_services`
--
ALTER TABLE `pet_services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pet_sizes`
--
ALTER TABLE `pet_sizes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recent_searches`
--
ALTER TABLE `recent_searches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `selected_slots`
--
ALTER TABLE `selected_slots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `selected_slot_days`
--
ALTER TABLE `selected_slot_days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `service_locations`
--
ALTER TABLE `service_locations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitter_account_details`
--
ALTER TABLE `sitter_account_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sitter_details`
--
ALTER TABLE `sitter_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sitter_pet_categories`
--
ALTER TABLE `sitter_pet_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `sitter_pet_services`
--
ALTER TABLE `sitter_pet_services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `sitter_pet_services_sizes`
--
ALTER TABLE `sitter_pet_services_sizes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `sitter_services`
--
ALTER TABLE `sitter_services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `sitter_videos_images`
--
ALTER TABLE `sitter_videos_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `slot_status`
--
ALTER TABLE `slot_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_fcms`
--
ALTER TABLE `user_fcms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `user_pets`
--
ALTER TABLE `user_pets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_pets_galleries`
--
ALTER TABLE `user_pets_galleries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
