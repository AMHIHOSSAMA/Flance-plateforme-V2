-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 juin 2022 à 16:00
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `filerougedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categor` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categor`, `nom`) VALUES
(100, 'Digital Marketing'),
(200, 'Design'),
(300, 'Programmation');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `numtel` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `dateinscription` date DEFAULT NULL,
  `passwords` int(11) NOT NULL,
  `image` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `numtel`, `email`, `dateinscription`, `passwords`, `image`) VALUES
(1, 'MANSSOUR', 'YASSIN', '0634657975', 'manssour.yassin@gmail.com', '2022-06-15', 123456, 'data:image/jpeg;base64,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'),
(2, 'MAHDI', 'Karim', '0634657975', 'mahdi.karim@gmail.com', '2022-06-20', 123456, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFzLT-1RgX3STtJVd7SeIsiOkRE73GRSc_f80aNde1KcDJ6dTTgQ1UEXZKyf-Q82Gnq08&usqp=CAU'),
(3, 'DAHRI ', 'SALMA', '0643672348', 'dahri.salma@gmail.com', '2022-07-01', 123456, 'https://blog.payoneer.com/wp-content/uploads/2020/10/Becoming-a-Successful-Freelancer-2-1280x720.jpg'),
(4, 'KANDIL', 'MARIAM', '0612457215', 'kandil.mariam@gmail.com', '2000-02-12', 123456, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjlIY-hb3WMjgtVjaeJ6JD_ehzwCbJn0PhyHUceYadEnplF2VYPGvJD39X7dYDO8z61VU&usqp=CAU'),
(5, 'ASKRAM', 'DINA', '0643672348', 'askram.dima@gmail.com', '2022-06-24', 123456, 'https://www.westend61.de/images/0001588050pw/young-female-freelancers-working-on-laptop-together-at-home-PNAF02097.jpg'),
(6, 'GOUMI', 'NIHAN', '0687934545', 'goumi.nihan@gmail.com', '2022-05-18', 123456, 'https://www.creativeboom.com/uploads/articles/01/01127121927824893248bdcea5f9ab193cb28b1c_810.jpeg'),
(7, 'BAKKALI', 'MOUNIR', '0647201458', 'bakkali.mounir@gmail.com', '2001-02-12', 123456, 'https://fjwp.s3.amazonaws.com/blog/wp-content/uploads/2020/10/02072937/Freelancer-start.png'),
(8, 'SURY', 'IBRAHIM', '0643672348', 'sury.ibrahim@gmail.com', '2000-12-02', 123456, 'https://assets.entrepreneur.com/content/3x2/2000/20170613215537-GettyImages-628023676.jpeg'),
(9, 'HARACK', 'SOUHAILA', '0634657975', 'harack.souhaila@gmail.com', '2022-06-14', 123456, 'data:image/jpeg;base64,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');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id_comp` int(11) NOT NULL,
  `nomCompetence` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id_comp`, `nomCompetence`) VALUES
(1, 'Logo design'),
(2, 'UX design'),
(3, 'UI design'),
(4, 'Social media '),
(5, 'Content marketing'),
(6, 'SEO'),
(7, 'HTML'),
(8, 'CSS'),
(9, 'JavaScript'),
(10, 'PHP'),
(11, 'WORDPRESS');

-- --------------------------------------------------------

--
-- Structure de la table `freecompetences`
--

CREATE TABLE `freecompetences` (
  `FreelanceID` int(11) DEFAULT NULL,
  `CompsID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `freelancers`
--

