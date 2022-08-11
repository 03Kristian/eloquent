-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2022 a las 01:00:33
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacions`
--

CREATE TABLE `habitacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `precio_por_noche` double(8,2) NOT NULL,
  `piso` int(11) NOT NULL,
  `max_personas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cama_bebe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ducha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bano` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `habitacions`
--

INSERT INTO `habitacions` (`id`, `precio_por_noche`, `piso`, `max_personas`, `cama_bebe`, `ducha`, `bano`, `balcon`, `created_at`, `updated_at`) VALUES
(1, 500000.00, 2, 5, 'No', 'si', 'si', 'no', NULL, NULL),
(2, 500000.00, 6, 1, 'no', 'si', 'si', 'si', NULL, NULL),
(3, 500000.00, 2, 5, 'No', 'si', 'si', 'no', NULL, NULL),
(4, 500000.00, 6, 3, 'no', 'si', 'si', 'si', NULL, NULL),
(5, 500000.00, 2, 5, 'No', 'si', 'si', 'no', NULL, NULL),
(6, 500000.00, 6, 3, 'no', 'si', 'si', 'si', NULL, NULL),
(7, 500000.00, 2, 1, 'No', 'si', 'si', 'no', NULL, NULL),
(8, 500000.00, 6, 3, 'no', 'si', 'si', 'si', NULL, NULL),
(9, 500000.00, 2, 1, 'No', 'si', 'si', 'no', NULL, NULL),
(10, 500000.00, 6, 3, 'no', 'si', 'si', 'si', NULL, NULL),
(11, 500000.00, 2, 5, 'No', 'si', 'si', 'no', NULL, NULL),
(12, 500000.00, 6, 4, 'no', 'si', 'si', 'si', NULL, NULL),
(13, 500000.00, 2, 1, 'No', 'si', 'si', 'no', NULL, NULL),
(14, 500000.00, 6, 3, 'no', 'si', 'si', 'si', NULL, NULL),
(15, 500000.00, 2, 2, 'No', 'si', 'si', 'no', NULL, NULL),
(16, 500000.00, 6, 2, 'no', 'si', 'si', 'si', NULL, NULL),
(17, 500000.00, 2, 1, 'No', 'si', 'si', 'no', NULL, NULL),
(18, 500000.00, 6, 2, 'si', 'no', 'si', 'si', NULL, NULL),
(19, 500000.00, 2, 2, 'No', 'si', 'si', 'no', NULL, NULL),
(20, 500000.00, 6, 2, 'no', 'si', 'si', 'si', NULL, NULL),
(21, 500000.00, 2, 5, 'No', 'si', 'si', 'no', NULL, NULL),
(22, 500000.00, 6, 2, 'no', 'si', 'si', 'si', NULL, NULL),
(23, 500000.00, 2, 2, 'No', 'si', 'si', 'no', NULL, NULL),
(24, 500000.00, 6, 4, 'no', 'si', 'no', 'si', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespeds`
--

CREATE TABLE `huespeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `huespeds`
--

INSERT INTO `huespeds` (`id`, `nombres`, `apellidos`, `telefono`, `correo`, `direccion`, `ciudad`, `pais`, `created_at`, `updated_at`) VALUES
(1, 'Anna Erdman', 'Schiller', '+1-928-203-9198', 'block.conor@raynor.org', '6701 Skiles Lake\nSouth Karlietown, CO 19700-6576', 'West Rigobertoland', 'Bulgaria', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(2, 'Prof. Zackery Kreiger', 'Kilback', '484-982-8029', 'dejuan18@schulist.com', '7914 Greenfelder Row Suite 814\nNaomimouth, KY 54596', 'Hudsonshire', 'United States Virgin Islands', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(3, 'Johathan O\'Hara', 'Harvey', '+1 (724) 941-8684', 'agnes97@hotmail.com', '6130 Casandra Gateway Apt. 483\nSouth Daneport, AL 63624-0198', 'Goldnerton', 'Serbia', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(4, 'Jonathan Tillman', 'Nienow', '323-525-8872', 'oconner.kavon@wilkinson.org', '524 Lubowitz Track\nNew Nakia, RI 02655-0789', 'Savannahshire', 'Ukraine', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(5, 'Joanie Friesen', 'Wintheiser', '1-936-527-6084', 'pgorczany@corkery.com', '8460 Denis Summit Suite 040\nRusselfurt, MN 48616', 'West Deventown', 'Bahrain', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(6, 'Jettie Armstrong', 'Dickens', '283-970-3107', 'langworth.clara@keebler.com', '48730 Art Squares\nWest Sister, MN 56254-7387', 'Port Evahaven', 'Sudan', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(7, 'Oral Zboncak', 'Feeney', '860-878-8769', 'senger.israel@gmail.com', '458 Rhoda Shores Apt. 810\nChristianland, MA 99505', 'Johnpaulland', 'French Guiana', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(8, 'Genoveva Toy', 'Lueilwitz', '(463) 496-3170', 'yasmeen61@yahoo.com', '727 Welch Ranch\nPort Destinburgh, NY 57446-0990', 'Leuschkeshire', 'Comoros', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(9, 'Mr. Garfield Ziemann', 'Schneider', '515.293.3986', 'kunze.kiara@kunze.com', '5194 Daniel Vista Apt. 606\nNorth Westley, OK 00618', 'North Brennahaven', 'Italy', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(10, 'Theresia Bergnaum', 'Simonis', '279.731.5200', 'stanton.dora@yahoo.com', '53233 Heathcote Trail\nConnmouth, MT 57505', 'New Rossie', 'Heard Island and McDonald Islands', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(11, 'Dr. Carlee Cartwright DVM', 'Gusikowski', '+12012991129', 'telly.volkman@lind.info', '3350 Cordell Brooks Suite 065\nDellborough, CO 95935', 'Gradyshire', 'American Samoa', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(12, 'Ms. Martina Roberts V', 'Sauer', '+1-352-690-1383', 'freddie.stracke@yahoo.com', '350 Bradtke Burg\nFisherfort, OR 04684', 'Mattieshire', 'Denmark', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(13, 'Prof. Loyal Kohler', 'Strosin', '640-591-2749', 'quinten09@spinka.net', '7115 Wilburn Forges Apt. 629\nSouth Creolafurt, NH 71764', 'West Wilhelmineton', 'Hong Kong', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(14, 'Heber Ryan', 'Rowe', '954-358-1474', 'gabrielle.renner@yahoo.com', '12940 Art Port\nNorth Cathryntown, CT 91710-9746', 'Efrenland', 'Holy See (Vatican City State)', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(15, 'Miss Viva Torp V', 'Gibson', '515-568-0005', 'gus72@grimes.com', '1742 Goldner Knoll\nEast Joan, MD 09538-8578', 'New Blaise', 'Pakistan', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(16, 'Hyman Baumbach', 'Beer', '320-913-8867', 'wilderman.hank@schneider.net', '8707 Deckow Valley\nWest Kademouth, MS 38998-9357', 'Port Lavinatown', 'Ukraine', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(17, 'Haylee Schmidt', 'Klein', '(463) 536-6444', 'vdaniel@hill.biz', '683 Will Radial Apt. 620\nSharonport, RI 62223-9078', 'North Alford', 'Russian Federation', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(18, 'Miss April Weimann PhD', 'Sporer', '910.352.2933', 'isai.kunde@gmail.com', '6264 Langworth Mission Apt. 241\nPort Catalina, KY 79836-3554', 'Lake Chelseyfurt', 'Antigua and Barbuda', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(19, 'Dr. Jeffery Barton', 'Schmitt', '586.504.3468', 'laurine58@moen.com', '9290 Orin Meadow\nEast Nayelishire, NM 66114-8259', 'West Ludwig', 'Saint Kitts and Nevis', '2022-08-10 02:10:26', '2022-08-10 02:10:26'),
(20, 'Manuel Watsica', 'Mayer', '(480) 576-5035', 'wweimann@tremblay.com', '60988 Jacinthe Views Apt. 968\nMarkston, IL 33720', 'Kundeland', 'Somalia', '2022-08-10 02:10:26', '2022-08-10 02:10:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_09_202310_create_habitacions_table', 1),
(6, '2022_08_09_202851_create_huespeds_table', 1),
(7, '2022_08_09_203022_create_reservas_table', 1);

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
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inicio_fecha` date NOT NULL,
  `fin_fecha` date NOT NULL,
  `habitacion_id` bigint(20) UNSIGNED NOT NULL,
  `huesped_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `inicio_fecha`, `fin_fecha`, `habitacion_id`, `huesped_id`, `created_at`, `updated_at`) VALUES
(1, '2022-07-02', '2022-07-13', 16, 14, NULL, NULL),
(2, '2022-06-03', '2022-08-01', 22, 17, NULL, NULL),
(3, '2018-04-17', '2018-05-23', 23, 13, NULL, NULL),
(4, '2021-04-05', '2021-04-14', 3, 20, NULL, NULL),
(5, '2022-08-01', '2022-08-23', 2, 1, NULL, NULL),
(6, '2022-07-01', '2022-07-05', 4, 11, NULL, NULL),
(7, '2022-06-02', '2022-06-09', 6, 19, NULL, NULL),
(8, '2022-05-04', '2022-05-19', 8, 17, NULL, NULL),
(9, '2018-07-04', '2018-07-11', 12, 14, NULL, NULL),
(10, '2022-08-03', '2022-08-16', 18, 16, NULL, NULL),
(11, '2022-08-06', '2022-08-27', 9, 6, NULL, NULL),
(12, '2022-08-07', '2022-08-14', 20, 5, NULL, NULL),
(13, '2022-08-08', '2022-08-18', 24, 3, NULL, NULL),
(16, '2022-07-01', '2022-07-10', 13, 20, NULL, NULL),
(17, '2020-09-01', '2020-09-10', 12, 19, NULL, NULL),
(18, '2022-01-01', '2022-01-10', 11, 10, NULL, NULL),
(19, '2022-04-01', '2022-04-10', 18, 18, NULL, NULL),
(20, '2022-05-01', '2022-06-10', 19, 12, NULL, NULL),
(21, '2022-06-01', '2022-07-10', 20, 14, NULL, NULL);

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `habitacions`
--
ALTER TABLE `habitacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `huespeds`
--
ALTER TABLE `huespeds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_habitacion_id_foreign` (`habitacion_id`),
  ADD KEY `reservas_huesped_id_foreign` (`huesped_id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habitacions`
--
ALTER TABLE `habitacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `huespeds`
--
ALTER TABLE `huespeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_habitacion_id_foreign` FOREIGN KEY (`habitacion_id`) REFERENCES `habitacions` (`id`),
  ADD CONSTRAINT `reservas_huesped_id_foreign` FOREIGN KEY (`huesped_id`) REFERENCES `huespeds` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
