-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2020 г., 23:08
-- Версия сервера: 10.2.7-MariaDB-log
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `LaravelBooks`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ilya', 1, 'mail@gmail.com', NULL, '$2y$10$NUYKXa.pb1U6Eq6PXxSGN.x92cbHVwCSi5K1IKnF4Kjws5TPl/X7W', NULL, NULL, NULL, '2020-12-03 04:35:36', '2020-12-03 04:35:36'),
(2, 'Author', 2, 'author@gmail.com', NULL, '$2y$10$AOga2mAX87QPs5OlgbnHgOAjHAECEV8rBktILf33a0t6HUfCusrQy', NULL, NULL, NULL, '2020-12-03 04:37:03', '2020-12-03 04:37:03'),
(3, 'fsfs', 2, 'mailll@mail.ru', NULL, '$2y$10$m0V75L7N4tq4wh4H3Qz3mO3tqwefp.c7jXCpiQilTqlMQoTBl/T2i', NULL, NULL, NULL, '2020-12-03 05:08:40', '2020-12-03 05:08:40'),
(4, 'Gisselle Skiles', 2, 'grayson.abbott@example.org', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8urVGXfHoP', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(6, 'Ephraim Schumm', 2, 'iziemann@example.org', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'YVptdH2YlA', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(7, 'Caitlyn Hartmann', 2, 'urath@example.com', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lSNOcOVH39', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(8, 'Xavier Frami', 2, 'christophe58@example.net', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'k1OeNSpXWu', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(9, 'Lizzie Heathcote', 2, 'fhirthe@example.net', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '6TAvmzv0oY', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(10, 'Ilene Vandervort', 2, 'keeley68@example.com', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'GZVqJhdklI', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(11, 'Mrs. Queen Jerde Jr.', 2, 'rozella.orn@example.org', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xVLqbPIUL3', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(12, 'Nicholas Howell', 2, 'jamaal.vandervort@example.org', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'h8mMrx3xYw', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(13, 'Aglae Bogisich', 2, 'humberto79@example.com', '2020-12-03 05:48:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'eTQKqxDbXR', '2020-12-03 05:48:03', '2020-12-03 05:48:03'),
(15, 'Ilia Orlov53535', 2, 'ilyaorlov124@gmail.com', NULL, 'password', NULL, NULL, NULL, '2020-12-03 15:06:28', '2020-12-03 15:27:08');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `author_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 11, 'Ipsa iusto ipsa necessitatibus sunt atque temporibus.', 'Tenetur porro enim deserunt repellendus ullam est. Eaque et repellendus delectus odit. Quia unde quasi molestiae impedit sed est eos.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(2, 8, 'Mollitia ea temporibus culpa voluptate sapiente ut.', 'Veritatis quas aut a autem rerum. Aspernatur molestias rerum cum commodi eligendi qui odit. Dolore alias beatae minus sit.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(3, 5, 'Delectus atque doloribus id natus aliquam.', 'Quis voluptates est eum quasi non neque. Dolor ipsam impedit consequatur saepe nam. Quia quam expedita non ullam fugit facere provident. Aut esse accusantium explicabo eligendi et rerum et.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(4, 4, 'Nobis eos sapiente sint ad aut qui.', 'Ipsam expedita illo aut porro ratione omnis. Nesciunt id magni temporibus minima occaecati. Voluptas numquam doloremque rem eum ut.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(5, 3, 'Laudantium impedit accusantium aut dolores.', 'Odit at fuga eligendi facere quis id occaecati. At repellat autem repellendus impedit distinctio deserunt eligendi. Deleniti tempora non recusandae. Sed vitae vero laudantium delectus et reprehenderit nemo.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(6, 4, 'Laudantium beatae qui sint consequatur nesciunt officiis.', 'Explicabo incidunt sit quo hic sunt ut consectetur. Libero ea nobis non. Harum qui provident veritatis aut expedita nihil.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(7, 4, 'Quia impedit hic dicta quia natus.', 'Aspernatur dignissimos natus quam recusandae aut aliquid qui. Quia maxime in vero non sed eius cumque. Pariatur dolorum aspernatur perferendis. Ea in quis delectus illo pariatur.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(8, 9, 'Ad fugit possimus maiores est quos sit.', 'Sapiente voluptatem suscipit doloremque. Ut omnis voluptas placeat quia.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(9, 12, 'Ipsum ea perspiciatis dolor.', 'Rerum vero nihil iure ad quia est. Accusamus est incidunt tenetur ut officiis possimus nesciunt. Veniam et veritatis atque quia voluptas.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(10, 4, 'Ut cum aut hic voluptas distinctio eos.', 'Quaerat eos iste incidunt non. Qui occaecati quibusdam animi vero aliquam itaque repudiandae nam. Explicabo eligendi itaque nostrum qui aut. Quo est quia blanditiis.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(11, 9, 'Vel id pariatur dignissimos.', 'Ut qui quod omnis iusto porro. Quis et quia sit et error itaque. Enim a tenetur assumenda.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(12, 13, 'Quisquam esse eum sint modi voluptatem.', 'Velit rerum aut et explicabo nemo. Fugiat minima voluptatem nobis deserunt voluptas. Est quod suscipit assumenda facere. Dolor voluptas quia placeat hic autem quod ut.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(13, 1, 'Aperiam incidunt amet perferendis vel consectetur.', 'Maxime omnis est vel enim ex voluptas recusandae. Dolores est asperiores voluptate ea blanditiis. Iste suscipit sint dolores non asperiores dolorum. Deserunt quaerat consequatur quia dicta dolorem aliquam et.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(14, 6, 'Sint accusantium reiciendis in id odio illum.', 'Iste est nisi hic est. Quis est id quod id ut ut. Et sed blanditiis eaque architecto dolorem id id.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(15, 10, 'Quia aut alias repudiandae molestiae cumque.', 'Maxime quia ad quae possimus laboriosam veniam. Deserunt voluptas incidunt ut eaque et est. Non sequi doloremque nesciunt dolores a. Itaque quam esse quia aut omnis expedita.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(16, 9, 'Quis reiciendis sit quisquam totam.', 'Modi debitis et a autem illo veniam perferendis. Voluptas quo consectetur possimus ducimus odio voluptate. Sunt id consequatur qui optio. Nam aut repellendus hic aut voluptas.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(17, 13, 'Aut quam voluptas nam cumque ex.', 'Asperiores sunt aperiam a eveniet est. Omnis perspiciatis eum praesentium perspiciatis. Necessitatibus aut veniam optio et qui. Adipisci et illum labore voluptatem at et.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(19, 3, 'Unde dolorem facilis numquam quia perspiciatis adipisci.', 'Nostrum quis qui fugit ut. Vel illo voluptatem nemo est. Unde possimus quo similique assumenda consequatur. Est natus totam et esse minus non veniam.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(20, 9, 'Dolorem autem consequatur delectus ex illo quae.', 'Non omnis quia voluptatibus dolore a consequatur. Soluta hic dignissimos suscipit soluta amet. Dolores sunt amet at. Temporibus voluptas qui totam voluptatem unde qui aut. Tempore possimus nostrum quo. Facere est veniam cumque voluptas sunt.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(21, 13, 'Ea inventore non non et distinctio nesciunt.', 'A officiis necessitatibus dolor necessitatibus molestiae. Commodi in ea veritatis sapiente harum. Officia enim sed sed id.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(22, 10, 'Eius assumenda itaque iure.', 'Dolor doloribus nulla et et soluta nostrum consequatur. Cumque error perferendis sint consequatur officia. Qui corrupti quo alias rerum. Aut cumque voluptates aliquam aliquam omnis consequatur. Sed cum vel iste.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(23, 12, 'Et unde aliquam voluptatem asperiores.', 'Voluptatem in vitae laboriosam et repellat molestiae exercitationem. Sed voluptates exercitationem nam. Minima iste sunt natus dolor magnam qui earum quisquam.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(24, 1, 'Sit sunt asperiores neque asperiores.', 'Consectetur quis fugit rerum temporibus natus. Ut alias deserunt at aut sunt quasi aut. Alias architecto illo sapiente tenetur molestiae dolor.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(25, 8, 'Aut officia rem consequatur quas corporis.', 'Odio aspernatur qui placeat enim qui est amet. Dolorem quidem minima dolor dolorem perferendis. Excepturi ut consequuntur neque quia. Iusto in ipsam quia nostrum ullam est porro.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(26, 2, 'Delectus aliquam repellendus doloremque.', 'Nihil distinctio velit ut earum. Vel qui et et molestias repudiandae et. Tempore et non ratione et asperiores deserunt consequatur quasi. Velit perspiciatis porro occaecati quisquam sed qui.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(27, 9, 'Accusantium consequuntur ea et qui.', 'Impedit explicabo eligendi qui consequatur. Corporis voluptatem totam pariatur et ullam non earum. Ab ipsa et consequatur qui fugiat et non. Ut qui qui quo perferendis sint.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(28, 2, 'Voluptas quisquam temporibus dignissimos quisquam in ea.', 'Dolorem incidunt similique soluta ipsam assumenda tempora. Est asperiores dolores ea velit ut. Et fugit neque veniam minus corrupti eius molestiae.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(29, 6, 'Officiis iste nobis corporis.', 'Sed cupiditate ratione quibusdam voluptates ut a. At consequatur quia nulla dolores quo. Voluptates culpa sed natus esse quo.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(30, 13, 'Minus alias nostrum qui aut.', 'Quisquam ullam cum est ut. Perferendis ratione et sed in rerum. Est tempore quaerat tempora. Voluptas distinctio voluptatem cumque fugiat.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(31, 7, 'Aut quos fugiat optio cum quo impedit.', 'Ducimus incidunt quo doloremque et eos aut. Ea nihil aliquid voluptatum repudiandae aut est velit nesciunt. Nihil fuga tempora et illum quibusdam.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(32, 3, 'Optio non impedit dolorum natus hic.', 'Aperiam molestias explicabo aliquid amet. Quia neque eum iste pariatur qui recusandae dolor. Assumenda aut pariatur cum enim odit iure autem.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(33, 7, 'Qui doloribus in numquam consequatur ut.', 'In laborum officiis non et sequi. Iure mollitia quibusdam non quis dolores. Quam nihil repellendus vel consequuntur sit nulla placeat. Aut sed voluptas veniam sit sed possimus. Eveniet qui et voluptatibus illo. Dolorem quis sequi minus.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(34, 13, 'Qui voluptate quia nihil nisi.', 'Aut quo quia deserunt tempore quisquam. Adipisci ut ad ut et iure velit. Eum nulla rerum odit est omnis vel. Doloremque illo necessitatibus in. Delectus quidem ab voluptas recusandae excepturi et.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(35, 9, 'Aut maxime id rerum mollitia.', 'Voluptatum qui et sed quaerat. Natus unde mollitia omnis temporibus. Facere voluptatibus aperiam quia qui molestiae. Rerum tempore voluptatibus quae nam debitis fugit. Vero debitis libero est molestias. Culpa velit laboriosam aperiam dolor.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(36, 6, 'Quisquam ab nobis porro assumenda consequuntur.', 'Ducimus et nulla numquam esse. Autem eaque quisquam animi maxime dolorem. Illo animi praesentium qui quis.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(38, 2, 'Necessitatibus deleniti et repudiandae sit illo.', 'Eum voluptatem assumenda odit consequatur. Quidem quidem provident ducimus in est. Cum possimus animi excepturi quaerat atque earum. Esse perspiciatis blanditiis sit cumque perferendis sit minima.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(39, 13, 'Omnis sint fugit tenetur id deleniti.', 'Rerum qui placeat facere voluptatem tempore. Aliquid vero omnis consequatur deleniti esse corrupti sed. Cumque ut est et. Amet saepe iure sit quaerat excepturi non.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(40, 13, 'Autem eos expedita tempora error.', 'Veritatis ea minus quibusdam explicabo rerum rem consectetur cum. Illum hic deserunt modi est. Et at quo aut rem.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(41, 9, 'Delectus labore delectus dolorem dolorem quod veritatis.', 'Dolore consequuntur eos optio ut. Voluptates vero molestiae temporibus dolores est cupiditate. Natus aperiam laboriosam in sed.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(42, 1, 'Est non similique non.', 'Cupiditate ratione aut a corporis distinctio magni ad. Error molestiae et est ipsa corrupti. Quasi possimus exercitationem sed sequi.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(43, 4, 'Quibusdam omnis natus est quis odit.', 'Libero et omnis et. Sit enim eos ut autem officiis quia. Magni eum quia et eaque nihil aut magni. Illum at quis consequatur necessitatibus cumque omnis. Esse et veniam autem perferendis quos ea. Culpa quas vero expedita porro et ut odio.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(44, 4, 'Animi omnis est sed dolores dolores.', 'Dolores maiores quibusdam deserunt. Quia quo itaque error. Et fugiat repellendus et possimus inventore.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(45, 11, 'Voluptatem sequi aliquid omnis dolorem temporibus doloremque.', 'Voluptate quo vel amet. Qui voluptate qui qui deserunt eaque rem. Qui delectus officiis cum. Alias dolores officia consequatur earum voluptatum voluptas vel. Iste eos eum voluptas sit labore. Dolores ipsum corporis ipsam sit.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(46, 6, 'Quidem quam voluptas aliquam corrupti.', 'Accusantium voluptatem delectus qui consequuntur voluptatem odio voluptatibus. Quia cum possimus voluptatem labore. Laborum sit architecto voluptatem eum eaque et quia.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(47, 6, 'Sed fugiat mollitia labore quasi.', 'Qui hic molestiae rem natus omnis labore consequuntur explicabo. Totam maiores aut perferendis. Eaque molestias inventore modi dolores rem et ut. Distinctio ipsam adipisci molestiae.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(48, 10, 'Eum dolorem et autem ad.', 'Qui et fugiat in quod aperiam. Porro illo beatae suscipit molestias. Cupiditate doloribus fuga quis eos molestiae et occaecati dolores. Vel magni voluptas saepe et aliquam.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(49, 11, 'Quis voluptas itaque quis iste omnis.', 'Labore ea nihil voluptate et eum dolores numquam. At tempore nihil quos omnis alias. Quia culpa consectetur enim quae neque deserunt voluptas animi.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(50, 10, 'Harum dolorum iure ab ullam dolore.', 'Deserunt adipisci veritatis ipsum ducimus facilis doloremque. Dolorum ea quidem ratione pariatur. Aperiam optio debitis aut enim ut autem. Pariatur ut inventore natus perspiciatis atque dicta repellendus.', '2020-12-03 06:01:26', '2020-12-03 06:01:26'),
(51, 2, 'Quaerat alias est sed deleniti magni est.', 'Ea dolor ut aut rerum qui delectus. Quia commodi quia ullam voluptas. Illum qui molestiae est ad vel. Dolorem hic debitis eos molestiae molestiae voluptatum molestias.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(52, 12, 'Minima quis cumque molestiae voluptatem deleniti alias.', 'Quia sit excepturi molestiae necessitatibus. Facilis natus explicabo magni atque similique dolores. Inventore nihil alias earum non nihil quo repellendus. Harum ipsam est laborum sit eius.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(53, 4, 'Aliquam laborum maxime earum officiis delectus.', 'Ipsum labore ut facilis perferendis hic. Odit eos sit dolorem inventore natus. Vel est voluptates rerum optio necessitatibus. Dolorem voluptatem quis nulla iusto tenetur dolor et.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(54, 3, 'Et alias enim molestias tenetur aut.', 'Qui ratione excepturi officia repudiandae. Rerum at debitis quasi. Aspernatur est quis iure esse sint quisquam facere. Sit dolorum voluptas possimus dolor expedita quidem sapiente.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(55, 12, 'Modi rerum id nihil dicta ut porro.', 'Aut provident voluptas soluta nemo et quibusdam. Quam ipsum voluptate non rerum praesentium. Voluptas omnis quasi harum eum nihil corrupti. Consequatur cupiditate commodi eos et praesentium.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(56, 13, 'Et repellendus voluptates voluptate numquam sed.', 'Fuga quasi optio quia consequatur temporibus libero aperiam. Error odit aut et sequi sint tempore velit. Porro numquam eum qui facere. Perferendis sint tempore sequi sit.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(57, 12, 'Adipisci eius occaecati saepe deleniti unde dicta.', 'Non rerum voluptas dignissimos quas tempora. Doloremque sed ut eum provident vel iusto sint. Nisi aut accusantium mollitia et voluptates et praesentium. Omnis error consectetur voluptas suscipit eos voluptatum.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(58, 6, 'Et ut repellat autem natus enim id.', 'Odit sit sint error et veritatis est. Rerum amet odio ad rem eius tempore. Recusandae eos molestias et maxime. Placeat expedita quo omnis optio.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(59, 7, 'Quaerat soluta fugiat nulla earum quae.', 'Modi libero atque veniam. Molestiae qui unde ex at. Ducimus molestiae minus quisquam. Tempora impedit explicabo nobis ut. A maxime delectus delectus eos et aut.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(60, 2, 'Qui magni consectetur voluptates ex in.', 'Eligendi repudiandae id ut expedita. Voluptas qui et porro. Praesentium rerum distinctio autem amet. At vel deleniti ipsa doloribus.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(61, 1, 'Occaecati qui voluptatem veritatis dolor sit enim.', 'Accusamus rerum sit eaque sit. Voluptatem voluptatem recusandae ipsa voluptates excepturi beatae dolorem. Ex aliquam enim nisi quia eos ut.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(62, 1, 'Id soluta ut corporis quia.', 'Sed quibusdam voluptatem et repudiandae fugit et. Rerum ullam non amet. Nemo et est distinctio cumque. Nisi laboriosam voluptatem cumque atque illum sint temporibus.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(63, 11, 'Cupiditate architecto natus sint sunt similique.', 'Magnam magni a ut laudantium quo facere. Quia veritatis ullam ea velit quis assumenda culpa. Sit omnis repellendus sunt ratione. Accusantium exercitationem praesentium dolorem vitae nihil unde ipsam.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(64, 5, 'Fugit minima totam sunt.', 'Incidunt ea commodi ut cumque mollitia at. Quia tempore occaecati illo omnis.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(65, 4, 'Pariatur ea voluptatem quam.', 'Praesentium ea illo excepturi provident exercitationem tenetur quis culpa. Doloremque adipisci eaque dolor enim et. Architecto voluptatem sed in. Illo quia tempora vitae sit rem qui in corrupti. Cum iusto dolorum odit error qui et.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(66, 10, 'Veritatis ut porro aut quia.', 'Veniam exercitationem quia est ipsa aut. Magnam eos error praesentium porro perferendis. Vel rerum corporis deserunt excepturi sit et vel. Quaerat eveniet eveniet qui dolorem perspiciatis tempora.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(67, 13, 'Autem est vitae quae.', 'Ut quam quia ipsa id. Dignissimos voluptates enim dolores assumenda eum vero assumenda quasi. Voluptas dicta id qui. Voluptatem neque aut dolorum dolor atque officiis et.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(68, 13, 'Aliquid tempore quisquam doloremque nobis.', 'Iste commodi quibusdam qui labore. Unde quasi dolorum recusandae non nostrum voluptate. Amet vel iste pariatur et impedit. Accusamus impedit blanditiis ducimus eaque.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(69, 9, 'Aut et vel tempora sunt.', 'Sint labore quas eius dignissimos aut a iusto laudantium. Officia ullam debitis eaque beatae accusamus. Id tempora impedit consequatur mollitia doloremque dolorem quas. Voluptatem voluptas omnis ut vel laboriosam quaerat.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(70, 1, 'Nemo veritatis veniam aut quibusdam nisi optio.', 'Ducimus reprehenderit tempore ad voluptatem. Impedit sunt est culpa voluptas ea et blanditiis. Et ad soluta et aut maxime sit aperiam. Eveniet dolor quidem ut excepturi.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(71, 3, 'Et perferendis maxime autem et accusamus.', 'Ea quidem consequatur est fuga repudiandae. Laboriosam cupiditate et qui quia enim sed enim. Eligendi nisi quia porro.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(72, 2, 'Rerum non voluptatem cumque.', 'Natus quibusdam sed velit enim neque nesciunt voluptatem. Consequuntur id sunt in. Quam sit harum expedita repellat odit consequatur.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(73, 12, 'Maiores voluptatem aut doloremque reiciendis ipsa.', 'Amet odio et quia fugiat harum est dolores consectetur. Nobis ut vel expedita modi. Est id consequatur ducimus ratione quia. Voluptatum facere aut quia id eligendi nam alias harum.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(74, 2, 'Atque in tenetur accusantium esse omnis.', 'Tenetur iusto voluptatem illum modi. Molestias distinctio quaerat molestiae et sit et fugit. Est aperiam reprehenderit necessitatibus nihil deleniti. Minus tempore nesciunt minima ut ut corrupti velit.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(75, 8, 'Aut voluptatem reiciendis reprehenderit repellendus voluptas molestiae.', 'Et nisi et aliquid id beatae minima accusantium. Sed earum repudiandae assumenda corrupti sapiente minima repellat. Provident consequatur ut facilis id eligendi quaerat earum ullam.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(76, 11, 'Omnis ratione amet assumenda assumenda dolorem rerum.', 'Non eveniet voluptatem numquam sed provident. Dignissimos libero porro voluptas aut. Officiis possimus quis sunt accusantium sapiente et.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(77, 12, 'Iure in voluptas debitis quis rem.', 'Eius enim quae porro dignissimos et et qui sapiente. Voluptas et voluptatibus est et occaecati. Fuga dolor aperiam harum aut. Possimus perspiciatis quod non odit repellendus mollitia et.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(78, 1, 'Doloremque et tempore eius est adipisci.', 'Expedita necessitatibus autem id reiciendis. Maiores et molestiae et porro. Maiores veniam vitae perferendis quam sed omnis.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(79, 4, 'Culpa aliquam eligendi doloremque esse.', 'Placeat at et ullam suscipit quidem et et. Qui deserunt sit expedita a. Ratione laborum rerum fugit qui.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(80, 1, 'Aliquid cum et ut.', 'Excepturi et eum fugit iste odio hic. Rerum enim non totam. Possimus dignissimos temporibus modi explicabo molestiae sequi sed. Id qui esse quos illum.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(81, 12, 'Qui aut vel vel explicabo consequatur impedit.', 'Ex aut ipsa eum amet nihil itaque. Molestiae laboriosam cupiditate officia aut. Accusantium aut aut sapiente et natus. Aut dolores in quia est velit sunt.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(82, 4, 'Et eos in et sapiente.', 'Possimus excepturi exercitationem aut vero iusto magnam voluptas quam. Et ducimus placeat cum aut minima aut. Deleniti voluptas vel iusto aut eligendi facilis voluptates.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(83, 10, 'Magnam laudantium qui unde commodi exercitationem eos.', 'Dolore ea quam qui magnam. Veritatis tempora quia nulla repellendus. Quae voluptatibus nihil fugit ducimus facilis maxime laboriosam expedita.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(84, 13, 'Aut ratione amet vel excepturi saepe.', 'Iure suscipit consequatur totam officiis ex temporibus veritatis. Voluptatem doloribus id ab accusantium. Expedita deleniti quae a qui ut voluptatem sit. Ipsam voluptatem non impedit aperiam ea qui.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(85, 3, 'Qui aliquid quibusdam placeat commodi.', 'Est saepe non eos et eveniet libero omnis. Qui sit adipisci aliquam nemo sed eum. Dolores harum sit ut quis porro placeat labore. In ea rerum cupiditate molestiae laborum blanditiis velit ipsa. Debitis vel optio eligendi corrupti quo libero.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(86, 3, 'Ducimus quam quis nostrum adipisci.', 'Nihil cupiditate voluptatibus sint eum occaecati ducimus. Explicabo esse vero perspiciatis autem. Nam delectus voluptatem sit. Praesentium omnis ea omnis excepturi vero.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(87, 3, 'Porro eum rerum sint nihil.', 'Provident excepturi et culpa esse. Voluptas temporibus in velit officiis molestiae eaque atque. Quaerat illum iusto sint dignissimos.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(88, 13, 'Illo est ullam iusto.', 'Nulla vel placeat necessitatibus laborum. Est possimus voluptates fugiat repudiandae ullam facere explicabo. Similique et et odit voluptatem ipsam nobis.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(89, 9, 'Officia quam eum dignissimos odit omnis molestiae.', 'Nam quod reiciendis nam aut numquam in. Quidem in voluptas eius. Aut voluptate deleniti vitae ut hic. Blanditiis aliquam cupiditate est est nam sed enim.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(90, 4, 'Deserunt odit voluptatum iste.', 'Quo quis voluptatem omnis velit error reiciendis eum. Error deleniti totam qui animi. Occaecati corrupti veritatis debitis sunt ducimus odit voluptatibus perspiciatis.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(91, 6, 'Quo recusandae voluptas dolorem aliquid sunt.', 'Perspiciatis illum animi aspernatur dolor quos placeat quaerat. Nemo quis ullam rerum ut. Assumenda veritatis distinctio eum amet sequi et soluta et.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(92, 4, 'Et nulla est voluptatum.', 'Accusantium eligendi omnis consequatur possimus voluptatem eum recusandae. Ex deleniti porro minus architecto fugit id. Ea quos dolor laboriosam repudiandae.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(93, 3, 'Aut est consectetur asperiores et quo velit.', 'Facilis recusandae vitae ad minus amet. Rem aliquid repellendus molestiae. Est voluptatem corrupti occaecati nobis quis. Aut quo est amet ut voluptatem nihil vel. Tempora voluptatibus ad laborum vitae.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(94, 12, 'Necessitatibus aut molestias odit.', 'Dolores quo facere accusamus vel dolor earum voluptatem. Officiis possimus itaque dolor quaerat et ut voluptatem. Vero perferendis aut neque occaecati odit necessitatibus.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(95, 6, 'Sed aut fugit est eaque eum.', 'Eaque rerum exercitationem natus minima aspernatur quidem. Molestiae rerum et ea ipsam ipsam atque est nihil. Temporibus qui neque rerum aperiam. Fuga temporibus aut enim perspiciatis. Tempora officiis ex nulla est.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(96, 2, 'Nesciunt voluptas asperiores saepe dicta.', 'Libero optio enim dolor voluptatem. Vel ipsam libero sint repudiandae nihil incidunt nisi enim. Quas fugiat eum voluptates quo.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(97, 13, 'Voluptas inventore nobis ipsam in in.', 'Delectus autem sit iste ratione aliquid et temporibus. Eos eius culpa iste. Qui facere iste id ut earum. Et incidunt pariatur qui doloremque voluptatum quam.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(98, 13, 'Nulla officiis magni est cupiditate.', 'Beatae id laboriosam accusamus qui quod ex. Mollitia libero voluptates ea consequatur consequuntur aspernatur. Alias consequatur alias nam fugiat sit in. Optio impedit libero nisi atque nulla consequatur.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(99, 11, 'Laudantium consectetur blanditiis vel est.', 'Veritatis iste mollitia ut commodi maiores quia. Harum atque culpa culpa consequatur. Similique quo ex eaque.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(100, 13, 'Quam animi adipisci laboriosam.', 'Aut amet sit autem eaque. Blanditiis aspernatur quidem sint quas. Nulla cumque est aut reiciendis itaque repellendus veniam.', '2020-12-03 06:47:31', '2020-12-03 06:47:31'),
(101, 2, 'Новый', 'ТЕКЕТЕТКЕТКЕТКТЕКТЕТКЕ', '2020-12-03 08:34:57', '2020-12-03 08:34:57'),
(102, 2, 'Админ новый', 'ТЕТКТЕКТЕТКЕТКТЕКТЕКТЕТКЕТ', '2020-12-03 08:35:22', '2020-12-03 08:35:22'),
(103, 2, 'Книга', 'ТЕКТЕТКЕТКЕКТЕКТЕКТЕТ228', '2020-12-03 08:41:44', '2020-12-03 08:49:41');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
(1, '2014_10_12_000300_create_roles_table', 1),
(2, '2014_10_12_000500_create_authors_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_12_03_092030_create_books_table', 2);

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
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-12-02 20:00:00', '2020-12-02 20:00:00'),
(2, 'Author', '2020-12-02 20:00:00', '2020-12-02 20:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
