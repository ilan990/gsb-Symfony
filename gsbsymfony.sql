-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 16 Avril 2022 à 21:00
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gsbsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220415131407', '2022-04-16 20:32:38', 161);

-- --------------------------------------------------------

--
-- Structure de la table `labo`
--

CREATE TABLE `labo` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chef_vente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `labo`
--

INSERT INTO `labo` (`id`, `nom`, `chef_vente`) VALUES
(1, 'Bourdon S.A.S.', 'Rémy Robin-Besnard'),
(2, 'Clement', 'Virginie du Navarro'),
(3, 'Fouquet', 'William Alexandre'),
(4, 'Jourdan', 'Nicolas Riou'),
(5, 'Fleury S.A.S.', 'Jérôme Le Goff'),
(6, 'Charrier S.A.R.L.', 'André Tessier'),
(7, 'Lecomte S.A.R.L.', 'Monique Legrand'),
(8, 'Valentin', 'Julien Imbert'),
(9, 'Hoarau', 'Dominique Cousin-Guillot'),
(10, 'Lambert Ribeiro S.A.S.', 'Zacharie-Augustin Grondin'),
(11, 'Dupre', 'Joseph Laporte'),
(12, 'Noel S.A.', 'Agathe Levy'),
(13, 'Ribeiro et Fils', 'Cécile Henry'),
(14, 'Laurent S.A.S.', 'Théophile Mendes'),
(15, 'Leduc Dias et Fils', 'Jacques Seguin'),
(16, 'Becker SAS', 'Alex Caron'),
(17, 'Bruneau Perret SAS', 'Nathalie Bousquet'),
(18, 'Bertrand', 'Antoinette Chretien'),
(19, 'Michel Guillaume S.A.S.', 'Michèle-Chantal Descamps'),
(20, 'Huet', 'Paul Delmas-Potier'),
(21, 'Carre Didier et Fils', 'Étienne Dufour'),
(22, 'Leclercq', 'Inès Bouvier'),
(23, 'Delaunay S.A.R.L.', 'Julien Jourdan'),
(24, 'Lacroix SARL', 'Édith Lelievre'),
(25, 'Fournier Chauveau S.A.', 'Vincent Joly'),
(26, 'Guillet Collet S.A.', 'Colette Collin'),
(27, 'Bernier Blanchet SAS', 'Anne Briand'),
(28, 'Evrard SARL', 'Pierre Pons'),
(29, 'Boulanger', 'Suzanne Bertrand'),
(30, 'Lamy', 'Frédérique de Garcia'),
(31, 'Dupre', 'Astrid Leveque'),
(32, 'Weiss', 'Alex-Adélaïde Brunet'),
(33, 'Ribeiro et Fils', 'Denis Guillet'),
(34, 'Bourdon et Fils', 'Julien Reynaud'),
(35, 'Lesage S.A.R.L.', 'Lorraine Ribeiro'),
(36, 'Ruiz SA', 'Aimée Marques'),
(37, 'Roche', 'Margaret Dos Santos'),
(38, 'Dias', 'Élodie Berger'),
(39, 'Valette', 'Paulette Rolland'),
(40, 'Bernier', 'Mathilde du Da Costa'),
(41, 'Menard Lacroix S.A.S.', 'Andrée Blot'),
(42, 'Schmitt', 'Thérèse Le Carpentier'),
(43, 'Raynaud', 'Bertrand Maillot'),
(44, 'Breton Lemaire SARL', 'Nicolas du Guibert'),
(45, 'Begue S.A.', 'Jean Girard'),
(46, 'Mahe', 'Augustin Chartier'),
(47, 'Richard', 'Maurice-René Moreau'),
(48, 'Perrier', 'Georges-Thibault Bodin'),
(49, 'Carlier S.A.R.L.', 'Adèle-Jacqueline Delaunay'),
(50, 'Blanc S.A.', 'Louise Martinez-Dupuis'),
(51, 'Georges', 'Brigitte Tessier-Roger'),
(52, 'Charpentier', 'Julie Jacob-Gonzalez'),
(53, 'Herve Bonnet S.A.S.', 'Olivie Bigot'),
(54, 'Poirier', 'Christine-Alex Rey'),
(55, 'Rey Becker et Fils', 'Dorothée Moreau'),
(56, 'Didier Guillaume SAS', 'Margot Bazin-Buisson'),
(57, 'Chevalier', 'Zacharie Hardy'),
(58, 'Prevost', 'Dominique Allard-Benoit'),
(59, 'Delaunay', 'Thibaut Gilles'),
(60, 'Rolland SAS', 'David-Gilbert Guerin'),
(61, 'Goncalves', 'Bertrand Colin-Vidal'),
(62, 'Delannoy Jacquet SAS', 'Marc Bouchet'),
(63, 'Ferrand Gillet SA', 'Sylvie Normand'),
(64, 'Adam SA', 'Stéphanie Herve-Courtois'),
(65, 'Foucher SARL', 'Océane Legros'),
(66, 'Gallet', 'Christophe Lefort'),
(67, 'Gonzalez', 'Laurence Boulay-Riviere'),
(68, 'Lagarde S.A.R.L.', 'Martine du Boutin'),
(69, 'Parent Voisin S.A.R.L.', 'Dominique Da Silva'),
(70, 'Lopes', 'Noël Paul'),
(71, 'Blanchet SARL', 'Éric Navarro'),
(72, 'David', 'Michel Dufour-Morin'),
(73, 'Humbert Dupuy et Fils', 'Grégoire Laroche-Reynaud'),
(74, 'Seguin SARL', 'Grégoire Klein'),
(75, 'Guillot', 'Mathilde Nguyen'),
(76, 'Riviere', 'Margaud du Gilles'),
(77, 'Weiss Chevallier S.A.R.L.', 'Hortense Clement'),
(78, 'Goncalves', 'Margaret Boyer'),
(79, 'Alexandre SAS', 'Martine Hardy'),
(80, 'Brunet', 'Agnès Guillon'),
(81, 'Gimenez SA', 'Caroline Neveu'),
(82, 'Traore', 'Gilles du Perret'),
(83, 'Barbe SAS', 'Alphonse Leconte'),
(84, 'Herve S.A.R.L.', 'Zoé Duhamel'),
(85, 'Vallet Lefort S.A.S.', 'Cécile Maillet'),
(86, 'Riou Torres S.A.R.L.', 'Bernard-Gilles Texier'),
(87, 'Germain', 'Luc Boucher'),
(88, 'Monnier SAS', 'Audrey Guerin'),
(89, 'Traore', 'Thomas De Oliveira'),
(90, 'Lecoq', 'Thierry-David Chauvin'),
(91, 'Etienne', 'Anne Millet'),
(92, 'Roussel', 'Louis Fernandez'),
(93, 'Riviere', 'Henri Lefort-Paul'),
(94, 'Fernandes S.A.R.L.', 'Claude Cousin'),
(95, 'Remy SAS', 'Roland De Oliveira'),
(96, 'Parent Weber SAS', 'Caroline-Sabine Clerc'),
(97, 'Gauthier et Fils', 'Benjamin Francois'),
(98, 'Briand', 'Thérèse Vasseur'),
(99, 'Bailly', 'Guy Delorme'),
(100, 'Martins Bouvet S.A.S.', 'Matthieu Dupuy'),
(101, 'Cohen SARL', 'Gérard De Sousa');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `code_secteur` int(11) NOT NULL,
  `nom_region` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`id`, `code_secteur`, `nom_region`) VALUES
