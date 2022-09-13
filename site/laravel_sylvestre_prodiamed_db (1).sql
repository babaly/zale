-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 12 sep. 2022 à 16:49
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel_sylvestre_prodiamed_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointements`
--

CREATE TABLE `appointements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `heure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departement_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `appointements`
--

INSERT INTO `appointements` (`id`, `name`, `telephone`, `date`, `heure`, `message`, `departement_id`, `doctor_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lawrence Jacobson', '89', '1973-07-02', '8h', NULL, 2, 1, 'inactive', '2022-08-26 16:07:45', '2022-08-26 16:07:45');

-- --------------------------------------------------------

--
-- Structure de la table `bannieres`
--

CREATE TABLE `bannieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bannieres`
--

INSERT INTO `bannieres` (`id`, `name`, `title`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Slide 4', 'Titre 4', 'Nostrum enim est nihil nulla reprehenderit corrupti dolorem in libero quibusdam id culpa quasi placeat architecto.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 15:38:29'),
(2, 'Slide 3', 'Titre 3', 'Architecto nobis dicta eum velit explicabo fugiat alias quam sint harum quo.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 15:35:59'),
(3, 'slide 2', 'Titre 2', 'Velit temporibus aut ratione voluptate unde eveniet commodi ad amet nobis.', 'active', 'public/8MGpOHtMqQkvuqByt6mjitTICFaeLv0LKYqaKBul.png', '2022-08-25 15:31:35', '2022-08-25 15:35:33'),
(4, 'Slide 1', 'Titre 1', 'Doloribus laborum provident recusandae reiciendis porro qui asperiores iure aut quis et.', 'active', 'public/cAnXVVWod9F8weJe5RvMDCT7PnQoau55udHZqqNL.png', '2022-08-25 15:31:35', '2022-08-25 15:34:59'),
(6, 'test', 'test titre', '<p>desccccccc</p>', 'active', 'public/bzCEhZjQzdSdtqWcCjiqFcjpln1OrwZcM44ydbTg.jpg', '2022-09-07 11:39:14', '2022-09-07 11:39:14');

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `departement_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `name`, `image`, `description`, `status`, `departement_id`, `created_at`, `updated_at`) VALUES
(1, 'Departement 1', 'public/wwt4ZtPCLgfGGzwledrykqoVs8BsWpQjyMspgaU3.png', 'Natus et veritatis delectus voluptas exercitationem ex eos sit quo voluptates deleniti vero hic in dolor quia.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 16:09:34'),
(2, 'Miles Gislason', NULL, 'Nulla magni nostrum ducimus aliquid quo ut sed dolore vero.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(3, 'Josephine Renner', NULL, 'Ipsam placeat sed ex voluptates minima quidem voluptate illum qui consequuntur ea quisquam ut impedit corrupti commodi.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(4, 'Lydia Fritsch', NULL, 'Numquam voluptate itaque et deserunt accusantium recusandae cum aperiam dolore rerum eaque.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Dr. Amely Lemke DVM', NULL, 'Ab voluptatem qui dolor perferendis omnis inventore eveniet distinctio quia molestiae velit.', 'active', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(6, 'Mr. Adonis Howell', NULL, 'Et aut quaerat nobis debitis ab quia consequatur est accusantium qui.', 'inactive', 1, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(7, 'Dr. Timothy DuBuque IV', NULL, 'Omnis ut repellendus est quasi nam rerum consequatur quas quibusdam ratione ab voluptatem.', 'inactive', 2, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(8, 'Ms. Camila Ferry PhD', NULL, 'Rerum odit reprehenderit rerum cupiditate cum porro nisi possimus commodi.', 'inactive', 3, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(10, 'Ansel Kshlerin', NULL, 'Et nihil odit consectetur animi dicta qui laudantium delectus soluta ducimus molestiae molestiae voluptatem sed consequatur nihil.', 'inactive', 5, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(11, 'new departe', NULL, '<p>desc</p>', 'active', NULL, '2022-08-25 16:12:14', '2022-08-25 16:12:14');

-- --------------------------------------------------------

--
-- Structure de la table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Alvis Kihn', 'active', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(2, 'Liana Batz', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(3, 'Mr. Melvin Hilpert', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(4, 'Miss Thelma Turner Sr.', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Kathleen Skiles', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(6, 'Tony Mraz Jr.', 'inactive', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(7, 'Prof. Nyasia Yundt', 'inactive', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(8, 'Dr. Rocio Moore', 'inactive', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(9, 'Rashad West', 'inactive', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(10, 'Prof. Buford Volkman DDS', 'inactive', '2022-08-25 15:31:36', '2022-08-25 15:31:36');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `horaires`
--

CREATE TABLE `horaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horaires`
--

INSERT INTO `horaires` (`id`, `day`, `open_time`, `close_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Et id odio soluta mollitia. Recusandae est fuga ut ut cumque quis. Ut doloribus perspiciatis dolorum fugiat nesciunt ut aut error. Quas ipsum voluptatem at et amet sequi delectus.', 'Accusamus veritatis dignissimos tempore est a. Necessitatibus voluptas quae placeat doloribus. Quas veritatis eum fugiat sunt ipsam cumque necessitatibus. Et accusantium vero et excepturi deserunt debitis. Repudiandae molestiae voluptatum et quo.', 'Sequi et ut harum magnam vitae. Provident neque mollitia sint aut. Perferendis accusamus mollitia rerum eligendi tenetur soluta minima. Tempore dolorem ipsam nobis aut non.', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(2, 'Rem nobis eveniet sed voluptatibus totam. Officia numquam veniam ut voluptatibus. Est quia nihil ut corrupti dolorem et. Perferendis error voluptas sit debitis temporibus quas.', 'Numquam ut corrupti tempore quasi deserunt. Quia inventore quaerat blanditiis voluptate magnam ut voluptatem. Eum quas sunt ex eum autem quo expedita. Accusamus dolores vero eos quia.', 'Qui dolor aut tempore veritatis qui illum. Dicta qui sed qui sit ut. Molestias aspernatur ipsum molestias soluta inventore. Exercitationem voluptas ea inventore debitis doloribus.', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(3, 'Maxime modi suscipit rem dolores eligendi laboriosam. Quia aliquam nesciunt quod quia. Magni nisi commodi ab voluptate accusantium officia. Modi architecto corporis sequi est corrupti sed rem. Non quam voluptate ut aut in non laboriosam sunt.', 'Fuga rerum quam sunt id consequatur et fuga. Ut cupiditate vel fugiat voluptas. Quod est qui cumque quia voluptas quaerat voluptatem.', 'Fugiat quia doloremque voluptatibus sit nulla fugiat numquam in. Dolor itaque reiciendis quia veritatis. Delectus ipsum id aliquid perferendis et.', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(4, 'Facilis dolorem sed deleniti officia iusto. Et iure est cum dolorem rerum aperiam. Aut optio fugit consequatur est perferendis aut architecto.', 'Nostrum molestiae dolor aut beatae mollitia repudiandae cumque. Velit quos occaecati velit provident. Ipsam quasi autem delectus ducimus quia ex aut.', 'Autem nemo doloribus perspiciatis quas porro. Nesciunt dolorum necessitatibus est doloremque. Adipisci sed autem minima rem voluptas consequatur.', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Sed quo exercitationem voluptates iusto magni. Porro sed ad odio deleniti explicabo distinctio. Ducimus nisi voluptate dolorum sapiente aut.', 'Alias et praesentium at rerum eaque magnam. Laborum tempora reprehenderit nisi ut qui. Autem dolor optio quo expedita rerum commodi.', 'Eveniet quam debitis natus dicta accusamus tenetur. Magni quia commodi inventore cum. Accusantium voluptas asperiores pariatur praesentium ut. Officia quos autem veniam accusamus ullam vel sed.', 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `infosystems`
--

CREATE TABLE `infosystems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appli_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twetter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infosystems`
--

INSERT INTO `infosystems` (`id`, `appli_name`, `description`, `email`, `address`, `facebook`, `instagram`, `twetter`, `linkedin`, `horaire`, `phone1`, `phone2`, `fax`, `map_link`, `logo`, `fav_icon`, `created_at`, `updated_at`) VALUES
(1, 'Prosmed', '<p>description du site</p>', 'kelton.jerde@bergnaum.biz', 'Cité Keur Gorgui, Lot n°40, 6ème étage', 'Placeat sed aperiam velit delectus officia dolorem. Vel tempora fugiat et inventore sunt sed incidunt. Dignissimos ut et voluptatem. Quisquam maxime odit dolore quidem et animi magni.', 'Rerum repellat impedit qui soluta architecto enim ut. Et enim vitae aut temporibus. Repellendus mollitia impedit dicta odio unde. Vitae et vel iste incidunt sed officiis qui.', 'Earum rem nihil delectus est fuga odit corrupti. Quaerat et modi reprehenderit eius. Recusandae enim nesciunt necessitatibus sunt recusandae sit. Quisquam reprehenderit ullam dolor eum eos eum odit sunt.', 'Maiores quia ad in laudantium. Repellendus autem eos quo molestias. Aut voluptates sit et distinctio necessitatibus. Numquam nostrum recusandae corporis nulla rerum totam.', '8h-18h', '334569867', '338764569', '338567895', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9429347933633!2d-16.492703386118375!3d16.016485845105812!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xe9556586d928e13%3A0xc99b20839f390883!2sISRA!5e0!3m2!1sfr!2ssn!4v1661517495273!5m2!1sfr!2ssn\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'public/o0EwQgbjLjszYJMa31oVzrmc8UNDKPy9ylJYnQfc.jpg', 'public/DhRNygQv9E9Hx8KIqMXwNXJiojmdUoiKHuZccD4u.jpg', '2022-08-25 15:31:35', '2022-08-26 12:40:04'),
(2, 'Quos consequuntur neque eius est. Deleniti voluptas molestias libero maxime et magnam omnis. Quod possimus repellat quibusdam et sit. Laudantium aut incidunt et consequatur a cupiditate dolores quia.', NULL, 'wiegand.geraldine@hotmail.com', '268 Hirthe Square Suite 269\nKadefort, OH 96693', 'Veniam quidem nobis voluptas esse blanditiis asperiores qui sit. Qui et rerum voluptas veniam mollitia illo porro. Quasi saepe aspernatur nesciunt atque quasi sit. Quod voluptate commodi voluptatibus dolorem et rerum aliquid.', 'Delectus consequatur eum mollitia unde. Rerum nisi et aut quisquam culpa. Quo ut consequatur omnis aut quidem doloribus a. Unde aut velit quas non enim atque. Ad qui unde beatae est reprehenderit.', 'Culpa dicta repudiandae quia repellendus dolorem. Quod et laudantium omnis ipsam quod. Illo aut magni blanditiis sapiente itaque. Fugit vel error ea illo veritatis pariatur esse. Quibusdam quis ea pariatur facere ea voluptatem est.', 'Veritatis adipisci labore porro. Culpa doloribus est facilis quia omnis earum. Non voluptas ipsam qui dolorem et quod facere deserunt. Tempora eum quod quae tempore nihil.', 'Quos dolore temporibus error consectetur. Quibusdam ex eos minima dolores rerum. Explicabo odio asperiores non eveniet architecto voluptatibus nihil. Nihil aut cumque quasi.', '1-919-201-8118', 'Commodi voluptatem atque ipsa. Aperiam magnam tempore aut et corporis enim. Odit sed et sapiente ratione ab. Occaecati ratione non possimus aut qui maxime omnis. Debitis quas accusamus et rerum. Ut nostrum ex error magni quia laborum officia cupiditate.', 'Aliquam iste quis quia velit tenetur fugiat. Ut accusamus quo aut. Aperiam voluptatem ut nesciunt fuga. Est molestiae sunt ab non magni. Est ut aut fuga.', 'Voluptatem vero ut maxime aspernatur eos voluptatem. Est et eaque necessitatibus ad enim. Consequatur voluptatem mollitia aut eveniet ea et sequi. Et sit unde explicabo sint nisi molestias accusantium.', 'Autem omnis voluptatem laudantium sit aut. Quo amet officia molestiae blanditiis molestias sunt. Saepe ducimus inventore fugit ut.', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(3, 'Ex eum ut harum rem. Cumque perspiciatis qui aut expedita sed sint. Alias dolores distinctio odio qui pariatur aut. Iure accusantium similique vitae iure id asperiores animi.', NULL, 'hstracke@hermann.biz', '70008 Corkery Pike\nPort Nyah, WA 38288-1031', 'Ipsa facilis voluptas doloremque. Labore a ad delectus accusantium. Earum enim eos placeat eos facere explicabo.', 'Rem commodi minima commodi quia. Eos reiciendis maiores voluptatum fugit id officiis. At autem fugiat libero aut.', 'Asperiores ut exercitationem rem aut et commodi. Corporis sit qui qui pariatur voluptatem sunt. Est voluptatum ipsam adipisci eius non.', 'Qui laudantium delectus maxime facilis quis fugiat. Vel itaque ea ducimus porro illum. Quisquam sunt fuga et rerum error libero est illum.', 'Totam ullam maiores eos sequi nesciunt. Sint est veritatis voluptas suscipit est quod et id. Officiis quos ab facilis voluptatum est sit totam. Libero laudantium voluptate doloribus asperiores optio.', '(610) 834-5263', 'Odio fuga fuga error facere. Ut dolor non voluptatem quia quasi quia eum dolorum. Eaque unde id omnis ut atque.', 'Commodi quis officia ducimus hic. Qui culpa distinctio sit distinctio natus officiis molestiae. Eum iusto quibusdam debitis repellendus libero. Tenetur animi quo velit voluptatem.', 'Nihil sint odit temporibus consequatur. Tenetur quos itaque ut. Voluptas aut porro repudiandae voluptatem doloribus omnis.', 'Consequatur voluptas quia omnis labore mollitia ipsa dolore. Officiis ut nisi eos aut molestiae dicta rem. Voluptas est eveniet rerum ea non nihil atque. Aut rerum deleniti et omnis accusamus sed enim sequi. Ut et placeat voluptatem odio.', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(4, 'Atque voluptatem assumenda neque nisi sequi qui accusantium omnis. Cumque consequatur minima voluptatem expedita cum amet voluptatibus. Veniam quibusdam voluptas soluta enim qui cum voluptate.', NULL, 'boehm.rebekah@yahoo.com', '28502 Lavon Rapid\nAbernathyfort, WV 53454-9833', 'Deleniti numquam laborum molestias nostrum velit rerum iusto. Ut pariatur laudantium dicta ut corporis. Excepturi accusamus odio non ullam.', 'Ut nihil est culpa suscipit ut. Et vel dolore assumenda illo vitae cupiditate. Delectus quos ducimus repudiandae harum quo rem rerum. Officia accusantium nisi quam aut esse voluptates. Quam velit dolorem officiis pariatur odit.', 'Illo sed ullam consequatur. Odit similique ad est qui odio eum laborum. Enim dolore aut quis aut aut neque eos. Debitis earum placeat quo dolore cumque. Provident nulla repellat ut cum.', 'Quo voluptatem exercitationem nemo. Totam nam autem voluptatem quis sunt.', 'Architecto error distinctio perferendis harum. Ea natus non ipsam maiores voluptate. Assumenda aperiam quaerat non ducimus sed rerum assumenda. Magni repudiandae minima nam sit. Minima omnis porro consectetur laborum sunt.', '+1.930.910.5152', 'Libero laudantium sed voluptatibus ea voluptatum ipsa. Et dolores ullam omnis eveniet inventore nesciunt. Facere qui odit et dolor praesentium libero consectetur.', 'Tempore porro placeat itaque voluptates perspiciatis. Sint velit sed aut at dolorum doloribus. Voluptatum maiores eum autem earum et magni aspernatur. Voluptatem sed laborum eveniet atque aspernatur sed et.', 'Ut ut dolorem aut ea doloribus provident. Eveniet quaerat veritatis voluptates et reprehenderit molestias. Qui explicabo impedit sit iusto atque. Recusandae necessitatibus voluptatem enim dolorem.', 'Dignissimos voluptas repellendus cumque dolores. Omnis laboriosam et ut placeat beatae provident. Ut commodi et in magnam maiores iure animi qui. Voluptatibus itaque maiores placeat et sed.', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Officia atque hic quae et est repellendus. Beatae dignissimos ut sit tempore facere. Velit vero in quia qui cumque. Sed vel impedit cum aut et tempore.', NULL, 'nader.jedidiah@yahoo.com', '9702 Lubowitz Parkway\nEast Lorenabury, NJ 41578-8888', 'Magni quidem et aut. Rerum dignissimos dolores omnis saepe. Fuga neque et ex sit iure distinctio blanditiis. Distinctio ad voluptatum suscipit optio consequatur et. Et est excepturi quia eaque omnis.', 'Ex sunt nihil ad et. Minus repellendus accusantium dolor ut cupiditate corporis modi. Deleniti debitis ad expedita hic. Tenetur exercitationem omnis repudiandae rerum quos. Officia totam incidunt voluptatem fugiat.', 'Aperiam magnam commodi ratione quam qui architecto. Blanditiis voluptatem animi qui ea. Neque neque quas porro et minima reprehenderit iste. Ut minus quis ut fugit ut aliquam ut sint.', 'Est reiciendis excepturi architecto expedita deleniti esse. Quam dignissimos quia aperiam debitis illum. Non commodi reiciendis iusto sit. Omnis excepturi non est maxime magni. Adipisci voluptates ut neque rem est. Error repudiandae qui quod.', 'Doloremque et impedit blanditiis provident nobis aliquid vel architecto. Temporibus et doloremque quas expedita nihil quia qui.', '1-740-773-5313', 'Nesciunt est corporis sequi eaque corporis id laudantium consequatur. Molestiae et expedita aliquid iste commodi veritatis hic. Perspiciatis vero qui consequatur ea at similique optio.', 'Laboriosam labore velit quisquam. Repellat deserunt aut accusantium. Libero rerum aut velit est. Doloremque illo ut doloribus omnis dolorem ducimus.', 'Sed quo autem quod omnis incidunt maiores. Amet sint vel hic autem. Maxime autem tempore eveniet occaecati.', 'Velit dolores cupiditate eligendi et nisi. Esse odio cupiditate architecto et. Sed ut quos fuga. Nihil rerum aut dolorem a quis. Eveniet qui et earum voluptatem rerum quo ea.', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_resets_table', 1),
(51, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(53, '2022_08_21_000001_create_bannieres_table', 1),
(54, '2022_08_21_000002_create_departements_table', 1),
(55, '2022_08_21_000003_create_doctors_table', 1),
(56, '2022_08_21_000004_create_horaires_table', 1),
(57, '2022_08_21_000005_create_infosystems_table', 1),
(58, '2022_08_21_000006_create_parteners_table', 1),
(59, '2022_08_21_000007_create_traitements_table', 1),
(60, '2022_08_21_000008_create_unites_table', 1),
(61, '2022_08_21_000009_create_user_infos_table', 1),
(62, '2022_08_21_009001_add_foreigns_to_departements_table', 1),
(63, '2022_08_21_009002_add_foreigns_to_user_infos_table', 1),
(64, '2022_08_21_162454_create_permission_tables', 1),
(65, '2022_08_26_132757_create_appointements_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Structure de la table `parteners`
--

CREATE TABLE `parteners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parteners`
--

INSERT INTO `parteners` (`id`, `name`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Sonny Kihn', 'Dolorem minus quae odio hic numquam tempore cumque voluptas quia blanditiis nisi.', 'inactive', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(2, 'Brown Maggio', 'Voluptatem sit nihil voluptatem totam voluptate nihil est ut distinctio voluptas quidem corporis ex voluptatem ut quidem sit sint sint.', 'inactive', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(3, 'Dr. Silas Murray', 'Consequuntur distinctio repellendus sunt sed voluptates aut earum totam eos unde veniam sit eum tempora inventore aut ratione.', 'inactive', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(4, 'Ms. Keely Dietrich IV', 'Quidem quia et perferendis similique quis laudantium blanditiis maxime non animi exercitationem odit vel sunt voluptatem maiores.', 'inactive', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Dr. Carter Steuber', 'Consequatur ipsum iste iure aliquam animi officiis quis aut aut nisi explicabo itaque possimus vitae numquam.', 'inactive', NULL, '2022-08-25 15:31:35', '2022-08-25 15:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'list bannieres', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(2, 'view bannieres', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(3, 'create bannieres', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(4, 'update bannieres', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(5, 'delete bannieres', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(6, 'list departements', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(7, 'view departements', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(8, 'create departements', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(9, 'update departements', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(10, 'delete departements', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(11, 'list doctors', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(12, 'view doctors', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(13, 'create doctors', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(14, 'update doctors', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(15, 'delete doctors', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(16, 'list horaires', 'web', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(17, 'view horaires', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(18, 'create horaires', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(19, 'update horaires', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(20, 'delete horaires', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(21, 'list infosystems', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(22, 'view infosystems', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(23, 'create infosystems', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(24, 'update infosystems', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(25, 'delete infosystems', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(26, 'list parteners', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(27, 'view parteners', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(28, 'create parteners', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(29, 'update parteners', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(30, 'delete parteners', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(31, 'list traitements', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(32, 'view traitements', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(33, 'create traitements', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(34, 'update traitements', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(35, 'delete traitements', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(36, 'list unites', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(37, 'view unites', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(38, 'create unites', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(39, 'update unites', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(40, 'delete unites', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(41, 'list userinfos', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(42, 'view userinfos', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(43, 'create userinfos', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(44, 'update userinfos', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(45, 'delete userinfos', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(46, 'list roles', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(47, 'view roles', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(48, 'create roles', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(49, 'update roles', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(50, 'delete roles', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(51, 'list permissions', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(52, 'view permissions', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(53, 'create permissions', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(54, 'update permissions', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(55, 'delete permissions', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(56, 'list users', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(57, 'view users', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(58, 'create users', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(59, 'update users', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(60, 'delete users', 'web', '2022-08-25 15:31:35', '2022-08-25 15:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2022-08-25 15:31:34', '2022-08-25 15:31:34'),
(2, 'super-admin', 'web', '2022-08-25 15:31:35', '2022-08-25 15:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
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
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2);

-- --------------------------------------------------------

--
-- Structure de la table `traitements`
--

CREATE TABLE `traitements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `traitements`
--

INSERT INTO `traitements` (`id`, `name`, `description`, `image`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Guy Borer DDS', 'Qui est ipsam voluptatum sed reiciendis fuga explicabo voluptas est assumenda et nesciunt est quia suscipit.', NULL, 0, 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(2, 'Rafaela Wolff', 'Iste et est sit occaecati aspernatur architecto culpa nobis quaerat et voluptatibus nam.', NULL, 0, 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(3, 'Adelle Macejkovic', 'Vitae hic delectus fugiat asperiores itaque minus amet quam est ratione voluptas at suscipit eaque iusto.', NULL, 0, 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(4, 'Elisha Borer', 'Libero amet cumque modi voluptatibus architecto veritatis numquam occaecati saepe alias et aut est libero et.', NULL, 0, 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Rolando Johnston', 'Veniam ea saepe molestias ipsam quis sunt cupiditate eum aut voluptatibus suscipit ut in voluptas unde consequuntur eaque voluptas blanditiis.', NULL, 0, 'inactive', '2022-08-25 15:31:35', '2022-08-25 15:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `unites`
--

CREATE TABLE `unites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unites`
--

INSERT INTO `unites` (`id`, `name`, `summary`, `description`, `image`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Biochimie', 'At impedit est facere aut pariatur dolorem distinctio eius. In voluptas aspernatur accusamus optio ipsa dolorum eum. Aut qui nemo laboriosam soluta. Mollitia deleniti cupiditate natus fugiat. Quis ut sed id sed animi qui odit labore.', 'desc', 'public/eF681aq95KK1oGNu0bm0By8LYECckRbBKsbcTEUH.png', 'Voluptatem nisi quod ut modi quidem. Doloremque nihil reiciendis quidem. Est aut deleniti consequatur quia fuga labore. Nisi sed soluta id sit qui consequatur. Ut accusamus natus voluptatem est. Debitis nihil eligendi corrupti.', 'active', '2022-08-25 15:31:35', '2022-09-07 11:29:38'),
(2, 'Markus Thompson', 'A qui sapiente explicabo rerum. Sit mollitia beatae et cupiditate ut cupiditate. Rerum optio non esse sint nihil harum minima. Eos qui quia eum voluptatem omnis.', '<p color:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: 12pt; margin-right: 0in; margin-left: 0in;\"><span lang=\"FR\" style=\"font-size: 10.5pt; font-family: Roboto; color: rgb(122, 122, 122);\">La biochimie est une unité interdisciplinaire qui comprend la biophysique, la biologie moléculaire, la biologie structurelle, la microbiologie, la pharmacologie et les sciences médico-légales. Les études de biochimie sont entrelacées avec des techniques de chimie organique, inorganique et analytique.<o:p></o:p></span></p><p color:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: 12pt; margin-right: 0in; margin-left: 0in;\"><span lang=\"FR\" style=\"font-size: 10.5pt; font-family: Roboto; color: rgb(122, 122, 122);\">La biochimie est un domaine scientifique dans lequel les processus biologiques sont étudiés sur une base moléculaire. Le domaine scientifique le plus actif est l\'étude de la structure et des interactions des acides nucléiques, des protéines, des lipides, des glucides et d\'autres biomolécules liées à leur fonction dans les systèmes vivants. Biochimie, coagulation, vitamines, allergie, hématologie, hormones, tumeur Marquis, auto-anticorps, médicaments et substances toxiques, tests d\'alerte, tests de dépistage, tels que l\'analyse d\'urine et d\'autres fluides corporels, le groupe étudié. En outre, si nécessaire, des échantillons sont envoyés à des laboratoires étrangers avec notre niveau d\'accréditation pour aider les patients le plus efficacement possible dans le diagnostic et le traitement.<o:p></o:p></span></p><p color:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: 12pt; margin-right: 0in; margin-left: 0in;\"><span lang=\"FR\" style=\"font-size: 10.5pt; font-family: Roboto; color: rgb(122, 122, 122);\">Les sujets de recherche en biochimie sont nombreux et variés : purification des protéines et analyse des protomés obtenus à partir de métabolites secondaires de micro-organismes et d\'enzymes, immobilisation et inhibition des enzymes, synthèse et analyse des composés organiques, liaison de l\'ADN et amarrage moléculaire. De nouveaux précurseurs de drogues et des matériaux de diagnostic à base de produits chimiques doivent être synthétisés pour contrôler les maladies.<o:p></o:p></span></p><p color:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: 12pt; margin: 0in 0in 7.5pt;\"><span lang=\"FR\" style=\"font-size: 10.5pt; font-family: Roboto; color: rgb(122, 122, 122);\">Le laboratoire de biochimie de l\'hôpital Emsey est disponible 24 heures sur 24 et 7 jours sur 7. Tous les tests sont suivis quotidiennement par des contrôles de qualité internes selon les critères du CLSI. De plus, les résultats sont évalués au niveau national et international en étant régulièrement membre de programmes externes de contrôle de la qualité. Les processus sont exploités dans le cadre de systèmes de gestion de la qualité. Le laboratoire de biochimie a réussi à améliorer la qualité des feuilles en collaborant avec des laboratoires de référence pour des tests spéciaux utilisés dans le diagnostic, la recherche et le suivi.</span></p>', 'public/Bw3Loc73aOsWpZi1Mglr4iQNj7thG6MQMPj5kHle.jpg', 'Consequatur vitae dolore fuga ut et est. Doloribus quia natus sint et voluptatem. Sapiente excepturi aliquid doloremque et blanditiis delectus. Eveniet amet ea dicta id eos. Excepturi molestiae explicabo quo et molestias a quia.', 'active', '2022-08-25 15:31:35', '2022-09-07 11:10:14'),
(3, 'Kole Connelly', 'Illo commodi numquam dolorum quas in ipsum eum. Culpa ut rerum tempora quo autem quae blanditiis est. Veniam sequi dolorum dolor quasi ullam ipsam nihil. Illo sed impedit repellat unde modi in possimus.', 'desccccc', 'public/SYznWsYeWvJpYfzBUCGd8JHTXJFtXRVxICIWNWvL.jpg', 'Et assumenda occaecati nisi ipsam sunt repellendus eos sunt. Dolor rerum et ut debitis maiores recusandae cum. Quos quasi non itaque cupiditate.', 'active', '2022-08-25 15:31:35', '2022-09-07 11:36:49'),
(4, 'Aleen Boyer', 'Est aut id aut illum sequi amet eum sed. Dolor quo tempore accusamus velit magnam modi. Voluptatem assumenda recusandae ab distinctio blanditiis. Ut est id omnis voluptatem illo. Ipsa et modi est quod. Cupiditate accusamus doloribus quo ducimus.', 'Occaecati quia culpa et qui. Voluptatem sit quis dolores iure et ut.', NULL, 'Ab dolorum animi omnis iusto sit et nihil. Magni perspiciatis repudiandae voluptate dolor illo occaecati doloribus velit. Reprehenderit molestiae commodi quas dolores.', 'active', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(5, 'Denis Gibson', 'Consequatur enim iste placeat cum odit sed omnis. Atque corporis perferendis dignissimos libero consequatur et sit omnis. Consequatur velit expedita perferendis in. Consectetur cupiditate qui consequatur saepe eos et.', 'Temporibus impedit optio et veniam reiciendis rerum. Molestiae sit est velit sed. Sint aut omnis facilis nisi commodi sit molestiae.', NULL, 'Libero atque accusamus omnis et cumque hic tenetur molestiae. Itaque ipsa quae dolorem laboriosam ipsum. Quod ut voluptates laborum incidunt. Repudiandae harum soluta dolor ut necessitatibus magni omnis molestiae.', 'active', '2022-08-25 15:31:35', '2022-08-25 15:31:35'),
(6, 'Buckminster Farrell', 'Et consequuntur in i', 'Maxime dolores labor.ee', 'public/ox9sYyqMTEb7WuyMNaEphbT7S9WZJfaxOrTz0jE5.jpg', NULL, 'active', '2022-09-07 11:42:39', '2022-09-07 11:42:39');

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ethelyn Nader', 'admin@admin.com', '2022-08-25 15:31:33', '$2y$10$/9lapRtuXRMXl/VwdDwl8.2x6qb7K5VRvvqLfihvccW2iVBUX3/Ya', 'koI3qiXAZD6uIVmJOUNNmIwmaPq6gmdAngij5Qj44xuIRDeDSDkY85CMBcjX', '2022-08-25 15:31:33', '2022-08-25 15:31:33'),
(2, 'Prince Hodkiewicz', 'christa75@yahoo.com', '2022-08-25 15:31:35', '$2y$10$gKSA67wQyLwPuXWIPoui8.LfJX8zpaDwOnRzG8A9mQTxfmCQ2QFJq', 'NXN4OpP6Ca', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(3, 'Esperanza Haag', 'magdalena86@yahoo.com', '2022-08-25 15:31:36', '$2y$10$yFuV4VWY2L37YfPlxkpiY.SM1W9Skr3pxX3J2zgEpz1vTirDx0g0a', 'n4ofAm3TVy', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(4, 'Dr. Veronica Kutch III', 'nolan.joan@kunde.net', '2022-08-25 15:31:36', '$2y$10$jDwiTObZSoTNXHoZZqRkzOmaZvtSq3wBX7I6N0QdvVBPG2FxHFXKa', 'rXAnUUT9Lw', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(5, 'Dr. Luis Bahringer', 'adela.pollich@russel.biz', '2022-08-25 15:31:36', '$2y$10$QkPlbfdkcgQt7.NA1JydjuKpaOuGDF.Jl.LIWB8lrxKbTWYxDOllq', 'ybRSuRR1d2', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(6, 'Rogers Koepp', 'evalyn35@gmail.com', '2022-08-25 15:31:36', '$2y$10$3rJm6YPMh3HcM6PRn.1MPe/jhgbFF3nA1/s4HLwoxqK26CXTkMj1W', 'qUWRnsV5EK', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(7, 'Prof. Lowell Klocko', 'lemuel.rempel@hyatt.com', '2022-08-25 15:31:36', '$2y$10$cXtq9GBMGZxvBccj2qxcLeWWS.C2huEgYio4q4RjF/vV2ek0Ta5mK', 'b3kwWMRHZh', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(8, 'Preston Goodwin', 'volkman.joesph@hotmail.com', '2022-08-25 15:31:36', '$2y$10$1d9x26/SpVLIbCQfSNkIWesYA425Gm8eliu5xtz/1t3Hc9U3TMzBq', 'lTHB9QzHIH', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(9, 'Lacey Nolan Jr.', 'wdonnelly@yahoo.com', '2022-08-25 15:31:36', '$2y$10$3PD4lWlT5XQn.1g4XL1Gw.NvBk2.xrCALveyyirQdEnDKC.A70pHC', 'Xkya4pgUib', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(10, 'Dr. Lance Runolfsson', 'anderson.kailyn@hotmail.com', '2022-08-25 15:31:36', '$2y$10$TPq0PNwJXy.n3mQBhYYkw.9W4BVHcnaQhLntsHtyih.RXMDH5MWx6', 'DSN0cQrQLf', '2022-08-25 15:31:36', '2022-08-25 15:31:36'),
(11, 'Roberto Becker', 'lonnie.gaylord@yahoo.com', '2022-08-25 15:31:36', '$2y$10$j.zjmrCaUdfe9wydXwO1EeiP.TOw/Ys9mMZoGmGn9VG8loCM1shJi', 'dmIftlabwv', '2022-08-25 15:31:37', '2022-08-25 15:31:37');

-- --------------------------------------------------------

--
-- Structure de la table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twetter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_infos`
--

INSERT INTO `user_infos` (`id`, `speciality`, `description`, `image`, `phone`, `linkedin`, `facebook`, `instagram`, `twetter`, `doctor_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Molestias vel non illo asperiores aut. Ab alias soluta eveniet suscipit aliquam dolore rerum. Qui quos pariatur molestiae labore sequi.', 'Harum est voluptates enim perferendis incidunt nostrum quia nam porro voluptatum perferendis natus saepe aliquam corporis nulla.', NULL, '361.466.4956', 'Temporibus quod mollitia aspernatur quia. Nulla aliquam suscipit autem aut iste aliquid. Et repellendus cumque excepturi dolorem est similique.', 'Iste ut quis sunt sint tempore rerum eius. Doloremque in ad sit rerum est eius. Aut deleniti mollitia sint consequatur rerum. Deserunt nihil cumque et delectus animi quos autem.', 'Qui et impedit officia cumque. Ut magnam incidunt sunt qui quibusdam. Unde veniam mollitia quia ea. Soluta provident facilis ipsam vel explicabo dolor beatae.', 'In sed explicabo ad eum hic et. Velit nam molestiae recusandae. Alias et repellat officiis laborum dolores reiciendis voluptatem. Dignissimos expedita quisquam natus ex quia a.', 6, 7, '2022-08-25 15:31:37', '2022-08-25 15:31:37'),
(2, 'Provident ipsa aperiam deleniti ipsa vero repudiandae qui. Iusto deleniti eos cupiditate optio minima. Omnis iusto fuga ad accusamus hic architecto sint ducimus.', 'Quis ut repellat eos voluptas sed veniam ut quos ut explicabo aut quia iure praesentium vero accusamus in nihil voluptatem eaque.', NULL, '989.952.3915', 'A sed tempora distinctio quaerat eum. Tempora porro deserunt quasi quisquam. Harum et saepe eveniet sequi voluptates.', 'Deleniti aut est sit velit. Minus repellendus quam voluptas autem quas. Expedita quasi consequatur explicabo odit aut rerum. Consequatur blanditiis quia eaque ut.', 'Vitae quae optio aut sit. Totam nesciunt ad laborum ratione culpa et. Quia ex sint odio architecto ab beatae.', 'Sunt placeat reiciendis deleniti assumenda. Assumenda qui a numquam eligendi nulla sequi. Ducimus velit odit voluptas ratione id in et.', 7, 8, '2022-08-25 15:31:37', '2022-08-25 15:31:37'),
(3, 'Possimus quam consequatur odit placeat voluptatem qui. Sit et corporis illum sint. Omnis distinctio qui est nihil voluptatibus. Esse quasi est voluptas.', 'Sed eum soluta ex id ipsa voluptatem voluptatem praesentium possimus fuga animi inventore reprehenderit.', NULL, '720-887-4181', 'Qui exercitationem voluptatem cumque accusamus ut sunt. Ducimus et nisi nemo quaerat ea. Veritatis at et sunt sed et voluptates. Ut minima nesciunt quae iste impedit minima blanditiis.', 'Ex explicabo optio voluptas impedit. Facilis est et iusto et. Qui vel magnam voluptas quas.', 'Magnam iure ut sunt tempore. Ut cumque provident est alias molestiae. Voluptates consectetur officia blanditiis dolorum. Dolores autem voluptatem quis nesciunt sunt.', 'Fuga cumque reprehenderit voluptas ea voluptatem eum. Libero fuga vel sequi eius voluptatem. Qui velit omnis dolorum non sunt sed. Enim dolore dolores aut.', 8, 9, '2022-08-25 15:31:37', '2022-08-25 15:31:37'),
(4, 'Enim accusantium atque sed sit. Laborum eaque non qui necessitatibus quia quasi. Sed et molestias sit. Eaque earum excepturi repellendus repudiandae itaque.', 'Est est voluptas consectetur suscipit eum quia temporibus et odit qui.', NULL, '440.497.4708', 'Explicabo voluptas rem ullam voluptas sint est. Tenetur dicta et repellat perspiciatis harum. Eius quod tempora veritatis nisi quisquam. Adipisci quam eum aut laudantium repellendus ullam.', 'Voluptatem voluptas rem deserunt modi. Eum illum amet maxime et laudantium ex. Est ipsam sint id aspernatur quae soluta. Dicta quia expedita praesentium illo eveniet autem est laudantium.', 'Voluptatem quia beatae illo tempore at. Harum ab laboriosam necessitatibus quia error culpa et sit. Vero minus beatae et. Dolor aliquam officiis ipsa quia.', 'Voluptatem qui quae unde voluptatem nesciunt recusandae sint. Beatae delectus asperiores numquam quo. Dicta et laboriosam est sint. Est dolor delectus nemo quaerat aspernatur. Sint sequi ut ut iure dolorum. Nihil aut delectus sit sequi rerum et ab in.', 9, 10, '2022-08-25 15:31:37', '2022-08-25 15:31:37'),
(5, 'Nihil quis eum veniam est. Nam dolores sed quos. Minus facere excepturi aut. Eum neque eos recusandae consectetur explicabo in suscipit.', 'Officiis consequuntur nihil voluptatem minus omnis sint explicabo odio corporis deserunt eos repudiandae magni impedit rerum eligendi maiores quam.', NULL, '520.839.5911', 'Tempore optio soluta quod est non velit ut. Iste est libero neque quia quia qui. Et est doloremque illum quis impedit velit laudantium. Earum quia ipsam consequuntur nemo.', 'Iure itaque reprehenderit nisi qui consequatur voluptas. Dolores cum quibusdam deserunt sed nam velit tenetur. Quo ullam reiciendis soluta consequatur quod. Expedita molestias aut veritatis quasi consequatur sit.', 'Corporis qui autem cupiditate repellat. Sunt aliquid maxime non qui optio laboriosam. Esse reiciendis et ipsum magnam neque nisi. Minima et facilis consectetur voluptas nemo nisi. Est nulla dignissimos nemo dolores quasi.', 'Nobis hic aperiam minima id rerum quia. Repudiandae ea repudiandae quod repellat suscipit eligendi voluptatum. Nostrum quisquam unde rerum quia deserunt ad. Earum quisquam eius ut et accusantium. Et dolores ipsum rem aliquam eos.', 10, 11, '2022-08-25 15:31:37', '2022-08-25 15:31:37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointements`
--
ALTER TABLE `appointements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointements_departement_id_foreign` (`departement_id`),
  ADD KEY `appointements_doctor_id_foreign` (`doctor_id`);

--
-- Index pour la table `bannieres`
--
ALTER TABLE `bannieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departements_departement_id_foreign` (`departement_id`);

--
-- Index pour la table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `infosystems`
--
ALTER TABLE `infosystems`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `parteners`
--
ALTER TABLE `parteners`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `traitements`
--
ALTER TABLE `traitements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unites`
--
ALTER TABLE `unites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_infos_doctor_id_foreign` (`doctor_id`),
  ADD KEY `user_infos_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointements`
--
ALTER TABLE `appointements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bannieres`
--
ALTER TABLE `bannieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `infosystems`
--
ALTER TABLE `infosystems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `parteners`
--
ALTER TABLE `parteners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `traitements`
--
ALTER TABLE `traitements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `unites`
--
ALTER TABLE `unites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appointements`
--
ALTER TABLE `appointements`
  ADD CONSTRAINT `appointements_departement_id_foreign` FOREIGN KEY (`departement_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointements_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_departement_id_foreign` FOREIGN KEY (`departement_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `user_infos_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
