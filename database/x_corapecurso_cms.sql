-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2020 a las 21:48:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `x_corapecurso_cms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Id` int(11) NOT NULL,
  `Articulos` varchar(100) NOT NULL,
  `Detalle` varchar(300) NOT NULL,
  `publicado` varchar(100) NOT NULL,
  `archivos` varchar(100) NOT NULL,
  `media` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Id`, `Articulos`, `Detalle`, `publicado`, `archivos`, `media`) VALUES
(1, 'Audio 1', 'Se llama cascada, caída, catarata, salto de agua o caída de agua gigante al tramo de un curso fluvial donde, por causa de un fuerte desnivel del lecho o cauce, el agua cae verticalmente por efecto de la gravedad. Las caídas de agua se consideran uno de los fenómenos más bellos                     ', 'publicado', 'A', 0x6772616e2d636173636164615f312e6d7033),
(2, 'Audio 2', ' Proporciona una interfaz personalizada para el servicio orientado a la transmisión de música, lo que permite a los usuarios explorar videos musicales en YouTube según los géneros, las listas de reproducción y las recomendaciones                      ', 'publicado', 'A', 0x3030383837383832335f707265762e6d7033),
(3, 'Prueba 3', 'audio de anime                      ', 'publicado', 'A', 0x647261676f6e2d62616c6c2d67742d312e6d7033);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_asesor_comercial`
--