(1, 5, 'Champagne-Ardenne'),
(2, 1, 'Saint-Martin'),
(3, 3, 'Saint-Barthélémy'),
(4, 1, 'Basse-Normandie'),
(5, 1, 'Provence-Alpes-Côte d\'Azur'),
(6, 3, 'Wallis-et-Futuna'),
(7, 4, 'Limousin'),
(8, 3, 'Basse-Normandie'),
(9, 2, 'Picardie'),
(10, 4, 'Polynésie française'),
(11, 5, 'Aquitaine'),
(12, 2, 'Limousin');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `secteur`
--

INSERT INTO `secteur` (`id`, `libelle`) VALUES
(1, 'NORD'),
(2, 'SUD'),
(3, 'EST'),
(4, 'OUEST'),
(5, 'CENTRE');

-- --------------------------------------------------------

--
-- Structure de la table `travailler`
--

CREATE TABLE `travailler` (
  `id` int(11) NOT NULL,
  `id_vis` int(11) NOT NULL,
  `date_embauche` date NOT NULL,
  `id_region` int(11) NOT NULL,
  `role_tra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `travailler`
--

INSERT INTO `travailler` (`id`, `id_vis`, `date_embauche`, `id_region`, `role_tra`) VALUES
(1, 72, '1995-05-23', 4, 'Surjeteur-raseur'),
(2, 61, '1976-01-21', 9, 'Céramiste concepteur'),
(3, 90, '2014-07-13', 12, 'Armurier spectacle'),
(4, 20, '1981-04-12', 9, 'Fromager'),
(5, 68, '1996-03-22', 12, 'Dégustateur'),
(6, 43, '1980-05-10', 12, 'Stucateur'),
(7, 82, '1975-10-29', 10, 'Coutelier d\'art'),
(8, 74, '2008-08-26', 11, 'Façadier-bardeur'),
(9, 76, '2002-06-16', 6, 'Bruiteur'),
(10, 52, '2018-03-26', 5, 'Fromager'),
(11, 90, '1994-03-06', 10, 'Ramasseur d\'endives'),
(12, 61, '1992-01-14', 11, 'Staffeur'),
(13, 98, '2012-11-05', 11, 'Maçonnerie'),
(14, 56, '1999-10-13', 8, 'Technicien plateau'),
(15, 2, '1986-07-24', 2, 'Agro-économiste'),
(16, 43, '1981-09-26', 8, 'Fraiseur'),
(17, 37, '1981-10-22', 11, 'Kiwiculteur'),
(18, 66, '2001-06-21', 1, 'Porteur de hottes'),
(19, 8, '1983-12-13', 4, 'Sapeur-pompier'),
(20, 36, '2013-04-01', 6, 'Sapeur-pompier'),
(21, 59, '1972-11-25', 9, 'Chef de scierie'),
(22, 68, '2004-06-23', 9, 'Céramiste concepteur'),
(23, 19, '2002-11-24', 2, 'Aspigiculteur'),
(24, 24, '1992-01-09', 10, 'Hydrothérapie'),
(25, 72, '1978-03-23', 8, 'Monteur-frigoriste'),
(26, 9, '2005-09-06', 5, 'Défloqueur d\'amiante'),
(27, 59, '1995-03-08', 9, 'Ingénieur géologue'),
(28, 71, '1996-12-14', 8, 'Géomètre'),
(29, 87, '1979-03-17', 4, 'Médiateur judiciaire'),
(30, 84, '2002-12-23', 11, 'Verrier à main levée'),
(31, 81, '2008-10-08', 2, 'Aide à domicile'),
(32, 72, '2015-02-14', 1, 'Diététique'),
(33, 62, '2007-12-29', 10, 'Opérateur du son'),
(34, 21, '1976-05-05', 5, 'Médecin scolaire'),
(35, 30, '1995-04-23', 3, 'Professeur d\'italien'),
(36, 97, '1978-06-29', 12, 'Carrier'),
(37, 94, '1999-03-30', 4, 'Monteur-truquiste'),
(38, 91, '1975-10-02', 2, 'Hôte de caisse'),
(39, 51, '1978-07-27', 7, 'Assistant styliste'),
(40, 36, '2011-06-10', 5, 'Appareilleur-gazier'),
(41, 85, '2017-04-08', 12, 'Plaquiste enduiseur'),
(42, 44, '1981-09-18', 3, 'Analyste télématique'),
(43, 99, '2006-09-06', 11, 'Ingénieur du son'),
(44, 19, '1973-07-15', 9, 'Délégué vétérinaire'),
(45, 4, '1982-08-21', 7, 'Téléconseiller'),
(46, 82, '1991-05-30', 6, 'Dee-jay'),
(47, 60, '2000-08-28', 4, 'Délégué à la tutelle'),
(48, 14, '1976-04-03', 2, 'Scénariste'),
(49, 87, '2009-12-28', 2, 'Commis de coupe'),
(50, 28, '2017-02-02', 12, 'Fraiseur mouliste'),
(51, 81, '1983-07-05', 1, 'Ingénieur géologue'),
(52, 24, '2020-06-06', 10, 'Magicien'),
(53, 52, '1977-01-07', 3, 'Endivier'),
(54, 100, '1974-09-25', 2, 'Coffreur béton armé'),
(55, 93, '1992-03-13', 11, 'Parqueteur'),
(56, 42, '1995-01-22', 12, 'Brigadier'),
(57, 43, '1990-08-22', 2, 'Assistant logistique'),
(58, 35, '1982-12-19', 3, 'Délégué vétérinaire'),
(59, 50, '2019-12-24', 4, 'Clerc hors rang'),
(60, 25, '1988-08-05', 9, 'Hématologue'),
(61, 87, '1985-08-24', 9, 'Danseur'),
(62, 80, '1975-07-24', 11, 'Tôlier-traceur'),
(63, 27, '1990-07-07', 1, 'Scénariste'),
(64, 41, '2012-10-10', 3, 'Caviste'),
(65, 59, '2008-07-04', 12, 'Chef du personnel'),
(66, 62, '1989-01-13', 5, 'Médecin scolaire'),
(67, 44, '2013-02-14', 9, 'Vendeur en lingerie'),
(68, 35, '1982-03-03', 1, 'Eleveur de volailles'),
(69, 43, '1974-06-12', 11, 'Parqueteur'),
(70, 45, '2008-07-23', 10, 'Gynécologue'),
(71, 16, '2019-08-20', 4, 'Finance'),
(72, 57, '1972-03-12', 1, 'Vidéo-jockey'),
(73, 66, '1985-03-21', 9, 'Animateur d\'écomusée'),
(74, 36, '1977-06-22', 4, 'Billettiste voyages'),
(75, 46, '2011-02-02', 7, 'Pédicure pour bovin'),
(76, 44, '2015-08-03', 7, 'Maître de ballet'),
(77, 21, '1986-07-07', 2, 'Vendeur carreau'),
(78, 74, '1979-06-30', 3, 'Garçon de hall'),
(79, 8, '1978-07-15', 1, 'Fromager'),
(80, 101, '2019-12-22', 3, 'Gériatre'),
(81, 32, '2019-07-12', 8, 'Juge des enfants'),
(82, 51, '1972-01-24', 7, 'Maïeuticien'),
(83, 39, '1998-10-13', 5, 'Chasseur-bagagiste'),
(84, 25, '1982-04-23', 1, 'Modéliste industriel'),
(85, 67, '2020-12-30', 10, 'Marbrier-poseur'),
(86, 2, '1999-03-07', 3, 'Doreur sur métaux'),
(87, 42, '2003-06-21', 6, 'Conseiller culinaire'),
(88, 83, '2008-04-18', 12, 'Façadier-bardeur'),
(89, 28, '1992-02-08', 9, 'Epithésiste'),
(90, 4, '1986-09-18', 7, 'Frigoriste maritime'),
(91, 18, '1977-11-17', 11, 'Copiste offset'),
(92, 76, '1981-03-22', 8, 'Conception et études'),
(93, 42, '1989-05-05', 1, 'Responsable de salle'),
(94, 89, '1994-08-28', 9, 'Ingénieur géomètre'),
(95, 13, '2006-10-31', 5, 'Facteur'),
(96, 50, '1983-03-28', 6, 'Conseiller relooking'),
(97, 5, '1973-12-30', 4, 'Régleur funéraire'),
(98, 13, '2021-04-15', 8, 'Topographe'),
(99, 64, '2006-04-26', 12, 'Commandant de police'),
(100, 81, '2019-04-10', 8, 'Facteur de secteur'),
(101, 7, '1976-01-03', 7, 'Vendeur en lingerie');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(1, 'ilan_assouline@hotmail.fr', '[]', '$2y$13$r6t52PjQ9Prb/0cezMXCtulJI10V407Ak93o8Rstpi17pU6h2BFmi', 0);

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_embauche` date NOT NULL,
  `code_secteur` int(11) NOT NULL,
  `labo_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`, `date_embauche`, `code_secteur`, `labo_code`) VALUES
