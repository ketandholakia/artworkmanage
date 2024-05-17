-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.17-log - MySQL Community Server (GPL)
-- OS Server:                    Win32
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk webservice
CREATE DATABASE IF NOT EXISTS `webservice` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webservice`;

-- membuang struktur untuk table webservice.tsupplier
CREATE TABLE IF NOT EXISTS `tsupplier` (
  `kodesup` varchar(15) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(35) DEFAULT NULL,
  `telepon` varchar(14) DEFAULT NULL,
  `perusahaan` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel webservice.tsupplier: 1 rows
/*!40000 ALTER TABLE `tsupplier` DISABLE KEYS */;
INSERT INTO `tsupplier` (`kodesup`, `nama`, `alamat`, `telepon`, `perusahaan`) VALUES
	('0003', 'edy', 'jember', 'etelepon', 'eprusahaan'),
	('0002', 'edy', 'ealamat', 'etelepon', 'eprusahaan'),
	('0001', 'enama', 'ealamat', 'etelepon', 'eprusahaan');
/*!40000 ALTER TABLE `tsupplier` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
