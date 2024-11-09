-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 03:35 AM
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
-- Database: `module20_assignment`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_08_164748_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(1, 'P0001', 'Haldiram\'s Sev Bhujia', 'Crispy, savory, and irresistible, Haldiram\'s Sev Bhujia is the perfect snack for any occasion. Made with high-quality ingredients, it\'s a delightful blend of taste and tradition.', 60.00, 50, 'images/ebqiuYoG8tm6zWDGpzxv1gD99yDSL4SfUwEIaidf.jpg', '2024-11-08 20:10:33', '2024-11-08 20:10:33'),
(2, 'P0002', 'NutriChoice Digestive', 'A delicious and healthy way to start your day, NutriChoice Digestive biscuits are packed with fiber to aid digestion and keep you feeling full.', 80.00, 55, 'images/cjQjUtip5C22lSScAROseePznL1aCpZ43KwHOiNS.jpg', '2024-11-08 20:11:54', '2024-11-08 20:11:54'),
(3, 'P0003', 'Cadbury 5 Star Chocolate', 'Indulge in the rich, creamy goodness of Cadbury 5 Star Chocolate. This classic chocolate bar is a perfect treat for any time of day.', 120.00, 60, 'images/MpJ48W0liRmx3qM0SKMKJLLzl1wTByCkxjeJFnc5.jpg', '2024-11-08 20:13:04', '2024-11-08 20:13:04'),
(4, 'P0004', 'Onion Flavour Potato', 'Crispy, crunchy, and full of flavor, these onion-flavored potato chips are a snacking sensation.', 30.00, 70, 'images/rfpQjCp4h6D4d8qJAn5NZC4eyTe1r0EZK4aaNy7W.jpg', '2024-11-08 20:14:38', '2024-11-08 20:14:38'),
(5, 'P0005', 'Salted Instant Popcorn', 'A quick and easy snack that\'s low in calories and high in fiber. Pop a bag of salted instant popcorn for a guilt-free treat.', 60.00, 75, 'images/LOeEkDc3B66egfySWG0lNuhzixqTJAOWseFF7oiw.jpg', '2024-11-08 20:15:22', '2024-11-08 20:15:22'),
(6, 'P0006', 'Blueberry Greek Yogurt', 'A creamy and delicious yogurt packed with protein and antioxidants. Perfect for a healthy breakfast or a refreshing snack.', 200.00, 50, 'images/ZIhrAUMWvaEBr5FrkFeZZy9rHLqW47nOAG82ITsw.jpg', '2024-11-08 20:16:23', '2024-11-08 20:16:23'),
(7, 'P0007', 'Britannia Cheese Slices', 'A convenient and tasty way to add cheese to your meals. Britannia Cheese Slices are perfect for sandwiches, burgers, and more.', 100.00, 80, 'images/6U3JtELIBjw7RmlbkDTePwiqyFeqXB5PaCUNqcoU.jpg', '2024-11-08 20:17:27', '2024-11-08 20:17:27'),
(8, 'P0008', 'Kellogg\'s Original Cereals', 'A classic breakfast cereal that\'s both delicious and nutritious. Kellogg\'s Original Cereals are a great source of fiber and essential vitamins and minerals.', 135.00, 45, 'images/VyZY4xohFjOGM04CY4el7ri80X5GE8T6KYvDZbCC.jpg', '2024-11-08 20:19:00', '2024-11-08 20:19:00'),
(9, 'P0009', 'Slurrp Millet Chocolate', 'A healthier and more nutritious alternative to traditional chocolate. Slurrp Millet Chocolate is made with millet flour and is packed with protein and fiber.', 55.00, 90, 'images/TpIiu1cn2vuV2dEEWkOFTjy5xJ6gQvmIkUWi2Mra.jpg', '2024-11-08 20:19:58', '2024-11-08 20:19:58'),
(10, 'P0010', 'Amul Butter - 500 g', 'Pure, natural butter made from the finest quality milk. Amul Butter is perfect for cooking, baking, and spreading.', 190.00, 100, 'images/5E31c3Z257c0mMQo0ygmbZkIn0OY1y8jG9zBBNL2.jpg', '2024-11-08 20:26:28', '2024-11-08 20:26:28');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
