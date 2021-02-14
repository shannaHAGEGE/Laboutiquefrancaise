-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 14 fév. 2021 à 01:26
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `laboutiquefrancaise`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D4E6F81A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(1, 10, 'yayaA', 'YaelA', 'AbitbolA', 'issy les moulineauxA', '25 cours de l\'ancienne boulangerieA', '92131', 'issy les moulineauxA', 'FI', '0676622505'),
(2, 10, 'yaya', 'Yael', 'Abitbol', 'issy les moulineaux', '25 cours de l\'ancienne boulangerie', '92130', 'issy les moulineaux', 'FR', '0676622501'),
(5, 12, 'nouvel', 'Fabrice', 'Azoulay', 'massy', '49 avenue Raymond Aron', '91300', 'massy', 'AU', '0620865270'),
(6, 12, 'yaya', 'Yael', 'Abitbol', 'issy les moulineaux', '25 cours de l\'ancienne boulangerie', '92130', 'issy les moulineaux', 'FR', '0676622501'),
(7, 18, 'Domicile', 'Yael', 'Abitbol', 'issy les moulineaux', '25 cours de l\'ancienne boulangerie', '92130', 'issy les moulineaux', 'FR', '0676622501');

-- --------------------------------------------------------

--
-- Structure de la table `carrier`
--

