-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           10.11.2-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT/;
/!40101 SET NAMES utf8/;
/!50503 SET NAMES utf8mb4/;
/!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0/;
/!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO'/;
/!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0/;


-- Listage de la structure de la base pour woody
CREATE DATABASE IF NOT EXISTS woody /!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci/;
USE woody;

-- Listage de la structure de la table woody. produit
CREATE TABLE IF NOT EXISTS produit (
  NPRO char(15) NOT NULL,
  LIBELLE char(60) NOT NULL,
  PRIX decimal(6,0) NOT NULL,
  QSTOCK decimal(8,0) NOT NULL,
  PRIMARY KEY (NPRO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Listage des données de la table woody.produit : ~3 rows (environ)
/!40000 ALTER TABLE produit DISABLE KEYS/;
INSERT INTO produit (NPRO, LIBELLE, PRIX, QSTOCK) VALUES
        ('CS262', 'canard en bois', 75, 45),
        ('CS264', 'train en bois', 120, 2690),
        ('CS464', 'luge en bois', 220, 450);
/!40000 ALTER TABLE produit ENABLE KEYS/;

/!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '')/;
/!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1)/;
/!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT/;
/!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1)/;
