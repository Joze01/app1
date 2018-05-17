-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 16, 2018 at 06:41 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `guiamultiturismoapp`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Categoria`
--

INSERT INTO `Categoria` (`categoriaId`, `categoriaNombre`, `categoriaDescripcion`) VALUES
(1, 'Que Comemos', 'categoría que comemos.'),
(2, 'Que Hacemos', 'categoría que hacemos.'),
(3, 'Donde Nos Quedamos', 'categoría donde nos quedamos'),
(4, 'Donde Compramos', 'categoria donde compramos'),
(5, 'Vida Nocturna', 'categoria vida nocturan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `Img`
--

INSERT INTO `Img` (`imgId`, `imgUrl`, `idUbicacion`) VALUES
(3, 'www.codetobe.com/imgsApp/ubicacion/cafedelvolcan/1.png', 1),
(4, 'www.codetobe.com/imgsApp/ubicacion/cafedelvolcan/2.png', 1),
(5, 'www.codetobe.com/imgsApp/ubicacion/cafedelvolcan/3.png', 1),
(6, 'www.codetobe.com/imgsApp/cafesunzal3.jpg', 2),
(7, 'www.codetobe.com/imgsApp/cafesunzal2.jpg', 2),
(8, 'www.codetobe.com/imgsApp/cafesunzal1.jpg', 2),
(9, 'www.codetobe.com/imgsApp/jardin1.jpg', 3),
(12, 'www.codetobe.com/imgsApp/jardin3.jpg', 3),
(13, 'www.codetobe.com/imgsApp/jardin2.jpg', 3),
(14, 'www.codetobe.com/imgsApp/cafesunzal2.jpg', 4),
(15, 'www.codetobe.com/imgsApp/cafesunzal1.jpg', 4),
(16, 'www.codetobe.com/imgsApp/cafesunzal3.jpg', 4),
(19, 'www.guiamultiturismo.com/imgsApp/ubicacion/cinepoli/cp1.jpg', 11),
(20, 'www.guiamultiturismo.com/imgsApp/ubicacion/cinepoli/cp2.jpg', 11),
(21, 'www.guiamultiturismo.com/imgsApp/ubicacion/cinepoli/cp3.jpg', 11);

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
  KEY `idSocialTipo` (`idSocialTipo`),
  KEY `idUbicacion` (`idUbicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `redSocial`
--