DROP TABLE IF EXISTS `carrier`;
CREATE TABLE IF NOT EXISTS `carrier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Colissimo', 'Profitez d\'une livraison premium avec un colis chez vous dans les 72 prochaines heures.', 990),
(2, 'Chronopost', 'Profitez de la livraison express pour être livré le lendemain de votre commande.', 1490);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Manteaux'),
(2, 'Bonnets'),
(3, 'T-Shirts'),
(5, 'Echarpes');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201124235825', '2020-11-25 00:02:35', 3580),
('DoctrineMigrations\\Version20201129004423', '2020-11-29 00:46:00', 790),
('DoctrineMigrations\\Version20201226192525', '2020-12-26 19:26:57', 66),
('DoctrineMigrations\\Version20201226223040', '2020-12-26 22:31:36', 1799),
('DoctrineMigrations\\Version20210117140048', '2021-01-17 14:01:30', 444),
('DoctrineMigrations\\Version20210119152611', '2021-01-19 15:27:21', 1330),
('DoctrineMigrations\\Version20210120211916', '2021-01-20 21:20:08', 920),
('DoctrineMigrations\\Version20210121212058', '2021-01-21 21:21:45', 4109),
('DoctrineMigrations\\Version20210201214431', '2021-02-01 21:45:22', 2237),
('DoctrineMigrations\\Version20210207111642', '2021-02-07 11:17:27', 1045),
('DoctrineMigrations\\Version20210207141552', '2021-02-07 14:16:24', 1321),
('DoctrineMigrations\\Version20210208210505', '2021-02-08 21:05:48', 3346),
('DoctrineMigrations\\Version20210208212014', '2021-02-08 21:20:38', 245),
('DoctrineMigrations\\Version20210208233935', '2021-02-08 23:40:08', 385),
('DoctrineMigrations\\Version20210209194029', '2021-02-09 19:41:04', 1417),
('DoctrineMigrations\\Version20210210213506', '2021-02-10 21:35:24', 964);

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

DROP TABLE IF EXISTS `header`;
CREATE TABLE IF NOT EXISTS `header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`id`, `title`, `content`, `btn_title`, `btn_url`, `illustration`) VALUES
(2, 'Nouvelle collection', 'Découvrez notre collection hiver 2021 créée par nos artisans et nos couturiers', 'Découvrir', '/nos-produits', 'f20c000c194bbde64a0633f647fef6ddefd86fdc.jpeg'),
(3, 'Promo de la rentrée', 'Découvrez toutes nos offre promo de la rentrée sur La Boutique Française', 'Découvrir', '/nos-produits', '7e03019b71e9df4dca507548e2035623d064ddd7.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session_id`, `state`) VALUES
(1, 12, '2021-02-02 23:01:36', 'Chronopost', 14.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '', NULL, 0),
(2, 12, '2021-02-07 11:27:54', 'Colissimo', 9.9, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-601fceba630b9', NULL, 0),
(3, 12, '2021-02-07 11:33:05', 'Colissimo', 9.9, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-601fcff103c99', NULL, 0),
(4, 12, '2021-02-07 11:33:42', 'Colissimo', 9.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-601fd0167703e', NULL, 0),
(5, 12, '2021-02-07 11:34:45', 'Colissimo', 9.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-601fd055950f8', NULL, 0),
(6, 12, '2021-02-07 11:34:55', 'Colissimo', 9.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-601fd05f83a12', NULL, 0),
(7, 12, '2021-02-07 11:36:09', 'Colissimo', 9.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-601fd0a99f057', NULL, 0),
(8, 12, '2021-02-07 14:30:33', 'Colissimo', 9.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-601ff989b2d02', NULL, 0),
(9, 12, '2021-02-07 15:05:54', 'Colissimo', 9.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-602001d25041f', 'cs_test_b1D9aKQSmGmG1BDtc3F2cWqyyzdHlVUQ52WqZP6IonChwOKZZAKJwAkRYK', 0),
(10, 12, '2021-02-07 16:58:52', 'Chronopost', 14.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-60201c4c064ef', 'cs_test_b1nJnEJ78VCnTWqwHZKPJW09ijfDJhHQf9bdUnmzDMnDoS218BNIHrbuOB', 0),
(11, 12, '2021-02-07 17:10:51', 'Chronopost', 14.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-60201f1b875a5', NULL, 0),
(12, 12, '2021-02-07 17:10:52', 'Chronopost', 14.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-60201f1c55825', 'cs_test_b1TzU9iduNQZpCsPKt4qhplezlYHxAiAPx9SAGcQMvNn9Mn0krJc4abMxo', 0),
(13, 12, '2021-02-07 17:13:22', 'Chronopost', 14.9, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-60201fb245c3d', 'cs_test_b1OcQumiFoZsGKVL4JllnyqU7Ve4SvsJDSMuNB9mgAHv0VSt6YvZU5LEig', 0),
(14, 12, '2021-02-07 18:04:12', 'Chronopost', 1490, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-60202b9c73774', NULL, 0),
(15, 12, '2021-02-07 18:12:14', 'Chronopost', 1490, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-60202d7e02668', NULL, 0),
(16, 12, '2021-02-07 18:13:12', 'Chronopost', 1490, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-60202db853943', NULL, 0),
(17, 12, '2021-02-07 18:13:59', 'Chronopost', 1490, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-60202de7a928c', 'cs_test_b1lJMRJHM9bgi8wIxVWsfib5jOtN2DOkDppbmPxeSZGHOmDdLLt4iDEyt2', 0),
(18, 12, '2021-02-07 19:53:38', 'Chronopost', 1490, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-60204542e1641', NULL, 0),
(19, 12, '2021-02-07 20:26:11', 'Chronopost', 1490, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-60204ce377186', NULL, 0),
(20, 12, '2021-02-07 22:13:42', 'Colissimo', 990, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '07022021-6020661688b7f', 'cs_test_b17QTrzk8rxw9Ay4EJECOC6n7nE345UvFgCq3GwaGEYFQkRYoP8tKPROIy', 0),
(21, 12, '2021-02-07 22:14:58', 'Colissimo', 990, 'Fabrice Azoulay<br/>0620865270<br/>massy<br/>49 avenue Raymond Aron<br/>91300 massy<br/>AU', '07022021-602066625f6d4', 'cs_test_b1KoyP0kg7t0HkFkROgvni3NMLhJ4aeXMHN0N8QGwHcEWLQU9J1px1anGR', 0),
(22, 18, '2021-02-08 19:07:27', 'Colissimo', 990, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '08022021-60218bef3e621', 'cs_test_b1qqbFDK5Rtq1ofyQ2XTRukbSn3EZ0PgI2jPQO0cIDVNSEporKeHBDFDIQ', 0),
(23, 18, '2021-02-08 21:28:20', 'Colissimo', 990, 'Yael Abitbol<br/>0676622501<br/>issy les moulineaux<br/>25 cours de l\'ancienne boulangerie<br/>92130 issy les moulineaux<br/>FR', '08022021-6021acf4a3355', 'cs_test_b1rRhxYctJX553zaxtNJbckvpgHrets5H01BPmkq0Wy1Hkk17JJka7wjDg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `my_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_845CA2C1BFCDF877` (`my_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `my_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(1, 1, 'Bonnet Rouge', 1, 900, 900),
(2, 1, 'Le Bonnet du skieur', 1, 1200, 1200),
(3, 2, 'Bonnet Rouge', 1, 900, 900),
(4, 3, 'Bonnet Rouge', 1, 900, 900),
(5, 4, 'Bonnet Rouge', 2, 900, 1800),
(6, 5, 'Bonnet Rouge', 2, 900, 1800),
(7, 6, 'Bonnet Rouge', 2, 900, 1800),
(8, 7, 'Bonnet Rouge', 2, 900, 1800),
(9, 8, 'Bonnet Rouge', 2, 900, 1800),
(10, 9, 'Bonnet Rouge', 1, 900, 900),
(11, 10, 'Bonnet Rouge', 2, 900, 1800),
(12, 11, 'Bonnet Rouge', 2, 900, 1800),
(13, 12, 'Bonnet Rouge', 2, 900, 1800),
(14, 13, 'Bonnet Rouge', 2, 900, 1800),
(15, 14, 'Bonnet Rouge', 1, 900, 900),
(16, 15, 'Bonnet Rouge', 1, 900, 900),
(17, 16, 'Bonnet Rouge', 1, 900, 900),
(18, 17, 'Bonnet Rouge', 1, 900, 900),
(19, 18, 'Bonnet Rouge', 1, 900, 900),
(20, 19, 'Bonnet Rouge', 1, 900, 900),
(21, 20, 'Bonnet Rouge', 1, 900, 900),
(22, 20, 'Le manteau de soirée', 1, 6900, 6900),
(23, 21, 'Bonnet Rouge', 2, 900, 1800),
(24, 21, 'Le manteau de soirée', 1, 6900, 6900),
(25, 22, 'Bonnet Rouge', 1, 900, 900),
(26, 23, 'Bonnet Rouge', 1, 900, 900);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`, `is_best`) VALUES
(2, 2, 'Bonnet Rouge', 'bonnet-rouge', 'f460f84a2b7d3d5d675e7c88e06b95c01316fae9.jpeg', 'Le bonnet parfait pour l\'hiver', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac tempor nisl. Ut ac faucibus justo. Cras tempus interdum posuere. Nulla in massa blandit, mattis tortor non, lobortis mauris. Duis hendrerit euismod mollis. Aliquam dignissim ante diam. Nam porta tempus quam a dapibus. Maecenas interdum dignissim pretium. Sed vel erat dictum, sagittis odio in, dignissim nulla. Cras egestas aliquet neque eu tempor. Phasellus eget cursus massa, at porttitor urna.', 900, 1),
(4, 2, 'Le Bonnet du skieur', 'le-bonnet-du-skieur', '6720f77afe90f7c248ca9ab13aa382aaa067d3d8.jpeg', 'Le bonnet parfait pour le ski', 'Nulla at aliquet ex. Nulla tempus fringilla fermentum. Donec at augue ac erat egestas tincidunt. Duis vitae enim nec arcu porta ultrices. Maecenas erat lorem, rutrum in metus vitae, tristique vulputate ligula. In erat arcu, iaculis eu neque vel, congue suscipit erat. Donec luctus venenatis leo id vulputate.', 1200, 0),
(5, 5, 'L\'écharpe du lover', 'lecharpe-du-lover', 'cb7f91b81c66b0d66e8e14b57238e932f68bb337.jpeg', 'L\'écharpe parfait pour les soirées romantiques', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id maximus risus. Praesent et lectus velit. Cras maximus massa a libero commodo consequat. Etiam convallis vestibulum porta. Nam id felis et velit hendrerit posuere id in ipsum. Morbi eu convallis ligula, a vestibulum dui.', 1900, 0),
(6, 5, 'L\'écharpe du samedi soir', 'lecharpe-du-samedi-soir', 'feb1dac56a1998e70d96f00dc0cb814f1cff281a.jpeg', 'L\'écharpe parfait pour vos weekends', 'Maecenas sagittis quam ac tortor accumsan facilisis. Integer pretium egestas dolor quis cursus. In enim odio, bibendum et sapien maximus, ultrices rhoncus risus. Ut porttitor nisl id accumsan malesuada. Sed tempor at nibh sed feugiat. Nullam at leo sit amet est pharetra placerat. Proin sed ex id metus ornare iaculis a ut tellus', 1400, 0),
(7, 1, 'Le manteau de soirée', 'le-manteau-de-soiree', '77a7bfd83b5ebe89119fe0ce74deddba72700fd5.jpeg', 'Le manteau français pour vos soirées', 'Phasellus sit amet elementum justo, eu eleifend sapien. In dictum dolor vel maximus euismod. Duis ultricies gravida vehicula. Nulla sed ipsum eu dolor auctor semper nec in ante. Fusce volutpat mi metus, ut imperdiet ex porttitor sed. Aenean eu feugiat arcu, pharetra pulvinar velit.', 6900, 1),
(8, 1, 'Le manteau famille', 'le-manteau-famille', 'f91d3118c16983deaa30ed0cc3a17dedfc93bad0.jpeg', 'Le manteau pour vos sorties en famille', 'Vestibulum et neque mollis, iaculis ex nec, pharetra dolor. Donec eget mollis mi, ac pretium nisl. Aliquam quis pretium tellus. Ut risus risus, ultrices vel diam sed, pretium lobortis sapien. Integer sagittis sapien sit amet pretium malesuada. Aenean vel volutpat nunc, nec porta lectus. Maecenas suscipit libero vel mollis posuere', 7990, 1),
(9, 3, 'Le T-Shirt manches longues', 'le-t-shirt-manches-longues', 'b0c13bb7fb407872b7f9a7d4d867462d63529711.jpeg', 'Le T-Shirt taillé pour les hommes', 'Nullam libero ipsum, posuere quis accumsan quis, pellentesque a mi. Cras vitae suscipit sem. Sed id nibh id quam posuere volutpat. Duis nec ex luctus, malesuada velit et, tincidunt est. Ut sit amet libero eget erat condimentum scelerisque id sit amet quam. Morbi cursus, libero at consectetur placerat, elit enim laoreet nunc, id porta nibh neque sed felis.', 1490, 0),
(10, 3, 'Le T-Shirt Basic', 'le-t-shirt-basic', '92f844db470a6ed8bcbf87f755256302b61ef14d.jpeg', 'Le basic parfait pour les hommes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac tempor nisl. Ut ac faucibus justo. Cras tempus interdum posuere. Nulla in massa blandit, mattis tortor non, lobortis mauris. Duis hendrerit euismod mollis. Aliquam dignissim ante diam. Nam porta tempus quam a dapibus. Maecenas interdum dignissim pretium. Sed vel erat dictum, sagittis odio in, dignissim nulla. Cras egestas aliquet neque eu tempor. Phasellus eget cursus massa, at porttitor urna.', 990, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password`
--

DROP TABLE IF EXISTS `reset_password`;
CREATE TABLE IF NOT EXISTS `reset_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B9983CE5A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password`
--

INSERT INTO `reset_password` (`id`, `user_id`, `token`, `created_at`) VALUES
(1, 18, '60259ecfa661a', '2021-02-11 21:17:03'),
(2, 18, '60259fe252d87', '2021-02-11 21:21:38'),
(3, 18, '6025a117b9bf5', '2021-02-11 21:26:47'),
(4, 18, '6025a19b42a90', '2021-02-11 21:28:59'),
(5, 10, '6025a22ba9aec', '2021-02-11 21:31:23'),
(6, 18, '6025a2340f729', '2021-02-11 21:31:32'),
(7, 18, '6028368f73375', '2021-02-13 20:29:03'),
(8, 18, '6028376f177f0', '2021-02-13 20:32:47');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(10, 'test@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TDBKUGphY0NCcll5LzB6Rg$v6ql3umS6JeTvzRWZugH3e+Q6zU1BVPLKUDuo1lxsTo', 'test', 'test'),
(12, 'test1@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YklTem1MN3IvZ3J4ZlRCaA$IzV5xi+gD7T+MhHBjZb19DlmGuXQTKal5eqNXl9nxOE', 'Yael', 'Abitbol'),
(18, 'yaelabitbol7@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$eC9KMmV6R3F4bWlpbTUuWg$gKIMiHxpF28ipCOVJvMcYIPNX/qioN/VGb5qHBbM060', 'Yael', 'Abitbol'),
(19, 'eden@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NTdhVmd4Y2NwSlN4MkVzOQ$L/z18kwNN0WFMUZrt4m6IR5KcGs7lC38W4j/pP2rgMA', 'eden', 'eden');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C1BFCDF877` FOREIGN KEY (`my_order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `FK_B9983CE5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
