-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.22 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para cromos
CREATE DATABASE IF NOT EXISTS `cromos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cromos`;

-- Volcando estructura para tabla cromos.cromos
CREATE TABLE IF NOT EXISTS `cromos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `puntos` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cromos.cromos: ~100 rows (aproximadamente)
/*!40000 ALTER TABLE `cromos` DISABLE KEYS */;
INSERT INTO `cromos` (`id`, `name`, `imagen`, `puntos`, `createdAt`, `updatedAt`) VALUES
	(1, 'Oliver Atom', 'https://www.compra-venta.es/sh-img/Tsubasa%252BOliver%252Be%252Bbenji_oliver%2Bbenji.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Oliver Atom', 'https://www.compra-venta.es/sh-img/Tsubasa%252BOliver%252Be%252Bbenji_oliver%2Bbenji.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'Oliver Atom', 'https://www.compra-venta.es/sh-img/Tsubasa%252BOliver%252Be%252Bbenji_oliver%2Bbenji.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 'Oliver Atom', 'https://www.compra-venta.es/sh-img/Tsubasa%252BOliver%252Be%252Bbenji_oliver%2Bbenji.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 'Oliver Atom', 'https://www.compra-venta.es/sh-img/Tsubasa%252BOliver%252Be%252Bbenji_oliver%2Bbenji.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 'Benji Price', 'https://media.revistagq.com/photos/5e7212ac9da1570008d603e5/master/w_1600%2Cc_limit/benji-price-campeones-serie.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 'Benji Price', 'https://media.revistagq.com/photos/5e7212ac9da1570008d603e5/master/w_1600%2Cc_limit/benji-price-campeones-serie.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 'Benji Price', 'https://media.revistagq.com/photos/5e7212ac9da1570008d603e5/master/w_1600%2Cc_limit/benji-price-campeones-serie.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 'Benji Price', 'https://media.revistagq.com/photos/5e7212ac9da1570008d603e5/master/w_1600%2Cc_limit/benji-price-campeones-serie.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 'Benji Price', 'https://media.revistagq.com/photos/5e7212ac9da1570008d603e5/master/w_1600%2Cc_limit/benji-price-campeones-serie.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 'Julian Ross', 'https://pbs.twimg.com/profile_images/689931008234409984/9qPqm2pj_400x400.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 'Julian Ross', 'https://pbs.twimg.com/profile_images/689931008234409984/9qPqm2pj_400x400.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 'Julian Ross', 'https://pbs.twimg.com/profile_images/689931008234409984/9qPqm2pj_400x400.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 'Julian Ross', 'https://pbs.twimg.com/profile_images/689931008234409984/9qPqm2pj_400x400.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(15, 'Julian Ross', 'https://pbs.twimg.com/profile_images/689931008234409984/9qPqm2pj_400x400.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 'Ed Warner', 'https://www.cosplayoriginal.com/media/shirts/ed-warner.jpg.405x202_q85_crop.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 'Ed Warner', 'https://www.cosplayoriginal.com/media/shirts/ed-warner.jpg.405x202_q85_crop.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 'Ed Warner', 'https://www.cosplayoriginal.com/media/shirts/ed-warner.jpg.405x202_q85_crop.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 'Ed Warner', 'https://www.cosplayoriginal.com/media/shirts/ed-warner.jpg.405x202_q85_crop.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(20, 'Ed Warner', 'https://www.cosplayoriginal.com/media/shirts/ed-warner.jpg.405x202_q85_crop.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(21, 'Roberto Sedinho', 'https://enpared.files.wordpress.com/2013/12/1192834340_f.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(22, 'Roberto Sedinho', 'https://enpared.files.wordpress.com/2013/12/1192834340_f.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(23, 'Roberto Sedinho', 'https://enpared.files.wordpress.com/2013/12/1192834340_f.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(24, 'Roberto Sedinho', 'https://enpared.files.wordpress.com/2013/12/1192834340_f.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(25, 'Roberto Sedinho', 'https://enpared.files.wordpress.com/2013/12/1192834340_f.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(26, 'Scheneider', 'https://i.pinimg.com/originals/a8/6d/b3/a86db3ce2838caa464f267f8f2b6a97d.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 'Scheneider', 'https://i.pinimg.com/originals/a8/6d/b3/a86db3ce2838caa464f267f8f2b6a97d.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(28, 'Scheneider', 'https://i.pinimg.com/originals/a8/6d/b3/a86db3ce2838caa464f267f8f2b6a97d.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 'Scheneider', 'https://i.pinimg.com/originals/a8/6d/b3/a86db3ce2838caa464f267f8f2b6a97d.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 'Scheneider', 'https://i.pinimg.com/originals/a8/6d/b3/a86db3ce2838caa464f267f8f2b6a97d.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(31, 'Alan Crockett', 'https://3.bp.blogspot.com/-lcuMnuxxuKE/WxgLPtQxDjI/AAAAAAAABFc/w5mqd7oPM3opcg_jZSLyKGlzj_kOk-mlgCLcBGAs/s1600/Alan.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(32, 'Alan Crockett', 'https://3.bp.blogspot.com/-lcuMnuxxuKE/WxgLPtQxDjI/AAAAAAAABFc/w5mqd7oPM3opcg_jZSLyKGlzj_kOk-mlgCLcBGAs/s1600/Alan.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(33, 'Alan Crockett', 'https://3.bp.blogspot.com/-lcuMnuxxuKE/WxgLPtQxDjI/AAAAAAAABFc/w5mqd7oPM3opcg_jZSLyKGlzj_kOk-mlgCLcBGAs/s1600/Alan.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(34, 'Alan Crockett', 'https://3.bp.blogspot.com/-lcuMnuxxuKE/WxgLPtQxDjI/AAAAAAAABFc/w5mqd7oPM3opcg_jZSLyKGlzj_kOk-mlgCLcBGAs/s1600/Alan.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(35, 'Alan Crockett', 'https://3.bp.blogspot.com/-lcuMnuxxuKE/WxgLPtQxDjI/AAAAAAAABFc/w5mqd7oPM3opcg_jZSLyKGlzj_kOk-mlgCLcBGAs/s1600/Alan.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(36, 'Clifford Yuma', 'https://www.cosplayoriginal.com/media/shirts/clifford-yuma.jpg.405x202_q85_crop.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(37, 'Clifford Yuma', 'https://www.cosplayoriginal.com/media/shirts/clifford-yuma.jpg.405x202_q85_crop.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(38, 'Clifford Yuma', 'https://www.cosplayoriginal.com/media/shirts/clifford-yuma.jpg.405x202_q85_crop.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(39, 'Clifford Yuma', 'https://www.cosplayoriginal.com/media/shirts/clifford-yuma.jpg.405x202_q85_crop.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(40, 'Clifford Yuma', 'https://www.cosplayoriginal.com/media/shirts/clifford-yuma.jpg.405x202_q85_crop.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 'Bruce Harper', 'https://pbs.twimg.com/media/DZs5fIsW4AEfSVg.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 'Bruce Harper', 'https://pbs.twimg.com/media/DZs5fIsW4AEfSVg.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(43, 'Bruce Harper', 'https://pbs.twimg.com/media/DZs5fIsW4AEfSVg.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(44, 'Bruce Harper', 'https://pbs.twimg.com/media/DZs5fIsW4AEfSVg.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(45, 'Bruce Harper', 'https://pbs.twimg.com/media/DZs5fIsW4AEfSVg.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(46, 'Mark Lenders', 'https://www.cosplayoriginal.com/media/shirts/mark-lenders-muppet.jpg.405x202_q85_crop.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(47, 'Mark Lenders', 'https://www.cosplayoriginal.com/media/shirts/mark-lenders-muppet.jpg.405x202_q85_crop.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(48, 'Mark Lenders', 'https://www.cosplayoriginal.com/media/shirts/mark-lenders-muppet.jpg.405x202_q85_crop.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(49, 'Mark Lenders', 'https://www.cosplayoriginal.com/media/shirts/mark-lenders-muppet.jpg.405x202_q85_crop.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(50, 'Mark Lenders', 'https://www.cosplayoriginal.com/media/shirts/mark-lenders-muppet.jpg.405x202_q85_crop.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(51, 'Harry Potter', 'http://www.sopitas.com/wp-content/uploads/2016/03/PromoHP7_Harry_Potter-e1458489951893.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(52, 'Harry Potter', 'http://www.sopitas.com/wp-content/uploads/2016/03/PromoHP7_Harry_Potter-e1458489951893.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(53, 'Harry Potter', 'http://www.sopitas.com/wp-content/uploads/2016/03/PromoHP7_Harry_Potter-e1458489951893.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(54, 'Harry Potter', 'http://www.sopitas.com/wp-content/uploads/2016/03/PromoHP7_Harry_Potter-e1458489951893.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(55, 'Harry Potter', 'http://www.sopitas.com/wp-content/uploads/2016/03/PromoHP7_Harry_Potter-e1458489951893.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(56, 'Albus Dumbledore', 'https://static.vix.com/es/sites/default/files/1/10_datos_malos_de_dumbledore_de_harry_potter.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(57, 'Albus Dumbledore', 'https://static.vix.com/es/sites/default/files/1/10_datos_malos_de_dumbledore_de_harry_potter.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(58, 'Albus Dumbledore', 'https://static.vix.com/es/sites/default/files/1/10_datos_malos_de_dumbledore_de_harry_potter.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(59, 'Albus Dumbledore', 'https://static.vix.com/es/sites/default/files/1/10_datos_malos_de_dumbledore_de_harry_potter.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(60, 'Albus Dumbledore', 'https://static.vix.com/es/sites/default/files/1/10_datos_malos_de_dumbledore_de_harry_potter.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(61, 'Hermione Granger', 'https://sites.google.com/site/harrypotterzhao/_/rsrc/1417473833602/protagonistas/hermione-granger/20140502133849_Cinue_thumb_600_0.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(62, 'Hermione Granger', 'https://sites.google.com/site/harrypotterzhao/_/rsrc/1417473833602/protagonistas/hermione-granger/20140502133849_Cinue_thumb_600_0.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(63, 'Hermione Granger', 'https://sites.google.com/site/harrypotterzhao/_/rsrc/1417473833602/protagonistas/hermione-granger/20140502133849_Cinue_thumb_600_0.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(64, 'Hermione Granger', 'https://sites.google.com/site/harrypotterzhao/_/rsrc/1417473833602/protagonistas/hermione-granger/20140502133849_Cinue_thumb_600_0.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(65, 'Hermione Granger', 'https://sites.google.com/site/harrypotterzhao/_/rsrc/1417473833602/protagonistas/hermione-granger/20140502133849_Cinue_thumb_600_0.jpg', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(66, 'Ron Wesley', 'http://3.bp.blogspot.com/-EtcSnwjlYyk/Uc9FjWKVwiI/AAAAAAAAA0o/ut5uz7WX0RM/s686/ass.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(67, 'Ron Wesley', 'http://3.bp.blogspot.com/-EtcSnwjlYyk/Uc9FjWKVwiI/AAAAAAAAA0o/ut5uz7WX0RM/s686/ass.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(68, 'Ron Wesley', 'http://3.bp.blogspot.com/-EtcSnwjlYyk/Uc9FjWKVwiI/AAAAAAAAA0o/ut5uz7WX0RM/s686/ass.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(69, 'Ron Wesley', 'http://3.bp.blogspot.com/-EtcSnwjlYyk/Uc9FjWKVwiI/AAAAAAAAA0o/ut5uz7WX0RM/s686/ass.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(70, 'Ron Wesley', 'http://3.bp.blogspot.com/-EtcSnwjlYyk/Uc9FjWKVwiI/AAAAAAAAA0o/ut5uz7WX0RM/s686/ass.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(71, 'Severus Snape', 'https://s1.eestatic.com/2017/05/02/cultura/libros/harry_potter-j-k-_rowling-novela_212989964_33661586_854x640.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(72, 'Severus Snape', 'https://s1.eestatic.com/2017/05/02/cultura/libros/harry_potter-j-k-_rowling-novela_212989964_33661586_854x640.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(73, 'Severus Snape', 'https://s1.eestatic.com/2017/05/02/cultura/libros/harry_potter-j-k-_rowling-novela_212989964_33661586_854x640.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(74, 'Severus Snape', 'https://s1.eestatic.com/2017/05/02/cultura/libros/harry_potter-j-k-_rowling-novela_212989964_33661586_854x640.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(75, 'Severus Snape', 'https://s1.eestatic.com/2017/05/02/cultura/libros/harry_potter-j-k-_rowling-novela_212989964_33661586_854x640.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(76, 'Draco Malfoy', 'https://i.pinimg.com/736x/1e/1e/0e/1e1e0e29ba6dfb474995f7a18839fbdb.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(77, 'Draco Malfoy', 'https://i.pinimg.com/736x/1e/1e/0e/1e1e0e29ba6dfb474995f7a18839fbdb.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(78, 'Draco Malfoy', 'https://i.pinimg.com/736x/1e/1e/0e/1e1e0e29ba6dfb474995f7a18839fbdb.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(79, 'Draco Malfoy', 'https://i.pinimg.com/736x/1e/1e/0e/1e1e0e29ba6dfb474995f7a18839fbdb.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(80, 'Draco Malfoy', 'https://i.pinimg.com/736x/1e/1e/0e/1e1e0e29ba6dfb474995f7a18839fbdb.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(81, 'Lord Voldemort', 'https://elcomercio.pe/resizer/Y2X_dZaDBp3A117HO50ZIRyxTTI=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/A6IE3S2J2VFC7NKB6ZM34OXWVM.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(82, 'Lord Voldemort', 'https://elcomercio.pe/resizer/Y2X_dZaDBp3A117HO50ZIRyxTTI=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/A6IE3S2J2VFC7NKB6ZM34OXWVM.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(83, 'Lord Voldemort', 'https://elcomercio.pe/resizer/Y2X_dZaDBp3A117HO50ZIRyxTTI=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/A6IE3S2J2VFC7NKB6ZM34OXWVM.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(84, 'Lord Voldemort', 'https://elcomercio.pe/resizer/Y2X_dZaDBp3A117HO50ZIRyxTTI=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/A6IE3S2J2VFC7NKB6ZM34OXWVM.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(85, 'Lord Voldemort', 'https://elcomercio.pe/resizer/Y2X_dZaDBp3A117HO50ZIRyxTTI=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/A6IE3S2J2VFC7NKB6ZM34OXWVM.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(86, 'Hagrid', 'https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rubeus_hagrid_harry_potter.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(87, 'Hagrid', 'https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rubeus_hagrid_harry_potter.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(88, 'Hagrid', 'https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rubeus_hagrid_harry_potter.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(89, 'Hagrid', 'https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rubeus_hagrid_harry_potter.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(90, 'Hagrid', 'https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rubeus_hagrid_harry_potter.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(91, 'Bellatrix Lestrange', 'http://pm1.narvii.com/6210/c997a43ce1af464a6e8000b8387e29c73bc78bad_00.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(92, 'Bellatrix Lestrange', 'http://pm1.narvii.com/6210/c997a43ce1af464a6e8000b8387e29c73bc78bad_00.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(93, 'Bellatrix Lestrange', 'http://pm1.narvii.com/6210/c997a43ce1af464a6e8000b8387e29c73bc78bad_00.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(94, 'Bellatrix Lestrange', 'http://pm1.narvii.com/6210/c997a43ce1af464a6e8000b8387e29c73bc78bad_00.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(95, 'Bellatrix Lestrange', 'http://pm1.narvii.com/6210/c997a43ce1af464a6e8000b8387e29c73bc78bad_00.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(96, 'Sirius Black', 'https://pm1.narvii.com/6843/da6dcdbd14c21e1f1bfec7bc3bc7cf458ff1a289v2_hq.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(97, 'Sirius Black', 'https://pm1.narvii.com/6843/da6dcdbd14c21e1f1bfec7bc3bc7cf458ff1a289v2_hq.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(98, 'Sirius Black', 'https://pm1.narvii.com/6843/da6dcdbd14c21e1f1bfec7bc3bc7cf458ff1a289v2_hq.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(99, 'Sirius Black', 'https://pm1.narvii.com/6843/da6dcdbd14c21e1f1bfec7bc3bc7cf458ff1a289v2_hq.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(100, 'Sirius Black', 'https://pm1.narvii.com/6843/da6dcdbd14c21e1f1bfec7bc3bc7cf458ff1a289v2_hq.jpg', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cromos` ENABLE KEYS */;

-- Volcando estructura para tabla cromos.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` text,
  `password` varchar(255) NOT NULL,
  `admin` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cromos.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `admin`, `createdAt`, `updatedAt`) VALUES
	(1, 'admin', 'admin', 'admin', 'admin', 1, '2021-06-15 23:17:08', '2021-06-15 23:17:08'),
	(2, 'Luis', 'Seijas', 'lseijp00', 'secret', 0, '2021-06-15 23:17:08', '2021-06-15 23:17:08'),
	(3, 'Marco', 'Speranza', 'marco', 'secret', 0, '2021-06-15 23:17:08', '2021-06-15 23:17:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