CREATE TABLE `freelancers` (
  `idFreelancer` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `telnumber` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `desription` varchar(254) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL,
  `passwords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `freelancers`
--

INSERT INTO `freelancers` (`idFreelancer`, `nom`, `prenom`, `date`, `telnumber`, `email`, `desription`, `image`, `passwords`) VALUES
(1, 'Amhih', 'Ossama', '2022-06-08 00:00:00', '0623900546', 'oussamaamhih2@gmail.com', 'Je suis UX UI DESIGNER ', 'https://wise.com/imaginary/freelance-self-employed-france.jpg', '123456'),
(2, 'HARAK', 'SOUHAILA', '2022-06-15 00:00:00', '0623904387', 'harak.souhaila@gmail.com', 'Je suis Développeuse FULL-STACK', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM6n_EGsoy6e5Y1DkaBYiPNpobMxJLBw3i2bpRbHl9UrdETQLqU7-hHTEfkJjj1WO0-Y0&usqp=CAU', '123456'),
(3, 'BARI ', 'ZAKARIA', '2022-06-19 00:00:00', '0623904387', 'bari.zakaria@gmail.com', 'Je suis Développeur web full-stack', 'https://www.thestatesman.com/wp-content/uploads/2021/02/QT-How-Freelancers-Can-Break-Into-The-Tech-Industry.jpg', '123456'),
(4, 'KAYSSI', 'ZAYD', '2022-06-25 00:00:00', '0987654386', 'kayssi.zayd@gmail.com', 'Je suis Développeur Wordpress', 'https://www.bradhussey.ca/wp-content/uploads/2022/02/malte-helmhold-7xlg2MuTk9c-unsplash-scaled.jpg', '123456'),
(5, 'BENRABAH', 'FATIMA', '2022-06-25 00:00:00', '0987654386', 'benrabah.fatima@gmail.com', 'Je suis Développeuse front-end', 'https://s3.envato.com/files/6d75090a-4e58-4c4f-b760-debfcfb602ee/inline_image_preview.jpg', '123456'),
(6, 'LESSANDIN', 'KHAOULA', '2000-03-30 00:00:00', '0623921405', 'lessandenn.khaoula@gmail.com', 'Je suis Graphique designer', 'https://images.unsplash.com/photo-1611872336305-2bb819409c3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBoaWphYnxlbnwwfHwwfHw%3D&w=1000&q=80', '123456'),
(7, 'HSSAIN', 'BADR', '2022-06-16 00:00:00', '0623921405', 'hssain.badr@gmail.com', 'Je suis Graphique designer', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtki_Y4pV-DH1d9RcdvDemv2LO6C02pkcUHw&usqp=CAU', '123456'),
(8, 'ABASS ', 'YOUNESS', '2022-06-16 00:00:00', '0623904387', 'abass.youness@gmail.com', 'Je suis Développeur web full-stack', 'https://wise.com/imaginary/c0e262a0d513a8c585921d49b7f8d573.jpg', '123456'),
(9, 'OUBAOUCH', 'CHAEIMAE', '2022-06-24 00:00:00', '0623947546', 'oubaouch.chaeimae@gmail.com', 'Je suis Graphique designer', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgVFRUYGBgYGhgYGBgYGBkaGhgYGBgZGRgaGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQhJCs1NDQ0NjQ0NDE2NDQ2MTQ0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAKgBLAMBIgACEQEDEQH', '123456'),
(10, 'KANDIL', 'OMAR', '2022-06-09 00:00:00', '0623900598', 'kandil.omar@gmail.com', 'Je suis Développeur web full-stack', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFRYYGBgaGhgcHBgcGhgcGRgYGBgaHBgYGRgcIS4lHB4rHxgYJjgmKy8xNTU1GiU7QDs0Py40NTEBDAwMEA8QHxISHjYsJSw0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAKgBLAMBIgACEQEDEQH', '123456'),
(11, 'RADI', 'WAFAE', '2022-06-15 00:00:00', '0623921405', 'radi.wafae@gmail.com', 'Je suis Développeur Wordpress', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBa44E5nb9PGX9S0y1Iz-7_VZBo2xL76naw&usqp=CAU', '123456'),
(12, 'EMRANI', 'EMRAN', '2021-11-16 00:00:00', '0987654345', 'emrni.emran@gmail.com', 'Je suis Digital marketer', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3RxLH536Fcv3CWHuu1aUMgknicj8RtbyVdw&usqp=CAU', '123456'),
(13, 'NAWRASS', 'AYHAM', '0000-00-00 00:00:00', '0617452891', 'nawrass.ayham@gmail.com', 'Je suis digital marketer', 'https://t3.ftcdn.net/jpg/03/56/68/96/240_F_356689689_nv13vuFrYK3rAQospF6BogUa9uXm2KBf.jpg', '123456'),
(24, 'Amhih', 'Ossama', '2022-06-08 00:00:00', '0623900546', 'oussamaamhih200@gmail.com', NULL, NULL, '12345Amhih@'),
(25, 'zrad', 'YASSMIN', '2022-06-15 00:00:00', '0345789124', 'zrad.yassmin@gmail.com', NULL, NULL, '123456Amhih@'),
(26, 'Amhih', 'Ossama', '2022-06-01 00:00:00', '0623900546', 'oussamaamhih2001@gmail.com', NULL, NULL, '123456Amhih@'),
(27, 'Amhih', 'Ossama', '2022-06-24 00:00:00', '0623900546', 'oussamaamhih799@gmail.com', NULL, NULL, '123456Amhih@'),
(28, 'LAOULALI', 'KARIM', '2022-06-23 00:00:00', '0623900546', 'laoulali.karim@gmail.com', NULL, NULL, '123456Amhih@');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `idCategor` int(11) DEFAULT NULL,
  `idFreelancer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projets_profss`
--

CREATE TABLE `projets_profss` (
  `numProj` int(11) NOT NULL,
  `idFreelancer` int(11) NOT NULL,
  `titre` varchar(254) DEFAULT NULL,
  `descriProj` varchar(254) DEFAULT NULL,
  `urlProjet` varchar(254) DEFAULT NULL,
  `imageProj` varchar(3000) NOT NULL,
  `categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projets_profss`
--

INSERT INTO `projets_profss` (`numProj`, `idFreelancer`, `titre`, `descriProj`, `urlProjet`, `imageProj`, `categorie`) VALUES
(1, 1, 'Agence website', 'Je développerai votre site web selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/6c7923142936425.Y3JvcCw4MDgsNjMyLDAsMA.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/6c7923142936425.Y3JvcCw4MDgsNjMyLDAsMA.png', 'Programmation'),
(2, 2, 'Construction plateforme', 'Je développerai votre plateforme selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/21690d130838231.625b2c742cba0.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/21690d130838231.625b2c742cba0.jpg', 'Programmation'),
(3, 2, 'Fort telecom website', 'Je développerai votre telecome website selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/8b4a4c140931727.Y3JvcCwxNjE2LDEyNjQsMCww.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/8b4a4c140931727.Y3JvcCwxNjE2LDEyNjQsMCww.png', 'Programmation'),
(4, 3, 'YOGA WEBSITE', 'est un yoga learning website', 'https://mir-s3-cdn-cf.behance.net/projects/404/21cd08139570223.Y3JvcCw1NjAwLDQzODAsMCwxMw.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/21cd08139570223.Y3JvcCw1NjAwLDQzODAsMCwxMw.png', 'Programmation'),
(5, 3, 'Store des vetements', 'Créative store des vetementes modérnes', 'https://mir-s3-cdn-cf.behance.net/projects/404/d8c558143974231.Y3JvcCw4MDgsNjMyLDAsMA.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/d8c558143974231.Y3JvcCw4MDgsNjMyLDAsMA.png', 'Programmation'),
(6, 4, 'Agence design website', 'Je développerai votre design agence site web selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/e41b42144828293.Y3JvcCwxOTIwLDE1MDEsMCww.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/e41b42144828293.Y3JvcCwxOTIwLDE1MDEsMCww.png', 'Programmation'),
(7, 4, 'Architicture website', 'Je développerai votre architicture site web selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/e72cb3109137557.Y3JvcCwxNDQwLDExMjYsMCwz.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/e72cb3109137557.Y3JvcCwxNDQwLDExMjYsMCwz.jpg', 'Programmation'),
(8, 1, 'UX APP FOOD', 'UX design dun application food', 'https://mir-s3-cdn-cf.behance.net/projects/404/9403b8144779017.Y3JvcCwxNjE2LDEyNjQsMCww.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/9403b8144779017.Y3JvcCwxNjE2LDEyNjQsMCww.jpg', 'Design'),
(9, 1, 'Fine art design', 'Je développerai votre site web fine art selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/f00d31144028363.Y3JvcCw4MDgsNjMyLDAsMA.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/f00d31144028363.Y3JvcCw4MDgsNjMyLDAsMA.jpg', 'Design'),
(10, 1, 'HVENT UX DESIGN', 'Je développerai votre HAVENT site web  selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/d16c77126901637.Y3JvcCwyNjg0LDIxMDAsMjY1LDA.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/d16c77126901637.Y3JvcCwyNjg0LDIxMDAsMjY1LDA.png', 'Design'),
(11, 1, 'App UX Design', 'Je développerai votre application design selon votre souhait', 'https://mir-s3-cdn-cf.behance.net/projects/404/b794af125006145.Y3JvcCwxNDAwLDEwOTUsMCwxMDM.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/b794af125006145.Y3JvcCwxNDAwLDEwOTUsMCwxMDM.jpg', 'Design'),
(12, 13, 'SOCIAL Media Marketing', 'Je serai votre responsable du marketing numérique et votre responsable des médias sociaux', 'https://mir-s3-cdn-cf.behance.net/projects/404/a378ef99950419.Y3JvcCwxOTk5LDE1NjQsMCww.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/a378ef99950419.Y3JvcCwxOTk5LDE1NjQsMCww.png', 'Digital Mark'),
(13, 13, 'Content Marketing', 'Je vais gérer complètement votre marketing numérique', 'https://mir-s3-cdn-cf.behance.net/projects/404/b16ada139057485.Y3JvcCwxMDMxLDgwNiw0NDQsMTM1.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/b16ada139057485.Y3JvcCwxMDMxLDgwNiw0NDQsMTM1.jpg', 'Digital Mark'),
(14, 13, 'Creative content', 'Je fournirai un plan et une stratégie de marketing numérique rentables', 'https://mir-s3-cdn-cf.behance.net/projects/404/98caf2111969951.Y3JvcCwyNTA1LDE5NTksMCwzMzM1.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/98caf2111969951.Y3JvcCwyNTA1LDE5NTksMCwzMzM1.jpg', 'Digital Mark'),
(15, 13, 'Advertising Post', 'Je serai votre responsable du marketing numérique et votre responsable des médias sociaux', 'https://mir-s3-cdn-cf.behance.net/projects/404/db4779143838959.Y3JvcCwxMDA3LDc4OCwzODksMA.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/db4779143838959.Y3JvcCwxMDA3LDc4OCwzODksMA.png', 'Digital Mark'),
(16, 13, 'Digital Agency', 'Je serai votre responsable du marketing numérique et votre responsable des médias sociaux', 'https://mir-s3-cdn-cf.behance.net/projects/404/e8dcbd139421329.Y3JvcCw3MDMxLDU0OTksNTIsMTU2.png', 'https://mir-s3-cdn-cf.behance.net/projects/404/e8dcbd139421329.Y3JvcCw3MDMxLDU0OTksNTIsMTU2.png', 'Digital Mark'),
(17, 13, 'Creative adds', 'Je serai votre responsable du marketing numérique et votre responsable des médias sociaux', 'https://mir-s3-cdn-cf.behance.net/projects/404/ed621e143061557.Y3JvcCwyNzYxLDIxNTksMCww.jpg', 'https://mir-s3-cdn-cf.behance.net/projects/404/ed621e143061557.Y3JvcCwyNzYxLDIxNTksMCww.jpg', 'Digital Mark');

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id_post` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `id_categor` int(11) NOT NULL,
  `nomPost` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `idFreelancer` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `numReview` int(11) NOT NULL,
  `notes` int(11) DEFAULT NULL,
  `commentaire` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categor`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`),
  ADD UNIQUE KEY `idclient` (`idclient`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id_comp`);

--
-- Index pour la table `freecompetences`
--
ALTER TABLE `freecompetences`
  ADD KEY `FK_FreeComp` (`FreelanceID`),
  ADD KEY `FK_Comptes` (`CompsID`);

--
-- Index pour la table `freelancers`
--
ALTER TABLE `freelancers`
  ADD PRIMARY KEY (`idFreelancer`),
  ADD UNIQUE KEY `idFreelancer` (`idFreelancer`,`email`),
  ADD KEY `AK_Identifiant_2` (`idFreelancer`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD KEY `FK_Freelance` (`idFreelancer`),
  ADD KEY `FK_Categories` (`idCategor`);

--
-- Index pour la table `projets_profss`
--
ALTER TABLE `projets_profss`
  ADD PRIMARY KEY (`numProj`),
  ADD UNIQUE KEY `numProj` (`numProj`),
  ADD KEY `projectsFK` (`idFreelancer`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `AK_Identifiant_1` (`id_post`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`idFreelancer`,`idclient`,`numReview`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `freelancers`
--
ALTER TABLE `freelancers`
  MODIFY `idFreelancer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `projets_profss`
--
ALTER TABLE `projets_profss`
  MODIFY `numProj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `freecompetences`
--
ALTER TABLE `freecompetences`
  ADD CONSTRAINT `FK_Comptes` FOREIGN KEY (`CompsID`) REFERENCES `competences` (`id_comp`),
  ADD CONSTRAINT `FK_FreeComp` FOREIGN KEY (`FreelanceID`) REFERENCES `freelancers` (`idFreelancer`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Categories` FOREIGN KEY (`idCategor`) REFERENCES `categories` (`id_categor`),
  ADD CONSTRAINT `FK_Freelance` FOREIGN KEY (`idFreelancer`) REFERENCES `freelancers` (`idFreelancer`);

--
-- Contraintes pour la table `projets_profss`
--
ALTER TABLE `projets_profss`
  ADD CONSTRAINT `projectsFK` FOREIGN KEY (`idFreelancer`) REFERENCES `freelancers` (`idFreelancer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