(1, 'Brigitte', 'Hubert', '864, boulevard Roche', '30321', 'Legendre', '2002-05-02', 4, 85),
(2, 'Aurore', 'Gimenez', '37, rue de Durand', '50750', 'Vaillant', '2012-08-24', 4, 8),
(3, 'Jean', 'Marie', '91, boulevard Eugène Royer', '20832', 'Devauxdan', '2020-09-03', 5, 8),
(4, 'Frédérique', 'Bonneau', '45, boulevard Begue', '18535', 'Bousquet', '2020-11-30', 4, 20),
(5, 'Catherine', 'Seguin', '42, rue Philippine Barbe', '96935', 'Marion-la-Forêt', '2018-04-08', 4, 13),
(6, 'Franck', 'Pineau', '51, chemin Olivier', '41053', 'Gilbert', '2003-12-13', 2, 22),
(7, 'Thibaut', 'Martin', '684, avenue de Blot', '74836', 'Gilbert-sur-De Sousa', '2010-09-25', 1, 43),
(8, 'Julien', 'Riviere', 'avenue Chevalier', '81990', 'Texier', '2009-10-28', 3, 21),
(9, 'Arnaude', 'Maurice', '61, rue Célina Grondin', '31599', 'Dijoux-sur-Perez', '2013-10-18', 4, 27),
(10, 'Jeanne', 'Delaunay', 'impasse de Briand', '24898', 'Mathieudan', '2000-11-02', 1, 41),
(11, 'Sébastien', 'Texier', 'rue Moreau', '98707', 'Roux', '2007-06-09', 1, 15),
(12, 'Christiane', 'Vidal', 'rue de Barre', '31405', 'Guyot-sur-Mer', '2014-12-08', 1, 3),
(13, 'Julien', 'Thierry', '889, boulevard Noel', '65779', 'Hardy', '2013-10-08', 2, 60),
(14, 'Thérèse', 'Leduc', 'chemin Guilbert', '14602', 'Gonzalez-sur-Marechal', '2010-10-22', 1, 26),
(15, 'Louis', 'Torres', '867, chemin de Monnier', '35018', 'Lemoine-sur-Garcia', '2017-08-08', 5, 9),
(16, 'Frédéric', 'Wagner', '784, rue Julien Couturier', '87972', 'Coulondan', '2020-12-29', 3, 56),
(17, 'Christophe', 'Coulon', '7, rue Muller', '24778', 'Valentin', '2008-04-11', 4, 4),
(18, 'Monique', 'Breton', '31, chemin de Verdier', '99088', 'Baudry', '2004-06-19', 4, 71),
(19, 'Michel', 'Bernier', '44, chemin Garcia', '22033', 'Allain', '2000-05-10', 1, 81),
(20, 'Adèle', 'Richard', '91, boulevard de Giraud', '40113', 'Bourdon', '2017-11-07', 5, 40),
(21, 'Gilles', 'Turpin', '3, avenue de Clement', '91504', 'Briand', '2007-06-16', 4, 71),
(22, 'Roland', 'Petitjean', '35, place Thomas Imbert', '16385', 'Didier-sur-Mer', '2004-10-15', 1, 90),
(23, 'Jérôme', 'Chartier', 'rue de Nguyen', '36081', 'Riou-la-Forêt', '2005-08-02', 3, 49),
(24, 'Étienne', 'Marchal', '889, place de Chevallier', '68808', 'Fernandezdan', '2016-08-19', 5, 79),
(25, 'Tristan', 'Hamel', '23, impasse Audrey Texier', '24333', 'Giraud-les-Bains', '2015-04-10', 4, 24),
(26, 'Océane', 'Ruiz', '600, rue de Charles', '10933', 'RousselVille', '2016-04-13', 3, 37),
(27, 'Guillaume', 'Pascal', '2, avenue de Dijoux', '33576', 'Devaux', '2021-08-06', 1, 37),
(28, 'Louis', 'Maury', '12, rue Jules Bouvier', '68783', 'Francois', '2009-09-09', 2, 71),
(29, 'Isabelle', 'Hoareau', '65, place Alexandria Lecomte', '51378', 'Leroux', '2010-06-24', 2, 35),
(30, 'Dorothée', 'Lejeune', '273, rue Besson', '82899', 'Lambertboeuf', '2015-06-14', 4, 31),
(31, 'Corinne', 'Lemoine', 'avenue Gérard Marques', '47999', 'Pons', '2007-10-29', 2, 53),
(32, 'Noël', 'Daniel', '83, avenue de Lombard', '89228', 'Roux', '2009-02-27', 3, 42),
(33, 'Luce', 'Gallet', '46, impasse Raymond Letellier', '32747', 'Traore', '2007-12-29', 2, 72),
(34, 'Frédérique', 'Joseph', 'impasse Sanchez', '29262', 'Piresdan', '2009-05-08', 4, 26),
(35, 'Juliette', 'Dupuis', '25, impasse Monnier', '45950', 'Levy', '2009-05-02', 5, 61),
(36, 'Yves', 'Hebert', '71, rue de Pages', '64931', 'Laine', '2021-03-31', 4, 49),
(37, 'Adrien', 'Camus', '67, boulevard Élodie Godard', '45054', 'Guibert', '2021-08-08', 1, 27),
(38, 'Françoise', 'Guichard', '61, place Marianne Pasquier', '61061', 'Renard', '2002-02-26', 5, 69),
(39, 'Josette', 'Albert', '63, place de Vallee', '24765', 'Guichardnec', '2003-05-04', 5, 89),
(40, 'Roland', 'Levy', '1, impasse Diane Perrier', '12285', 'Neveu', '2018-06-19', 5, 88),
(41, 'Cécile', 'Marin', '81, chemin Nathalie Bouvier', '12985', 'Poulain-sur-Mer', '2004-04-19', 5, 4),
(42, 'Georges', 'Clement', '49, avenue de Albert', '82637', 'Faivre', '2010-06-02', 5, 20),
(43, 'William', 'Hoarau', '84, rue Weiss', '18480', 'Denis', '2020-08-22', 5, 23),
(44, 'Sabine', 'Charpentier', '63, chemin Bourgeois', '81020', 'Lombard', '2018-10-07', 4, 37),
(45, 'Paulette', 'Hoareau', 'place Buisson', '76882', 'Muller-les-Bains', '2007-02-26', 4, 72),
(46, 'Étienne', 'Ribeiro', '87, boulevard de Rey', '52699', 'Weiss', '2019-06-08', 4, 57),
(47, 'Robert', 'Traore', '25, chemin Christophe Sauvage', '65293', 'Deschampsnec', '2012-05-25', 4, 88),
(48, 'Vincent', 'Rodrigues', '6, avenue de Leleu', '22489', 'Leger-sur-Guyot', '2013-04-24', 1, 37),
(49, 'Patrick', 'Courtois', '12, chemin de Levy', '96044', 'Rodrigues', '2003-12-02', 1, 21),
(50, 'Laurent', 'Vallee', 'avenue Bousquet', '16326', 'Renarddan', '2013-10-29', 2, 48),
(51, 'Martin', 'Bonnin', '617, avenue Menard', '50496', 'Dupontboeuf', '2015-05-24', 5, 12),
(52, 'Alex', 'Pierre', '2, rue de Guillet', '21953', 'Rey-sur-Da Costa', '2008-01-17', 4, 24),
(53, 'Josette', 'Petitjean', '3, rue Louis Dupuis', '83940', 'Aubry', '2007-12-02', 1, 33),
(54, 'Guillaume', 'Aubry', '6, rue Normand', '18607', 'DurandBourg', '2020-03-24', 1, 46),
(55, 'Aimé', 'Herve', '129, rue Perez', '81664', 'Guichard-la-Forêt', '2017-08-31', 3, 72),
(56, 'Zoé', 'Becker', '56, chemin Nicole Diaz', '48218', 'Philippe', '2009-10-05', 1, 87),
(57, 'Martine', 'Marion', 'avenue Monnier', '61260', 'Bousquetdan', '2021-09-25', 5, 83),
(58, 'Corinne', 'Gautier', '99, avenue Rocher', '56903', 'Barthelemy', '2016-05-30', 2, 57),
(59, 'Alexandrie', 'Leblanc', '437, impasse Jules Maillot', '51547', 'JacquesBourg', '2005-12-04', 3, 27),
(60, 'Maurice', 'Clement', '20, place de Peron', '61320', 'Gros-la-Forêt', '2000-02-22', 1, 97),
(61, 'William', 'Pineau', '19, rue David', '77522', 'Breton-sur-Mer', '2016-08-15', 4, 96),
(62, 'Daniel', 'Blanc', '9, rue de Guillet', '63403', 'LefevreVille', '2005-06-23', 1, 99),
(63, 'Olivie', 'Bruneau', '64, rue Dumont', '74433', 'Prevost', '2003-03-03', 1, 30),
(64, 'Guy', 'Besnard', '72, rue Simon', '20922', 'Levy-sur-Mer', '2019-04-16', 5, 79),
(65, 'Aurore', 'Pottier', '648, boulevard de Descamps', '15687', 'Boulay', '2008-12-19', 2, 67),
(66, 'Jacques', 'Chauvin', '44, rue Philippe Huet', '98719', 'Ledoux-sur-Charpentier', '2021-01-29', 3, 84),
(67, 'Jules', 'Jean', '718, boulevard Lemonnier', '47072', 'Boulanger', '2007-08-12', 3, 69),
(68, 'Bertrand', 'Ferreira', '35, impasse Gauthier', '17158', 'Giraud-la-Forêt', '2001-01-19', 2, 21),
(69, 'Guillaume', 'Bertrand', 'boulevard Lombard', '66756', 'LemaitreBourg', '2000-04-30', 2, 17),
(70, 'Isaac', 'Pelletier', '1, impasse Édouard Hamon', '34482', 'Arnaud', '2017-03-18', 1, 95),
(71, 'Nathalie', 'Rossi', '244, boulevard de Chartier', '79926', 'Maurice', '2018-05-18', 1, 28),
(72, 'François', 'Martin', '88, chemin Perret', '37189', 'Dufour', '2012-05-16', 2, 70),
(73, 'André', 'Marion', '11, impasse de Lelievre', '82935', 'Simon', '2007-08-07', 5, 69),
(74, 'Anaïs', 'Lamy', '642, rue Blondel', '23021', 'Lecontenec', '2018-05-15', 3, 52),
(75, 'Louise', 'Lebreton', '719, impasse de Klein', '78228', 'Auger', '2005-03-26', 1, 75),
(76, 'Claude', 'Hamon', '3, rue Madeleine Henry', '64975', 'Laporte', '2020-06-11', 1, 21),
(77, 'Marcelle', 'Guichard', '2, chemin Gabriel Carpentier', '41974', 'Coulon-les-Bains', '2002-11-12', 4, 92),
(78, 'Thibaut', 'Huet', '40, rue de Maillard', '90324', 'Lopes-sur-Labbe', '2018-07-27', 3, 100),
(79, 'Brigitte', 'Thomas', 'impasse de Carpentier', '59354', 'Begueboeuf', '2020-06-03', 3, 1),
(80, 'Aimée', 'Lagarde', 'rue Lorraine Carre', '99361', 'Devaux', '2010-08-03', 5, 81),
(81, 'Frédéric', 'Rolland', 'rue Vasseur', '92231', 'Ferrand-sur-Mer', '2000-01-29', 4, 18),
(82, 'Pierre', 'Marechal', '71, boulevard de Laine', '97190', 'Lemonnier', '2013-07-11', 5, 53),
(83, 'Dominique', 'Pierre', '23, rue Joseph', '61646', 'Mauricedan', '2020-04-28', 5, 61),
(84, 'Gilbert', 'Leroux', '98, chemin Moulin', '48713', 'Leclerc', '2005-12-04', 5, 15),
(85, 'Daniel', 'Mace', 'rue Margaret Georges', '30367', 'Brunel', '2018-08-14', 4, 5),
(86, 'Julie', 'Noel', '786, boulevard de Wagner', '37485', 'Brunet-les-Bains', '2018-01-16', 1, 82),
(87, 'Patrick', 'Bouvier', '40, rue Isabelle Chauveau', '82812', 'Ribeironec', '2013-05-07', 1, 17),
(88, 'Isaac', 'Toussaint', '104, boulevard William Lefevre', '35460', 'Verdier-sur-Diallo', '2001-12-26', 4, 12),
(89, 'Hélène', 'Bonnet', '79, avenue Éric Mathieu', '48258', 'Petitjean', '2012-11-10', 4, 90),
(90, 'Josette', 'Dupre', '2, boulevard de Couturier', '64963', 'Hoarau', '2010-02-17', 3, 31),
(91, 'Françoise', 'Collin', '660, boulevard Brigitte Gautier', '27324', 'Leleu-sur-Menard', '2020-02-08', 4, 95),
(92, 'Olivier', 'Faure', '46, place Francois', '19416', 'Lamy', '2006-07-28', 2, 7),
(93, 'Yves', 'Lamy', '80, impasse de Bonnin', '42170', 'RaymondBourg', '2020-01-30', 5, 34),
(94, 'Hortense', 'Marchal', '8, rue Maillard', '69550', 'Renaudnec', '2003-09-07', 3, 79),
(95, 'Simone', 'Marin', '47, rue Bonnet', '83856', 'Diaz-sur-Lemonnier', '2000-01-08', 1, 69),
(96, 'Jérôme', 'Remy', '76, boulevard Giraud', '10141', 'Pruvost', '2002-01-01', 1, 81),
(97, 'Denis', 'Chauveau', '477, avenue Daniel', '72918', 'De Sousa-la-Forêt', '2007-01-31', 1, 79),
(98, 'Marcel', 'Leveque', '79, chemin de Blanchet', '22360', 'Olivier', '2005-10-25', 2, 57),
(99, 'Océane', 'Lelievre', '8, rue de Blanc', '26136', 'Camus', '2005-01-27', 3, 96),
(100, 'Laurent', 'Lemaire', '11, rue Menard', '47697', 'Richard', '2020-04-22', 3, 39),
(101, 'Denis', 'Tanguy', '63, rue Élodie Barbe', '63672', 'Pires', '2007-10-05', 2, 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `labo`
--
ALTER TABLE `labo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `travailler`
--
ALTER TABLE `travailler`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `labo`
--
ALTER TABLE `labo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `travailler`
--
ALTER TABLE `travailler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
