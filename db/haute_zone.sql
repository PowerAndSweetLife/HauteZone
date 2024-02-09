-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour haute_zone
DROP DATABASE IF EXISTS `haute_zone`;
CREATE DATABASE IF NOT EXISTS `haute_zone` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `haute_zone`;

-- Listage de la structure de table haute_zone. admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` bigint NOT NULL AUTO_INCREMENT,
  `mailAdmin` text COLLATE utf8mb4_general_ci NOT NULL,
  `passAdmin` text COLLATE utf8mb4_general_ci NOT NULL,
  `typeAdmin` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.admin : ~0 rows (environ)
DELETE FROM `admin`;

-- Listage de la structure de table haute_zone. approvisionnement
DROP TABLE IF EXISTS `approvisionnement`;
CREATE TABLE IF NOT EXISTS `approvisionnement` (
  `idAppro` bigint NOT NULL AUTO_INCREMENT,
  `qteAppro` text COLLATE utf8mb4_general_ci,
  `idMateriel` text COLLATE utf8mb4_general_ci,
  `idPointVente` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`idAppro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.approvisionnement : ~0 rows (environ)
DELETE FROM `approvisionnement`;

-- Listage de la structure de table haute_zone. client
DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` bigint NOT NULL AUTO_INCREMENT,
  `nomClient` text COLLATE utf8mb4_general_ci NOT NULL,
  `prenomClient` text COLLATE utf8mb4_general_ci NOT NULL,
  `adresseClient` text COLLATE utf8mb4_general_ci NOT NULL,
  `telClient` text COLLATE utf8mb4_general_ci NOT NULL,
  `mailClient` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.client : ~0 rows (environ)
DELETE FROM `client`;

-- Listage de la structure de table haute_zone. commercial
DROP TABLE IF EXISTS `commercial`;
CREATE TABLE IF NOT EXISTS `commercial` (
  `idCommercial` bigint NOT NULL AUTO_INCREMENT,
  `numeroCIN` text COLLATE utf8mb4_general_ci NOT NULL,
  `lieuNaissance` text COLLATE utf8mb4_general_ci NOT NULL,
  `dateNaissance` text COLLATE utf8mb4_general_ci NOT NULL,
  `nomCommercial` text COLLATE utf8mb4_general_ci NOT NULL,
  `prenomCommercial` text COLLATE utf8mb4_general_ci NOT NULL,
  `adresseCommercial` text COLLATE utf8mb4_general_ci NOT NULL,
  `mailCommercial` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idCommercial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.commercial : ~0 rows (environ)
DELETE FROM `commercial`;

-- Listage de la structure de table haute_zone. ligne
DROP TABLE IF EXISTS `ligne`;
CREATE TABLE IF NOT EXISTS `ligne` (
  `refLigne` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numeroPuce` text COLLATE utf8mb4_general_ci NOT NULL,
  `codePINPuce` text COLLATE utf8mb4_general_ci NOT NULL,
  `codePUKPuce` text COLLATE utf8mb4_general_ci NOT NULL,
  `etat` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`refLigne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.ligne : ~0 rows (environ)
DELETE FROM `ligne`;

-- Listage de la structure de table haute_zone. materiel
DROP TABLE IF EXISTS `materiel`;
CREATE TABLE IF NOT EXISTS `materiel` (
  `idMateriel` bigint NOT NULL AUTO_INCREMENT,
  `designationMateriel` text COLLATE utf8mb4_general_ci,
  `refMateriel` text COLLATE utf8mb4_general_ci,
  `photo` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`idMateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.materiel : ~0 rows (environ)
DELETE FROM `materiel`;