CREATE TABLE `x_asesor_comercial` (
  `asesor_comercial_id` decimal(10,0) NOT NULL,
  `asesor_comercial_categoria_id` decimal(10,0) NOT NULL,
  `asesor_comercial_nombre_apellido` varchar(150) DEFAULT NULL,
  `asesor_comercial_email` varchar(150) DEFAULT NULL,
  `asesor_comercial_telefono` varchar(30) DEFAULT NULL,
  `asesor_comercial_movil` varchar(30) DEFAULT NULL,
  `asesor_comercial_ciudad` varchar(5) DEFAULT NULL,
  `asesor_comercial_url` varchar(250) DEFAULT NULL,
  `asesor_comercial_habilitado` varchar(5) DEFAULT NULL,
  `asesor_comercial_lenguaje` varchar(5) DEFAULT NULL,
  `asesor_comercial_orden` int(11) DEFAULT NULL,
  `asesor_comercial_usuario_crea` varchar(20) DEFAULT NULL,
  `asesor_comercial_usuario_actualiza` varchar(20) DEFAULT NULL,
  `asesor_comercial_fecha_creacion` datetime DEFAULT NULL,
  `asesor_comercial_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_asesor_comercial_categoria`
--

CREATE TABLE `x_asesor_comercial_categoria` (
  `asesor_comercial_categoria_id` decimal(10,0) NOT NULL,
  `asesor_comercial_categoria_nombre` varchar(100) DEFAULT NULL,
  `asesor_comercial_categoria_alias` varchar(250) DEFAULT NULL,
  `asesor_comercial_categoria_nombre_mostrar` varchar(5) DEFAULT NULL,
  `asesor_comercial_categoria_descripcion` text DEFAULT NULL,
  `asesor_comercial_categoria_habilitado` varchar(5) DEFAULT NULL,
  `asesor_comercial_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `asesor_comercial_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `asesor_comercial_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `asesor_comercial_categoria_fecha_creacion` datetime DEFAULT NULL,
  `asesor_comercial_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_ciudad`
--

CREATE TABLE `x_ciudad` (
  `ciudad_id` decimal(10,0) NOT NULL,
  `ciudad_nombre` varchar(50) DEFAULT NULL,
  `provincia_id` decimal(10,0) DEFAULT NULL,
  `ciudad_usuario_crea` varchar(20) DEFAULT NULL,
  `ciudad_usuario_actualiza` varchar(20) DEFAULT NULL,
  `ciudad_fecha_creacion` datetime DEFAULT NULL,
  `ciudad_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_ciudad`
--

INSERT INTO `x_ciudad` (`ciudad_id`, `ciudad_nombre`, `provincia_id`, `ciudad_usuario_crea`, `ciudad_usuario_actualiza`, `ciudad_fecha_creacion`, `ciudad_fecha_actualizacion`) VALUES
('1', 'Quito', '17', 'admin', 'admin', '2015-08-03 12:52:01', '2015-09-23 23:06:35'),
('2', 'Cayambe', '17', 'admin', 'admin', '2015-08-03 12:56:24', '2015-09-23 23:06:41'),
('5', 'Guayaquil', '9', 'admin', 'admin', '2015-08-03 13:01:28', '2015-09-23 23:06:50'),
('7', 'Milagro', '9', 'admin', 'admin', '2015-08-03 13:02:50', '2015-09-23 23:06:58'),
('9', 'Ambato', '18', 'admin', 'admin', '2015-08-03 13:05:31', '2015-09-23 23:08:07'),
('13', 'Cuenca', '1', 'admin', 'admin', '2015-08-03 13:09:14', '2015-09-23 23:08:00'),
('15', 'Santo Domingo', '23', 'admin', 'admin', '2015-08-03 13:10:46', '2015-09-23 23:07:53'),
('16', 'Loja', '11', 'admin', 'admin', '2015-08-03 13:11:40', '2015-09-23 23:07:45'),
('18', 'Ibarra', '10', 'admin', 'admin', '2015-08-03 13:12:46', '2015-09-23 23:07:39'),
('20', 'Otavalo', '10', 'admin', 'admin', '2015-08-03 13:13:31', '2015-09-23 23:07:32'),
('22', 'Machala', '7', 'admin', 'admin', '2015-08-03 13:14:32', '2015-09-23 23:07:26'),
('25', 'Manta', '13', 'admin', 'admin', '2015-08-03 13:16:37', '2015-09-23 23:07:13'),
('26', 'Portoviejo', '13', 'admin', 'admin', '2015-08-03 13:16:53', '2015-09-23 23:07:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_codigos`
--

CREATE TABLE `x_codigos` (
  `codigo_id` varchar(5) NOT NULL,
  `codigo_grupo_id` decimal(10,0) NOT NULL,
  `codigo_descripcion` varchar(50) DEFAULT NULL,
  `codigo_id2` varchar(5) DEFAULT NULL,
  `codigo_id3` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_codigos`
--

INSERT INTO `x_codigos` (`codigo_id`, `codigo_grupo_id`, `codigo_descripcion`, `codigo_id2`, `codigo_id3`) VALUES
('1', '1', 'SI', '', ''),
('1', '3', 'USD', 'USD', '$'),
('1', '5', 'Persona Natural', '', ''),
('1', '7', 'Unidad', '1', ''),
('1', '8', 'Confirmado', '', ''),
('1', '9', 'Entregado', '', ''),
('2', '1', 'NO', '', ''),
('2', '3', 'EURO', 'EU', 'â‚¬'),
('2', '5', 'Persona JurÃ­dica', '', ''),
('2', '7', 'Paquete', '1', ''),
('2', '8', 'Sin confirmaciÃ³n', '', ''),
('2', '9', 'En proceso de entrega', '', ''),
('3', '8', 'Anulado', '', ''),
('3', '9', 'Devuelto', '', ''),
('4', '9', 'Perdido', '', ''),
('AD', '4', 'Andorra', '020', 'AND'),
('AE', '4', 'Emiratos Ãrabes Unidos', '784', 'ARE'),
('AF', '4', 'AfganistÃ¡n', '004', 'AFG'),
('AG', '4', 'Antigua y Barbuda', '028', 'ATG'),
('AI', '4', 'Anguila', '660', 'AIA'),
('AL', '4', 'Albania', '008', 'ALB'),
('AM', '4', 'Armenia', '051', 'ARM'),
('AN', '4', 'Antillas Neerlandesas', '530', 'ANT'),
('AO', '4', 'Angola', '024', 'AGO'),
('AQ', '4', 'AntÃ¡rtida', '010', 'ATA'),
('AR', '4', 'Argentina', '032', 'ARG'),
('AS', '4', 'Samoa Americana', '016', 'ASM'),
('AT', '4', 'Austria', '040', 'AUT'),
('AU', '4', 'Australia', '036', 'AUS'),
('audio', '10', 'Audio', '', ''),
('AW', '4', 'Aruba', '533', 'ABW'),
('AX', '4', 'Ã…land', '248', 'ALA'),
('AZ', '4', 'AzerbaiyÃ¡n', '031', 'AZE'),
('BA', '4', 'Bosnia y Herzegovina', '070', 'BIH'),
('BB', '4', 'Barbados', '052', 'BRB'),
('BD', '4', 'Bangladesh', '050', 'BGD'),
('BE', '4', 'Belgium  BÃ©lgica', '056', 'BEL'),
('BF', '4', 'Burkina Faso', '854', 'BFA'),
('BG', '4', 'Bulgaria', '100', 'BGR'),
('BH', '4', 'BahrÃ©in', '048', 'BHR'),
('BI', '4', 'Burundi', '108', 'BDI'),
('BJ', '4', 'BenÃ­n', '204', 'BEN'),
('BM', '4', 'Bermudas', '060', 'BMU'),
('BN', '4', 'BrunÃ©i', '096', 'BRN'),
('BO', '4', 'Bolivia', '068', 'BOL'),
('BR', '4', 'Brasil', '076', 'BRA'),
('BS', '4', 'Bahamas', '044', 'BHS'),
('BT', '4', 'ButÃ¡n', '064', 'BTN'),
('BV', '4', 'Isla Bouvet', '074', 'BVT'),
('BW', '4', 'Botsuana', '072', 'BWA'),
('BY', '4', 'Bielorrusia', '112', 'BLR'),
('BZ', '4', 'Belice', '084', 'BLZ'),
('C', '6', 'CEDULA', '', ''),
('CA', '4', 'CanadÃ¡', '124', 'CAN'),
('CC', '4', 'Islas Cocos', '166', 'CCK'),
('CD', '4', 'RepÃºblica DemocrÃ¡tica del Congo', '180', 'COD'),
('CF', '4', 'RepÃºblica Centroafricana', '140', 'CAF'),
('CG', '4', 'RepÃºblica del Congo', '178', 'COG'),
('CH', '4', 'Switzerland  Suiza', '756', 'CHE'),
('CI', '4', 'Costa de Marfil', '384', 'CIV'),
('CK', '4', 'Islas Cook', '184', 'COK'),
('CL', '4', 'Chile', '152', 'CHL'),
('CM', '4', 'CamerÃºn', '120', 'CMR'),
('CN', '4', 'China', '156', 'CHN'),
('CO', '4', 'Colombia', '170', 'COL'),
('CR', '4', 'Costa Rica', '188', 'CRI'),
('CU', '4', 'Cuba', '192', 'CUB'),
('CV', '4', 'Cabo Verde', '132', 'CPV'),
('CX', '4', 'Isla de Navidad', '162', 'CXR'),
('CY', '4', 'Chipre', '196', 'CYP'),
('CZ', '4', 'RepÃºblica Checa', '203', 'CZE'),
('DE', '4', 'Alemania', '276', 'DEU'),
('DJ', '4', 'Yibuti', '262', 'DJI'),
('DK', '4', 'Dinamarca', '208', 'DNK'),
('DM', '4', 'Dominica', '212', 'DMA'),
('DO', '4', 'RepÃºblica Dominicana', '214', 'DOM'),
('doc', '10', 'Documento Office', '', ''),
('DZ', '4', 'Argelia', '012', 'DZA'),
('EA', '4', 'EspaÃ±a ,(Ceuta y Melilla),', '724', 'ESP'),
('EC', '4', 'Ecuador', '218', 'ECU'),
('EE', '4', 'Estonia', '233', 'EST'),
('EG', '4', 'Egipto', '818', 'EGY'),
('EH', '4', 'Sahara Occidental', '732', 'ESH'),
('en', '2', 'InglÃ©s', '', ''),
('ER', '4', 'Eritrea', '232', 'ERI'),
('es', '2', 'EspaÃ±ol', '', ''),
('ES', '4', 'EspaÃ±a', '724', 'ESP'),
('ET', '4', 'EtiopÃ­a', '231', 'ETH'),
('FI', '4', 'Finlandia', '246', 'FIN'),
('FJ', '4', 'Fiyi', '242', 'FJI'),
('FK', '4', 'Islas Malvinas', '238', 'FLK'),
('FM', '4', 'Micronesia', '583', 'FSM'),
('FO', '4', 'Islas Feroe', '234', 'FRO'),
('FR', '4', 'Francia', '250', 'FRA'),
('GA', '4', 'GabÃ³n', '266', 'GAB'),
('GB', '4', 'Reino Unido', '826', 'GBR'),
('GD', '4', 'Granada', '308', 'GRD'),
('GE', '4', 'Georgia', '268', 'GEO'),
('GF', '4', 'Guayana Francesa', '254', 'GUF'),
('GG', '4', 'Guernsey', '831', 'GGY'),
('GH', '4', 'Ghana', '288', 'GHA'),
('GI', '4', 'Gibraltar', '292', 'GIB'),
('GL', '4', 'Groenlandia', '304', 'GRL'),
('GM', '4', 'Gambia', '270', 'GMB'),
('GN', '4', 'Guinea', '324', 'GIN'),
('GP', '4', 'Guadalupe', '312', 'GLP'),
('GQ', '4', 'Guinea Ecuatorial', '226', 'GNQ'),
('GR', '4', 'Grecia', '300', 'GRC'),
('GS', '4', 'Islas Georgias del Sur y Sandwich del S', '239', 'SGS'),
('GT', '4', 'Guatemala', '320', 'GTM'),
('GU', '4', 'Guam', '316', 'GUM'),
('GW', '4', 'Guinea-Bissau', '624', 'GNB'),
('GY', '4', 'Guyana', '328', 'GUY'),
('HK', '4', 'Hong Kong', '344', 'HKG'),
('HM', '4', 'Islas Heard y McDonald', '334', 'HMD'),
('HN', '4', 'Honduras', '340', 'HND'),
('HR', '4', 'Croacia', '191', 'HRV'),
('HT', '4', 'HaitÃ­', '332', 'HTI'),
('HU', '4', 'HungrÃ­a', '348', 'HUN'),
('ID', '4', 'Indonesia', '360', 'IDN'),
('IE', '4', 'Irlanda', '372', 'IRL'),
('IL', '4', 'Israel', '376', 'ISR'),
('IM', '4', 'Isla de Man', '833', 'IMN'),
('img', '10', 'Imagen /Foto', '', ''),
('IN', '4', 'India', '356', 'IND'),
('IO', '4', 'Territorio BritÃ¡nico del OcÃ©ano Ãndico', '086', 'IOT'),
('IQ', '4', 'Iraq', '368', 'IRQ'),
('IR', '4', 'IrÃ¡n', '364', 'IRN'),
('IS', '4', 'Islandia', '352', 'ISL'),
('IT', '4', 'Italia', '380', 'ITA'),
('JE', '4', 'Jersey', '832', 'JEY'),
('JM', '4', 'Jamaica', '388', 'JAM'),
('JO', '4', 'Jordania', '400', 'JOR'),
('JP', '4', 'JapÃ³n', '392', 'JPN'),
('KE', '4', 'Kenia', '404', 'KEN'),
('KG', '4', 'KirguistÃ¡n', '417', 'KGZ'),
('KH', '4', 'Camboya', '116', 'KHM'),
('KI', '4', 'Kiribati', '296', 'KIR'),
('KM', '4', 'Comoras', '174', 'COM'),
('KN', '4', 'San CristÃ³bal y Nieves', '659', 'KNA'),
('KP', '4', 'Corea del Norte', '408', 'PRK'),
('KR', '4', 'Corea del Sur', '410', 'KOR'),
('KW', '4', 'Kuwait', '414', 'KWT'),
('KY', '4', 'Islas CaimÃ¡n', '136', 'CYM'),
('KZ', '4', 'KazajistÃ¡n', '398', 'KAZ'),
('LA', '4', 'Laos', '418', 'LAO'),
('LB', '4', 'LÃ­bano', '422', 'LBN'),
('LC', '4', 'Santa LucÃ­a', '662', 'LCA'),
('LI', '4', 'Liechtenstein', '438', 'LIE'),
('LK', '4', 'Sri Lanka', '144', 'LKA'),
('LR', '4', 'Liberia', '430', 'LBR'),
('LS', '4', 'Lesoto', '426', 'LSO'),
('LT', '4', 'Lituania', '440', 'LTU'),
('LU', '4', 'Luxemburgo', '442', 'LUX'),
('LV', '4', 'Letonia', '428', 'LVA'),
('LY', '4', 'Libia', '434', 'LBY'),
('MA', '4', 'Marruecos', '504', 'MAR'),
('MC', '4', 'MÃ³naco', '492', 'MCO'),
('MD', '4', 'Moldavia', '498', 'MDA'),
('ME', '4', 'Montenegro', '499', 'MNE'),
('MG', '4', 'Madagascar', '450', 'MDG'),
('MH', '4', 'Islas Marshall', '584', 'MHL'),
('MK', '4', 'ARY Macedonia', '807', 'MKD'),
('ML', '4', 'MalÃ­', '466', 'MLI'),
('MM', '4', 'Myanmar', '104', 'MMR'),
('MN', '4', 'Mongolia', '496', 'MNG'),
('MO', '4', 'Macao', '446', 'MAC'),
('MP', '4', 'Islas Marianas del Norte', '580', 'MNP'),
('MQ', '4', 'Martinica', '474', 'MTQ'),
('MR', '4', 'Mauritania', '478', 'MRT'),
('MS', '4', 'Montserrat', '500', 'MSR'),
('MT', '4', 'Malta', '470', 'MLT'),
('MU', '4', 'Mauricio', '480', 'MUS'),
('MV', '4', 'Maldivas', '462', 'MDV'),
('MW', '4', 'Malawi', '454', 'MWI'),
('MX', '4', 'MÃ©xico', '484', 'MEX'),
('MY', '4', 'Malasia', '458', 'MYS'),
('MZ', '4', 'Mozambique', '508', 'MOZ'),
('NA', '4', 'Namibia', '516', 'NAM'),
('NC', '4', 'Nueva Caledonia', '540', 'NCL'),
('NE', '4', 'Niger  NÃ­ger', '562', 'NER'),
('NF', '4', 'Norfolk', '574', 'NFK'),
('NG', '4', 'Nigeria', '566', 'NGA'),
('NI', '4', 'Nicaragua', '558', 'NIC'),
('NL', '4', 'PaÃ­ses Bajos', '528', 'NLD'),
('NO', '4', 'Noruega', '578', 'NOR'),
('NP', '4', 'Nepal', '524', 'NPL'),
('NR', '4', 'Nauru', '520', 'NRU'),
('NU', '4', 'Niue', '570', 'NIU'),
('NZ', '4', 'Nueva Zelanda', '554', 'NZL'),
('OM', '4', 'OmÃ¡n', '512', 'OMN'),
('otro', '10', 'Otro', '', ''),
('P', '6', 'Pasaporte', '', ''),
('PA', '4', 'PanamÃ¡', '591', 'PAN'),
('pdf', '10', 'Pdf', '', ''),
('PE', '4', 'PerÃº', '604', 'PER'),
('PF', '4', 'Polinesia Francesa', '258', 'PYF'),
('PG', '4', 'PapÃºa Nueva Guinea', '598', 'PNG'),
('PH', '4', 'Filipinas', '608', 'PHL'),
('PK', '4', 'PakistÃ¡n', '586', 'PAK'),
('PL', '4', 'Polonia', '616', 'POL'),
('PM', '4', 'San Pedro y MiquelÃ³n', '666', 'SPM'),
('PN', '4', 'Islas Pitcairn', '612', 'PCN'),
('PR', '4', 'Puerto Rico', '630', 'PRI'),
('PS', '4', 'Palestina ,(ANP),', '275', 'PSE'),
('PT', '4', 'Portugal', '620', 'PRT'),
('PW', '4', 'Palaos', '585', 'PLW'),
('PY', '4', 'Paraguay', '600', 'PRY'),
('QA', '4', 'Qatar', '634', 'QAT'),
('R', '6', 'RUC', '', ''),
('RE', '4', 'ReuniÃ³n', '638', 'REU'),
('RO', '4', 'Rumania', '642', 'ROU'),
('RS', '4', 'Serbia', '688', 'SRB'),
('RU', '4', 'Rusia', '643', 'RUS'),
('RW', '4', 'Ruanda', '646', 'RWA'),
('SA', '4', 'Arabia Saudita', '682', 'SAU'),
('SB', '4', 'Islas SalomÃ³n', '090', 'SLB'),
('SC', '4', 'Seychelles', '690', 'SYC'),
('SD', '4', 'SudÃ¡n', '736', 'SDN'),
('SE', '4', 'Suecia', '752', 'SWE'),
('SG', '4', 'Singapur', '702', 'SGP'),
('SH', '4', 'Santa Helena', '654', 'SHN'),
('SI', '4', 'Eslovenia', '705', 'SVN'),
('SJ', '4', 'Svalbard y Jan Mayen', '744', 'SJM'),
('SK', '4', 'Eslovaquia', '703', 'SVK'),
('SL', '4', 'Sierra Leona', '694', 'SLE'),
('SM', '4', 'San Marino', '674', 'SMR'),
('SN', '4', 'Senegal', '686', 'SEN'),
('SO', '4', 'Somalia', '706', 'SOM'),
('SR', '4', 'Surinam', '740', 'SUR'),
('ST', '4', 'Santo TomÃ© y PrÃ­ncipe', '678', 'STP'),
('SV', '4', 'El Salvador', '222', 'SLV'),
('SY', '4', 'Siria', '760', 'SYR'),
('SZ', '4', 'Suazilandia', '748', 'SWZ'),
('TC', '4', 'Islas Turcas y Caicos', '796', 'TCA'),
('TD', '4', 'Chad', '148', 'TCD'),
('TF', '4', 'Territorios Australes Franceses', '260', 'ATF'),
('TG', '4', 'Togo', '768', 'TGO'),
('TH', '4', 'Tailandia', '764', 'THA'),
('TJ', '4', 'TayikistÃ¡n', '762', 'TJK'),
('TK', '4', 'Tokelau', '772', 'TKL'),
('TL', '4', 'Timor Oriental', '626', 'TLS'),
('TM', '4', 'TurkmenistÃ¡n', '795', 'TKM'),
('TN', '4', 'TÃºnez', '788', 'TUN'),
('TO', '4', 'Tonga', '776', 'TON'),
('TR', '4', 'TurquÃ­a', '792', 'TUR'),
('TT', '4', 'Trinidad y Tobago', '780', 'TTO'),
('TV', '4', 'Tuvalu', '798', 'TUV'),
('TW', '4', 'TaiwÃ¡n', '158', 'TWN'),
('TZ', '4', 'Tanzania', '834', 'TZA'),
('UA', '4', 'Ucrania', '804', 'UKR'),
('UG', '4', 'Uganda', '800', 'UGA'),
('UM', '4', 'Islas ultramarinas de Estados Unidos', '581', 'UMI'),
('US', '4', 'Estados Unidos', '840', 'USA'),
('UY', '4', 'Uruguay', '858', 'URY'),
('UZ', '4', 'UzbekistÃ¡n', '860', 'UZB'),
('VA', '4', 'the Vatican City  Ciudad del Vaticano', '336', 'VAT'),
('VC', '4', 'San Vicente y las Granadinas', '670', 'VCT'),
('VE', '4', 'Venezuela', '862', 'VEN'),
('VG', '4', 'Islas VÃ­rgenes BritÃ¡nicas', '092', 'VGB'),
('VI', '4', 'Islas VÃ­rgenes Estadounidenses', '850', 'VIR'),
('video', '10', 'Video', '', ''),
('VN', '4', 'Vietnam', '704', 'VNM'),
('VU', '4', 'Vanuatu', '548', 'VUT'),
('WF', '4', 'Wallis y Futuna', '876', 'WLF'),
('WS', '4', 'Samoa', '882', 'WSM'),
('YE', '4', 'Yemen', '887', 'YEM'),
('YT', '4', 'Mayotte', '175', 'MYT'),
('ZA', '4', 'SudÃ¡frica', '710', 'ZAF'),
('ZM', '4', 'Zambia', '894', 'ZMB'),
('ZW', '4', 'Zimbabue', '716', 'ZWE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_contenido`
--

CREATE TABLE `x_contenido` (
  `contenido_id` decimal(10,0) NOT NULL,
  `contenido_categoria_id` decimal(10,0) DEFAULT NULL,
  `contenido_titulo` varchar(250) DEFAULT NULL,
  `contenido_alias` varchar(250) DEFAULT NULL,
  `contenido_titulo_h` varchar(5) DEFAULT NULL,
  `contenido_detalle` text DEFAULT NULL,
  `contenido_lenguaje` varchar(5) DEFAULT NULL,
  `contenido_publicado` varchar(5) DEFAULT NULL,
  `contenido_frontpage` varchar(5) DEFAULT NULL,
  `contenido_visitas` int(11) DEFAULT NULL,
  `contenido_grupo_usuario_todos` varchar(5) DEFAULT NULL,
  `contenido_solo_registrados` varchar(5) DEFAULT NULL,
  `contenido_usuario_crea` varchar(20) DEFAULT NULL,
  `contenido_usuario_actualiza` varchar(20) DEFAULT NULL,
  `contenido_fecha_creacion` datetime DEFAULT NULL,
  `contenido_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_contenido_categoria`
--

CREATE TABLE `x_contenido_categoria` (
  `contenido_categoria_id` decimal(10,0) NOT NULL,
  `contenido_categoria_nombre` varchar(250) DEFAULT NULL,
  `contenido_categoria_alias` varchar(250) DEFAULT NULL,
  `contenido_categoria_detalle` text DEFAULT NULL,
  `contenido_categoria_nombre_mostrar` varchar(5) DEFAULT NULL,
  `contenido_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `contenido_categoria_publicado` varchar(5) DEFAULT NULL,
  `contenido_categoria_padre_id` decimal(10,0) DEFAULT NULL,
  `contenido_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `contenido_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `contenido_categoria_fecha_creacion` datetime DEFAULT NULL,
  `contenido_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_cupon`
--

CREATE TABLE `x_cupon` (
  `cupon_id` decimal(11,0) NOT NULL,
  `cupon_key` varchar(250) DEFAULT NULL,
  `cupon_descuento` decimal(10,2) DEFAULT NULL,
  `cupon_activo` varchar(5) DEFAULT NULL,
  `cupon_fecha_uso` datetime DEFAULT NULL,
  `cupon_usuario_crea` varchar(20) DEFAULT NULL,
  `cupon_usuario_actualiza` varchar(20) DEFAULT NULL,
  `cupon_fecha_creacion` datetime DEFAULT NULL,
  `cupon_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_documento`
--

CREATE TABLE `x_documento` (
  `documento_id` decimal(10,0) NOT NULL,
  `documento_categoria_id` decimal(10,0) NOT NULL,
  `documento_nombre` varchar(200) DEFAULT NULL,
  `documento_alias` varchar(250) DEFAULT NULL,
  `documento_descripcion` text DEFAULT NULL,
  `documento_habilitado` varchar(5) DEFAULT NULL,
  `documento_url` varchar(250) DEFAULT NULL,
  `documento_portada_url` varchar(250) DEFAULT NULL,
  `documento_lenguaje` varchar(5) DEFAULT NULL,
  `documento_visitas` int(11) DEFAULT NULL,
  `documento_descargas` int(11) DEFAULT NULL,
  `documento_nacionalidad` varchar(50) DEFAULT NULL,
  `documento_autor` varchar(250) DEFAULT NULL,
  `documento_productor` varchar(250) DEFAULT NULL,
  `documento_director` varchar(250) DEFAULT NULL,
  `documento_agrupacion` varchar(250) DEFAULT NULL,
  `documento_anio` int(4) DEFAULT NULL,
  `documento_tags` text DEFAULT NULL,
  `documento_formato` varchar(20) DEFAULT NULL,
  `documento_tipo` varchar(5) DEFAULT NULL,
  `documento_grupo_usuario_todos` varchar(5) DEFAULT NULL,
  `documento_usuario_crea` varchar(20) DEFAULT NULL,
  `documento_usuario_actualiza` varchar(20) DEFAULT NULL,
  `documento_fecha_creacion` datetime DEFAULT NULL,
  `documento_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_documento_categoria`
--

CREATE TABLE `x_documento_categoria` (
  `documento_categoria_id` decimal(10,0) NOT NULL,
  `documento_categoria_nombre` varchar(150) DEFAULT NULL,
  `documento_categoria_alias` varchar(250) DEFAULT NULL,
  `documento_categoria_descripcion` text DEFAULT NULL,
  `documento_categoria_habilitado` varchar(5) DEFAULT NULL,
  `documento_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `documento_categoria_padre_id` decimal(10,0) DEFAULT NULL,
  `documento_categoria_grupo_usuario_todos` varchar(5) DEFAULT NULL,
  `documento_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `documento_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `documento_categoria_fecha_creacion` datetime DEFAULT NULL,
  `documento_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_documento_categoria_grupo_usuario`
--

CREATE TABLE `x_documento_categoria_grupo_usuario` (
  `documento_categoria_id` decimal(10,0) NOT NULL DEFAULT 0,
  `grupo_usuario_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_documento_grupo_usuario`
--

CREATE TABLE `x_documento_grupo_usuario` (
  `documento_id` decimal(10,0) NOT NULL DEFAULT 0,
  `grupo_usuario_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_epago`
--

CREATE TABLE `x_epago` (
  `epago_id` decimal(10,0) NOT NULL,
  `epago_usuario` varchar(20) NOT NULL,
  `epago_estado` varchar(5) DEFAULT NULL,
  `epago_mensaje` text DEFAULT NULL,
  `epago_total_envio_precio` decimal(10,2) DEFAULT NULL,
  `epago_total_descuento_precio` decimal(10,2) DEFAULT NULL,
  `epago_cupon_key` varchar(250) DEFAULT NULL,
  `epago_cupon_descuento` decimal(10,2) DEFAULT NULL,
  `epago_subtotal` decimal(10,2) DEFAULT NULL,
  `epago_iva_valor` decimal(10,2) DEFAULT NULL,
  `epago_iva_total` decimal(10,2) DEFAULT NULL,
  `epago_total` decimal(10,2) DEFAULT NULL,
  `forma_pago_id` decimal(10,0) DEFAULT NULL,
  `epago_fecha_pago` date DEFAULT NULL,
  `epago_pago_comprobante_url` varchar(250) DEFAULT NULL,
  `epago_comprador_nombre` varchar(50) DEFAULT NULL,
  `epago_comprador_apellido` varchar(50) DEFAULT NULL,
  `epago_comprador_email` varchar(50) DEFAULT NULL,
  `epago_comprador_direccion_calle_principal` varchar(250) DEFAULT NULL,
  `epago_comprador_direccion_calle_secundaria` varchar(250) DEFAULT NULL,
  `epago_comprador_direccion_numeracion` varchar(50) DEFAULT NULL,
  `epago_comprador_pais` varchar(5) DEFAULT NULL,
  `epago_comprador_localidad` varchar(50) DEFAULT NULL,
  `epago_comprador_telefono` varchar(30) DEFAULT NULL,
  `epago_comprador_movil` varchar(30) DEFAULT NULL,
  `epago_estado_entrega` varchar(5) DEFAULT NULL,
  `epago_fecha_entrega` date DEFAULT NULL,
  `epago_entrega_comprobante` varchar(20) DEFAULT NULL,
  `epago_entrega_direccion_calle_principal` varchar(250) DEFAULT NULL,
  `epago_entrega_direccion_calle_secundaria` varchar(250) DEFAULT NULL,
  `epago_entrega_direccion_numeracion` varchar(50) DEFAULT NULL,
  `epago_entrega_pais` varchar(5) DEFAULT NULL,
  `epago_entrega_localidad` varchar(50) DEFAULT NULL,
  `epago_entrega_receptor_nombre` varchar(50) DEFAULT NULL,
  `epago_entrega_receptor_apellido` varchar(50) DEFAULT NULL,
  `epago_entrega_telefono` varchar(30) DEFAULT NULL,
  `epago_entrega_movil` varchar(30) DEFAULT NULL,
  `epago_fecha_creacion` datetime DEFAULT NULL,
  `epago_fecha_actualizacion` datetime DEFAULT NULL,
  `epago_usuario_crea` varchar(20) DEFAULT NULL,
  `epago_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_epago_item`
--

CREATE TABLE `x_epago_item` (
  `epago_id` decimal(10,0) NOT NULL,
  `producto_id` decimal(10,0) DEFAULT NULL,
  `epago_item_nombre` varchar(250) DEFAULT NULL,
  `epago_item_detalle` text DEFAULT NULL,
  `epago_item_cantidad` decimal(10,2) DEFAULT NULL,
  `epago_item_unidad` varchar(5) DEFAULT NULL,
  `epago_item_vunitario` decimal(10,2) DEFAULT NULL,
  `epago_item_vtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_evento`
--

CREATE TABLE `x_evento` (
  `evento_id` decimal(10,0) NOT NULL,
  `evento_categoria_id` decimal(10,0) DEFAULT NULL,
  `evento_nombre` varchar(150) DEFAULT NULL,
  `evento_alias` varchar(250) DEFAULT NULL,
  `evento_descripcion` text DEFAULT NULL,
  `evento_fecha_inicio` date DEFAULT NULL,
  `evento_fecha_fin` date DEFAULT NULL,
  `evento_hora_inicio` time DEFAULT NULL,
  `evento_hora_fin` time DEFAULT NULL,
  `evento_habilitado` varchar(5) DEFAULT NULL,
  `evento_lugar` varchar(250) DEFAULT NULL,
  `evento_lenguaje` varchar(5) DEFAULT NULL,
  `evento_visitas` int(11) DEFAULT NULL,
  `evento_usuario_crea` varchar(20) DEFAULT NULL,
  `evento_usuario_actualiza` varchar(20) DEFAULT NULL,
  `evento_fecha_creacion` datetime DEFAULT NULL,
  `evento_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_evento_categoria`
--

CREATE TABLE `x_evento_categoria` (
  `evento_categoria_id` decimal(10,0) NOT NULL,
  `evento_categoria_nombre` varchar(150) DEFAULT NULL,
  `evento_categoria_alias` varchar(250) DEFAULT NULL,
  `evento_categoria_habilitado` varchar(5) DEFAULT NULL,
  `evento_categoria_icono_url` varchar(250) DEFAULT NULL,
  `evento_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `evento_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `evento_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `evento_categoria_fecha_creacion` datetime DEFAULT NULL,
  `evento_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_forma_pago`
--

CREATE TABLE `x_forma_pago` (
  `forma_pago_id` decimal(10,0) NOT NULL,
  `forma_pago_nombre` varchar(100) DEFAULT NULL,
  `forma_pago_alias` varchar(250) DEFAULT NULL,
  `forma_pago_habilitado` varchar(5) DEFAULT NULL,
  `forma_pago_descripcion` text DEFAULT NULL,
  `forma_pago_modo_prueba` varchar(5) DEFAULT NULL,
  `forma_pago_id_comercio` varchar(200) DEFAULT NULL,
  `forma_pago_url_test` varchar(250) DEFAULT NULL,
  `forma_pago_url_produccion` varchar(250) DEFAULT NULL,
  `forma_pago_url_confirmacion` varchar(250) DEFAULT NULL,
  `forma_pago_url_cancelacion` varchar(250) DEFAULT NULL,
  `forma_pago_url_notificacion` varchar(250) DEFAULT NULL,
  `forma_pago_lenguaje` varchar(5) DEFAULT NULL,
  `forma_pago_orden` int(11) DEFAULT NULL,
  `forma_pago_usuario_crea` varchar(20) DEFAULT NULL,
  `forma_pago_usuario_actualiza` varchar(20) DEFAULT NULL,
  `forma_pago_fecha_creacion` datetime DEFAULT NULL,
  `forma_pago_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario`
--

CREATE TABLE `x_formulario` (
  `formulario_id` decimal(10,0) NOT NULL,
  `formulario_nombre` varchar(100) DEFAULT NULL,
  `formulario_alias` varchar(250) DEFAULT NULL,
  `formulario_nombre_mostrar` varchar(5) DEFAULT NULL,
  `formulario_habilitado` varchar(5) DEFAULT NULL,
  `formulario_captcha` varchar(5) DEFAULT NULL,
  `formulario_vista` varchar(60) DEFAULT NULL,
  `formulario_accion` varchar(60) DEFAULT NULL,
  `formulario_email_asunto` varchar(150) DEFAULT NULL,
  `formulario_email_cuerpo` text DEFAULT NULL,
  `formulario_email_destinatario` varchar(250) DEFAULT NULL,
  `formulario_email_destinatario_copia` varchar(250) DEFAULT NULL,
  `formulario_email_remitente` varchar(250) DEFAULT NULL,
  `formulario_email_remitente_nombre` varchar(250) DEFAULT NULL,
  `formulario_lenguaje` varchar(5) DEFAULT NULL,
  `formulario_visitas` int(11) DEFAULT NULL,
  `formulario_envios` int(11) DEFAULT NULL,
  `formulario_orden` int(11) DEFAULT NULL,
  `formulario_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_usuario_actualiza` varchar(20) DEFAULT NULL,
  `formulario_fecha_creacion` datetime DEFAULT NULL,
  `formulario_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_formulario`
--

INSERT INTO `x_formulario` (`formulario_id`, `formulario_nombre`, `formulario_alias`, `formulario_nombre_mostrar`, `formulario_habilitado`, `formulario_captcha`, `formulario_vista`, `formulario_accion`, `formulario_email_asunto`, `formulario_email_cuerpo`, `formulario_email_destinatario`, `formulario_email_destinatario_copia`, `formulario_email_remitente`, `formulario_email_remitente_nombre`, `formulario_lenguaje`, `formulario_visitas`, `formulario_envios`, `formulario_orden`, `formulario_usuario_crea`, `formulario_usuario_actualiza`, `formulario_fecha_creacion`, `formulario_fecha_actualizacion`) VALUES
('1', 'Contacto', 'contacto', '1', '1', '1', 'contacto', 'formulario_contacto_submit', 'Nuevo mensaje de Contacto: {formulario_contacto_asunto}', '<p>Estimado administrador usted ha recibido un nuevo mensaje de contacto con los siguientes datos:</p>\r\n\r\n<p>{xperto_data}</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Por favor atender inmediatamente.</p>\r\n\r\n<p><em>EMPAQUE VERDE</em></p>\r\n', 'xpertosolutions@gmail.com', NULL, 'nortega@empaqueverde.com', 'Empaque Verde', 'es', 30, NULL, NULL, 'admin', 'admin', '2019-01-15 18:15:25', '2019-01-17 13:30:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario_contacto`
--

CREATE TABLE `x_formulario_contacto` (
  `formulario_contacto_id` decimal(10,0) NOT NULL,
  `formulario_contacto_nombre` varchar(250) DEFAULT NULL,
  `formulario_contacto_telefono` varchar(50) DEFAULT NULL,
  `formulario_contacto_movil` varchar(50) DEFAULT NULL,
  `formulario_contacto_email` varchar(50) DEFAULT NULL,
  `formulario_contacto_ciudad` varchar(50) DEFAULT NULL,
  `formulario_contacto_empresa` varchar(50) DEFAULT NULL,
  `formulario_contacto_asunto` varchar(200) DEFAULT NULL,
  `formulario_contacto_mensaje` text DEFAULT NULL,
  `formulario_contacto_fecha_creacion` datetime DEFAULT NULL,
  `formulario_contacto_fecha_actualizacion` datetime DEFAULT NULL,
  `formulario_contacto_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_contacto_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario_cotizacion`
--

CREATE TABLE `x_formulario_cotizacion` (
  `formulario_cotizacion_id` decimal(10,0) NOT NULL,
  `formulario_cotizacion_nombre` varchar(250) DEFAULT NULL,
  `formulario_cotizacion_telefono` varchar(50) DEFAULT NULL,
  `formulario_cotizacion_movil` varchar(50) DEFAULT NULL,
  `formulario_cotizacion_email` varchar(50) DEFAULT NULL,
  `formulario_cotizacion_ciudad` varchar(50) DEFAULT NULL,
  `formulario_cotizacion_empresa` varchar(50) DEFAULT NULL,
  `formulario_cotizacion_asunto` varchar(200) DEFAULT NULL,
  `formulario_cotizacion_mensaje` text DEFAULT NULL,
  `formulario_cotizacion_fecha_creacion` datetime DEFAULT NULL,
  `formulario_cotizacion_fecha_actualizacion` datetime DEFAULT NULL,
  `formulario_cotizacion_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_cotizacion_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario_especiales`
--

CREATE TABLE `x_formulario_especiales` (
  `formulario_especiales_id` decimal(10,0) NOT NULL,
  `formulario_especiales_nombre` varchar(250) DEFAULT NULL,
  `formulario_especiales_telefono` varchar(50) DEFAULT NULL,
  `formulario_especiales_movil` varchar(50) DEFAULT NULL,
  `formulario_especiales_email` varchar(50) DEFAULT NULL,
  `formulario_especiales_ciudad` varchar(50) DEFAULT NULL,
  `formulario_especiales_empresa` varchar(50) DEFAULT NULL,
  `formulario_especiales_vehiculo_tipo` varchar(250) DEFAULT NULL,
  `formulario_especiales_vehiculo_uso` varchar(250) DEFAULT NULL,
  `formulario_especiales_cantidad` decimal(10,0) DEFAULT NULL,
  `formulario_especiales_mensaje` text DEFAULT NULL,
  `formulario_especiales_fecha_creacion` datetime DEFAULT NULL,
  `formulario_especiales_fecha_actualizacion` datetime DEFAULT NULL,
  `formulario_especiales_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_especiales_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario_postventa`
--

CREATE TABLE `x_formulario_postventa` (
  `formulario_postventa_id` decimal(10,0) NOT NULL,
  `formulario_postventa_nombre` varchar(250) DEFAULT NULL,
  `formulario_postventa_telefono` varchar(50) DEFAULT NULL,
  `formulario_postventa_movil` varchar(50) DEFAULT NULL,
  `formulario_postventa_email` varchar(50) DEFAULT NULL,
  `formulario_postventa_ciudad` varchar(50) DEFAULT NULL,
  `formulario_postventa_empresa` varchar(50) DEFAULT NULL,
  `formulario_postventa_asunto` varchar(200) DEFAULT NULL,
  `formulario_postventa_mensaje` text DEFAULT NULL,
  `formulario_postventa_fecha_creacion` datetime DEFAULT NULL,
  `formulario_postventa_fecha_actualizacion` datetime DEFAULT NULL,
  `formulario_postventa_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_postventa_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario_reserva`
--

CREATE TABLE `x_formulario_reserva` (
  `formulario_reserva_id` decimal(10,0) NOT NULL,
  `formulario_reserva_nombre` varchar(250) DEFAULT NULL,
  `formulario_reserva_telefono` varchar(50) DEFAULT NULL,
  `formulario_reserva_movil` varchar(50) DEFAULT NULL,
  `formulario_reserva_email` varchar(50) DEFAULT NULL,
  `formulario_reserva_ciudad` varchar(50) DEFAULT NULL,
  `formulario_reserva_desde` date DEFAULT NULL,
  `formulario_reserva_hasta` date DEFAULT NULL,
  `formulario_reserva_adultos` int(3) DEFAULT NULL,
  `formulario_reserva_ninios` int(3) DEFAULT NULL,
  `formulario_reserva_fecha_creacion` datetime DEFAULT NULL,
  `formulario_reserva_fecha_actualizacion` datetime DEFAULT NULL,
  `formulario_reserva_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_reserva_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_formulario_soporte`
--

CREATE TABLE `x_formulario_soporte` (
  `formulario_soporte_id` decimal(10,0) NOT NULL,
  `formulario_soporte_nombre` varchar(250) DEFAULT NULL,
  `formulario_soporte_telefono` varchar(50) DEFAULT NULL,
  `formulario_soporte_movil` varchar(50) DEFAULT NULL,
  `formulario_soporte_email` varchar(50) DEFAULT NULL,
  `formulario_soporte_ciudad` varchar(50) DEFAULT NULL,
  `formulario_soporte_empresa` varchar(50) DEFAULT NULL,
  `formulario_soporte_asunto` varchar(200) DEFAULT NULL,
  `formulario_soporte_mensaje` text DEFAULT NULL,
  `formulario_soporte_fecha_creacion` datetime DEFAULT NULL,
  `formulario_soporte_fecha_actualizacion` datetime DEFAULT NULL,
  `formulario_soporte_usuario_crea` varchar(20) DEFAULT NULL,
  `formulario_soporte_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_galeria`
--

CREATE TABLE `x_galeria` (
  `galeria_id` decimal(10,0) NOT NULL,
  `galeria_nombre` varchar(100) DEFAULT NULL,
  `galeria_descripcion` text DEFAULT NULL,
  `galeria_url` varchar(250) DEFAULT NULL,
  `galeria_habilitado` varchar(5) DEFAULT NULL,
  `galeria_orden` int(11) DEFAULT NULL,
  `galeria_visitas` decimal(10,0) DEFAULT NULL,
  `galeria_lenguaje` varchar(5) DEFAULT NULL,
  `galeria_categoria_id` decimal(10,0) DEFAULT NULL,
  `galeria_usuario_crea` varchar(20) DEFAULT NULL,
  `galeria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `galeria_fecha_creacion` datetime DEFAULT NULL,
  `galeria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_galeria_categoria`
--

CREATE TABLE `x_galeria_categoria` (
  `galeria_categoria_id` decimal(10,0) NOT NULL,
  `galeria_categoria_nombre` varchar(100) DEFAULT NULL,
  `galeria_categoria_alias` varchar(250) DEFAULT NULL,
  `galeria_categoria_nombre_mostrar` varchar(5) DEFAULT NULL,
  `galeria_categoria_descripcion` text DEFAULT NULL,
  `galeria_categoria_habilitado` varchar(5) DEFAULT NULL,
  `galeria_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `galeria_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `galeria_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `galeria_categoria_fecha_creacion` datetime DEFAULT NULL,
  `galeria_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_glosario`
--

CREATE TABLE `x_glosario` (
  `glosario_id` decimal(10,0) NOT NULL,
  `glosario_nombre` varchar(200) DEFAULT NULL,
  `glosario_alias` varchar(250) DEFAULT NULL,
  `glosario_descripcion` text DEFAULT NULL,
  `glosario_habilitado` varchar(5) DEFAULT NULL,
  `glosario_categoria_id` decimal(10,0) DEFAULT NULL,
  `glosario_lenguaje` varchar(5) DEFAULT NULL,
  `glosario_visitas` int(11) DEFAULT NULL,
  `glosario_usuario_crea` varchar(20) DEFAULT NULL,
  `glosario_usuario_actualiza` varchar(20) DEFAULT NULL,
  `glosario_fecha_creacion` datetime DEFAULT NULL,
  `glosario_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_glosario_categoria`
--

CREATE TABLE `x_glosario_categoria` (
  `glosario_categoria_id` decimal(10,0) NOT NULL,
  `glosario_categoria_nombre` varchar(200) DEFAULT NULL,
  `glosario_categoria_alias` varchar(250) DEFAULT NULL,
  `glosario_categoria_descripcion` text DEFAULT NULL,
  `glosario_categoria_habilitado` varchar(5) DEFAULT NULL,
  `glosario_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `glosario_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `glosario_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `glosario_categoria_fecha_creacion` datetime DEFAULT NULL,
  `glosario_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_grupo_codigos`
--

CREATE TABLE `x_grupo_codigos` (
  `grupo_id` decimal(10,0) NOT NULL,
  `grupo_descripcion` varchar(50) DEFAULT NULL,
  `grupo_alias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_grupo_codigos`
--

INSERT INTO `x_grupo_codigos` (`grupo_id`, `grupo_descripcion`, `grupo_alias`) VALUES
('1', 'SINO', 'tabla_sino'),
('2', 'LENGUAJES', 'tabla_lenguaje'),
('3', 'MONEDA', 'tabla_moneda'),
('4', 'PAISES', 'tabla_pais'),
('5', 'TIPO DE PERSONERÃA JURÃDICA', 'tabla_personeria'),
('6', 'DOCUMENTO DE IDENTIFICACIÃ“N', 'tabla_identificacion'),
('7', 'Unidades Productos', 'tabla_unidades'),
('8', 'Estado de pedido', 'tabla_estado_pedido'),
('9', 'Estado de Entrega', 'tabla_estado_entrega'),
('10', 'Tipo Documento', 'tabla_tipo_documento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_grupo_usuario`
--

CREATE TABLE `x_grupo_usuario` (
  `grupo_usuario_id` int(11) NOT NULL,
  `grupo_usuario_descripcion` varchar(50) DEFAULT NULL,
  `grupo_usuario_observacion` varchar(50) DEFAULT NULL,
  `grupo_usuario_usuario_crea` varchar(20) DEFAULT NULL,
  `grupo_usuario_usuario_actualiza` varchar(20) DEFAULT NULL,
  `grupo_usuario_fecha_creacion` datetime DEFAULT NULL,
  `grupo_usuario_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_grupo_usuario`
--

INSERT INTO `x_grupo_usuario` (`grupo_usuario_id`, `grupo_usuario_descripcion`, `grupo_usuario_observacion`, `grupo_usuario_usuario_crea`, `grupo_usuario_usuario_actualiza`, `grupo_usuario_fecha_creacion`, `grupo_usuario_fecha_actualizacion`) VALUES
(1, 'Super Administradores', 'Super Administradores del sistema', 'admin', 'admin', '2014-07-30 10:00:00', '2015-01-22 21:57:24'),
(2, 'Administradores de AplicaciÃ³n', 'Acceso a administraciÃ³n con permisos especiales', 'admin', 'admin', '2014-07-30 10:00:00', '2015-01-22 21:57:39'),
(3, 'Usuarios Web Clientes', 'Usuarios del Portal Web', 'admin', 'admin', '2016-11-07 18:14:16', '2016-11-22 11:14:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_mapa`
--

CREATE TABLE `x_mapa` (
  `mapa_id` decimal(10,0) NOT NULL,
  `mapa_nombre` varchar(200) DEFAULT NULL,
  `mapa_alias` varchar(250) DEFAULT NULL,
  `mapa_habilitado` varchar(5) DEFAULT NULL,
  `mapa_lenguaje` varchar(5) DEFAULT NULL,
  `mapa_latitud` varchar(50) DEFAULT NULL,
  `mapa_longitud` varchar(50) DEFAULT NULL,
  `mapa_zoom` int(4) DEFAULT NULL,
  `mapa_nombre_mostrar` varchar(5) DEFAULT NULL,
  `mapa_ancho` varchar(10) DEFAULT NULL,
  `mapa_alto` varchar(10) DEFAULT NULL,
  `mapa_icono` varchar(250) DEFAULT NULL,
  `mapa_usuario_crea` varchar(20) DEFAULT NULL,
  `mapa_usuario_actualiza` varchar(20) DEFAULT NULL,
  `mapa_fecha_creacion` datetime DEFAULT NULL,
  `mapa_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_marca`
--

CREATE TABLE `x_marca` (
  `marca_id` decimal(10,0) NOT NULL,
  `marca_nombre` varchar(50) DEFAULT NULL,
  `marca_alias` varchar(250) DEFAULT NULL,
  `marca_nombre_mostrar` varchar(5) DEFAULT NULL,
  `marca_descripcion` text DEFAULT NULL,
  `marca_habilitado` varchar(5) DEFAULT NULL,
  `marca_imagen` varchar(50) DEFAULT NULL,
  `marca_lenguaje` varchar(5) DEFAULT NULL,
  `marca_usuario_crea` varchar(20) DEFAULT NULL,
  `marca_usuario_actualiza` varchar(20) DEFAULT NULL,
  `marca_fecha_creacion` datetime DEFAULT NULL,
  `marca_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_menu`
--

CREATE TABLE `x_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_nombre` varchar(200) DEFAULT NULL,
  `menu_url` varchar(250) DEFAULT NULL,
  `menu_posicion` varchar(30) DEFAULT NULL,
  `menu_publicado` varchar(5) DEFAULT NULL,
  `menu_lenguaje` varchar(5) DEFAULT NULL,
  `menu_orden` int(11) DEFAULT NULL,
  `menu_padre_id` int(11) DEFAULT NULL,
  `menu_alias` varchar(250) DEFAULT NULL,
  `menu_target` varchar(30) DEFAULT NULL,
  `menu_usuario_crea` varchar(20) DEFAULT NULL,
  `menu_usuario_actualiza` varchar(20) DEFAULT NULL,
  `menu_fecha_creacion` datetime DEFAULT NULL,
  `menu_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_menu_seccion`
--

CREATE TABLE `x_menu_seccion` (
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `seccion_id` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_modulo`
--

CREATE TABLE `x_modulo` (
  `modulo_id` varchar(50) NOT NULL DEFAULT '',
  `modulo_descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_modulo`
--

INSERT INTO `x_modulo` (`modulo_id`, `modulo_descripcion`) VALUES
('mod_asesor_comercial', 'Asesor Comercial'),
('mod_asesor_comercial_categoria', 'CategorÃ­a de Asesor Comercial'),
('mod_ciudad', 'AdministraciÃ³n de Ciudades'),
('mod_codigos', 'CÃ³digos'),
('mod_contenido', 'ArtÃ­culos de Contenidos'),
('mod_contenido_categoria', 'CategorÃ­as de Contenidos'),
('mod_documento', 'Administracion de Documentos'),
('mod_documento_categoria', 'Categoria de Documentos'),
('mod_epago', 'Carrito de Compras'),
('mod_file', 'Administrador de Archivos'),
('mod_forma_pago', 'Formas de Pago'),
('mod_formulario', 'Formularios Ruteados'),
('mod_formulario_contacto', 'Lista de contactos'),
('mod_formulario_cotizacion', 'Solicitudes de CotizaciÃ³n'),
('mod_galeria', 'AdministraciÃ³n de GalerÃ­a de Fotos'),
('mod_galeria_categoria', 'CategorÃ­a de GalerÃ­a de Fotos'),
('mod_glosario', 'Glosario de TÃ©rminos'),
('mod_glosario_categoria', 'CategorÃ­as del Glosario'),
('mod_grupo_codigos', 'Adm. de Grupo de cÃ³digos'),
('mod_grupo_usuario', 'Grupos de usuarios'),
('mod_mapa', 'Mapas de Google'),
('mod_marca', 'AdministraciÃ³n de Marcas de Productos'),
('mod_menu', 'AdministraciÃ³n de MenÃºs'),
('mod_modulo', 'AdministraciÃ³n de mÃ³dulos'),
('mod_noticia', 'Noticias'),
('mod_noticia_tag', 'Tags de Noticias'),
('mod_parametros', 'Parametros generales del sistema'),
('mod_permiso_grupo', 'AdministraciÃ³n de permisos de grupo'),
('mod_permiso_usuario', 'AdministraciÃ³n de permisos de usuario'),
('mod_peso_envio', 'Peso de EnvÃ­o'),
('mod_portafolio', 'Portafolio'),
('mod_portafolio_categoria', 'CategorÃ­a de Portafolios'),
('mod_producto', 'Productos'),
('mod_producto_atributo', 'Atributos Adicionales de Producto'),
('mod_producto_atributo_categoria', 'CategorÃ­a de Atributos Adicionales de Producto'),
('mod_producto_categoria', 'CategorÃ­a de Productos'),
('mod_provincia', 'Provincias'),
('mod_punto', 'Puntos de Google Maps'),
('mod_punto_categoria', 'CategorÃ­a de Puntos Mapa'),
('mod_seccion', 'Secciones del sitio web'),
('mod_slideshow', 'Slideshow'),
('mod_slideshow_categoria', 'CategorÃ­as de Slideshow'),
('mod_usuario', 'AdministraciÃ³n de Usuarios'),
('mod_video', 'Videos'),
('mod_video_categoria', 'CategorÃ­a de Videos'),
('mod_zona_envio', 'Zonas de EnvÃ­o');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_noticia`
--

CREATE TABLE `x_noticia` (
  `noticia_id` decimal(10,0) NOT NULL,
  `noticia_titulo` varchar(250) DEFAULT NULL,
  `noticia_alias` varchar(250) DEFAULT NULL,
  `noticia_titulo_h` varchar(5) DEFAULT NULL,
  `noticia_detalle` text DEFAULT NULL,
  `noticia_url` varchar(250) DEFAULT NULL,
  `noticia_foto_url` varchar(250) DEFAULT NULL,
  `noticia_lenguaje` varchar(5) DEFAULT NULL,
  `noticia_publicado` varchar(5) DEFAULT NULL,
  `noticia_visitas` int(11) DEFAULT NULL,
  `noticia_fecha_creacion` datetime DEFAULT NULL,
  `noticia_fecha_actualizacion` datetime DEFAULT NULL,
  `noticia_usuario_crea` varchar(20) DEFAULT NULL,
  `noticia_usuario_actualiza` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_noticia_tag`
--

CREATE TABLE `x_noticia_tag` (
  `noticia_tag_id` decimal(10,0) NOT NULL,
  `noticia_tag_nombre` varchar(250) DEFAULT NULL,
  `noticia_tag_alias` varchar(250) DEFAULT NULL,
  `noticia_tag_nombre_mostrar` varchar(5) DEFAULT NULL,
  `noticia_tag_bgcolor` varchar(30) DEFAULT NULL,
  `noticia_tag_nombre_color` varchar(30) DEFAULT NULL,
  `noticia_tag_lenguaje` varchar(5) DEFAULT NULL,
  `noticia_tag_publicado` varchar(5) DEFAULT NULL,
  `noticia_tag_usuario_crea` varchar(20) DEFAULT NULL,
  `noticia_tag_usuario_actualiza` varchar(20) DEFAULT NULL,
  `noticia_tag_fecha_creacion` datetime DEFAULT NULL,
  `noticia_tag_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_noticia_tag_noticia`
--

CREATE TABLE `x_noticia_tag_noticia` (
  `noticia_tag_id` decimal(10,0) NOT NULL,
  `noticia_id` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_parametros`
--

CREATE TABLE `x_parametros` (
  `parametros_id` varchar(40) NOT NULL,
  `parametros_detalle` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_parametros`
--

INSERT INTO `x_parametros` (`parametros_id`, `parametros_detalle`) VALUES
('mod_asesor_comercial', '{\"asesor_comercial_imagen_dir\":\"_asesor_comercial\",\"asesor_comercial_ordenar_por\":\"asesor_comercial_id\",\"asesor_comercial_orden\":\"asc\",\"asesor_comercial_nombre_apellido_mostrar\":\"1\",\"asesor_comercial_ciudad_mostrar\":\"1\",\"asesor_comercial_categoria_id_mostrar\":\"2\",\"asesor_comercial_email_mostrar\":\"2\",\"asesor_comercial_telefono_mostrar\":\"2\",\"asesor_comercial_movil_mostrar\":\"2\",\"asesor_comercial_url_mostrar\":\"2\"}'),
('mod_contenido', '{\"contenido_fecha_creacion_mostrar\":\"2\",\"contenido_fecha_actualizacion_mostrar\":\"2\",\"contenido_usuario_crea_mostrar\":\"2\",\"contenido_usuario_actualiza_mostrar\":\"2\",\"contenido_categoria_mostrar\":\"2\",\"contenido_palabras_introduccion\":\"10\"}'),
('mod_documento', '{\"documento_portada_imagen_dir\":\"_documento_portada\"}'),
('mod_epago', '{\"epago_imagen_dir\":\"_epago\",\"epago_carrito_activo\":\"1\",\"epago_carrito_invitado\":\"1\",\"epago_iva_modo\":\"2\",\"epago_iva\":\"12\",\"epago_carrito_url_seguir_comprando\":\".\\/producto\",\"epago_carrito_moneda\":\"USD\",\"epago_stock_activo\":\"2\",\"epago_forma_pago\":\"2\",\"epago_envio\":\"2\",\"epago_envio_peso\":\"1\",\"epago_envio_zona\":\"1\",\"epago_descuento_activo\":\"1\",\"epago_descuento_tipo\":\"1\",\"epago_descuento_longitud\":\"4\"}'),
('mod_galeria', '{\"galeria_imagen_dir\":\"_galeria\"}'),
('mod_glosario', '{\"glosario_fecha_creacion_mostrar\":\"2\",\"glosario_usuario_crea_mostrar\":\"2\",\"glosario_descripcion_mostrar\":\"2\"}'),
('mod_mapa', '{\"mapa_key\":\"AIzaSyB-5ShPLlvhVGC4QL7j543hKkaHS2Xg9nU\",\"mapa_icon\":\"media\\/pictures\\/web\\/mapa\\/map_marker_yellow.png\"}'),
('mod_noticia', '{\"noticia_fecha_creacion_mostrar\":\"1\",\"noticia_fecha_actualizacion_mostrar\":\"2\",\"noticia_usuario_crea_mostrar\":\"2\",\"noticia_usuario_actualiza_mostrar\":\"2\",\"noticia_categoria_mostrar\":\"2\",\"noticia_palabras_introduccion\":\"20\",\"noticia_palabras_mas_introduccion\":\"0\",\"noticia_palabras_carousel_introduccion\":\"0\",\"noticia_imagen_dir\":\"_noticia_audio\",\"noticia_foto_dir\":\"_noticia_foto\"}'),
('mod_portafolio', '{\"portafolio_imagen_dir\":\"_portafolio\"}'),
('mod_producto', '{\"producto_imagen_dir\":\"_producto\",\"producto_mostrar_descarga\":\"1\",\"producto_mostrar_categoria_raiz\":\"1\",\"producto_mostrar_categoria\":\"1\",\"producto_mostrar_buscador\":\"2\",\"producto_mostrar_marca\":\"1\",\"producto_mostrar_codigo\":\"2\",\"producto_mostrar_boton_carrito\":\"1\",\"producto_mostrar_formulario_solicitalo\":\"2\",\"producto_palabras_introduccion\":\"0\",\"producto_mostrar_precios\":\"2\",\"producto_moneda\":\"USD\",\"producto_mostrar_paginador\":\"2\",\"producto_buscar_categorias\":\"1\",\"producto_buscar_marcas\":\"2\",\"producto_buscar_nombre\":\"1\",\"producto_buscar_codigo\":\"1\",\"producto_ordenar_por\":\"producto_id\",\"producto_orden\":\"asc\",\"producto_mostrar_unidad\":\"2\",\"producto_mostrar_peso\":\"2\",\"producto_comparador_activo\":\"1\",\"producto_mostrar_tags_item\":\"1\",\"producto_mostrar_tags_blog\":\"2\",\"producto_mostrar_introduccion_item\":\"1\",\"producto_mostrar_introduccion_blog\":\"2\"}'),
('mod_servicio', '{\"servicio_imagen_dir\":\"_servicios\"}'),
('mod_usuario', '{\"usuario_mail_enviar\":\"1\",\"usuario_mail_metodo\":\"smtp\",\"usuario_mail_smpt_seguridad\":\"\",\"usuario_mail_smpt_servidor\":\"mail.minayon.com\",\"usuario_mail_smpt_puerto\":\"26\",\"usuario_mail_smpt_usuario\":\"webmaster@minayon.com\",\"usuario_mail_smpt_clave\":\"webmasternayon01\",\"usuario_mail_admin_remitente_email\":\"webmaster@minayon.com\",\"usuario_mail_admin_remitente_nombre\":\"XpertoSolutions\",\"usuario_mail_admin_destinatario_email\":\"informacion@xpertosolutions.com\",\"usuario_usuario_grupo\":\"3\",\"usuario_mail_usuario_titulo\":\"Detalles del registro de usuario\",\"usuario_mail_usuario_cuerpo\":\"<p>Bienvenido(a) a {x_app_name}, para completar el registro por favor haga clic en el siguiente link:<\\/p>\\r\\n\\r\\n<p>{usuario_confirmacion_link}<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Detalles de su cuenta:<\\/strong><\\/p>\\r\\n\\r\\n<p>{xperto_data}<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><b>MINAYON.COM<\\/b><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"usuario_mail_admin_titulo\":\"Nuevo registro de usuario \",\"usuario_mail_admin_cuerpo\":\"<p>Estimado(a) administrador(a), usted ha recibido un nuevo email de registro con los siguientes datos:<\\/p>\\r\\n\\r\\n<p><strong>Detalles de usuario:<\\/strong><\\/p>\\r\\n\\r\\n<p>{xperto_data}<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><b>MINAYON.COM<\\/b><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"usuario_empresa_nombre\":\"Construcoociv Cia. Ltda.\",\"usuario_empresa_email\":\"\",\"usuario_empresa_direccion\":\"\",\"usuario_empresa_telefono\":\"\",\"usuario_empresa_movil\":\"\",\"usuario_empresa_ruc\":\"\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_permiso_grupo`
--

CREATE TABLE `x_permiso_grupo` (
  `modulo_id` varchar(50) DEFAULT NULL,
  `grupo_usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_permiso_grupo`
--

INSERT INTO `x_permiso_grupo` (`modulo_id`, `grupo_usuario_id`) VALUES
('mod_asesor_comercial', 2),
('mod_asesor_comercial_categoria', 2),
('mod_contenido', 2),
('mod_contenido_categoria', 2),
('mod_file', 2),
('mod_galeria', 2),
('mod_galeria_categoria', 2),
('mod_grupo_codigos', 2),
('mod_grupo_usuario', 2),
('mod_menu', 2),
('mod_modulo', 2),
('mod_noticia', 2),
('mod_parametros', 2),
('mod_permiso_grupo', 2),
('mod_permiso_usuario', 2),
('mod_peso_envio', 2),
('mod_portafolio', 2),
('mod_portafolio_categoria', 2),
('mod_punto', 2),
('mod_punto_categoria', 2),
('mod_seccion', 2),
('mod_slideshow', 2),
('mod_slideshow_categoria', 2),
('mod_usuario', 2),
('mod_zona_envio', 2),
('mod_asesor_comercial', 1),
('mod_asesor_comercial_categoria', 1),
('mod_ciudad', 1),
('mod_codigos', 1),
('mod_contenido', 1),
('mod_contenido_categoria', 1),
('mod_documento', 1),
('mod_documento_categoria', 1),
('mod_epago', 1),
('mod_file', 1),
('mod_forma_pago', 1),
('mod_formulario', 1),
('mod_formulario_contacto', 1),
('mod_formulario_cotizacion', 1),
('mod_galeria', 1),
('mod_galeria_categoria', 1),
('mod_glosario', 1),
('mod_glosario_categoria', 1),
('mod_grupo_codigos', 1),
('mod_grupo_usuario', 1),
('mod_mapa', 1),
('mod_marca', 1),
('mod_menu', 1),
('mod_modulo', 1),
('mod_noticia', 1),
('mod_noticia_tag', 1),
('mod_parametros', 1),
('mod_permiso_grupo', 1),
('mod_permiso_usuario', 1),
('mod_portafolio', 1),
('mod_portafolio_categoria', 1),
('mod_producto', 1),
('mod_producto_atributo', 1),
('mod_producto_atributo_categoria', 1),
('mod_producto_categoria', 1),
('mod_punto', 1),
('mod_punto_categoria', 1),
('mod_seccion', 1),
('mod_slideshow', 1),
('mod_slideshow_categoria', 1),
('mod_usuario', 1),
('mod_video', 1),
('mod_video_categoria', 1),
('mod_zona_envio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_peso_envio`
--

CREATE TABLE `x_peso_envio` (
  `peso_envio_id` decimal(10,0) NOT NULL,
  `peso_envio_desde` decimal(10,2) DEFAULT NULL,
  `peso_envio_hasta` decimal(10,2) DEFAULT NULL,
  `peso_envio_precio` decimal(10,2) DEFAULT NULL,
  `peso_envio_lenguaje` varchar(5) DEFAULT NULL,
  `peso_envio_publicado` varchar(5) DEFAULT NULL,
  `peso_envio_usuario_crea` varchar(20) DEFAULT NULL,
  `peso_envio_usuario_actualiza` varchar(20) DEFAULT NULL,
  `peso_envio_fecha_creacion` datetime DEFAULT NULL,
  `peso_envio_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_portafolio`
--

CREATE TABLE `x_portafolio` (
  `portafolio_id` decimal(10,0) NOT NULL,
  `portafolio_nombre` varchar(100) DEFAULT NULL,
  `portafolio_alias` varchar(250) DEFAULT NULL,
  `portafolio_descripcion` text DEFAULT NULL,
  `portafolio_habilitado` varchar(5) DEFAULT NULL,
  `portafolio_imagenes` text DEFAULT NULL,
  `portafolio_categoria_id` decimal(10,0) DEFAULT NULL,
  `portafolio_lenguaje` varchar(5) DEFAULT NULL,
  `portafolio_destacado` varchar(5) DEFAULT NULL,
  `portafolio_visitas` int(11) DEFAULT NULL,
  `portafolio_usuario_crea` varchar(20) DEFAULT NULL,
  `portafolio_usuario_actualiza` varchar(20) DEFAULT NULL,
  `portafolio_fecha_creacion` datetime DEFAULT NULL,
  `portafolio_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_portafolio_categoria`
--

CREATE TABLE `x_portafolio_categoria` (
  `portafolio_categoria_id` decimal(10,0) NOT NULL,
  `portafolio_categoria_nombre` varchar(100) DEFAULT NULL,
  `portafolio_categoria_alias` varchar(250) DEFAULT NULL,
  `portafolio_categoria_descripcion` text DEFAULT NULL,
  `portafolio_categoria_habilitado` varchar(5) DEFAULT NULL,
  `portafolio_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `portafolio_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `portafolio_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `portafolio_categoria_fecha_creacion` datetime DEFAULT NULL,
  `portafolio_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_producto`
--

CREATE TABLE `x_producto` (
  `producto_id` decimal(10,0) NOT NULL,
  `producto_codigo` varchar(50) DEFAULT NULL,
  `producto_nombre` varchar(100) DEFAULT NULL,
  `producto_alias` varchar(250) DEFAULT NULL,
  `producto_introduccion` varchar(250) DEFAULT NULL,
  `producto_descripcion` text DEFAULT NULL,
  `producto_caracteristicas` text DEFAULT NULL,
  `producto_habilitado` varchar(5) DEFAULT NULL,
  `producto_imagenes` text DEFAULT NULL,
  `marca_id` decimal(10,0) DEFAULT NULL,
  `producto_categoria_id` decimal(10,0) DEFAULT NULL,
  `producto_lenguaje` varchar(5) DEFAULT NULL,
  `producto_destacado` varchar(5) DEFAULT NULL,
  `producto_promocion` varchar(5) DEFAULT NULL,
  `producto_visitas` int(11) DEFAULT NULL,
  `producto_orden` int(11) DEFAULT NULL,
  `producto_url` varchar(250) DEFAULT NULL,
  `producto_precio_normal` decimal(10,2) DEFAULT NULL,
  `producto_precio_viejo` decimal(10,2) DEFAULT NULL,
  `producto_existencia` int(11) DEFAULT 0,
  `producto_unidad` varchar(5) DEFAULT NULL,
  `producto_peso` decimal(10,2) DEFAULT NULL,
  `producto_tags` text DEFAULT NULL,
  `producto_usuario_crea` varchar(20) DEFAULT NULL,
  `producto_usuario_actualiza` varchar(20) DEFAULT NULL,
  `producto_fecha_creacion` datetime DEFAULT NULL,
  `producto_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_producto_atributo`
--

CREATE TABLE `x_producto_atributo` (
  `producto_atributo_id` decimal(10,0) NOT NULL,
  `producto_atributo_categoria_id` decimal(10,0) NOT NULL,
  `producto_atributo_nombre` varchar(100) DEFAULT NULL,
  `producto_atributo_habilitado` varchar(5) DEFAULT NULL,
  `producto_atributo_lenguaje` varchar(5) DEFAULT NULL,
  `producto_atributo_orden` int(11) DEFAULT NULL,
  `producto_atributo_usuario_crea` varchar(20) DEFAULT NULL,
  `producto_atributo_usuario_actualiza` varchar(20) DEFAULT NULL,
  `producto_atributo_fecha_creacion` datetime DEFAULT NULL,
  `producto_atributo_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_producto_atributo_categoria`
--

CREATE TABLE `x_producto_atributo_categoria` (
  `producto_atributo_categoria_id` decimal(10,0) NOT NULL,
  `producto_atributo_categoria_nombre` varchar(100) DEFAULT NULL,
  `producto_atributo_categoria_alias` varchar(250) DEFAULT NULL,
  `producto_atributo_categoria_nombre_mostrar` varchar(5) DEFAULT NULL,
  `producto_atributo_categoria_descripcion` text DEFAULT NULL,
  `producto_atributo_categoria_habilitado` varchar(5) DEFAULT NULL,
  `producto_atributo_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `producto_atributo_categoria_orden` int(11) DEFAULT NULL,
  `producto_atributo_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `producto_atributo_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `producto_atributo_categoria_fecha_creacion` datetime DEFAULT NULL,
  `producto_atributo_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_producto_atributo_producto`
--

CREATE TABLE `x_producto_atributo_producto` (
  `producto_id` decimal(10,0) NOT NULL,
  `producto_atributo_id` decimal(10,0) NOT NULL,
  `producto_atributo_detalle` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_producto_categoria`
--

CREATE TABLE `x_producto_categoria` (
  `producto_categoria_id` decimal(10,0) NOT NULL,
  `producto_categoria_nombre` varchar(100) DEFAULT NULL,
  `producto_categoria_alias` varchar(250) DEFAULT NULL,
  `producto_categoria_nombre_mostrar` varchar(5) DEFAULT NULL,
  `producto_categoria_descripcion` text DEFAULT NULL,
  `producto_categoria_habilitado` varchar(5) DEFAULT NULL,
  `producto_categoria_padre_id` decimal(10,0) DEFAULT NULL,
  `producto_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `producto_categoria_orden` int(11) DEFAULT NULL,
  `producto_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `producto_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `producto_categoria_fecha_creacion` datetime DEFAULT NULL,
  `producto_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_provincia`
--

CREATE TABLE `x_provincia` (
  `provincia_id` decimal(10,0) NOT NULL,
  `provincia_nombre` varchar(50) DEFAULT NULL,
  `provincia_codigo` decimal(4,0) DEFAULT NULL,
  `provincia_usuario_crea` varchar(20) DEFAULT NULL,
  `provincia_usuario_actualiza` varchar(20) DEFAULT NULL,
  `provincia_fecha_creacion` datetime DEFAULT NULL,
  `provincia_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_provincia`
--

INSERT INTO `x_provincia` (`provincia_id`, `provincia_nombre`, `provincia_codigo`, `provincia_usuario_crea`, `provincia_usuario_actualiza`, `provincia_fecha_creacion`, `provincia_fecha_actualizacion`) VALUES
('1', 'Azuay', '1', 'admin', NULL, '2015-08-03 12:24:39', NULL),
('2', 'Bolivar', '2', 'admin', NULL, '2015-08-03 12:24:57', NULL),
('3', 'CaÃ±ar', '3', 'admin', NULL, '2015-08-03 12:30:23', NULL),
('4', 'Carchi', '4', 'admin', NULL, '2015-08-03 12:30:45', NULL),
('5', 'Cotopaxi', '5', 'admin', NULL, '2015-08-03 12:31:33', NULL),
('6', 'Chimbozaro', '6', 'admin', NULL, '2015-08-03 12:32:23', NULL),
('7', 'El Oro', '7', 'admin', NULL, '2015-08-03 12:32:39', NULL),
('8', 'Esmeraldas', '8', 'admin', NULL, '2015-08-03 12:32:48', NULL),
('9', 'Guayas', '9', 'admin', NULL, '2015-08-03 12:33:03', NULL),
('10', 'Imbabura', '10', 'admin', NULL, '2015-08-03 12:33:21', NULL),
('11', 'Loja', '11', 'admin', NULL, '2015-08-03 12:33:36', NULL),
('12', 'Los Rios', '12', 'admin', NULL, '2015-08-03 12:33:41', NULL),
('13', 'ManabÃ­', '13', 'admin', NULL, '2015-08-03 12:34:02', NULL),
('14', 'Morona Santiago', '14', 'admin', NULL, '2015-08-03 12:34:19', NULL),
('15', 'Napo', '15', 'admin', NULL, '2015-08-03 12:34:31', NULL),
('16', 'Pastaza', '16', 'admin', NULL, '2015-08-03 12:34:43', NULL),
('17', 'Pichincha', '17', 'admin', NULL, '2015-08-03 12:35:06', NULL),
('18', 'Tungurahua', '18', 'admin', NULL, '2015-08-03 12:35:17', NULL),
('19', 'Zamora Chinchipe', '19', 'admin', NULL, '2015-08-03 12:35:36', NULL),
('20', 'Galapagos', '20', 'admin', NULL, '2015-08-03 12:36:09', NULL),
('21', 'Sucumbios', '21', 'admin', NULL, '2015-08-03 12:36:14', NULL),
('22', 'Orellana', '22', 'admin', NULL, '2015-08-03 12:37:11', NULL),
('23', 'Santo Domingo de los TsÃ¡chilas', '23', 'admin', NULL, '2015-08-03 12:37:34', NULL),
('24', 'Santa Elena', '24', 'admin', NULL, '2015-08-03 12:37:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_punto`
--

CREATE TABLE `x_punto` (
  `punto_id` decimal(10,0) NOT NULL,
  `punto_nombre` varchar(200) DEFAULT NULL,
  `punto_alias` varchar(250) DEFAULT NULL,
  `punto_descripcion` text DEFAULT NULL,
  `punto_habilitado` varchar(5) DEFAULT NULL,
  `punto_lenguaje` varchar(5) DEFAULT NULL,
  `punto_latitud` varchar(50) DEFAULT NULL,
  `punto_longitud` varchar(50) DEFAULT NULL,
  `punto_zoom` int(4) DEFAULT NULL,
  `punto_categoria_id` decimal(10,0) DEFAULT NULL,
  `punto_usuario_crea` varchar(20) DEFAULT NULL,
  `punto_usuario_actualiza` varchar(20) DEFAULT NULL,
  `punto_fecha_creacion` datetime DEFAULT NULL,
  `punto_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_punto_categoria`
--

CREATE TABLE `x_punto_categoria` (
  `punto_categoria_id` decimal(10,0) NOT NULL,
  `punto_categoria_nombre` varchar(200) DEFAULT NULL,
  `punto_categoria_alias` varchar(250) DEFAULT NULL,
  `punto_categoria_descripcion` text DEFAULT NULL,
  `punto_categoria_habilitado` varchar(5) DEFAULT NULL,
  `punto_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `punto_categoria_orden` int(11) DEFAULT NULL,
  `punto_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `punto_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `punto_categoria_fecha_creacion` datetime DEFAULT NULL,
  `punto_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_punto_mapa`
--

CREATE TABLE `x_punto_mapa` (
  `mapa_id` decimal(10,0) NOT NULL DEFAULT 0,
  `punto_id` decimal(10,0) NOT NULL DEFAULT 0,
  `punto_mapa_orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_seccion`
--

CREATE TABLE `x_seccion` (
  `seccion_id` decimal(10,0) NOT NULL,
  `seccion_titulo` varchar(250) DEFAULT NULL,
  `seccion_titulo_h` varchar(5) DEFAULT NULL,
  `seccion_detalle` text DEFAULT NULL,
  `seccion_lenguaje` varchar(5) DEFAULT NULL,
  `seccion_publicado` varchar(5) DEFAULT NULL,
  `seccion_fecha_publicacion` date DEFAULT NULL,
  `seccion_usuario` varchar(20) DEFAULT NULL,
  `seccion_posicion` varchar(30) DEFAULT NULL,
  `seccion_orden` int(11) DEFAULT NULL,
  `seccion_moduloapp` varchar(30) DEFAULT NULL,
  `seccion_accionapp` varchar(50) DEFAULT NULL,
  `seccion_menu_todos` varchar(5) DEFAULT NULL,
  `seccion_grupo_usuario_todos` varchar(5) DEFAULT NULL,
  `seccion_solo_registrados` varchar(5) DEFAULT NULL,
  `seccion_usuario_crea` varchar(20) DEFAULT NULL,
  `seccion_usuario_actualiza` varchar(20) DEFAULT NULL,
  `seccion_fecha_creacion` datetime DEFAULT NULL,
  `seccion_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_seccion_grupo_usuario`
--

CREATE TABLE `x_seccion_grupo_usuario` (
  `seccion_id` decimal(10,0) NOT NULL DEFAULT 0,
  `grupo_usuario_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_slideshow`
--

CREATE TABLE `x_slideshow` (
  `slideshow_id` decimal(10,0) NOT NULL,
  `slideshow_nombre` varchar(150) DEFAULT NULL,
  `slideshow_descripcion` text DEFAULT NULL,
  `slideshow_url` varchar(250) DEFAULT NULL,
  `slideshow_link` varchar(250) DEFAULT NULL,
  `slideshow_link_target` varchar(30) DEFAULT NULL,
  `slideshow_bg_color` varchar(30) DEFAULT NULL,
  `slideshow_titulo_color` varchar(30) DEFAULT NULL,
  `slideshow_descripcion_color` varchar(30) DEFAULT NULL,
  `slideshow_orden` int(11) DEFAULT NULL,
  `slideshow_habilitado` varchar(5) DEFAULT NULL,
  `slideshow_lenguaje` varchar(5) DEFAULT NULL,
  `slideshow_categoria_id` decimal(10,0) DEFAULT NULL,
  `slideshow_usuario_crea` varchar(20) DEFAULT NULL,
  `slideshow_usuario_actualiza` varchar(20) DEFAULT NULL,
  `slideshow_fecha_creacion` datetime DEFAULT NULL,
  `slideshow_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_slideshow_categoria`
--

CREATE TABLE `x_slideshow_categoria` (
  `slideshow_categoria_id` decimal(10,0) NOT NULL,
  `slideshow_categoria_nombre` varchar(150) DEFAULT NULL,
  `slideshow_categoria_descripcion` text DEFAULT NULL,
  `slideshow_categoria_habilitado` varchar(5) DEFAULT NULL,
  `slideshow_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `slideshow_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `slideshow_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `slideshow_categoria_fecha_creacion` datetime DEFAULT NULL,
  `slideshow_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_super_permiso`
--

CREATE TABLE `x_super_permiso` (
  `modulo_id` varchar(50) NOT NULL DEFAULT '',
  `grupo_usuario_id` int(11) NOT NULL DEFAULT 0,
  `contenido_id` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_user_recovery`
--

CREATE TABLE `x_user_recovery` (
  `user_recovery_id` decimal(11,0) NOT NULL,
  `user_recovery_word` varchar(250) DEFAULT NULL,
  `user_recovery_email` varchar(50) DEFAULT NULL,
  `user_recovery_estado` varchar(5) DEFAULT NULL,
  `user_recovery_fecha_solicitud` datetime DEFAULT NULL,
  `user_recovery_fecha_activacion` datetime DEFAULT NULL,
  `user_recovery_usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_usuario`
--

CREATE TABLE `x_usuario` (
  `usuario_nombre` varchar(20) NOT NULL,
  `grupo_usuario_id` int(11) DEFAULT NULL,
  `usuario_password` varchar(35) DEFAULT NULL,
  `usuario_nombre_usr` varchar(50) DEFAULT NULL,
  `usuario_apellido` varchar(50) DEFAULT NULL,
  `usuario_email` varchar(50) DEFAULT NULL,
  `usuario_habilitado` varchar(5) DEFAULT NULL,
  `usuario_rol_admin` varchar(5) DEFAULT NULL,
  `usuario_rol_web` varchar(5) DEFAULT NULL,
  `usuario_zip` varchar(20) DEFAULT NULL,
  `usuario_telefono` varchar(30) DEFAULT NULL,
  `usuario_movil` varchar(30) DEFAULT NULL,
  `usuario_pais` varchar(5) DEFAULT NULL,
  `usuario_localidad` varchar(50) DEFAULT NULL,
  `usuario_direccion_calle_principal` varchar(250) DEFAULT NULL,
  `usuario_direccion_calle_secundaria` varchar(250) DEFAULT NULL,
  `usuario_direccion_numeracion` varchar(50) DEFAULT NULL,
  `usuario_fecha_ultima_visita` datetime DEFAULT NULL,
  `usuario_usuario_crea` varchar(20) DEFAULT NULL,
  `usuario_usuario_actualiza` varchar(20) DEFAULT NULL,
  `usuario_fecha_creacion` datetime DEFAULT NULL,
  `usuario_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `x_usuario`
--

INSERT INTO `x_usuario` (`usuario_nombre`, `grupo_usuario_id`, `usuario_password`, `usuario_nombre_usr`, `usuario_apellido`, `usuario_email`, `usuario_habilitado`, `usuario_rol_admin`, `usuario_rol_web`, `usuario_zip`, `usuario_telefono`, `usuario_movil`, `usuario_pais`, `usuario_localidad`, `usuario_direccion_calle_principal`, `usuario_direccion_calle_secundaria`, `usuario_direccion_numeracion`, `usuario_fecha_ultima_visita`, `usuario_usuario_crea`, `usuario_usuario_actualiza`, `usuario_fecha_creacion`, `usuario_fecha_actualizacion`) VALUES
('admin', 1, '6702b8952c6b60af036945ac232088c3', 'XPERTO', 'DEVELOPER', 'xpertosolutions@gmail.com', '1', '1', '1', NULL, NULL, NULL, 'EC', 'Quito', NULL, NULL, NULL, '2019-10-24 14:26:04', 'admin', 'admin', '2009-07-16 14:01:03', '2017-11-07 17:27:44'),
('webmaster', 1, '7b3a3673e83919309a31ae5928788a4c', 'Webmaster', 'App', 'soporte@xpertosolutions.com', '1', '1', '1', NULL, NULL, NULL, 'EC', 'Quito', NULL, NULL, NULL, '2015-09-23 18:58:39', 'webmaster', 'admin', '2015-09-23 18:52:38', '2017-11-07 17:27:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_video`
--

CREATE TABLE `x_video` (
  `video_id` decimal(10,0) NOT NULL,
  `video_nombre` varchar(100) DEFAULT NULL,
  `video_descripcion` text DEFAULT NULL,
  `video_url` varchar(250) DEFAULT NULL,
  `video_habilitado` varchar(5) DEFAULT NULL,
  `video_orden` int(11) DEFAULT NULL,
  `video_visitas` decimal(10,0) DEFAULT NULL,
  `video_lenguaje` varchar(5) DEFAULT NULL,
  `video_categoria_id` decimal(10,0) DEFAULT NULL,
  `video_usuario_crea` varchar(20) DEFAULT NULL,
  `video_usuario_actualiza` varchar(20) DEFAULT NULL,
  `video_fecha_creacion` datetime DEFAULT NULL,
  `video_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_video_categoria`
--

CREATE TABLE `x_video_categoria` (
  `video_categoria_id` decimal(10,0) NOT NULL,
  `video_categoria_nombre` varchar(100) DEFAULT NULL,
  `video_categoria_alias` varchar(250) DEFAULT NULL,
  `video_categoria_descripcion` text DEFAULT NULL,
  `video_categoria_habilitado` varchar(5) DEFAULT NULL,
  `video_categoria_lenguaje` varchar(5) DEFAULT NULL,
  `video_categoria_usuario_crea` varchar(20) DEFAULT NULL,
  `video_categoria_usuario_actualiza` varchar(20) DEFAULT NULL,
  `video_categoria_fecha_creacion` datetime DEFAULT NULL,
  `video_categoria_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_visitante_online`
--

CREATE TABLE `x_visitante_online` (
  `visitante_online_timestamp` int(15) NOT NULL DEFAULT 0,
  `visitante_online_ip` varchar(40) NOT NULL DEFAULT '',
  `visitante_online_file` varchar(100) NOT NULL DEFAULT '',
  `visitante_online_usuario_crea` varchar(20) DEFAULT NULL,
  `visitante_online_usuario_actualiza` varchar(20) DEFAULT NULL,
  `visitante_online_fecha_creacion` datetime DEFAULT NULL,
  `visitante_online_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `x_zona_envio`
--

CREATE TABLE `x_zona_envio` (
  `zona_envio_id` decimal(10,0) NOT NULL,
  `zona_envio_codigo_alterno` varchar(10) DEFAULT NULL,
  `zona_envio_nombre` varchar(250) DEFAULT NULL,
  `zona_envio_alias` varchar(250) DEFAULT NULL,
  `zona_envio_pais` varchar(5) DEFAULT NULL,
  `zona_envio_precio` decimal(10,2) DEFAULT NULL,
  `zona_envio_lenguaje` varchar(5) DEFAULT NULL,
  `zona_envio_publicado` varchar(5) DEFAULT NULL,
  `zona_envio_usuario_crea` varchar(20) DEFAULT NULL,
  `zona_envio_usuario_actualiza` varchar(20) DEFAULT NULL,
  `zona_envio_fecha_creacion` datetime DEFAULT NULL,
  `zona_envio_fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `x_asesor_comercial`
--
ALTER TABLE `x_asesor_comercial`
  ADD PRIMARY KEY (`asesor_comercial_id`),
  ADD KEY `FK_ASESOR_COMERCIAL_CATEGORIA` (`asesor_comercial_categoria_id`);

--
-- Indices de la tabla `x_asesor_comercial_categoria`
--
ALTER TABLE `x_asesor_comercial_categoria`
  ADD PRIMARY KEY (`asesor_comercial_categoria_id`);

--
-- Indices de la tabla `x_ciudad`
--
ALTER TABLE `x_ciudad`
  ADD PRIMARY KEY (`ciudad_id`),
  ADD KEY `FK_CIUDAD_PROVINCIA` (`provincia_id`);

--
-- Indices de la tabla `x_codigos`
--
ALTER TABLE `x_codigos`
  ADD PRIMARY KEY (`codigo_id`,`codigo_grupo_id`);

--
-- Indices de la tabla `x_contenido`
--
ALTER TABLE `x_contenido`
  ADD PRIMARY KEY (`contenido_id`),
  ADD KEY `FK_X_CONTENIDO_CATEGORIA` (`contenido_categoria_id`);

--
-- Indices de la tabla `x_contenido_categoria`
--
ALTER TABLE `x_contenido_categoria`
  ADD PRIMARY KEY (`contenido_categoria_id`);

--
-- Indices de la tabla `x_cupon`
--
ALTER TABLE `x_cupon`
  ADD PRIMARY KEY (`cupon_id`);

--
-- Indices de la tabla `x_documento`
--
ALTER TABLE `x_documento`
  ADD PRIMARY KEY (`documento_id`),
  ADD KEY `FK_DOCUMENTO_CATEGORIA` (`documento_categoria_id`);

--
-- Indices de la tabla `x_documento_categoria`
--
ALTER TABLE `x_documento_categoria`
  ADD PRIMARY KEY (`documento_categoria_id`);

--
-- Indices de la tabla `x_documento_categoria_grupo_usuario`
--
ALTER TABLE `x_documento_categoria_grupo_usuario`
  ADD PRIMARY KEY (`documento_categoria_id`,`grupo_usuario_id`),
  ADD KEY `documento_categoria_id` (`documento_categoria_id`),
  ADD KEY `grupo_usuario_id` (`grupo_usuario_id`);

--
-- Indices de la tabla `x_documento_grupo_usuario`
--
ALTER TABLE `x_documento_grupo_usuario`
  ADD PRIMARY KEY (`documento_id`,`grupo_usuario_id`),
  ADD KEY `documento_id` (`documento_id`),
  ADD KEY `grupo_usuario_id` (`grupo_usuario_id`);

--
-- Indices de la tabla `x_epago`
--
ALTER TABLE `x_epago`
  ADD PRIMARY KEY (`epago_id`),
  ADD KEY `FK_X_EPAGO_FORMA_PAGO` (`forma_pago_id`);

--
-- Indices de la tabla `x_epago_item`
--
ALTER TABLE `x_epago_item`
  ADD KEY `FK_X_EPAGO` (`epago_id`),
  ADD KEY `FK_EPAGO_ITEM_PRODUCTO` (`producto_id`);

--
-- Indices de la tabla `x_evento`
--
ALTER TABLE `x_evento`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `FK_EVENTO_CATEGORIA` (`evento_categoria_id`);

--
-- Indices de la tabla `x_evento_categoria`
--
ALTER TABLE `x_evento_categoria`
  ADD PRIMARY KEY (`evento_categoria_id`);

--
-- Indices de la tabla `x_forma_pago`
--
ALTER TABLE `x_forma_pago`
  ADD PRIMARY KEY (`forma_pago_id`);

--
-- Indices de la tabla `x_formulario`
--
ALTER TABLE `x_formulario`
  ADD PRIMARY KEY (`formulario_id`);

--
-- Indices de la tabla `x_formulario_contacto`
--
ALTER TABLE `x_formulario_contacto`
  ADD PRIMARY KEY (`formulario_contacto_id`);

--
-- Indices de la tabla `x_formulario_cotizacion`
--
ALTER TABLE `x_formulario_cotizacion`
  ADD PRIMARY KEY (`formulario_cotizacion_id`);

--
-- Indices de la tabla `x_formulario_especiales`
--
ALTER TABLE `x_formulario_especiales`
  ADD PRIMARY KEY (`formulario_especiales_id`);

--
-- Indices de la tabla `x_formulario_postventa`
--
ALTER TABLE `x_formulario_postventa`
  ADD PRIMARY KEY (`formulario_postventa_id`);

--
-- Indices de la tabla `x_formulario_reserva`
--
ALTER TABLE `x_formulario_reserva`
  ADD PRIMARY KEY (`formulario_reserva_id`);

--
-- Indices de la tabla `x_formulario_soporte`
--
ALTER TABLE `x_formulario_soporte`
  ADD PRIMARY KEY (`formulario_soporte_id`);

--
-- Indices de la tabla `x_galeria`
--
ALTER TABLE `x_galeria`
  ADD PRIMARY KEY (`galeria_id`),
  ADD KEY `FK_GALERIA_CATEGORIA` (`galeria_categoria_id`);

--
-- Indices de la tabla `x_galeria_categoria`
--
ALTER TABLE `x_galeria_categoria`
  ADD PRIMARY KEY (`galeria_categoria_id`);

--
-- Indices de la tabla `x_glosario`
--
ALTER TABLE `x_glosario`
  ADD PRIMARY KEY (`glosario_id`),
  ADD KEY `FK_GLOSARIO_CATEGORIA` (`glosario_categoria_id`);

--
-- Indices de la tabla `x_glosario_categoria`
--
ALTER TABLE `x_glosario_categoria`
  ADD PRIMARY KEY (`glosario_categoria_id`);

--
-- Indices de la tabla `x_grupo_codigos`
--
ALTER TABLE `x_grupo_codigos`
  ADD PRIMARY KEY (`grupo_id`);

--
-- Indices de la tabla `x_grupo_usuario`
--
ALTER TABLE `x_grupo_usuario`
  ADD PRIMARY KEY (`grupo_usuario_id`);

--
-- Indices de la tabla `x_mapa`
--
ALTER TABLE `x_mapa`
  ADD PRIMARY KEY (`mapa_id`);

--
-- Indices de la tabla `x_marca`
--
ALTER TABLE `x_marca`
  ADD PRIMARY KEY (`marca_id`);

--
-- Indices de la tabla `x_menu`
--
ALTER TABLE `x_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indices de la tabla `x_menu_seccion`
--
ALTER TABLE `x_menu_seccion`
  ADD PRIMARY KEY (`menu_id`,`seccion_id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `seccion_id` (`seccion_id`);

--
-- Indices de la tabla `x_modulo`
--
ALTER TABLE `x_modulo`
  ADD PRIMARY KEY (`modulo_id`);

--
-- Indices de la tabla `x_noticia`
--
ALTER TABLE `x_noticia`
  ADD PRIMARY KEY (`noticia_id`);

--
-- Indices de la tabla `x_noticia_tag`
--
ALTER TABLE `x_noticia_tag`
  ADD PRIMARY KEY (`noticia_tag_id`);

--
-- Indices de la tabla `x_noticia_tag_noticia`
--
ALTER TABLE `x_noticia_tag_noticia`
  ADD PRIMARY KEY (`noticia_tag_id`,`noticia_id`),
  ADD KEY `FK_TAG_NOTICIA_TAG` (`noticia_tag_id`),
  ADD KEY `FK_TAG_NOTICIA` (`noticia_id`);

--
-- Indices de la tabla `x_parametros`
--
ALTER TABLE `x_parametros`
  ADD PRIMARY KEY (`parametros_id`);

--
-- Indices de la tabla `x_permiso_grupo`
--
ALTER TABLE `x_permiso_grupo`
  ADD KEY `FK_X_PERMISO_MODULO` (`modulo_id`),
  ADD KEY `FK_X_PERMISO_GRUPO_USUARIO` (`grupo_usuario_id`);

--
-- Indices de la tabla `x_peso_envio`
--
ALTER TABLE `x_peso_envio`
  ADD PRIMARY KEY (`peso_envio_id`);

--
-- Indices de la tabla `x_portafolio`
--
ALTER TABLE `x_portafolio`
  ADD PRIMARY KEY (`portafolio_id`),
  ADD KEY `FK_portafolio_CATEGORIA` (`portafolio_categoria_id`);

--
-- Indices de la tabla `x_portafolio_categoria`
--
ALTER TABLE `x_portafolio_categoria`
  ADD PRIMARY KEY (`portafolio_categoria_id`);

--
-- Indices de la tabla `x_producto`
--
ALTER TABLE `x_producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `FK_PRODUCTO_MARCA` (`marca_id`),
  ADD KEY `FK_PRODUCTO_CATEGORIA` (`producto_categoria_id`);

--
-- Indices de la tabla `x_producto_atributo`
--
ALTER TABLE `x_producto_atributo`
  ADD PRIMARY KEY (`producto_atributo_id`),
  ADD KEY `FK_PRODUCTO_ATRIBUTO_CATEGORIA` (`producto_atributo_categoria_id`);

--
-- Indices de la tabla `x_producto_atributo_categoria`
--
ALTER TABLE `x_producto_atributo_categoria`
  ADD PRIMARY KEY (`producto_atributo_categoria_id`);

--
-- Indices de la tabla `x_producto_atributo_producto`
--
ALTER TABLE `x_producto_atributo_producto`
  ADD PRIMARY KEY (`producto_id`,`producto_atributo_id`),
  ADD KEY `FK_X_PRODUCTO_ATRIBUTO_PRODUCTO` (`producto_atributo_id`);

--
-- Indices de la tabla `x_producto_categoria`
--
ALTER TABLE `x_producto_categoria`
  ADD PRIMARY KEY (`producto_categoria_id`);

--
-- Indices de la tabla `x_provincia`
--
ALTER TABLE `x_provincia`
  ADD PRIMARY KEY (`provincia_id`);

--
-- Indices de la tabla `x_punto`
--
ALTER TABLE `x_punto`
  ADD PRIMARY KEY (`punto_id`),
  ADD KEY `FK_X_PUNTO_PUNTO_CATEGORIA` (`punto_categoria_id`);

--
-- Indices de la tabla `x_punto_categoria`
--
ALTER TABLE `x_punto_categoria`
  ADD PRIMARY KEY (`punto_categoria_id`);

--
-- Indices de la tabla `x_punto_mapa`
--
ALTER TABLE `x_punto_mapa`
  ADD PRIMARY KEY (`punto_id`,`mapa_id`),
  ADD KEY `FK_PUNTO_MAPA_MAPA` (`mapa_id`),
  ADD KEY `FK_PUNTO_MAPA_PUNTO` (`punto_id`);

--
-- Indices de la tabla `x_seccion`
--
ALTER TABLE `x_seccion`
  ADD PRIMARY KEY (`seccion_id`);

--
-- Indices de la tabla `x_seccion_grupo_usuario`
--
ALTER TABLE `x_seccion_grupo_usuario`
  ADD PRIMARY KEY (`seccion_id`,`grupo_usuario_id`),
  ADD KEY `seccion_id` (`seccion_id`),
  ADD KEY `grupo_usuario_id` (`grupo_usuario_id`);

--
-- Indices de la tabla `x_slideshow`
--
ALTER TABLE `x_slideshow`
  ADD PRIMARY KEY (`slideshow_id`),
  ADD KEY `FK_X_CATEGORIA_SLIDESHOW` (`slideshow_categoria_id`);

--
-- Indices de la tabla `x_slideshow_categoria`
--
ALTER TABLE `x_slideshow_categoria`
  ADD PRIMARY KEY (`slideshow_categoria_id`);

--
-- Indices de la tabla `x_super_permiso`
--
ALTER TABLE `x_super_permiso`
  ADD PRIMARY KEY (`modulo_id`,`grupo_usuario_id`,`contenido_id`),
  ADD KEY `FK_X_SUPER_PERMISO_MODULO` (`modulo_id`),
  ADD KEY `FK_X_SUPER_PERMISO_GRUPO_USUARIO` (`grupo_usuario_id`);

--
-- Indices de la tabla `x_user_recovery`
--
ALTER TABLE `x_user_recovery`
  ADD PRIMARY KEY (`user_recovery_id`);

--
-- Indices de la tabla `x_usuario`
--
ALTER TABLE `x_usuario`
  ADD PRIMARY KEY (`usuario_nombre`),
  ADD KEY `FK_X_GRUPO_USUARIO` (`grupo_usuario_id`);

--
-- Indices de la tabla `x_video`
--
ALTER TABLE `x_video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `FK_VIDEO_CATEGORIA` (`video_categoria_id`);

--
-- Indices de la tabla `x_video_categoria`
--
ALTER TABLE `x_video_categoria`
  ADD PRIMARY KEY (`video_categoria_id`);

--
-- Indices de la tabla `x_visitante_online`
--
ALTER TABLE `x_visitante_online`
  ADD PRIMARY KEY (`visitante_online_timestamp`);

--
-- Indices de la tabla `x_zona_envio`
--
ALTER TABLE `x_zona_envio`
  ADD PRIMARY KEY (`zona_envio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `x_asesor_comercial`
--
ALTER TABLE `x_asesor_comercial`
  ADD CONSTRAINT `FK_ASESOR_COMERCIAL_CATEGORIA` FOREIGN KEY (`asesor_comercial_categoria_id`) REFERENCES `x_asesor_comercial_categoria` (`asesor_comercial_categoria_id`);

--
-- Filtros para la tabla `x_ciudad`
--
ALTER TABLE `x_ciudad`
  ADD CONSTRAINT `FK_CIUDAD_PROVINCIA` FOREIGN KEY (`provincia_id`) REFERENCES `x_provincia` (`provincia_id`);

--
-- Filtros para la tabla `x_contenido`
--
ALTER TABLE `x_contenido`
  ADD CONSTRAINT `FK_X_CATEGORIA_CONTENIDO` FOREIGN KEY (`contenido_categoria_id`) REFERENCES `x_contenido_categoria` (`contenido_categoria_id`);

--
-- Filtros para la tabla `x_documento`
--
ALTER TABLE `x_documento`
  ADD CONSTRAINT `FK_DOCUMENTO_CATEGORIA` FOREIGN KEY (`documento_categoria_id`) REFERENCES `x_documento_categoria` (`documento_categoria_id`);

--
-- Filtros para la tabla `x_documento_categoria_grupo_usuario`
--
ALTER TABLE `x_documento_categoria_grupo_usuario`
  ADD CONSTRAINT `FK_X_DOCCAT_GRUPO_USUARIO` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `x_grupo_usuario` (`grupo_usuario_id`),
  ADD CONSTRAINT `FX_X_DOCCAT_CATEGORIA` FOREIGN KEY (`documento_categoria_id`) REFERENCES `x_documento_categoria` (`documento_categoria_id`);

--
-- Filtros para la tabla `x_documento_grupo_usuario`
--
ALTER TABLE `x_documento_grupo_usuario`
  ADD CONSTRAINT `FK_X_DOC_GRUPO_USUARIO` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `x_grupo_usuario` (`grupo_usuario_id`),
  ADD CONSTRAINT `FX_X_DOC_DOCUMENTO` FOREIGN KEY (`documento_id`) REFERENCES `x_documento` (`documento_id`);

--
-- Filtros para la tabla `x_epago`
--
ALTER TABLE `x_epago`
  ADD CONSTRAINT `FK_X_EPAGO_FORMA_PAGO` FOREIGN KEY (`forma_pago_id`) REFERENCES `x_forma_pago` (`forma_pago_id`);

--
-- Filtros para la tabla `x_epago_item`
--
ALTER TABLE `x_epago_item`
  ADD CONSTRAINT `FK_EPAGO_ITEM_PRODUCTO` FOREIGN KEY (`producto_id`) REFERENCES `x_producto` (`producto_id`),
  ADD CONSTRAINT `FK_X_EPAGO` FOREIGN KEY (`epago_id`) REFERENCES `x_epago` (`epago_id`);

--
-- Filtros para la tabla `x_evento`
--
ALTER TABLE `x_evento`
  ADD CONSTRAINT `FK_EVENTO_CATEGORIA` FOREIGN KEY (`evento_categoria_id`) REFERENCES `x_evento_categoria` (`evento_categoria_id`);

--
-- Filtros para la tabla `x_galeria`
--
ALTER TABLE `x_galeria`
  ADD CONSTRAINT `FK_GALERIA_CATEGORIA` FOREIGN KEY (`galeria_categoria_id`) REFERENCES `x_galeria_categoria` (`galeria_categoria_id`);

--
-- Filtros para la tabla `x_glosario`
--
ALTER TABLE `x_glosario`
  ADD CONSTRAINT `FK_GLOSARIO_CATEGORIA` FOREIGN KEY (`glosario_categoria_id`) REFERENCES `x_glosario_categoria` (`glosario_categoria_id`);

--
-- Filtros para la tabla `x_menu_seccion`
--
ALTER TABLE `x_menu_seccion`
  ADD CONSTRAINT `FK_X_MENU_SECCION1` FOREIGN KEY (`menu_id`) REFERENCES `x_menu` (`menu_id`),
  ADD CONSTRAINT `FX_X_SECCION` FOREIGN KEY (`seccion_id`) REFERENCES `x_seccion` (`seccion_id`);

--
-- Filtros para la tabla `x_noticia_tag_noticia`
--
ALTER TABLE `x_noticia_tag_noticia`
  ADD CONSTRAINT `FK_TAG_NOTICIA` FOREIGN KEY (`noticia_id`) REFERENCES `x_noticia` (`noticia_id`),
  ADD CONSTRAINT `FK_TAG_NOTICIA_TAG` FOREIGN KEY (`noticia_tag_id`) REFERENCES `x_noticia_tag` (`noticia_tag_id`);

--
-- Filtros para la tabla `x_permiso_grupo`
--
ALTER TABLE `x_permiso_grupo`
  ADD CONSTRAINT `FK_X_PERMISO_GRUPO_USUARIO` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `x_grupo_usuario` (`grupo_usuario_id`),
  ADD CONSTRAINT `FK_X_PERMISO_MODULO` FOREIGN KEY (`modulo_id`) REFERENCES `x_modulo` (`modulo_id`);

--
-- Filtros para la tabla `x_portafolio`
--
ALTER TABLE `x_portafolio`
  ADD CONSTRAINT `FK_portafolio_CATEGORIA` FOREIGN KEY (`portafolio_categoria_id`) REFERENCES `x_portafolio_categoria` (`portafolio_categoria_id`);

--
-- Filtros para la tabla `x_producto`
--
ALTER TABLE `x_producto`
  ADD CONSTRAINT `FK_PRODUCTO_CATEGORIA` FOREIGN KEY (`producto_categoria_id`) REFERENCES `x_producto_categoria` (`producto_categoria_id`),
  ADD CONSTRAINT `FK_PRODUCTO_MARCA` FOREIGN KEY (`marca_id`) REFERENCES `x_marca` (`marca_id`);

--
-- Filtros para la tabla `x_producto_atributo`
--
ALTER TABLE `x_producto_atributo`
  ADD CONSTRAINT `FK_PRODUCTO_ATRIBUTO_CATEGORIA` FOREIGN KEY (`producto_atributo_categoria_id`) REFERENCES `x_producto_atributo_categoria` (`producto_atributo_categoria_id`);

--
-- Filtros para la tabla `x_producto_atributo_producto`
--
ALTER TABLE `x_producto_atributo_producto`
  ADD CONSTRAINT `FK_X_PRODUCTO_ATRIBUTO_PRODUCTO` FOREIGN KEY (`producto_atributo_id`) REFERENCES `x_producto_atributo` (`producto_atributo_id`),
  ADD CONSTRAINT `FX_X_PRODUCTO_ATRIBUTO` FOREIGN KEY (`producto_id`) REFERENCES `x_producto` (`producto_id`);

--
-- Filtros para la tabla `x_punto`
--
ALTER TABLE `x_punto`
  ADD CONSTRAINT `FK_X_PUNTO_PUNTO_CATEGORIA` FOREIGN KEY (`punto_categoria_id`) REFERENCES `x_punto_categoria` (`punto_categoria_id`);

--
-- Filtros para la tabla `x_punto_mapa`
--
ALTER TABLE `x_punto_mapa`
  ADD CONSTRAINT `FK_PUNTO_MAPA_MAPA` FOREIGN KEY (`mapa_id`) REFERENCES `x_mapa` (`mapa_id`),
  ADD CONSTRAINT `FK_PUNTO_MAPA_PUNTO` FOREIGN KEY (`punto_id`) REFERENCES `x_punto` (`punto_id`);

--
-- Filtros para la tabla `x_seccion_grupo_usuario`
--
ALTER TABLE `x_seccion_grupo_usuario`
  ADD CONSTRAINT `FK_X_SECCION_GRUPO_USUARIO` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `x_grupo_usuario` (`grupo_usuario_id`),
  ADD CONSTRAINT `FX_X_SECCION1` FOREIGN KEY (`seccion_id`) REFERENCES `x_seccion` (`seccion_id`);

--
-- Filtros para la tabla `x_slideshow`
--
ALTER TABLE `x_slideshow`
  ADD CONSTRAINT `FK_X_CATEGORIA_SLIDESHOW` FOREIGN KEY (`slideshow_categoria_id`) REFERENCES `x_slideshow_categoria` (`slideshow_categoria_id`);

--
-- Filtros para la tabla `x_super_permiso`
--
ALTER TABLE `x_super_permiso`
  ADD CONSTRAINT `FK_X_SUPER_PERMISO_GRUPO_USUARIO` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `x_grupo_usuario` (`grupo_usuario_id`),
  ADD CONSTRAINT `FK_X_SUPER_PERMISO_MODULO` FOREIGN KEY (`modulo_id`) REFERENCES `x_modulo` (`modulo_id`);

--
-- Filtros para la tabla `x_usuario`
--
ALTER TABLE `x_usuario`
  ADD CONSTRAINT `FK_X_GRUPO_USUARIO` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `x_grupo_usuario` (`grupo_usuario_id`);

--
-- Filtros para la tabla `x_video`
--
ALTER TABLE `x_video`
  ADD CONSTRAINT `FK_VIDEO_CATEGORIA` FOREIGN KEY (`video_categoria_id`) REFERENCES `x_video_categoria` (`video_categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
