-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 16, 2018 at 06:40 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `i3446829_lara1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categoria`
--

CREATE TABLE IF NOT EXISTS `Categoria` (
  `categoriaId` int(11) NOT NULL AUTO_INCREMENT,
  `categoriaNombre` varchar(25) NOT NULL,
  `categoriaDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`categoriaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Categoria`
--

INSERT INTO `Categoria` (`categoriaId`, `categoriaNombre`, `categoriaDescripcion`) VALUES
(1, 'Que Comemos', 'categoría que comemos.'),
(2, 'Que Hacemos', 'categoría que hacemos.'),
(3, 'Donde Nos Quedamos', 'categoría donde nos quedamos'),
(4, 'Donde Compramos', 'categoria donde compramos'),
(5, 'Vida Nocturna', 'categoria vida nocturan'),
(6, 'Sitio Turistico', 'categoria para sitios turisticos');

-- --------------------------------------------------------

--
-- Table structure for table `Img`
--

CREATE TABLE IF NOT EXISTS `Img` (
  `imgId` int(11) NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(200) NOT NULL,
  `idUbicacion` int(11) NOT NULL,
  PRIMARY KEY (`imgId`),
  KEY `idUbicacion` (`idUbicacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=210 ;

--
-- Dumping data for table `Img`
--

INSERT INTO `Img` (`imgId`, `imgUrl`, `idUbicacion`) VALUES
(3, 'www.guiamultiturismo.com/imgsApp/ubicacion/cafedelvolcan/1.png', 1),
(4, 'www.guiamultiturismo.com/imgsApp/ubicacion/cafedelvolcan/2.png', 1),
(5, 'www.guiamultiturismo.com/imgsApp/ubicacion/cafedelvolcan/3.png', 1),
(20, 'www.guiamultiturismo.com/imgsApp/ubicacion/CafeSunzal/4763615-Cafe_Sunzal_Seafood_-_Steak-0.jpg', 2),
(23, 'www.guiamultiturismo.com/imgsApp/ubicacion/CafeSunzal/el-salvador-hotel-casa-de-mar-cafe-sunzal-suite.jpg', 2),
(24, 'www.guiamultiturismo.com/imgsApp/ubicacion/CafeSunzal/f_restaurante01.jpg', 2),
(25, 'www.guiamultiturismo.com/imgsApp/ubicacion/jardindeceleste/el-jardin-de-celeste.jpg', 3),
(26, 'www.guiamultiturismo.com/imgsApp/ubicacion/jardindeceleste/el_jardin_de_celeste.jpg', 3),
(27, 'www.guiamultiturismo.com/imgsApp/ubicacion/jardindeceleste/thyme_off.jpg', 3),
(28, 'www.guiamultiturismo.com/imgsApp/ubicacion/lasbrumas/las-brumas-grill-cafe.jpg', 4),
(29, 'www.guiamultiturismo.com/imgsApp/ubicacion/lasbrumas/las-brumas-grill-cafe2.jpg', 4),
(30, 'www.guiamultiturismo.com/imgsApp/ubicacion/lasbrumas/Las-Brumas.jpg', 4),
(31, 'www.guiamultiturismo.com/imgsApp/ubicacion/panaderiaelrosario/Panader__a_El_Ro_5106a65bb6034.jpg', 5),
(32, 'www.guiamultiturismo.com/imgsApp/ubicacion/panaderiaelrosario/Pastel-vainilla.jpg', 5),
(35, 'www.guiamultiturismo.com/imgsApp/ubicacion/dragondorado/647.jpg', 42),
(36, 'www.guiamultiturismo.com/imgsApp/ubicacion/dragondorado/652.jpg', 42),
(37, 'www.guiamultiturismo.com/imgsApp/ubicacion/dragondorado/666.jpg', 42),
(38, 'www.guiamultiturismo.com/imgsApp/ubicacion/haciendareal/descarga.jpg', 7),
(39, 'www.guiamultiturismo.com/imgsApp/ubicacion/haciendareal/hacienda-real-el-salvador.jpg', 7),
(40, 'www.guiamultiturismo.com/imgsApp/ubicacion/haciendareal/somos1.jpg', 7),
(41, 'www.guiamultiturismo.com/imgsApp/ubicacion/lecroissant/fce4a48274738785a6a8dd42f2a29f51.jpg', 8),
(42, 'www.guiamultiturismo.com/imgsApp/ubicacion/lecroissant/panaderia-y-delicatesens-CROISSANT-el-salvador.jpg', 8),
(43, 'www.guiamultiturismo.com/imgsApp/ubicacion/lecroissant/receta-le-croissant.jpg', 8),
(44, 'www.guiamultiturismo.com/imgsApp/ubicacion/loscebollines/14747_l.jpg', 9),
(45, 'www.guiamultiturismo.com/imgsApp/ubicacion/loscebollines/cebollines_ajust_2.jpg', 9),
(46, 'www.guiamultiturismo.com/imgsApp/ubicacion/loscebollines/Promociones-en-los-cebollines-san-salvador.jpg', 9),
(47, 'www.guiamultiturismo.com/imgsApp/ubicacion/panescoyo/917.jpg', 10),
(48, 'www.guiamultiturismo.com/imgsApp/ubicacion/panescoyo/Menu-2_MEx.jpg', 10),
(49, 'www.guiamultiturismo.com/imgsApp/ubicacion/panescoyo/882.png', 10),
(50, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/crowneplazasansalvador/crowne-plaza-san-salvador-2995154023-2x1.jpg', 14),
(51, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/crowneplazasansalvador/crowne-plaza-san-salvador-3882171897-4x3.jpg', 14),
(52, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/crowneplazasansalvador/Crowne-Plaza-San-Salvador_1.jpg', 14),
(53, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelbarcelosansalvador/1469500291372.jpg', 15),
(54, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelbarcelosansalvador/397-room-06-hotel-barcelo-san-salvador37-208023.jpg', 15),
(55, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelbarcelosansalvador/mast-1.jpg', 15),
(56, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelholidayinnsansalvador/40021675.jpg', 16),
(57, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelholidayinnsansalvador/habitaciones-hotel-holiday-inn-el-salvador-san-salvador.jpg', 16),
(58, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelholidayinnsansalvador/holiday-inn-san-salvador-3841635369-4x3.jpg', 16),
(59, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelpacificparadise/5211885_33_z.jpg', 17),
(60, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelpacificparadise/5211885_34_z.jpg', 17),
(61, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelpacificparadise/DSC_0111-1024x680.jpg', 17),
(62, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelrealintercontinental/174068_502_z.jpg', 18),
(63, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelrealintercontinental/big083661a30413a62566.jpg', 18),
(64, 'www.guiamultiturismo.com/imgsApp/ubicacion/dondeNosQuedamos/hotelrealintercontinental/hotel-real-intercontinental-3.jpg', 18),
(65, 'www.guiamultiturismo.com/imgsApp/ubicacion/coatepeque/lago-de-coatepeque-440x330.jpg', 28),
(66, 'www.guiamultiturismo.com/imgsApp/ubicacion/coatepeque/lago-de-coatepeque.jpg', 28),
(67, 'www.guiamultiturismo.com/imgsApp/ubicacion/blubar/blubar1.jpg', 29),
(68, 'www.guiamultiturismo.com/imgsApp/ubicacion/blubar/blubar2.jpg', 29),
(69, 'www.guiamultiturismo.com/imgsApp/ubicacion/cinepoli/cp1.jpg', 11),
(70, 'www.guiamultiturismo.com/imgsApp/ubicacion/cinepoli/cp2.jpg', 11),
(71, 'www.guiamultiturismo.com/imgsApp/ubicacion/cinepoli/cp3.jpg', 11),
(72, 'www.guiamultiturismo.com/imgsApp/ubicacion/galaxybowling/gb1.jpg', 12),
(73, 'www.guiamultiturismo.com/imgsApp/ubicacion/galaxybowling/gb2.jpg', 12),
(74, 'www.guiamultiturismo.com/imgsApp/ubicacion/galaxybowling/gb3.jpg', 12),
(75, 'www.guiamultiturismo.com/imgsApp/ubicacion/worldgames/wg1.jpg', 13),
(76, 'www.guiamultiturismo.com/imgsApp/ubicacion/worldgames/wg2.jpg', 13),
(77, 'www.guiamultiturismo.com/imgsApp/ubicacion/worldgames/wg3.jpg', 13),
(78, 'www.guiamultiturismo.com/imgsApp/ubicacion/canopyBoqueron/cnpb1.jpg', 19),
(79, 'www.guiamultiturismo.com/imgsApp/ubicacion/canopyBoqueron/cnpb2.jpg', 19),
(80, 'www.guiamultiturismo.com/imgsApp/ubicacion/canopyBoqueron/cnpb3.jpg', 19),
(81, 'www.guiamultiturismo.com/imgsApp/ubicacion/escuelaactuatica/eba1.jpg', 20),
(82, 'www.guiamultiturismo.com/imgsApp/ubicacion/escuelaactuatica/eba2.jpg', 20),
(83, 'www.guiamultiturismo.com/imgsApp/ubicacion/escuelaactuatica/eba3.jpg', 20),
(84, 'www.guiamultiturismo.com/imgsApp/ubicacion/painballnavarra/pn1.jpg', 21),
(85, 'www.guiamultiturismo.com/imgsApp/ubicacion/painballnavarra/pn2.jpg', 21),
(86, 'www.guiamultiturismo.com/imgsApp/ubicacion/painballnavarra/pn3.jpg', 21),
(87, 'www.guiamultiturismo.com/imgsApp/ubicacion/muna/muna1.jpg', 22),
(88, 'www.guiamultiturismo.com/imgsApp/ubicacion/muna/muna2.jpg', 22),
(89, 'www.guiamultiturismo.com/imgsApp/ubicacion/muna/muna3.jpg', 22),
(90, 'www.guiamultiturismo.com/imgsApp/ubicacion/mmarte/marte1.jpg', 23),
(91, 'www.guiamultiturismo.com/imgsApp/ubicacion/mmarte/marte2.jpg', 23),
(92, 'www.guiamultiturismo.com/imgsApp/ubicacion/mmarte/marte3.jpg', 23),
(93, 'www.guiamultiturismo.com/imgsApp/ubicacion/teatronacional/tnacional1.jpg', 24),
(94, 'www.guiamultiturismo.com/imgsApp/ubicacion/teatronacional/tnacional2.jpg', 24),
(95, 'www.guiamultiturismo.com/imgsApp/ubicacion/teatronacional/tnacional3.jpg', 24),
(96, 'www.guiamultiturismo.com/imgsApp/ubicacion/atlantis/at1.jpg', 25),
(97, 'www.guiamultiturismo.com/imgsApp/ubicacion/atlantis/at2.jpg', 25),
(98, 'www.guiamultiturismo.com/imgsApp/ubicacion/atlantis/at3.jpg', 25),
(99, 'www.guiamultiturismo.com/imgsApp/ubicacion/entrerios/etr1.jpg', 26),
(100, 'www.guiamultiturismo.com/imgsApp/ubicacion/entrerios/etr2.jpg', 26),
(104, 'www.guiamultiturismo.com/imgsApp/ubicacion/Hospital%20de%20la%20mujer/1549-03.JPG', 30),
(105, 'www.guiamultiturismo.com/imgsApp/ubicacion/Hospital%20de%20la%20mujer/714cc0a9-37d4-4eff-8629-38e25eb4d4c2_xxxlw.jpg', 30),
(106, 'www.guiamultiturismo.com/imgsApp/ubicacion/Montse%20floristeria/03.jpg', 31),
(107, 'www.guiamultiturismo.com/imgsApp/ubicacion/Montse%20floristeria/02.jpg', 31),
(108, 'www.guiamultiturismo.com/imgsApp/ubicacion/Montse%20floristeria/01.jpg', 31),
(109, 'www.guiamultiturismo.com/imgsApp/ubicacion/Montse%20floristeria/montse_floristas2.jpg', 31),
(110, 'www.guiamultiturismo.com/imgsApp/ubicacion/Acofinges/2.jpg', 33),
(111, 'www.guiamultiturismo.com/imgsApp/ubicacion/Acofinges/4.jpg', 33),
(112, 'www.guiamultiturismo.com/imgsApp/ubicacion/Nahuizalco/nahu1.jpg', 34),
(113, 'www.guiamultiturismo.com/imgsApp/ubicacion/Nahuizalco/nahu2.jpg', 34),
(114, 'www.guiamultiturismo.com/imgsApp/ubicacion/Nahuizalco/nahu3.jpg', 34),
(115, 'www.guiamultiturismo.com/imgsApp/ubicacion/Salcoatitan/salco1.jpg', 35),
(116, 'www.guiamultiturismo.com/imgsApp/ubicacion/Salcoatitan/salco2.jpg', 35),
(117, 'www.guiamultiturismo.com/imgsApp/ubicacion/Juayua/juayua.jpg', 36),
(118, 'www.guiamultiturismo.com/imgsApp/ubicacion/Juayua/juayua1.jpg', 36),
(120, 'www.guiamultiturismo.com/imgsApp/ubicacion/Juayua/Chorros_de_La_Calera.JPG', 36),
(121, 'www.guiamultiturismo.com/imgsApp/ubicacion/Apaneca/1457207413825.jpg', 37),
(122, 'www.guiamultiturismo.com/imgsApp/ubicacion/Apaneca/apaneca-el-salvador.jpg', 37),
(123, 'www.guiamultiturismo.com/imgsApp/ubicacion/Apaneca/apaneca.jpg', 37),
(124, 'www.guiamultiturismo.com/imgsApp/ubicacion/Ataco/9707580634_bc7e04d9cd_b.jpg', 38),
(125, 'www.guiamultiturismo.com/imgsApp/ubicacion/Ataco/images.jpg', 38),
(126, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20El%20Pital/17499073_1460161440682181_7276587469093496261_n.jpg', 39),
(127, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20El%20Pital/17499492_1460161490682176_8107548545181925480_n.jpg', 39),
(128, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20El%20Pital/17990971_1485984821433176_3067651735054051018_n.jpg', 39),
(129, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20El%20Pital/18057903_1492181590813499_7367104029301054714_n.jpg', 39),
(130, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20El%20Pital/F2BF33D8-1A62-4360-A5ED-28C996FFACC0.JPG', 39),
(131, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20Verde/882690718408557.jpg', 40),
(132, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20Verde/882690751741887.jpg', 40),
(133, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20Verde/882691471741815.jpg', 40),
(134, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20Verde/882692438408385.jpg', 40),
(135, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20Verde/882692645075031.jpg', 40),
(136, 'www.guiamultiturismo.com/imgsApp/ubicacion/Cerro%20Verde/882693131741649.jpg', 40),
(137, 'www.guiamultiturismo.com/imgsApp/ubicacion/Laguna%20de%20Apastepeque/Apastepeque%20%282%29.JPG', 41),
(138, 'www.guiamultiturismo.com/imgsApp/ubicacion/Laguna%20de%20Apastepeque/Apastepeque%20%283%29.JPG', 41),
(139, 'www.guiamultiturismo.com/imgsApp/ubicacion/Laguna%20de%20Apastepeque/Apastepeque%20%284%29.JPG', 41),
(140, 'www.guiamultiturismo.com/imgsApp/ubicacion/Laguna%20de%20Apastepeque/Apastepeque%20%285%29.JPG', 41),
(141, 'www.guiamultiturismo.com/imgsApp/ubicacion/Laguna%20de%20Apastepeque/Apastepeque.JPG', 41),
(142, 'www.guiamultiturismo.com/imgsApp/ubicacion/parquewalterdninger/Walter%20Thilo%20%283%29.JPG', 27),
(143, 'www.guiamultiturismo.com/imgsApp/ubicacion/parquewalterdninger/Walter%20Thilo%20%284%29.JPG', 27),
(144, 'www.guiamultiturismo.com/imgsApp/ubicacion/parquewalterdninger/Walter%20Thilo%20%285%29.jpg', 27),
(145, 'www.guiamultiturismo.com/imgsApp/ubicacion/Super%20Cocteles/18301695_1937822033167174_2417223464103336718_n.jpg', 6),
(146, 'www.guiamultiturismo.com/imgsApp/ubicacion/Super%20Cocteles/18342645_1937743969841647_4082087027155809499_n.jpg', 6),
(147, 'www.guiamultiturismo.com/imgsApp/ubicacion/Super%20Cocteles/18403225_1939200309696013_1400593070629726657_n.jpg', 6),
(148, 'www.guiamultiturismo.com/imgsApp/ubicacion/Super%20Cocteles/18446633_1938311843118193_5215950654057887549_n.jpg', 6),
(149, 'www.guiamultiturismo.com/imgsApp/ubicacion/consepturs/18472026_10203274158890531_340022130_o.jpg', 43),
(150, 'www.guiamultiturismo.com/imgsApp/ubicacion/consepturs/18452472_10203274153570398_1856906675_o.jpg', 43),
(151, 'www.guiamultiturismo.com/imgsApp/ubicacion/consepturs/18426509_10203274158490521_525946436_o.jpg', 43),
(152, 'www.guiamultiturismo.com/imgsApp/ubicacion/consepturs/18492073_10203274158730527_669308907_n.jpg', 43),
(153, 'www.guiamultiturismo.com/imgsApp/ubicacion/La%20Gran%20V%C3%ACa/8.jpg', 44),
(154, 'www.guiamultiturismo.com/imgsApp/ubicacion/La%20Gran%20V%C3%ACa/centro-comercial-la-gran-via-san-salvador.jpg', 44),
(155, 'www.guiamultiturismo.com/imgsApp/ubicacion/La%20Gran%20V%C3%ACa/DSC05182.JPG', 44),
(156, 'www.guiamultiturismo.com/imgsApp/ubicacion/La%20Gran%20V%C3%ACa/la-gran-via.jpg', 44),
(157, 'www.guiamultiturismo.com/imgsApp/ubicacion/La%20Gran%20V%C3%ACa/maxresdefault.jpg', 44),
(158, 'www.guiamultiturismo.com/imgsApp/ubicacion/Centro%20Comercial%20Galerias/143120281.xhPflpIX.SanSalvadorJan120009.jpg', 47),
(159, 'www.guiamultiturismo.com/imgsApp/ubicacion/Centro%20Comercial%20Galerias/1474566247976.jpg', 47),
(160, 'www.guiamultiturismo.com/imgsApp/ubicacion/Centro%20Comercial%20Galerias/56994019.jpg', 47),
(161, 'www.guiamultiturismo.com/imgsApp/ubicacion/Centro%20Comercial%20Galerias/P1000466_zps52a7b50e.png', 47),
(162, 'www.guiamultiturismo.com/imgsApp/ubicacion/El%20Paseo/696248755_9532988df3_o.png', 48),
(163, 'www.guiamultiturismo.com/imgsApp/ubicacion/El%20Paseo/centro-comercial-el-paseo-4.jpg', 48),
(164, 'www.guiamultiturismo.com/imgsApp/ubicacion/El%20Paseo/Centro-Comercial-El-Paseo.jpg', 48),
(165, 'www.guiamultiturismo.com/imgsApp/ubicacion/El%20Paseo/IMG_5457.JPG', 48),
(166, 'www.guiamultiturismo.com/imgsApp/ubicacion/Metrocentro%20San%20Salvador/4735243953_f3b95dbe48_b.jpg', 49),
(167, 'www.guiamultiturismo.com/imgsApp/ubicacion/Metrocentro%20San%20Salvador/56993048.jpg', 49),
(168, 'www.guiamultiturismo.com/imgsApp/ubicacion/Metrocentro%20San%20Salvador/DSCN8615.jpg', 49),
(169, 'www.guiamultiturismo.com/imgsApp/ubicacion/Metrocentro%20San%20Salvador/METROCENTRO-EL-SALVADOR.jpg', 49),
(170, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Azaleas/66_big.png', 50),
(171, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Azaleas/75884510.jpg', 50),
(172, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Azaleas/o_1489390392_79c9fe3c72e0324b91fbecb681695de7.png', 50),
(173, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Azaleas/renta-local-en-plaza-azaleas-14104722112.jpg', 50),
(174, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Madero/plaza-madero.jpg', 51),
(175, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Madero/plaza-madero-tiendas.jpg', 51),
(176, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Madero/delikat-2.jpg', 51),
(177, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Madero/smashburger-plaza-madero.jpg', 51),
(178, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Merliot/20030609MerliotMall15.jpg', 52),
(179, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Merliot/4801726023_821fffc990_z.png', 52),
(180, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Merliot/524104510_e3c85ec2bb_b.png', 52),
(181, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Merliot/Plaza-Merliot.jpg', 52),
(182, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Mundo/1434724792672.jpg', 53),
(183, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Mundo/1446156459439.jpg', 53),
(184, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Mundo/1480031938182.jpg', 53),
(185, 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Mundo/mundo-1.jpg', 53),
(190, 'www.guiamultiturismo.com/imgsApp/ubicacion/Eventos%20AG/18274699_1985420645077441_5572825774360218682_n.jpg', 56),
(191, 'www.guiamultiturismo.com/imgsApp/ubicacion/Eventos%20AG/17264107_1949361235350049_4479316750187249491_n.jpg', 56),
(192, 'www.guiamultiturismo.com/imgsApp/ubicacion/Eventos%20AG/17425060_1954365941516245_4835569783124938012_n.jpg', 56),
(193, 'www.guiamultiturismo.com/imgsApp/ubicacion/Eventos%20AG/17457729_1955661328053373_5541466279932224719_n.jpg', 56),
(194, 'www.guiamultiturismo.com/imgsApp/ubicacion/Multiplaza/56993035.jpg', 57),
(195, 'www.guiamultiturismo.com/imgsApp/ubicacion/Multiplaza/centro-comercial-multiplaza-san-salvador.jpg', 57),
(196, 'www.guiamultiturismo.com/imgsApp/ubicacion/Multiplaza/Grupo-Roble_Centros-Comerciales_Las-Terrazas_v0023.jpg', 57),
(197, 'www.guiamultiturismo.com/imgsApp/ubicacion/Multiplaza/LAS-TERRAZAS-MULTIPLAZA-PANAMERICANA-EL-SALVADOR.jpg', 57),
(198, 'www.guiamultiturismo.com/imgsApp/ubicacion/Multiplaza/Multiplaza.jpg', 57),
(199, 'www.guiamultiturismo.com/imgsApp/ubicacion/Paseo%20El%20Carmen/150107015636407755.jpg', 58),
(200, 'www.guiamultiturismo.com/imgsApp/ubicacion/Paseo%20El%20Carmen/fnac05122011afsta12c.jpg', 58),
(201, 'www.guiamultiturismo.com/imgsApp/ubicacion/Paseo%20El%20Carmen/paseo-el-carmen-santa-tecla.jpg', 58),
(202, 'www.guiamultiturismo.com/imgsApp/ubicacion/Torre%20Futura/Torre%20Futura-2.jpg', 59),
(203, 'www.guiamultiturismo.com/imgsApp/ubicacion/Torre%20Futura/5971352976_345f153b29_b.png', 59),
(204, 'www.guiamultiturismo.com/imgsApp/ubicacion/Torre%20Futura/112-Torre14_ok.jpg', 59),
(205, 'www.guiamultiturismo.com/imgsApp/ubicacion/Torre%20Futura/112-Torre13_ok.jpg', 59),
(206, 'www.guiamultiturismo.com/imgsApp/ubicacion/Zona%20Rosa/25409383.jpg', 60),
(207, 'www.guiamultiturismo.com/imgsApp/ubicacion/Zona%20Rosa/25e9b4d0-b434-4232-8f85-4525eb44206f_879_586.jpg', 60),
(208, 'www.guiamultiturismo.com/imgsApp/ubicacion/Zona%20Rosa/9410884781_060f632664_b.jpg', 60),
(209, 'www.guiamultiturismo.com/imgsApp/ubicacion/Zona%20Rosa/SalvadorMcDonaldsHiltonSanSalvadorPhotoSkycraperCitycom.jpg', 60);

-- --------------------------------------------------------

--
-- Table structure for table `Keyword`
--

CREATE TABLE IF NOT EXISTS `Keyword` (
  `keywordId` int(11) NOT NULL AUTO_INCREMENT,
  `keywordNombre` varchar(25) NOT NULL,
  `keywordDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`keywordId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Keyword`
--

INSERT INTO `Keyword` (`keywordId`, `keywordNombre`, `keywordDescripcion`) VALUES
(2, 'panaderia', 'categoria para panaderia'),
(3, 'cafetería', 'categoria cafe en min'),
(4, 'restaurante', 'para keywords'),
(5, 'Vista', 'categoría para vista');

-- --------------------------------------------------------

--
-- Table structure for table `Pais`
--

CREATE TABLE IF NOT EXISTS `Pais` (
  `paisId` int(11) NOT NULL AUTO_INCREMENT,
  `paisNombre` varchar(25) NOT NULL,
  `paisDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`paisId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Pais`
--

INSERT INTO `Pais` (`paisId`, `paisNombre`, `paisDescripcion`) VALUES
(1, 'El Salvador', 'datos para El Salvador.');

-- --------------------------------------------------------

--
-- Table structure for table `redSocial`
--

CREATE TABLE IF NOT EXISTS `redSocial` (
  `idSocialTipo` int(11) NOT NULL,
  `idUbicacion` int(11) NOT NULL,
  `redSocialurl` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `idSocialTipo` (`idSocialTipo`),
  KEY `idUbicacion` (`idUbicacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `redSocial`
--

INSERT INTO `redSocial` (`idSocialTipo`, `idUbicacion`, `redSocialurl`, `id`) VALUES
(1, 1, 'https://www.facebook.com/restaurantecafedelvolcan/', 1),
(2, 1, 'https://twitter.com/cafe_del_volcan', 2),
(3, 1, 'https://www.instagram.com/cafedelvolcan/', 3),
(4, 1, 'https://elsalvadorenelmundo.com/restaurantes/noticias/noticia.php?id=7#.WNdGQPk1_cc', 4),
(1, 2, 'https://www.facebook.com/cafesunzal/', 5),
(2, 2, 'https://twitter.com/?lang=es', 6),
(1, 6, 'https://www.facebook.com/supercocteles/', 7),
(4, 6, 'mailto:supercocteles@gmail.com', 8),
(1, 43, 'https://es-la.facebook.com/ConseptursElSalvador/', 9),
(2, 43, 'https://twitter.com/ConseptursSV', 10),
(4, 43, 'http://www.consepturs.com', 11),
(3, 43, 'https://www.instagram.com/consepturssv', 12),
(4, 43, 'mailto:turismo@consepturs.com', 13);

-- --------------------------------------------------------

--
-- Table structure for table `SocialTipo`
--

CREATE TABLE IF NOT EXISTS `SocialTipo` (
  `socialTipoId` int(11) NOT NULL AUTO_INCREMENT,
  `socialTipoNombre` varchar(25) NOT NULL,
  `socialTipoDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`socialTipoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SocialTipo`
--

INSERT INTO `SocialTipo` (`socialTipoId`, `socialTipoNombre`, `socialTipoDescripcion`) VALUES
(1, 'Facebook', 'Red social para facebook'),
(2, 'Twitter', 'Red Social para twitter'),
(3, 'Instagram', 'Redo Social para Instagram'),
(4, 'Sito Web', 'Sitio web');

-- --------------------------------------------------------

--
-- Table structure for table `Tipo`
--

CREATE TABLE IF NOT EXISTS `Tipo` (
  `tipoId` int(11) NOT NULL AUTO_INCREMENT,
  `tipoNombre` varchar(25) NOT NULL,
  `tipoDescripcion` varchar(100) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `tipoLogo` varchar(250) NOT NULL,
  PRIMARY KEY (`tipoId`),
  KEY `idCategoria` (`idCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `Tipo`
--

INSERT INTO `Tipo` (`tipoId`, `tipoNombre`, `tipoDescripcion`, `idCategoria`, `tipoLogo`) VALUES
(1, 'Café y Panaderias', 'tipo cafeteria y panaderia', 1, ''),
(2, 'Restaurantes', 'Tipo restaurante', 1, ''),
(3, 'Area Familiar', 'tipo area familiar', 2, ''),
(4, 'Aventura', 'Tipo Aventura', 2, ''),
(5, 'Museos y Teatros', 'tipo museos y teatros', 2, ''),
(6, 'Parques Tematicos', 'Tipo Parques Tematicos', 2, ''),
(7, 'Hoteles', 'Tipo Hoteles', 3, ''),
(8, 'Lagos y Lagunas ', 'Tipo para lagos', 6, ''),
(10, 'Centros Comerciales', 'Tipo Centros Comerciales', 4, ''),
(11, 'Transporte', 'Tipo Transporte', 4, ''),
(12, 'Ruta De Las Flores ', 'Tipo de lugar ruta de las flores', 6, ''),
(13, 'Cerros y Montañas', 'Cerros y Montañas', 6, ''),
(14, 'Servicios Profesionales ', 'Tipo Servicios Profesionales', 4, ''),
(15, 'Instituciones Financieras', 'Tipo Instituciones Financieras', 4, ''),
(16, 'Destinos', 'Tipo Destinos ', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `Ubicacion`
--

CREATE TABLE IF NOT EXISTS `Ubicacion` (
  `ubicacionId` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacionNombre` varchar(200) NOT NULL,
  `ubicacionPais` int(11) NOT NULL,
  `ubicacionDescripcion` varchar(2000) NOT NULL,
  `ubicacionLatitud` float(10,7) DEFAULT NULL,
  `ubicacionLongitud` float(10,7) DEFAULT NULL,
  `ubicacionDireccion` varchar(2000) NOT NULL,
  `ubicacionLogo` varchar(250) NOT NULL,
  `mapIcon` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`ubicacionId`),
  KEY `ubicacionPais` (`ubicacionPais`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `Ubicacion`
--

INSERT INTO `Ubicacion` (`ubicacionId`, `ubicacionNombre`, `ubicacionPais`, `ubicacionDescripcion`, `ubicacionLatitud`, `ubicacionLongitud`, `ubicacionDireccion`, `ubicacionLogo`, `mapIcon`, `telefono`) VALUES
(1, 'Café del Volcán', 1, 'Café del volcan le ofrece un excelente servicio y calidad en sus platillos. Cuenta con amplios salones, terrazas, juegos infantiles, jardines con árboles, flores y plantas ornamentales', 13.7330618, -89.2660599, 'Km 20, carretera al Boquerón, cantón El Progreso, San Salvador.', 'www.guiamultiturismo.com/imgsApp/logo/cafe_del_volcan.png', 1, '2306 2001'),
(2, 'Café Sunzal', 1, 'Café Sunzal es un restaurante que ha sido concebido para cumplir con las más altas normas de comodidad, servicio, seguridad y privacidad para sus clientes que los visitan en Playa El Sunzal, Puerto de La Libertad. Café Sunzal te ofrece un variado menú internacional de comida gourmet en un ambiente familiar, utilizando siempre los productos más frescos.', 13.4938498, -89.3901825, 'Carretera del Litoral, Km 43 1/2 , Playa El Sunzal, La Libertad, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/cafe_sunzal.png', 1, '23557137'),
(3, 'El Jardín de Celeste ', 1, 'Disfrute del clima privilegiado y la naturaleza de La Ruta de Las Flores.\r\n \r\nSiéntase acogido en ambiente mágico lleno de innovación dentro de la tradición y herencia.\r\n \r\nDiviértase en familia en nuestra área de juegos para niños, vivero, jardines y caminos entre la naturaleza.\r\nAlójese en nuestras cabañas, rodeadas de cafetales, rústicas pero totalmente equipadas.\r\n \r\nContamos también con salones de usos múltiples y capilla  para bodas, eventos especiales , reuniones y seminarios.\r\n \r\nNos car', 13.8485613, 89.8333817, 'CA-8, Km. 94, Ruta de las Flores, entre Apaneca y Ataco. Ahuachapán, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/el_jardin_de_celetes.png', 1, '2433 0277'),
(4, 'Las brumas ', 1, 'Las Brumas Grill & Café le garantiza agradables momentos en compañía\r\nde sus familiares y amigos.\r\n', 13.7295856, -89.2678375, 'el volcán de San Salvador al kilometro 19 1/2', 'www.guiamultiturismo.com/imgsApp/logo/las_brumas.png', 1, ''),
(5, 'El Rosario ', 1, 'Panadería y Pastelería El Rosario, una historia de sabor único...\r\nHablar de Panadería El Rosario es hablar de la “Niña Blanquita” tal como es reconocida por sus clientes; la mujer cuyo empuje y visión le permitieron a esta tradicional panadería, hacerse de un espacio preferencial en la mesa de miles de familias salvadoreñas, que han compartido la calidad y la variedad de sus productos por generaciones.\r\n\r\nDe familia panadera,  Niña Blanquita aprendió en 1957 las artes de la panificación, cuando', 13.7062674, -89.1922607, 'Centro Comercial Santa Elena, Blvd. Santa Elena Local Número 114', 'www.codetobe.com/imgsApp/logo/rosario.png', 1, ''),
(6, 'Súper Cocteles', 1, 'Restaurante 100 % Familiar, para degustar Mariscos frescos y abundantes, además de Alitas, Costillas, Chicharrones, pizza y más.\r\n\r\nOfrecemos Cocteles Gigantes a precios súper económicos, destacando la cantidad y la calidad. Nuestros cocteles son para ser compartidos entre 2-3 personas a un precio accesible.\r\n\r\nAseguramos higiene total en nuestros productos.', 13.6973743, -89.2497406, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Super%20Cocteles/12347954_1676143109335069_189111409803471705_n.jpg', 1, '+503 6206 7889'),
(7, 'Hacienda Real ', 1, 'La Hacienda Real en El Salvador está ubicado en la carretera a Santa Tecla, su especialidad son los diferentes cortes de carne los cuales son servidos a la parrilla con sabrosas guarniciones ', 13.6751261, -89.2536545, 'Km 8.5 carretera panamericana el salvador ', 'www.guiamultiturismo.com/imgsApp/logo/haciendareal.JPG', 1, ''),
(8, 'Le Croissant', 1, 'Productos naturales, recién horneados con ingredientes importados. Tenemos una amplia variedad de boquitas, postres, mini pan dulce, para poder surtir tus eventos especiales: Bodas, bautizos, etc.', 13.6794748, -89.2478485, 'Zona Industrial Santa Elena, Calle Chaparrastique Av Lamatepec Bodega 25 Antiguo Cuscatlán, La Libertad \r\nSan Salvador, El Salvador\r\n', 'www.guiamultiturismo.com/imgsApp/logo/lecroissant.png', 1, ''),
(9, 'Restaurante los Cebolline', 1, 'Tenemos un menú de comida mexicana delicioso, además Organizamos su reunión o evento. Nuestro equipo le ayudará a que sea todo un éxito, solicite información al departamento de eventos especiales.', 13.6833630, -89.2291794, ' 73 Av. Sur Paseo General Escalón Centro Comercial Porto Fino San Salvador', 'www.guiamultiturismo.com/imgsApp/logo/Logo-Cebollines-FC.png', 1, ''),
(10, 'Panes coyo ', 1, 'Panes con pavo y comida mexicana\r\nRestaurante con platos típicos salvadoreños, especializados en deliciosos panes con pavo. Somos una opción diferente pero sabrosa ', 13.7069492, -89.2145615, 'C.C. Autopista Sur Local 3 \r\nSan Salvador, El Salvador', 'www.codetobe.com/imgsApp/logo/panes_coyo.png', 1, ''),
(11, 'Cinepolis', 1, 'Sala de cine y entretenimiento ', 13.7018862, -89.2292862, 'Colonia Escalón Cond Galerías Escalón Ofs Cinepolis 4o Nvl | San Salvador, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/Cinepolis.jpg', 2, ''),
(12, 'Galaxy Bowling', 1, 'Como único boliche de El Salvador ofrecemos diversión para toda clase de eventos. Contamos con 20 pistas. Área de cafetería con un amplio menú: pizzas de diferentes especialidades, tacos, hamburguesas, pepitos, club sándwich, bebidas frías y calientes, snack, postres y muchos más. Diversión para todas las edades. Celebra con nosotros cumpleaños, graduaciones, quince años, aniversarios, torneos empresariales, competencias ejecutivas y after office. Estamos ubicados en la 75 Ave. Norte frente a las fuentes Beethoven, Col. Escalón. Contamos con servicio de valet parking. Te esperamos.', 13.7031841, -89.2332764, '75 Av Nte o Napoleon viera Altamirano, San Salvador', 'www.guiamultiturismo.com/imgsApp/logo/galaxy-Bowling.jpg', 2, ''),
(13, 'World games', 1, 'Que mejor maneraa de disfrutar tu cumpelaños que Disfrutando toda la diversión que solo worldgames tiene preparada para ti, Pregunta por nuestros paquetes Especiales.', 13.6793499, -89.2477951, 'Centro comercial multiplaza', 'www.guiamultiturismo.com/imgsApp/logo/worldgames.png', 2, ''),
(14, 'Crowne Plaza', 1, 'Este moderno hotel se encuentra en frente del World Trade Center y la torre Futura. Ofrece piscina al aire libre, gimnasio abierto las 24 horas, vistas al volcán San Salvador y habitaciones con TV por cable de pantalla plana y cafetera. El Crowne Plaza San Salvador está rodeado de árboles. Está ubicado en el distrito financiero de la ciudad y a solo 1 km de la catedral de San Salvador. Las habitaciones del Crowne Plaza San Salvador cuentan con aire acondicionado y baño con secador de pelo y artículos de aseo. También disponen de kit para dormir con antifaz, tapones para los oídos y spray de lavanda para las sábanas. El restaurante del hotel El Mirador, que ofrece unas preciosas vistas al volcán, sirve especialidades en carnes a la parrilla y marisco. El hotel se encuentra cerca de Plaza Futura donde hay variedad de cafeterías, bares y restaurantes. El hotel está a 15 minutos en coche del aeropuerto internacional de El Salvador y a 22 km del parque nacional El Boquerón. El establecimiento dispone de aparcamiento privado gratuito.', 13.7095413, -89.2413406, '89 Avenida Norte Y 11 Calle Poniente,Colonia Escal N, Colonia Escalon, San Salvador, El Salvador –', 'www.guiamultiturismo.com/imgsApp/logo/crowne-plaza.png', 3, ''),
(15, 'Hotel barcelo', 1, 'Barcelo San Salvador, equipado con piscina exterior y spa, se encuentra en San Salvador, en la región de San Salvador, a 1,8 km del parque Bicentenario de San Salvador. Alberga un bar. En el establecimiento hay aparcamiento privado gratuito. Todas las habitaciones tienen aire acondicionado y TV de pantalla plana con canales por cable. El baño es privado e incluye bañera. También disponen de albornoces, zapatillas y artículos de aseo gratuitos. El hotel alberga una recepción 24 horas y una peluquería. Se ofrece servicio de alquiler de coches. El aeropuerto de El Salvador es el más cercano y se halla a 34 km.', 13.6929235, -89.2376480, 'Blv. Del hipódromo, av las magnolias colonia san Benito san salvador el salvador ', 'www.guiamultiturismo.com/imgsApp/logo/barceloHotel.png', 3, ''),
(16, 'Hotel holiday inn ', 1, 'El Holiday Inn San Salvador se encuentra a 9 km del centro de San Salvador. Ofrece recepción 24 horas, un gimnasio y una piscina al aire libre, así como conexión Wi-Fi gratuita y aparcamiento gratuito. Las habitaciones cuentan con aire acondicionado, suelo de moqueta, TV de pantalla plana por cable y un sofá. Tienen un escritorio y una cafetera. El baño privado está equipado con secador de pelo, ducha y artículos de aseo. El hotel tiene un restaurante y cafetería, el Essenza Café, que presenta un ambiente moderno. El hotel ofrece servicio de lavandería y de limpieza en seco y servicio de conserje. La playa de La Libertad se encuentra a 1 hora en coche.', 13.6712894, -89.2540894, 'Urbanización y blv. Santa elena al norte de la embajada americana, antiguo cuscatlan, san salvador el salvador ', 'www.guiamultiturismo.com/imgsApp/logo/holyday.jpg', 3, ''),
(17, 'Pacific Paradise ', 1, 'El Pacific Paradise, situado junto a la playa de la península de Jaltepeque, cuenta con una piscina al aire libre, jardines exuberantes y un bar restaurante internacional. Sus habitaciones disponen de aire acondicionado, conexión Wi-Fi gratuita y TV por cable. Las habitaciones del Hotel Pacific Paradise Costa del Sol son amplias y presentan una decoración sencilla y luminosa con muebles de madera. Todas disponen de baño privado con bañera o ducha. El Pacific Paradise Costa del Sol ofrece una zona de playa con sombrillas, una pista de voleibol y un parque infantil. El complejo dispone de recepción las 24 horas y de aparcamiento privado gratuito. El hotel está situado en la hermosa región de la Costa del Sol de El Salvador. El aeropuerto de Comalpa está a 30 minutos en coche, mientras que San Salvador se halla a 45 minutos.', 13.2987757, -88.9037628, 'Dirección blv. Costa del sol km 75 la herradura 	', 'www.guiamultiturismo.com/imgsApp/logo/pacific-paradise.jpeg', 3, ''),
(18, 'real intercontinental ', 1, 'El Real Intercontinental San Salvador dispone de piscina al aire libre, spa y centro de fitness 24 horas, y se encuentra en el centro de San Salvador. Alberga 3 restaurantes conceptuales y un bar. Las habitaciones del establecimiento son elegantes y cuentan con aire acondicionado, TV por cable de pantalla plana, minibar y cafetera. Además, incluyen un edredón de diseño, almohadas de plumas, ventanas insonorizadas y conexión a internet individual. El Real Intercontinental San Salvador ofrece excelentes sitios para comer, entre ellos el Faisca do Brasil, el auténtico asador brasileño Rodizio, el Picasso Stone Flame Oven y el NAU Sushi Lounge and Bar. En el spa del establecimiento se puede disfrutar de la sauna finlandesa o de masajes relajantes. En la planta Club se sirven desayunos y meriendas gratuitos. El establecimiento se encuentra a 293 metros del centro comercial más grande de Centroamérica, donde los huéspedes encontrarán tiendas, restaurantes, un teatro, bares y un cine. El establecimiento está fácilmente comunicado con el aeropuerto internacional de El Salvador.', 13.7072210, -89.2132874, 'Blv de los héroes y calle  Los sisimiles colonia miramonte  san salvador el salvador ', 'www.guiamultiturismo.com/imgsApp/logo/intercontinental-san-salvador.png', 3, ''),
(19, 'Canopy. El Boquerón', 1, 'A escasos minutos del casco urbano, se puede conocer el Canopy. El Boquerón, capaz de llevar al visitante por senderos aéreos y conectándolo con lo más íntimo de la naturaleza exuberante que oferta El Salvador a los turistas nacionales e internacionales. Con la debida asistencia de los guías especializados, los visitantes pueden disfrutar de diversos viajes, hacia las distintas plataformas que componen el parque, ubicadas sobre las plantaciones de café, en Nejapa, Quezaltepeque, a una altura variada de 1011 MSNM metros sobre el nivel del mar.', 13.7159157, -89.2783813, 'Km 16 1/2 Calle al Boquerón Plaza Volcán', '', 2, ''),
(20, 'Escuela de Buceo Aquatica', 1, 'El buceo es la actividad por medio de la cual el ser humano se sumerge en cuerpos de agua, ya sea el mar, un lago, un río, una canterainundada o una piscina, con el fin de desarrollar una actividad profesional, recreativa, de investigación científica o militar con o sin ayuda de equipos especiales. Al buceo tradicional (sin aparatos de respiración) se le llama sencillamente buceo, aunque a su modalidad deportiva se le llama apnea o buceo libre. El', 13.6949730, -89.2289886, 'Centro Comercial Loma Lina Local 9-A, frente a Canal 2, colonia San Benito San Salvador, El Salvador.', 'www.guiamultiturismo.com/imgsApp/logo/aquatia.jpg', 2, ''),
(21, 'Paintball Navarra', 1, 'Dentro de las instalaciones del Navarra se encuentran 4 campos de juego. Dos polígonos de terreno plano con defensas y obstáculos como barriles, tubos, y otras figuras de plástico; y 2 cafetales simulando un campo real de guerra entre la naturaleza. Los polígonos son ideales para jugar cuatro o cinco jugadores por equipo, mientras que los cafetales son para equipos de diez o más jugadores.\r\n\r\n\r\nA solo 15 minutos de San Salvador se encuentra ubicado el campo de Paintball Navarra (Autopista al Aeropuerto Internacional de Comalapa). A la altura del Rancho Navarra, justo antes de la gasolinera que se encuentra a mano derecha encontrará una entrada. De allí deberá recorrer aproximadamente 1 Km. cuesta arriba hasta llegar a los campos para la práctica de este deporte extremo recomendado para pasar un momento de diversión extrema, en compañía de familia y amigos.', 13.6746597, -89.2081223, 'km 6.5 Autopista Comalapa, abajo de gasolinera Texaco Navarra, entrada por las canchas de fútbol Gambeta , San Salvador', 'www.guiamultiturismo.com/imgsApp/logo/paintballNavarra.png', 2, ''),
(22, 'Museo Nacional de Antropología Dr. David J. Guzmán (MUNA)', 1, 'Localizado en Avenida La Revolución, Colonia San Benito, San Salvador, El Salvador. Este museo alberga una valiosa colección de objetos arqueológicos, etnográficos e históricos, que nos brindan una mirada al pasado desde los períodos prehispánicos hasta la actualidad, constituyendo una gama de elementos que muestran una larga ocupación humana del actual territorio salvadoreño. Es una dependencia de la Secretaría de Cultura de la Presidencia de El Salvador.', 13.6871233, -89.2387695, 'Avenida De La Revolución, San Salvador', 'www.guiamultiturismo.com/imgsApp/logo/Muna.jpg', 2, ''),
(23, 'Marte', 1, 'El edificio que alberga el museo tiene un área de 2,275 metros cuadrados. Fue diseñado por el arquitecto salvadoreño Salvador Choussy (1947) y construido en un terreno de 6,520 metros cuadrados. Comprende salas de exhibición y áreas administrativas, depósito de obras, talleres y espacios complementarios, entre los que se cuenta una sala de proyecciones. En 2007 el museo amplió sus instalaciones al construir el salón de usos múltiples Ernesto Álvarez Córdova y una nueva sala de exhibición.\r\n\r\n', 13.6925383, -89.2419205, 'final de la avenida La Revolución, Colonia San Benito, en la ciudad de San Salvador, entre el Teatro Presidente y el Hotel Sheraton Presidente.', 'www.guiamultiturismo.com/imgsApp/logo/marte.png', 2, ''),
(24, 'Teatro Nacional de San Salvador', 1, 'El Teatro Nacional de San Salvador está ubicado en el centro histórico de la ciudad capital de El Salvador. Su construcción inició el año de 1911 y terminó en 1917. Es uno de los centros más importantes para las artes escénicas en este país.', 13.6985521, -89.1904602, 'Calle Delgado y 2a. Avenida Norte\r\n', '', 2, ''),
(25, 'Atlantis', 1, 'Somos un parque acuático dedicado a crear experiencias únicas a través de atracciones innovadoras que ofrecen diversión, adrenalina y descanso a visitantes nacionales y extranjeros, en un ambiente confortable y seguro. Atendidos por un personal capacitado y comprometidos con el servicio al cliente”.', 13.4181118, -88.9944687, 'carrtera a la costa del sol, km 51', 'www.guiamultiturismo.com/imgsApp/logo/Atlantis.jpg', 2, ''),
(26, 'Entre ríos', 1, 'En la ciudad de Caluco, a tan solo 40 minutos de San Salvador, se encuentra Ecoparque Acuático Entre Ríos. Inmerso en 12 hectáreas de exuberante vegetación, combinando piscinas, toboganes gigantes, piscinas de aguas termales, merenderos y acuario para pescar.', 13.7160139, -89.6595764, 'Cantón Agua Caliente, contiguo a la linea ferrea, SON16', 'www.guiamultiturismo.com/imgsApp/logo/EntreRios.jpg', 2, ''),
(27, 'Walter Thilo Deininger', 1, 'El Parque nacional Walter Thilo Deininger, es una zona natural protegida por el gobierno de El Salvador desde el año de 1986.\n\nEl parque es un área que tiene aproximadamente 1,047 manzanas, 732 hectáreas en donde existen más de 444 tipos de árboles, los que constituyen un importante hábitat para reptiles, aves, mamíferos e infinidad de insectos.\n\nEl Árbol de los 1000 años se encuentra en el Parque nacional Walter Thilo Deininger.\nSu nombre es en honor al Alemán Walter Thilo Deininger quien renunció a su nacionalidad Alemana para convertirse en uno de los mayores empresarios Salvadoreños que nunca dejaron de lado la actividad filantropista y humana en el país.\n\nEl Parque consta de 3 rutas de diferentes senderos, por el cual los usuarios conocen diversidad de fauna y flora.\n\nEl parque se podría dividir en dos zonas, el bosque seco y el bosque húmedo. Si se visita el parque en una época previa al verano se podrá visitar un parque que parecen dos bosques unidos, uno en el que no hay ninguna hoja en el follaje de los árboles, solamente tallos café claro, y el otro, lleno de follaje frondoso en el que el color verde tiene predominio.\n\nEn una época el nivel del mar llegaba a la altura del parque, por lo cual hay enormes piedras en las cuales hoy se pueden apreciar petrograbados indígenas.\n', 13.4992561, -89.2681046, '¿Cómo llegar? \nEn auto:\n Este parque se sitúa en la orilla de la carretera del Litoral (CA-2), la cual, junto a la carretera que conecta La Libertad-San Salvador y San Salvador-Comalapa, forman la red vial que conduce al parque desde estos puntos del país.\n\nEn autobús: \nLa ruta de autobús 102 que se aborda en el Parque Cuscatlán (Centro de San Salvador) con destino al Puerto de La Libertad. Luego se aborda la ruta 187 para bajarse en el kilómetro 39, con dirección a la Playa San Diego. Costo estimado del pasaje $0.35-$0.75.\n\nTarifas:\nEntrada general adultos $1.50\nParqueo $1.50\n', '', 2, ''),
(28, 'Lago de Coatepeque', 1, 'El lago Coatepeque es un lago de origen volcánico, situado a 18 km al sur de la ciudad de Santa Ana en el municipio de El Congo. Tiene una altitud de 745 msnm y una superficie de 25.3 km². Además, su profundidad de 115 m. ', 13.8477468, -89.5423508, '', 'www.guiamultiturismo.com/imgsApp/logo/coatepeque.jpg', 6, ''),
(29, 'Blu Bar', 1, 'Bar ubicado en la playa el tunco', 13.4925394, -89.3823318, 'CA-2\r\nEl Salvador', 'www.guiamultiturismo.com/imgsApp/logo/blubar.JPG', 5, ''),
(30, 'Hospital de la Mujer', 1, 'Desde su fundación en 1989, El Hospital de la Mujer ha sido una institución dinámica, que ha mantenido un desarrollo sostenido, a través de diversificación de sus servicios con implementación y renovación de tecnología e incorporación del mejor nivel de capacidad médica del país. Su reto continúa siendo grande y el objetivo principal es brindar una atención médica hospitalaria de la más alta calidad científica y humana, con el respaldo de especialistas médicos, de personal de enfermería y administrativo del más alto nivel, apoyado por equipos de alta tecnología.\n\n\nEl Hospital de la Mujer es un centro médico integral, con tecnología de última generación. Su campo de acción se extiende actualmente a todos los campos de la medicina: ginecología, cirugía general, pediatría, cirugía plástica y/o reconstructiva, ortopedia, neurocirugía, medicina interna, urología, otorrinolaringología y cardiología. La evolución hacia lo que somos ahora: un centro médico general, donde la familia completa puede acceder a los servicios médico-hospitalarios que proporciona, ha sido una labor plenamente satisfactoria, la cual redunda en el compromiso que adquiere cada vez que un paciente necesita servicios de calidad.\n', 13.7019072, -89.2379227, '-', 'www.guiamultiturismo.com/imgsApp/logo/HospitaldeLaMujer.JPG', 4, ''),
(31, 'Montsé Floristería', 1, 'A través de una constante innovación y búsqueda de excelentes productos se crean las mejores composiciones florales, orientadas a comunicar un concepto y emociones que representen la ocasión, o los mismos sentimientos de nuestros clientes.\r\n\r\nMontsé Floristería nace con el principal objetivo de desarrollar el arte floral en El Salvador, innovando siempre en todos los aspectos de nuestra marca. Desde la calidad de nuestras flores importadas, hasta la manera de comunicarse con todos nuestros clientes. \r\nLas tendencias en decoración evolucionan, al igual que nuestra marca a través de 10 años en los que con entrega y pasión hemos tenido el orgullo de haber sido parte de un gran desarrollo en la manera de experimentar los eventos en nuestro país.\r\n\r\nMontsé cree firmemente en brindarles lo mejor a nuestros clientes, con productos de primera calidad y la mejor atención, buscamos escuchar siempre para poder interpretar las ideas y expresarlas a través de lo que mejor sabemos hacer.\r\n\r\n\r\nNuestra Misión\r\n\r\nTransmitir los sentimientos de nuestros clientes por medio de composiciones florales únicas e innovadoras, elaboradas por un equipo de artistas profesionales y productos de calidad; garantizando una memorable experiencia a nuestros clientes.\r\n', 13.6974163, -89.2321091, '-', 'www.guiamultiturismo.com/imgsApp/logo/montse-01.png', 4, ''),
(33, 'Acofinges', 1, 'A Principios del año 1986, un grupo de ingenieros, partiendo del principio que la unidad hace la fuerza, decide crear la Cooperativa de Ingenieros. El horizonte ha cambiado desde entonces y ahora junto con los arquitectos y ramas afines, se ha logrado consolidar.\n\nACOFINGES DE RL, con su lema: «Construyendo Juntos Tu Futuro Hoy», cada vez nos volvemos más dinámicos, eficientes y con una sólida posición financiera y económica. En el 2011, estamos cumpliendo 25 años de existencia, siendo nuestras fortalezas, entre otras, nuestra conciencia social y el eficiente empeño de nuestro personal. Con verdadera responsabilidad cooperativista, sigue nuestro compromiso de contribuir al fomento del desarrollo económico y social de sus miembros asociados, quienes la administran y disfrutan sus beneficios.\n', 13.7068415, -89.2102814, '-', 'www.guiamultiturismo.com/imgsApp/logo/Acofinges-Logo2.png', 4, ''),
(34, 'Nahuizalco ', 1, 'El primer pueblo en la Ruta de Las Flores al que se llega partiendo de Sonsonate es Nahuizalco que en lengua Nahuat significa Los cuatro Izalcos debido a que su población era cuatro veces más grande que su vecino pueblo de Izalco. \r\n\r\nNahuizalco es uno de los centros indígenas más arraigados del área. Este pueblo de El Salvador es muy famoso por sus artesanías y muebles elaborados con tule y mimbre. Otro de sus atractivos es el mercadito nocturno en el que al caer la noche se apagan las luces del pueblo y las ventas de artesanías son alumbradas solo con candelas. \r\n', 13.7780247, -89.7403412, '-', 'www.guiamultiturismo.com/imgsApp/logo/nahuizalco.JPG', 6, ''),
(35, 'Salcoatitan ', 1, 'Es el segundo destino, subiendo la sierra y su nombre significa Ciudad del Quetzalcoatl. Localizado a un poco más de 1040 m.s.n.m. Salcoatitan fue el lugar donde se realizaron las primeras plantaciones de café en el país en los años 1860s. \r\n\r\nSalcoatitan es también reconocido por la cantidad de tiendas de artesanías similares a las de Nahuizalco, sin embargo por lo general se le visita de paso y aun cuando recientemente sus opciones de restaurantes y galerías han crecido considerablemente. \r\n', 13.8297262, -89.7578735, '-', 'www.guiamultiturismo.com/imgsApp/logo/salco.jpg', 6, ''),
(36, 'Juayua', 1, 'Juayua de la palabra Nahuat que significa Río de la Orquídeas Moradas, se encuentra localizado a 1060 m.s.n.m.\r\n\r\nJuayua es una encantadora ciudad que forma parte de la Ruta de Las Flores y en la que se puede disfrutar un buen fin de semana entero o bien visitarla solo por el día. \r\n\r\nExisten una cantidad considerable de hotelitos a precios accesibles y es anfitrión de un festival gastronómico permanente desde hace ya 13 años. \r\n\r\nAsí también existen varios atractivos eco-turísticos en la zona como: Caminata a los chorros de la Calera, el estanque del Río Monterrey y la laguna seca o de las ranas. La Iglesia del Cristo Negro es una edificación católica de más de 500 años de antigüedad, donde se venera al Cristo Negro.\r\n\r\nLa Iglesia ha sido reconstruida en tres ocasiones y utilizando diferentes estilos. Frente a ella un parque siguiendo el estilo colonial que marca la mayoría de pueblos y ciudades del país. \r\n', 13.8428040, -89.7470703, '-', 'www.guiamultiturismo.com/imgsApp/logo/juaya.jpg', 6, ''),
(37, 'Apaneca', 1, 'Situada a 1455 metros sobre el nivel del mar y a 91 km. de San Salvador, es la ciudad más alta en El Salvador. Lugar de cultivo de unos de los mejores y más premiados cafés dada su altura, presenta un pintoresco paisaje que enriquece la Ruta de Las Flores, con casas de techo de teja e impresionantes vistas de montañas y cerros. \r\n\r\nApaneca significa en lengua Nahuat Río de Vientos y es tal razón lo que ha llevado a la implementación de marcadas barreras de viento a lo largo de su cadena montañosa y lo que forma parte del atractivo visual del área. \r\n\r\nLos cráteres volcánicos conocidos como laguna de las ninfas y Laguna Verde son algunos de sus sitios cercanos más visitados. La iglesia de Apaneca era una de las más viejas iglesias parroquiales en el país pero resulto severamente dañada por los terremotos del 2001 y más recientemente por un enjambre sísmico originado precisamente en el área de Apaneca, lo que obligo a su demolición y actual reconstrucción. \r\n', 13.8595524, -89.8050995, '-', 'www.guiamultiturismo.com/imgsApp/logo/apaneca.jpg', 6, ''),
(38, 'Concepción de Ataco', 1, 'Este pueblo está localizado a 5 kilómetros de Apaneca, y en Nahuat significa Lugar de Elevados Manantiales”.  Es sin duda un pequeño pueblito pintoresco y poseedor de una de las más famosas tiendas de artesanías y telares de pedal de la zona “Diconte Axul. \r\n\r\nEl parque central se encuentra ubicado a pocas cuadras de esta tienda y frente a él la iglesia que exhibe una arquitectura moderna pues ha recibido remodelación recientemente.\r\n\r\nA lo largo de toda el área de la ruta se encuentran cantidad de beneficios de café que recientemente han empezado a ofrecer los denominados tours de café; debido a la demanda turística que busca conocer el proceso del café desde la corta del grano de oro hasta su preparación.\r\n', 13.8702097, -89.8505402, '-', 'www.guiamultiturismo.com/imgsApp/logo/ataco-s-main-catholic.jpg', 6, ''),
(39, 'Cerro El Pital ', 1, 'El cerro El Pital es una montaña transnacional, ubicada exactamente en la frontera entre El Salvador y Honduras. Se encuentra a 13 km al Noreste del casco urbano de San Ignacio, municipio salvadoreño, y a 7 km al Sureste de la ciudad hondureña de Nueva Ocotepeque. Es un pico montañoso de impresionantes laderas escarpadas. Con 2730 msnm es el más alto de El Salvador y el tercero más alto de Honduras. Su área total, incluyendo la zona de amortiguamiento, se estima en 38 km con más de un 50% de su bosque original ya destruido.\r\n\r\nCaracterísticas\r\nEl Pital es considerado, por las personas que gustan del clima frío, uno de los mejores lugares para poder acampar. La zona para acampar se encuentra a unos 2700 msnm aproximadamente, específicamente entre los dos picos de la montaña, por lo que se forma un corredor de viento en ese lugar. En ese sector de la montaña la temperatura es 10 °C menos que los lugares aledaños, aunque estos estén a pocos metros.\r\n\r\nSu vegetación está poblada de coníferas y encinos. Otras especies incluyen el Pino Blanco, Pinabete y varias especies de robles, plantas casi extintas para el país y únicas de esa zona.\r\n\r\nClima\r\nAcá se han registrado las temperaturas más bajas en El Salvador y Honduras, de 2 y 3 grados, incluso ha llegado hasta los cero grados, pero por lo general su temperatura promedio es de 12°C.\r\n\r\n\r\n', 14.3885899, -89.1260071, '', 'www.guiamultiturismo.com/imgsApp/logo/Elpital.jpg', 6, ''),
(40, 'Cerro Verde o Cuntetepeque  ', 1, 'es un volcán extinto ubicado en el Departamento de Santa Ana, El Salvador, en la cordillera de Apaneca. Tiene una altura de 2030 msnm y su cráter se encuentra erosionado y cubierto por un espeso bosque nebuloso. Se estima que su última erupción fue hace 25 mil años a. C.\r\n\r\nEl Cerro Verde es parte del Parque Nacional Los Volcanes El Salvador contado con una extensión de 2,734.6 hectáreas y una total todo el parque de 4,500 hectáreas, entre tierras estatales, municipales y privadas que es administrado por el Ministerio de Medio Ambiental y Recursos Naturales; ofrece miradores a los volcanes de Santa Ana, Izalco y al Lago de Coatepeque, además de un orquidiario, paseo por el bosque y escaladas al mismo Volcán de Izalco (altura 1,980 metros sobre el nivel del mar) y al de Santa Ana (altura 2,381 metros sobre el nivel del mar). El parque también cuenta con tres senderos recreativos: Las Flores Misteriosas, Ventana a la Naturaleza y Antiguo Hotel de Montaña.\r\n', 13.8277779, -89.6252747, '', 'www.guiamultiturismo.com/imgsApp/logo/882690718408557.jpg', 6, ''),
(41, 'Laguna de Apastepeque', 1, 'La Laguna de Apastepeque es un remanente de agua natural de origen volcánico, rodeado de frondosos árboles. Se encuentra situada en el departamento de San Vicente y ofrece al visitante serenidad, descanso, placer y belleza.\r\n\r\nEl espejo de agua es de 0.59 Km²; no hay corrientes principales o ríos que desemboquen en la laguna o que sirvan de drenaje; la principal fuente de agua es la lluvia, aunque también es alimentada por agua subterránea; así mismo también hay drenaje subterráneo al río Ismateco. El nivel de agua de la laguna fluctúa entre 503.3 y 504.5 m.s.n.m., con el más alto nivel entre los meses de octubre y noviembre; y el menor en mayo, esto provoca 1.2 Km² de tierra fluctuante. La profundidad máxima en el centro de la laguna de Apastepeque es de 35 metros.\r\nLa laguna está rodeada de mucha vegetación en donde podemos encontrar árboles de Ceiba, Cedro Real, Sálamo, Pacún, Laurel, Chilamate, madrecacao, Aceituno, Conacaste, Conacaste blanco, Guarumo y Almendro de río.\r\n', 13.6924572, -88.7457886, 'La Laguna se encuentra a solo 4 kilometros del desvío a la Ciudad de San Vicente, sobre la Carretera Panamericana CA-1 que se dirige hacia San Miguel.', 'www.guiamultiturismo.com/imgsApp/ubicacion/Laguna%20de%20Apastepeque/Apastepeque.JPG', 6, ''),
(42, 'Dragon Dorado', 1, 'El verdadero sabor de la comida china\r\nUn lugar exclusivo, para poder degustar la auténtica comida china en El Salvador. Distribuidores exclusivos para El Salvador y C.A. de la salsa de soya Haday número 1 en China.', 13.6779585, -89.2679367, 'Cl Chiltiupán No 6 Cdad Merliot \r\nSanta Tecla, El Salvador', 'www.codetobe.com/imgsApp/logo/DragonDorado.JPG', 1, ''),
(43, 'Consepturs El Salvador ', 1, 'Somos una empresa de transporte y logística de traslado de personal de empresas y turístico, también contamos con el servicio de tour operadora ofreciendo paquetes turísticos dentro de El Salvador, Guatemala, Honduras y Nicaragua. Nos caracteriza la calidad de nuestro servicio y el compromiso con nuestros clientes, superando siempre sus expectativas de calidad y seguridad en el servicio que brindamos a cada uno de ellos.', 13.7032356, -89.2179413, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/consepturs/18450005_10203274159490546_1608304775_n.png', 4, '21304455'),
(44, 'La Gran Vía', 1, 'Con el desarrollo urbano de San Salvador y la creación de nuevos centros comerciales, se introduce al país un concepto global de estilo de vida: La Gran Vía ubicado en Antiguo Cuscatlán, El Salvador. El complejo es propiedad del Grupo Siman, y es desarrollado por la compañía Urbánica. Fue inaugurado en 2004.\nLa Gran Vía es el concepto global de Life Style Center, fundamentado en Ambiente, Estilo y Diversión, para que usted ', 13.6769905, -89.2543411, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/La%20Gran%20V%C3%ACa/lgv-logo.png', 5, ''),
(47, 'Galerías', 1, 'El Centro Comercial Galerías, es un centro comercial ubicado en San Salvador, El Salvador. El complejo es propiedad del Grupo Siman, y entre sus atracciones se encuentra el ser el único centro comercial en tener dentro de sus instalaciones una mansión conocida como La Casona residencial privada en esas fechas, actualmente se conserva en perfectas condiciones, debido al reforzamiento estructural y a que fue rehabilitada totalmente durante la construcción del Centro Comercial, en ella se realizan actividades culturales, artísticas, educativas en beneficio de la comunidad y los artistas nacionales.', 13.7020340, -89.2298355, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Centro%20Comercial%20Galerias/gale.jpg', 4, ''),
(48, 'El Paseo ', 1, 'Centro Comercial El Paseo dirige sus esfuerzos para atender a un segmento que busca conveniencia. Está ubicado en uno de los puntos de mayor circulación de la capital, específicamente sobre el Paseo General Escalón.\r\n\r\nEl centro comercial alberga una exclusiva zona de restaurantes, cafés, tiendas exclusivas y un supermercado.\r\n', 13.7019053, -89.2351456, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/El%20Paseo/logo_el_paseo.png', 4, ''),
(49, 'Metrocentro San Salvador', 1, 'Es el primer centro comercial de Grupo Roble y actualmente cuenta con más de 760 locales comerciales distribuidos en 12 etapas cuenta con más de 200 mil metros cuadrados y 2,500 parqueos lo que lo convierte en el centro comercial más grande de El Salvador y Centroamérica también es el que recibe más visitas por mes.\r\n\r\nFue inaugurado el 23 de marzo de 1971 y poco a poco fue ampliándose hasta convertirse en el centro comercial más grande del país. Su construcción demoró un año.\r\n', 13.7049723, -89.2130356, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Metrocentro%20San%20Salvador/Metrocentro.png', 4, ''),
(50, 'Las Azaleas', 1, 'Plaza Comercial Las Azaleas, surge como un innovador concepto de centro de conveniencia en un ambiente agradable, seguro y de fácil acceso, la plaza consta de 4,926 metros cuadrados de construcción y fue desarrollado por Inversiones Extremas, entre la Calle La Mascota y la Avenida Las Azaleas, una de las zonas exclusivas de la ciudad. \r\n\r\nLa plaza comercial consta de 28 locales comerciales y espacio para el estacionamiento de 65 vehículos.\r\n', 13.6968870, -89.2451172, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Azaleas/17098726_1184213838343775_5192417444217777355_n.png', 4, ''),
(51, 'Plaza Madero', 1, 'Un lugar donde el tiempo te hará falta.\r\n\r\nSomos un Centro Comercial en el cual encontrarás la combinación perfecta de entretenimiento y conveniencia.\r\n\r\nNuestra Principal preocupación es crear un ambiente agradable e innovador, introduciendo un nuevo concepto en comercio y esparcimiento, su estilo único en la decoración creará ', 13.6700764, -89.2557755, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Madero/PlazaMaderoShadowLogo.png', 4, ''),
(52, 'Plaza Merliot', 1, 'Plaza Merliot fue fundada en 1994 en Santa Tecla, constituyó un polo de desarrollo para esta ciudad y a la fecha sigue siendo el lugar que ofrece de todo para los tecleños. Con una extensa oferta comercial y un amplio food court abre sus puertas a diario ofreciendo además de diversas tiendas y servicios (más de 230 marcas) un ambiente familiar, cómodo y muy cálido.', 13.6786585, -89.2758484, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Merliot/18033105_1446479335424550_6473653924489118308_n.png', 4, ''),
(53, 'Plaza Mundo', 1, 'Grupo AGRISAL crea un diseño arquitectónico orientado a la funcionalidad comercial en armonía, dignificando con ello la convivencia entre las familias del oriente y el sur del Gran San Salvador.\r\n\r\nEl Centro Comercial cuenta con un total de área arrendable de 56 mil metros cuadrados en un área de construcción de 149 mil metros cuadrados. El total de locales son 350, con 250 establecimientos y 1,400 estacionamientos. \r\n\r\nPlaza Mundo priorizó preservar una Ceiba Petandra en el corazón de la última etapa. Este bello árbol ha sobrevivido más de 100 años.\r\n', 13.6986532, -89.1503830, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Plaza%20Mundo/logo_new_.jpg', 4, ''),
(56, 'Eventos AG', 1, 'Como organizadores de eventos “Eventos AG” es una empresa que se preocupa por la satisfacción de sus clientes y por brindar servicios de alta calidad, conociendo minuciosamente cada detalle en cada uno de sus eventos para ofrecer la oportunidad de realizar un evento inolvidable y personalizado ajustándose al bolsillo de cada uno de sus consumidores. \r\n\r\nEventos AG ofrece una surtida variedad de Snack como:   \r\n* Palomitas de maíz\r\n* algodones de azúcar personalizados\r\n* Hotdog\r\n* fuentes de chocolate y queso\r\n* cupcake con su respectiva torre\r\n\r\n', 0.0000000, -89.1503830, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Eventos%20AG/18195118_1983502828602556_6155819320200535726_n.jpg', 0, ''),
(57, 'Multiplaza', 1, 'Es un complejo comercial propiedad de Grupo Roble ubicado en la ciudad de Antiguo Cuscatlan. Se compone de un centro comercial y una torre de apartamentos de lujo llamada Torre El Pedregal que mide 110.3 metros y posee 28 niveles lo que la convierte en la torre más alta de El Salvador. Además el proyecto incluye otra torre de apartamentos, una torre de oficinas y un hotel 5 estrellas, que se construirán posteriormente según aumente la demanda.', 13.6792746, -89.2486191, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Multiplaza/logo_multi_menu-042c83c5bc11d8c9c6c342078deb6702.png', 5, ''),
(58, 'Paseo El Carmen ', 1, 'Es un destino turístico ubicado en el centro histórico de la ciudad de Santa Tecla departamento de La Libertad, caracterizado por su actividad tanto diurna como nocturna y sus atracciones como la Parroquia Nuestra Señora del Carmen y el Palacio Municipal de Bellas Artes.\r\n\r\nEl paseo se extiende por varias cuadras en las cuales se encuentran diversos restaurantes, bares y cafés. Dicho destino turístico se encuentra muy cerca de los principales centros comerciales del país.\r\n', 13.6752653, -89.2857208, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Paseo%20El%20Carmen/paseo2.jpg', 5, ''),
(59, 'Torre Futura', 1, 'Torre Futura por su innovador diseño futurístico, comprende 20 pisos de espacios para oficinas, 5 niveles para estacionamiento, una plaza comercial para 25 establecimientos y una completa integración con las dos torres existentes, además integrado con el Crowne Plaza Hotel y su centro de convenciones, su mirador ofrece las mejores vistas de la ciudad. Es una torre “inteligente” diseñada para convertirse en un icono de innovación arquitectónica en San Salvador. Torre Futura es la tercera torre de un conjunto arquitectónico de usos múltiples que combina elegancia, ubicación, experiencia, y elevados estándares internacionales de diseño, funcionalidad, seguridad, flexibilidad, tecnología y comodidad. Es visualmente espectacular por fuera, eficiente por dentro y única en su tipo por la integración de usos múltiples.  ', 13.7085361, -89.2409897, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Torre%20Futura/torrefutura.jpg', 5, ''),
(60, 'Zona Rosa (San Salvador)', 1, 'La Zona Rosa es un área de la Colonia San Benito ubicada en la ciudad de San Salvador, conocida por su gran desarrollo en el ámbito turístico, hotelero y vida nocturna de la ciudad. La zona está compuesta de hoteles, bares, restaurantes, cafés, museos, torres de apartamentos, embajadas y un centro de convenciones.', 13.6888123, -89.2389679, '', 'www.guiamultiturismo.com/imgsApp/ubicacion/Zona%20Rosa/DSCN8518.jpg', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion_keyword`
--

CREATE TABLE IF NOT EXISTS `ubicacion_keyword` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `idUbicacion` int(11) NOT NULL,
  `idKeyword` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `idUbicacion` (`idUbicacion`),
  KEY `idKeyword` (`idKeyword`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ubicacion_keyword`
--

INSERT INTO `ubicacion_keyword` (`Id`, `idUbicacion`, `idKeyword`) VALUES
(1, 1, 3),
(3, 2, 4),
(4, 2, 5),
(5, 3, 2),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion_tipo`
--

CREATE TABLE IF NOT EXISTS `ubicacion_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUbicacion` int(11) NOT NULL,
  `idTipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUbicacion` (`idUbicacion`,`idTipo`),
  KEY `idTipo` (`idTipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `ubicacion_tipo`
--

INSERT INTO `ubicacion_tipo` (`id`, `idUbicacion`, `idTipo`) VALUES
(1, 1, 1),
(3, 1, 3),
(4, 2, 1),
(5, 3, 1),
(6, 4, 1),
(7, 5, 1),
(8, 6, 2),
(9, 7, 2),
(10, 8, 2),
(11, 9, 2),
(14, 10, 2),
(15, 11, 3),
(16, 12, 3),
(17, 13, 3),
(18, 14, 7),
(19, 15, 7),
(20, 16, 7),
(21, 17, 7),
(22, 18, 7),
(23, 19, 4),
(24, 20, 4),
(25, 21, 4),
(26, 22, 5),
(27, 23, 5),
(28, 24, 5),
(29, 25, 6),
(30, 26, 6),
(31, 27, 6),
(32, 28, 8),
(47, 30, 14),
(36, 31, 14),
(37, 33, 15),
(38, 34, 12),
(39, 35, 12),
(40, 36, 12),
(41, 37, 12),
(42, 38, 12),
(43, 39, 13),
(44, 40, 13),
(45, 41, 8),
(46, 42, 2),
(34, 43, 11),
(48, 44, 10),
(61, 44, 16),
(49, 47, 10),
(50, 48, 10),
(51, 49, 10),
(52, 50, 10),
(53, 51, 10),
(54, 52, 10),
(55, 53, 10),
(60, 56, 14),
(62, 57, 16),
(63, 58, 16),
(64, 59, 16),
(65, 60, 16);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Img`
--
ALTER TABLE `Img`
  ADD CONSTRAINT `Img_ibfk_1` FOREIGN KEY (`idUbicacion`) REFERENCES `Ubicacion` (`ubicacionId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `redSocial`
--
ALTER TABLE `redSocial`
  ADD CONSTRAINT `redSocial_ibfk_1` FOREIGN KEY (`idSocialTipo`) REFERENCES `SocialTipo` (`socialTipoId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `redSocial_ibfk_2` FOREIGN KEY (`idUbicacion`) REFERENCES `Ubicacion` (`ubicacionId`) ON UPDATE CASCADE;

--
-- Constraints for table `Tipo`
--
ALTER TABLE `Tipo`
  ADD CONSTRAINT `Tipo_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `Categoria` (`categoriaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ubicacion`
--
ALTER TABLE `Ubicacion`
  ADD CONSTRAINT `Ubicacion_ibfk_1` FOREIGN KEY (`ubicacionPais`) REFERENCES `Pais` (`paisId`) ON UPDATE CASCADE;

--
-- Constraints for table `ubicacion_keyword`
--
ALTER TABLE `ubicacion_keyword`
  ADD CONSTRAINT `ubicacion_keyword_ibfk_1` FOREIGN KEY (`idUbicacion`) REFERENCES `Ubicacion` (`ubicacionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ubicacion_keyword_ibfk_2` FOREIGN KEY (`idKeyword`) REFERENCES `Keyword` (`keywordId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ubicacion_tipo`
--
ALTER TABLE `ubicacion_tipo`
  ADD CONSTRAINT `ubicacion_tipo_ibfk_1` FOREIGN KEY (`idUbicacion`) REFERENCES `Ubicacion` (`ubicacionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ubicacion_tipo_ibfk_2` FOREIGN KEY (`idTipo`) REFERENCES `Tipo` (`tipoId`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
