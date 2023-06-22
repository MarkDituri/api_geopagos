-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2023 a las 22:22:17
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `player_id`, `first_name`, `last_name`, `age`, `gender`, `country`, `slug`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Raoul', 'West', 39, 'male', 'Greece', 'dolor-animi-sequi-aut-distinctio-non', 1, '2022-08-08 03:09:53', '2023-06-22 00:50:54'),
(2, 2, 'Eloy', 'Schumm', 18, 'female', 'Albania', 'velit-eius-explicabo-voluptates-in', 2, '2022-09-20 22:17:16', '2023-06-22 00:50:54'),
(3, 3, 'Abbey', 'Osinski', 19, 'male', 'Korea', 'quia-labore-veniam-facilis-velit-ad-omnis', 3, '2023-06-14 18:12:52', '2023-06-22 00:50:54'),
(4, 4, 'Madisyn', 'Reichert', 34, 'female', 'Cuba', 'aliquam-quia-et-ut-corrupti-suscipit-non', 4, '2023-04-01 06:04:47', '2023-06-22 00:50:54'),
(5, 5, 'Alaina', 'Simonis', 26, 'male', 'Indonesia', 'delectus-a-adipisci-ut-mollitia-iusto-non-enim', 5, '2022-10-21 17:58:00', '2023-06-22 00:50:54'),
(6, 6, 'Flossie', 'Hauck', 26, 'female', 'Philippines', 'qui-laudantium-ab-et-non', 6, '2023-01-08 23:56:25', '2023-06-22 00:50:54'),
(7, 7, 'Trent', 'Hand', 23, 'male', 'United States Minor Outlying Islands', 'aliquid-voluptatum-sapiente-ipsa-deserunt', 7, '2023-03-02 12:01:17', '2023-06-22 00:50:54'),
(8, 8, 'Alverta', 'Rempel', 35, 'female', 'Netherlands Antilles', 'nihil-voluptatum-architecto-et-sint-quas-cumque-placeat-animi', 8, '2022-06-27 20:11:02', '2023-06-22 00:50:54'),
(9, 9, 'Eloisa', 'Beier', 20, 'male', 'Mali', 'dolor-quo-qui-et-enim-aut-nostrum-repellendus', 9, '2022-10-21 20:57:16', '2023-06-22 00:50:54'),
(10, 10, 'Madisen', 'Macejkovic', 20, 'female', 'Germany', 'aperiam-voluptas-incidunt-sunt-incidunt-nobis-omnis-rem-aut', 10, '2022-08-28 01:17:14', '2023-06-22 00:50:54'),
(11, 11, 'Eloy', 'Pouros', 29, 'male', 'Morocco', 'commodi-cupiditate-esse-quidem-consequatur', 11, '2022-08-12 14:39:39', '2023-06-22 00:50:54'),
(12, 12, 'Madilyn', 'White', 34, 'female', 'Turks and Caicos Islands', 'explicabo-ex-doloribus-sed-veritatis', 12, '2023-05-06 15:47:49', '2023-06-22 00:50:54'),
(13, 13, 'Herman', 'Metz', 34, 'male', 'Solomon Islands', 'ut-accusantium-laudantium-non-nisi-esse', 13, '2023-05-29 16:34:47', '2023-06-22 00:50:54'),
(14, 14, 'Maybelle', 'Balistreri', 21, 'female', 'Italy', 'dolor-deserunt-facere-qui', 14, '2023-01-21 09:24:12', '2023-06-22 00:50:54'),
(15, 15, 'Camila', 'Feeney', 28, 'male', 'San Marino', 'rem-velit-neque-enim-illo', 15, '2022-08-23 11:08:33', '2023-06-22 00:50:54'),
(16, 16, 'Juanita', 'Padberg', 21, 'female', 'Brazil', 'et-excepturi-est-quod-in-est', 16, '2022-07-14 20:59:44', '2023-06-22 00:50:54'),
(17, 17, 'Leila', 'Schaefer', 26, 'male', 'Argentina', 'harum-in-quos-aut', 17, '2023-05-22 13:24:24', '2023-06-22 00:50:54'),
(18, 18, 'Elizabeth', 'Roob', 25, 'female', 'Vietnam', 'ut-explicabo-est-et-voluptas-corporis-repellat-facere-quaerat', 18, '2022-10-05 09:05:56', '2023-06-22 00:50:54'),
(19, 19, 'Janis', 'Swift', 29, 'male', 'Afghanistan', 'voluptatem-omnis-qui-numquam-adipisci', 19, '2023-02-10 16:55:54', '2023-06-22 00:50:54'),
(20, 20, 'Whitney', 'Schamberger', 30, 'female', 'French Guiana', 'aperiam-harum-reiciendis-autem-deserunt-qui-provident', 20, '2023-03-04 13:46:26', '2023-06-22 00:50:54'),
(21, 21, 'Kade', 'Parker', 33, 'male', 'Czech Republic', 'repellendus-eius-inventore-doloremque', 21, '2023-03-30 03:49:04', '2023-06-22 00:50:54'),
(22, 22, 'Dawn', 'Schamberger', 18, 'female', 'Vietnam', 'cum-minima-libero-voluptates-perferendis-fugit', 22, '2022-10-10 07:12:14', '2023-06-22 00:50:54'),
(23, 23, 'Desmond', 'Sporer', 19, 'male', 'Reunion', 'rem-quo-laborum-ea-molestiae-quia-ipsum-ab-rerum', 23, '2023-04-06 10:13:35', '2023-06-22 00:50:54'),
(24, 24, 'Giovanna', 'Hackett', 33, 'female', 'Turkey', 'excepturi-ipsa-aperiam-saepe-officiis-eligendi-doloribus-omnis', 24, '2023-01-30 05:44:22', '2023-06-22 00:50:54'),
(25, 25, 'Judah', 'Ullrich', 32, 'male', 'Vietnam', 'cumque-aut-voluptas-consequuntur-ea', 25, '2023-03-11 23:52:23', '2023-06-22 00:50:54'),
(26, 26, 'Coralie', 'Greenholt', 34, 'female', 'Argentina', 'fugit-voluptatem-sit-molestias-expedita-quis-quaerat-temporibus', 26, '2022-10-20 14:00:21', '2023-06-22 00:50:54'),
(27, 27, 'Roma', 'Okuneva', 19, 'male', 'Portugal', 'aut-praesentium-dignissimos-est', 27, '2022-11-03 20:01:40', '2023-06-22 00:50:54'),
(28, 28, 'Frankie', 'Yost', 30, 'female', 'Burundi', 'ut-alias-magnam-natus-blanditiis', 28, '2022-11-10 05:51:45', '2023-06-22 00:50:54'),
(29, 29, 'Shanon', 'Wintheiser', 30, 'male', 'Georgia', 'deserunt-doloribus-maxime-distinctio-debitis-magni', 29, '2022-08-31 21:16:00', '2023-06-22 00:50:54'),
(30, 30, 'Oswaldo', 'Raynor', 30, 'female', 'Honduras', 'vitae-neque-minus-repellendus', 30, '2023-03-08 18:30:04', '2023-06-22 00:50:54'),
(31, 31, 'Velda', 'Anderson', 31, 'male', 'Panama', 'totam-fugiat-rerum-corporis-blanditiis', 31, '2022-10-08 00:35:36', '2023-06-22 00:50:54'),
(32, 32, 'Camylle', 'Kassulke', 37, 'female', 'Mali', 'quidem-inventore-recusandae-quia-eveniet-quas-voluptas-corrupti', 32, '2022-08-28 06:04:36', '2023-06-22 00:50:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `force` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `response` int(11) NOT NULL,
  `luck` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `skills`
--

INSERT INTO `skills` (`id`, `force`, `speed`, `response`, `luck`, `created_at`, `updated_at`) VALUES
(1, 20, 75, 91, 77, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(2, 63, 79, 40, 107, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(3, 81, 86, 41, 71, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(4, 58, 100, 97, 109, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(5, 80, 81, 58, 31, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(6, 26, 82, 48, 15, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(7, 39, 50, 67, 94, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(8, 76, 93, 88, 76, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(9, 35, 81, 71, 64, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(10, 61, 57, 33, 53, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(11, 98, 69, 46, 48, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(12, 63, 91, 38, 70, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(13, 66, 59, 44, 73, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(14, 21, 76, 91, 74, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(15, 33, 55, 70, 7, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(16, 94, 46, 66, 42, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(17, 43, 80, 65, 77, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(18, 30, 73, 62, 63, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(19, 52, 84, 97, 55, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(20, 55, 99, 90, 10, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(21, 94, 57, 76, 83, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(22, 68, 87, 73, 54, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(23, 91, 79, 53, 84, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(24, 74, 89, 78, 25, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(25, 98, 88, 65, 96, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(26, 48, 60, 79, 15, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(27, 58, 65, 45, 102, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(28, 37, 74, 42, 66, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(29, 80, 92, 99, 56, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(30, 51, 93, 62, 56, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(31, 97, 68, 39, 48, '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(32, 88, 54, 93, 42, '2023-06-22 00:50:54', '2023-06-22 00:50:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tournaments`
--

CREATE TABLE `tournaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tournaments`
--

INSERT INTO `tournaments` (`id`, `name`, `description`, `type`, `direction`, `year`, `gender`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Alphonso Cup 2023', 'Numquam odit sit ut earum accusantium dolores nesciunt. Nam quidem recusandae aut dolor velit qui. Deserunt libero itaque aperiam fugiat eligendi. Sunt in enim veritatis corrupti et. Accusantium ad et ipsa quidem nesciunt.', 'playoffs', '7381 Leannon Knolls Suite 570', '2023', 'male', 'numquam-id-sed-accusamus-est-similique-vel', '2023-04-15 16:49:51', '2023-06-22 00:50:54'),
(2, 'Laurianne Cup 2023', 'Debitis nulla in ut deserunt. Nihil aliquam magni in omnis qui et totam. Ea minus sed dolor dolor occaecati nobis. Repudiandae quas voluptates alias necessitatibus blanditiis. Debitis sed esse nobis ut deleniti quam. Non voluptates aut odio.', 'playoffs', '3019 Nikki Rapids', '2023', 'female', 'hic-commodi-hic-illo-alias-sunt-quia', '2023-06-20 11:32:17', '2023-06-22 00:50:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joanie McCullough', 'qprohaska@example.com', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nTRtKoVVaE', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(2, 'Dr. Dennis Moen Jr.', 'dietrich.assunta@example.net', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lxFIV8seBS', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(3, 'Everett Towne', 'mrodriguez@example.com', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TL2TFRJoYc', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(4, 'Adolfo Hermann', 'howell62@example.org', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gb6sDAAqmO', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(5, 'Otha O\'Reilly', 'khegmann@example.net', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hedkuIoESa', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(6, 'Mr. Lemuel Trantow I', 'uschimmel@example.org', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CH8WxKfN6v', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(7, 'Santino Bradtke', 'ken47@example.org', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oBEccm2q6C', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(8, 'Rosemarie Towne', 'spinka.zachery@example.org', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CU40l7JTN6', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(9, 'Aliya Wunsch III', 'weimann.jennifer@example.org', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w0XzBcGWWH', '2023-06-22 00:50:54', '2023-06-22 00:50:54'),
(10, 'Lauren Berge', 'elta.kub@example.net', '2023-06-22 00:50:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jg9IBWnAO3', '2023-06-22 00:50:54', '2023-06-22 00:50:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `players_slug_unique` (`slug`),
  ADD KEY `players_skill_id_foreign` (`skill_id`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tournaments_slug_unique` (`slug`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
