-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 20 2018 г., 15:23
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `land`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_12_130555_create_table_pages', 1),
(4, '2018_12_12_130827_create_table_services', 1),
(5, '2018_12_12_130950_create_table_portfolios', 1),
(6, '2018_12_12_131256_create_table_peoples', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `alias`, `text`, `images`, `created_at`, `updated_at`) VALUES
(1, 'home', 'home', '<h2>WE CREATE AWESOME WEB TEMPLATES</h2\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. </p>', 'main_device_image.png', NULL, NULL),
(2, 'about us', 'aboutus', '<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam</h3>\r\n<br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quamLorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam</p>\r\n<br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quamLorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam</p>', 'about-img.jpg', NULL, NULL),
(4, 'zand', 'sссссс', '<p>s</p>\r\n', 'Chelsea-Grin_logo.jpg', '2018-12-19 09:19:42', '2018-12-19 09:19:42'),
(5, 'd', 'd', '<p>d</p>\r\n', 'Chelsea-Grin_logo.jpg', '2018-12-20 06:40:10', '2018-12-20 06:40:10'),
(6, 'zand', 'homesss', '<p>s</p>\r\n', 'Chelsea-Grin_logo.jpg', '2018-12-20 06:42:33', '2018-12-20 06:42:33'),
(7, 'zand', 'homes', '<p>s</p>\r\n', 'Chelsea-Grin_logo.jpg', '2018-12-20 06:45:17', '2018-12-20 06:45:17');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `peoples`
--

CREATE TABLE `peoples` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `position`, `images`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Гена Иванов', 'Главный слесарь', 'team_pic1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. Proin tempor quam in lacus semper, sed cursus dolor auctor. Morbi nibh quam, finibus id quam at, tempor varius lorem. Pellentesque vitae dapibus est. Donec imperdiet nibh et nisi aliquam finibus. Vestibulum rhoncus eget nibh id iaculis. Vestibulum eros orci, eleifend in sem at, luctus porta orci. Nunc nec blandit ante.', NULL, NULL),
(2, 'Иван Генадьев', 'Секонд слесарь', 'team_pic2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. Proin tempor quam in lacus semper, sed cursus dolor auctor. Morbi nibh quam, finibus id quam at, tempor varius lorem. Pellentesque vitae dapibus est. Donec imperdiet nibh et nisi aliquam finibus. Vestibulum rhoncus eget nibh id iaculis. Vestibulum eros orci, eleifend in sem at, luctus porta orci. Nunc nec blandit ante.', NULL, NULL),
(3, 'Маша Пупыркина', 'Секретарь', 'team_pic3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. Proin tempor quam in lacus semper, sed cursus dolor auctor. Morbi nibh quam, finibus id quam at, tempor varius lorem. Pellentesque vitae dapibus est. Donec imperdiet nibh et nisi aliquam finibus. Vestibulum rhoncus eget nibh id iaculis. Vestibulum eros orci, eleifend in sem at, luctus porta orci. Nunc nec blandit ante.', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `images`, `filter`, `created_at`, `updated_at`) VALUES
(1, 'frilance app', 'portfolio_pic2.jpg', 'gps', NULL, NULL),
(2, 'Concept', 'portfolio_pic3.jpg', 'design', NULL, NULL),
(3, 'Shopping', 'portfolio_pic4.jpg', 'android', NULL, NULL),
(4, 'Management', 'portfolio_pic5.jpg', 'design', NULL, NULL),
(5, 'iphone', 'portfolio_pic6.jpg', 'web', NULL, NULL),
(6, 'nexus', 'portfolio_pic7.jpg', 'web', NULL, NULL),
(7, 'android', 'portfolio_pic8.jpg', 'android', NULL, NULL),
(8, 'sms mobile app', 'portfolio_pic1.jpg', 'design', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `text`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Android', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. ', 'fa-android', NULL, NULL),
(2, 'Apple ios', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. ', 'fa-apple', NULL, NULL),
(3, 'design', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. ', 'fa-dropbox', NULL, NULL),
(4, 'concept', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. ', 'fa-html5', NULL, NULL),
(5, 'User researh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. ', 'fa-slack', NULL, NULL),
(6, 'User expiriense', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed luctus odio, ut porttitor quam. ', 'fa-users', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'User@mail.ru', NULL, '$2y$10$egJzRamVOm9Z2JGciabazumYgBt7NUIpu615Fgk8ckQV.p/TQSKU6', NULL, '2018-12-18 09:27:25', '2018-12-18 09:27:25');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