-- Listage de la structure de table haute_zone. modepaiement
DROP TABLE IF EXISTS `modepaiement`;
CREATE TABLE IF NOT EXISTS `modepaiement` (
  `idModePaiement` bigint NOT NULL AUTO_INCREMENT,
  `denom` text COLLATE utf8mb4_general_ci,
  `numeroCompte` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`idModePaiement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.modepaiement : ~0 rows (environ)
DELETE FROM `modepaiement`;

-- Listage de la structure de table haute_zone. offreconnexion
DROP TABLE IF EXISTS `offreconnexion`;
CREATE TABLE IF NOT EXISTS `offreconnexion` (
  `idOffre` bigint NOT NULL AUTO_INCREMENT,
  `nomOffre` text COLLATE utf8mb4_general_ci NOT NULL,
  `dureeOffre` text COLLATE utf8mb4_general_ci NOT NULL,
  `refLigne` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idOffre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.offreconnexion : ~0 rows (environ)
DELETE FROM `offreconnexion`;

-- Listage de la structure de table haute_zone. panier
DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `idPanier` bigint NOT NULL AUTO_INCREMENT,
  `idMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  `qteMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  `prixMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  `montantTotal` text COLLATE utf8mb4_general_ci NOT NULL,
  `idVenteMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPanier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.panier : ~0 rows (environ)
DELETE FROM `panier`;

-- Listage de la structure de table haute_zone. pointvente
DROP TABLE IF EXISTS `pointvente`;
CREATE TABLE IF NOT EXISTS `pointvente` (
  `idPointVente` bigint NOT NULL AUTO_INCREMENT,
  `adressePointVente` text COLLATE utf8mb4_general_ci NOT NULL,
  `contactPointVente` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPointVente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.pointvente : ~0 rows (environ)
DELETE FROM `pointvente`;

-- Listage de la structure de table haute_zone. prixmateriel
DROP TABLE IF EXISTS `prixmateriel`;
CREATE TABLE IF NOT EXISTS `prixmateriel` (
  `idPrixMateriel` bigint NOT NULL AUTO_INCREMENT,
  `dateAjoutPrix` text COLLATE utf8mb4_general_ci NOT NULL,
  `idMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  `prixMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPrixMateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.prixmateriel : ~0 rows (environ)
DELETE FROM `prixmateriel`;

-- Listage de la structure de table haute_zone. prixoffreconnexion
DROP TABLE IF EXISTS `prixoffreconnexion`;
CREATE TABLE IF NOT EXISTS `prixoffreconnexion` (
  `idPrixOffreConnexion` bigint NOT NULL AUTO_INCREMENT,
  `dateAjoutPrix` text COLLATE utf8mb4_general_ci NOT NULL,
  `idOffre` text COLLATE utf8mb4_general_ci NOT NULL,
  `prixOffre` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPrixOffreConnexion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.prixoffreconnexion : ~0 rows (environ)
DELETE FROM `prixoffreconnexion`;

-- Listage de la structure de table haute_zone. venteconnexion
DROP TABLE IF EXISTS `venteconnexion`;
CREATE TABLE IF NOT EXISTS `venteconnexion` (
  `idVenteConnexion` bigint NOT NULL AUTO_INCREMENT,
  `dateHeureAchatOffre` text COLLATE utf8mb4_general_ci,
  `dateHeureEcheance` text COLLATE utf8mb4_general_ci,
  `idClient` text COLLATE utf8mb4_general_ci,
  `idOffre` text COLLATE utf8mb4_general_ci,
  `prixConnexion` text COLLATE utf8mb4_general_ci,
  `idCommercial` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`idVenteConnexion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.venteconnexion : ~0 rows (environ)
DELETE FROM `venteconnexion`;

-- Listage de la structure de table haute_zone. ventemateriel
DROP TABLE IF EXISTS `ventemateriel`;
CREATE TABLE IF NOT EXISTS `ventemateriel` (
  `idVenteMateriel` bigint NOT NULL AUTO_INCREMENT,
  `dateVenteMateriel` text COLLATE utf8mb4_general_ci NOT NULL,
  `idClient` text COLLATE utf8mb4_general_ci NOT NULL,
  `idMode` text COLLATE utf8mb4_general_ci NOT NULL,
  `idModePaiement` text COLLATE utf8mb4_general_ci NOT NULL,
  `idPointVente` text COLLATE utf8mb4_general_ci NOT NULL,
  `idCommercial` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idVenteMateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table haute_zone.ventemateriel : ~0 rows (environ)
DELETE FROM `ventemateriel`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