INSERT INTO `redSocial` (`idSocialTipo`, `idUbicacion`, `redSocialurl`) VALUES
(1, 1, 'https://www.facebook.com/restaurantecafedelvolcan/'),
(2, 1, 'https://twitter.com/cafe_del_volcan'),
(3, 1, 'https://www.instagram.com/cafedelvolcan/'),
(4, 1, 'https://elsalvadorenelmundo.com/restaurantes/noticias/noticia.php?id=7#.WNdGQPk1_cc'),
(1, 2, 'https://www.facebook.com/cafesunzal/'),
(2, 2, 'https://twitter.com/?lang=es');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
(7, 'Hoteles', 'Tipo Hoteles', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `Ubicacion`
--

CREATE TABLE IF NOT EXISTS `Ubicacion` (
  `ubicacionId` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacionNombre` varchar(200) NOT NULL,
  `ubicacionPais` int(11) NOT NULL,
  `ubicacionDescripcion` varchar(2000) NOT NULL,
  `ubicacionLatitud` float(10,7) NOT NULL,
  `ubicacionLongitud` float(10,7) NOT NULL,
  `ubicacionDireccion` varchar(150) NOT NULL,
  `ubicacionLogo` varchar(250) NOT NULL,
  `mapIcon` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`ubicacionId`),
  KEY `ubicacionPais` (`ubicacionPais`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `Ubicacion`
--

INSERT INTO `Ubicacion` (`ubicacionId`, `ubicacionNombre`, `ubicacionPais`, `ubicacionDescripcion`, `ubicacionLatitud`, `ubicacionLongitud`, `ubicacionDireccion`, `ubicacionLogo`, `mapIcon`, `telefono`) VALUES
(1, 'Café del Volcán', 1, 'Café del volcan le ofrece un excelente servicio y calidad en sus platillos. Cuenta con amplios salones, terrazas, juegos infantiles, jardines con árboles, flores y plantas ornamentales', 13.7330618, -89.2660599, 'Km 20, carretera al Boquerón, cantón El Progreso, San Salvador.', 'www.guiamultiturismo.com/imgsApp/logo/cafe_del_volcan.png', 1, '2306 2001'),
(2, 'Café Sunzal', 1, 'Café Sunzal es un restaurante que ha sido concebido para cumplir con las más altas normas de comodidad, servicio, seguridad y privacidad para sus clientes que los visitan en Playa El Sunzal, Puerto de La Libertad. Café Sunzal te ofrece un variado menú internacional de comida gourmet en un ambiente familiar, utilizando siempre los productos más frescos.', 13.4938498, -89.3901825, 'Carretera del Litoral, Km 43 1/2 , Playa El Sunzal, La Libertad, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/cafe_sunzal.png', 1, '23557137'),
(3, 'El Jardín de Celeste ', 1, 'Disfrute del clima privilegiado y la naturaleza de La Ruta de Las Flores.\r\n \r\nSiéntase acogido en ambiente mágico lleno de innovación dentro de la tradición y herencia.\r\n \r\nDiviértase en familia en nuestra área de juegos para niños, vivero, jardines y caminos entre la naturaleza.\r\nAlójese en nuestras cabañas, rodeadas de cafetales, rústicas pero totalmente equipadas.\r\n \r\nContamos también con salones de usos múltiples y capilla  para bodas, eventos especiales , reuniones y seminarios.\r\n \r\nNos car', 13.8485613, 89.8333817, 'CA-8, Km. 94, Ruta de las Flores, entre Apaneca y Ataco. Ahuachapán, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/el_jardin_de_celetes.png', 1, '2433 0277'),
(4, 'Las brumas ', 1, 'Las Brumas Grill & Café le garantiza agradables momentos en compañía\r\nde sus familiares y amigos.\r\n', 13.7295856, -89.2678375, 'el volcán de San Salvador al kilometro 19 1/2', 'www.guiamultiturismo.com/imgsApp/logo/las_brumas.png', 1, ''),
(5, 'El Rosario ', 1, 'Panadería y Pastelería El Rosario, una historia de sabor único...\r\nHablar de Panadería El Rosario es hablar de la “Niña Blanquita” tal como es reconocida por sus clientes; la mujer cuyo empuje y visión le permitieron a esta tradicional panadería, hacerse de un espacio preferencial en la mesa de miles de familias salvadoreñas, que han compartido la calidad y la variedad de sus productos por generaciones.\r\n\r\nDe familia panadera,  Niña Blanquita aprendió en 1957 las artes de la panificación, cuando', 13.7062674, -89.1922607, 'Centro Comercial Santa Elena, Blvd. Santa Elena Local Número 114', 'www.guiamultiturismo.com/imgsApp/logo/rosario.png', 1, ''),
(6, 'Dragon Dorado', 1, 'El verdadero sabor de la comida china\r\nUn lugar exclusivo, para poder degustar la auténtica comida china en El Salvador. Distribuidores exclusivos para El Salvador y C.A. de la salsa de soya Haday número 1 en China.', 13.6779585, -89.2679367, 'Cl Chiltiupán No 6 Cdad Merliot \r\nSanta Tecla, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/DragonDorado.JPG', 1, ''),
(7, 'Hacienda Real ', 1, 'La Hacienda Real en El Salvador está ubicado en la carretera a Santa Tecla, su especialidad son los diferentes cortes de carne los cuales son servidos a la parrilla con sabrosas guarniciones ', 13.6751261, -89.2536545, 'Km 8.5 carretera panamericana el salvador ', 'www.guiamultiturismo.com/imgsApp/logo/haciendareal.JPG', 1, ''),
(8, 'Le Croissant', 1, 'Productos naturales, recién horneados con ingredientes importados. Tenemos una amplia variedad de boquitas, postres, mini pan dulce, para poder surtir tus eventos especiales: Bodas, bautizos, etc.', 13.6794748, -89.2478485, 'Zona Industrial Santa Elena, Calle Chaparrastique Av Lamatepec Bodega 25 Antiguo Cuscatlán, La Libertad \r\nSan Salvador, El Salvador\r\n', 'www.guiamultiturismo.com/imgsApp/logo/lecroissant.png', 1, ''),
(9, 'Restaurante los Cebolline', 1, 'Tenemos un menú de comida mexicana delicioso, además Organizamos su reunión o evento. Nuestro equipo le ayudará a que sea todo un éxito, solicite información al departamento de eventos especiales.', 13.6833630, -89.2291794, ' 73 Av. Sur Paseo General Escalón Centro Comercial Porto Fino San Salvador', 'www.guiamultiturismo.com/imgsApp/logo/Logo-Cebollines-FC.png', 1, ''),
(10, 'Panes coyo ', 1, 'Panes con pavo y comida mexicana\r\nRestaurante con platos típicos salvadoreños, especializados en deliciosos panes con pavo. Somos una opción diferente pero sabrosa ', 13.7069492, -89.2145615, 'C.C. Autopista Sur Local 3 \r\nSan Salvador, El Salvador', 'www.guiamultiturismo.com/imgsApp/logo/panes_coyo.png', 1, ''),
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
(27, 'Parque Walter Deininger', 1, 'Cuenta con una extensión de 1,047 manzanas, 732 Hectáreas y su característica principal es ser un área natural protegida. El parque es una isla biológica en la cual se encuentran remanentes de la primera vegetación de El Salvador. Contiene 3 tipos de bosque: bosque de galería, seco caducifolio y secundario.', 13.4992561, -89.2681046, 'El parque está ubicado a 35 kilómetros de la San Salvador y en la orilla de la carretera del litoral CA-2.', '', 2, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

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
(31, 27, 6);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Img`
--
ALTER TABLE `Img`
  ADD CONSTRAINT `Img_ibfk_1` FOREIGN KEY (`idUbicacion`) REFERENCES `Ubicacion` (`ubicacionId`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `ubicacion_tipo_ibfk_1` FOREIGN KEY (`idUbicacion`) REFERENCES `Ubicacion` (`ubicacionId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ubicacion_tipo_ibfk_2` FOREIGN KEY (`idTipo`) REFERENCES `Tipo` (`tipoId`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
