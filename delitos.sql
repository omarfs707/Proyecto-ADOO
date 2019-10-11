-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: proyectodelitos
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `condenas`
--

DROP TABLE IF EXISTS `condenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condenas` (
  `idcondenas` int(3) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `duracion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idcondenas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condenas`
--

LOCK TABLES `condenas` WRITE;
/*!40000 ALTER TABLE `condenas` DISABLE KEYS */;
INSERT INTO `condenas` VALUES (501,'PRISION','GRAVE','5+ anios'),(502,'INHABILITACION ABSOLUTA','GRAVE','INDEFINIDO'),(503,'INHABILITACION ESPECIAL','GRAVE','5+ anios'),(504,'SUSPENSION DE EMPLEO','GRAVE','5+ anios'),(505,'PRIVACION DE CONDUCIR VEHICULOS','GRAVE','5+ anios'),(506,'PRIVACION DE PORTAR ARMAS','GRAVE','5+ anios'),(507,'PRIVACION DE RESIDIR EN LUGARES','GRAVE','5+ anios'),(508,'PROHIBICION DE APROXIMARSE A VICTIMA','GRAVE','5+ anios'),(509,'PROHIBICION DE COMUNICARSE A VICTIMA','GRAVE','5+ anios'),(510,'PRIVACION DE LA PATRIA PROTESTAD','GRAVE','5+ anios'),(511,'PRISION','MENOS GRAVE','hasta 5 anios'),(512,'INHABILITACION ESPECIAL','MENOS GRAVE','hasta 5 anios'),(513,'SUSPENSION DE EMPLEO','MENOS GRAVE','hasta 5 anios'),(514,'PRIVACION DE CONDUCIR VEHICULOS','MENOS GRAVE','hasta 8 anios'),(515,'PRIVACION DE PORTAR ARMAS','MENOS GRAVE','hasta 8 anios'),(516,'PRIVACION DE RESIDIR EN LUGARES','MENOS GRAVE','hasta 5 anios'),(517,'PROHIBICION DE APROXIMARSE A VICTIMA','MENOS GRAVE','hasta 5 anios'),(518,'PROHIBICiON DE COMUNICARSE A VICTIMA','MENOS GRAVE','hasta 5 anios'),(519,'MULTA','MENOS GRAVE','2 meses +'),(520,'MULTA PROPORCIONAL','MENOS GRAVE','INDEFINIDO'),(521,'TRABAJO COMUNITARIO','MENOS GRAVE','hasta 180 dias'),(522,'LOCALIZACION PERMANENTE','MENOS GRAVE','hasta 6 meses'),(523,'PRIVACION DE CONDUCIR VEHICULOS','PENAS LEYES','hasta 1 anio'),(524,'PRIVACION DE PORTAR ARMAS','PENAS LEYES','hasta 6 meses'),(525,'PRIVACION DE RESIDIR EN LUGARES','PENAS LEYES','hasta 6 meses'),(526,'PROHIBICION DE APROXIMARSE A VICTIMA','PENAS LEYES','hasta 6 meses'),(527,'PROHIBICION DE COMUNICARSE A VICTIMA','PENAS LEYES','hasta 6 meses'),(528,'MULTA','PENAS LEYES','hasta 2 meses'),(529,'LOCALIZACION PERMANENTE','PENAS LEYES','hasta 3 meses'),(530,'TRABAJO COMUNITARIO','PENAS LEYES','hasta 30 dias');
/*!40000 ALTER TABLE `condenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delincuente`
--

DROP TABLE IF EXISTS `delincuente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delincuente` (
  `iddelincuente` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(2) NOT NULL,
  PRIMARY KEY (`iddelincuente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delincuente`
--

LOCK TABLES `delincuente` WRITE;
/*!40000 ALTER TABLE `delincuente` DISABLE KEYS */;
INSERT INTO `delincuente` VALUES (201,'OSCAR','PEDROZA MURILLO',26),(202,'BRAYAN ALEJANDRO','PEREZ MARTINEZ',23),(203,'ITZEL','GARCIA ORDAZ',18),(204,'JESSICA','NIETO LUNA',16),(205,'MAYRA ALEJANDRA','HERNANDEZ RIVERO',35),(206,'OMAR YAIR','LIMON FLORES',30),(207,'ERICKA','FERNANDEZ DE LA O',40),(208,'MARTHA BRITANY','SANTOS DIAZ',25),(209,'LEZLY LAURA','DIAZ GOMEZ',25),(210,'GUSTAVO ADOLFO','LIRA LOZANO',28),(211,'JAFET JONATHAN','INIESTA RAMIREZ',31),(212,'ALEXIS','JUAREZ BENITEZ',32),(213,'DULCE MARIA','FLORES SANTOS',46),(214,'RICARDO','GARCIA HERNANDEZ',54),(215,'YAEL OMAR','CORREA DOMINGUEZ',17),(216,'ARMANDO','RAMIREZ TOLEDO',19),(217,'MARIA DEL ROCIO','ALVAREZ GUERRERO',20),(218,'JENNIFER','VIVEROS GARCIA',26),(219,'JENNIFER ALEJANDRA','VIVEROS LARA',22),(220,'CARLOS BRAYAN','JIMENEZ ALTAMIRANO',20),(221,'VICTOR','GALVAN RIVAS',19),(222,'TOMAS','FLORES GONZALEZ',19),(223,'MARGARITA','DORANTES NUNO',24),(224,'PEDRO','REYES SANTOS',33),(225,'EDWIN ARMANDO','ARCINIEGA ISLAS',18),(226,'INGRID','ORTIZ SANCHEZ',27),(227,'MARIO ALBERTO','MIRANDA ROGRIGUEZ',50),(228,'JUAN ALBERTO','DOMINGUEZ PEREZ',41),(229,'AURORA','RAMIREZ JUAREZ',28),(230,'ALEXIA FERNANDA','PADILLA SAENZ',32),(231,'BRAYAN','AGUILAR HERNANDEZ',30),(232,'LETICIA','BORJAS SANTOS',23),(233,'YATZURI SARAHI','OLIVEROS PINEDA',20),(234,'AMERICA','LANDEROS ZEMPOALTECATL',26),(235,'JESSICA ALEJANDRA','TORRES SALCEDO',49);
/*!40000 ALTER TABLE `delincuente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delito`
--

DROP TABLE IF EXISTS `delito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delito` (
  `iddelito` int(2) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`iddelito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delito`
--

LOCK TABLES `delito` WRITE;
/*!40000 ALTER TABLE `delito` DISABLE KEYS */;
INSERT INTO `delito` VALUES (10,'HOMICIDIO','CONTRA LA VIDA Y LA SALUD'),(11,'FEMINICIDIO','CONTRA LA VIDA Y LA SALUD'),(12,'LESIONES','CONTRA LA VIDA Y LA SALUD'),(13,'RIÑA','CONTRA LA VIDA Y LA SALUD'),(14,'CONTAGIO','CONTRA LA VIDA Y LA SALUD'),(15,'ABORTO','CONTRA LA VIDA Y LA SALUD'),(16,'OMISION DE AUXILIO','CONTRA LA VIDA Y LA SALUD'),(17,'OMISION DE CUIDADO','CONTRA LA VIDA Y LA SALUD'),(18,'PRIVACION DE LA LIBERTAD','CONTRA LA LIBERTAD'),(19,'SECUESTRO','CONTRA LA LIBERTAD'),(20,'SECUESTRO POR COLABORACION','CONTRA LA LIBERTAD'),(21,'RAPTO','CONTRA LA LIBERTAD'),(22,'SIMULACION DE SECUESTRO','CONTRA LA LIBERTAD'),(23,'RAPTO CON VIOLENCIA','CONTRA LA LIBERTAD'),(24,'PRIVACION DE LIBERTAD LABORAL','CONTRA LA LIBERTAD'),(25,'AMENAZA','CONTRA LA PAZ Y LA SEGURIDAD DE LAS PERSONAS'),(26,'ASALTO','CONTRA LA PAZ Y LA SEGURIDAD DE LAS PERSONAS'),(27,'ALLANAMIENTO DE MORADA','CONTRA LA INVIOLABILIDAD DEL DOMICILIO'),(28,'VIOLACION DE INTIMIDAD PERSONAL','CONTRA LA INVIOLABILIDAD DEL DOMICILIO'),(29,'REVELACION DE SECRETOS','CONTRA LA INVIOLABILIDAD DEL DOMICILIO'),(30,'VIOLACION','CONTRA LA LIBERTAD SEXUAL'),(31,'ABUSO SEXUAL','CONTRA LA LIBERTAD SEXUAL'),(32,'ESTUPRO','CONTRA LA LIBERTAD SEXUAL'),(33,'ACOSO SEXUAL','CONTRA LA LIBERTAD SEXUAL'),(34,'ROBO','CONTRA EL PATRIMONIO'),(35,'ROBO DE VEHICULO','CONTRA EL PATRIMONIO'),(36,'ROBO BANCARIO','CONTRA EL PATRIMONIO'),(37,'ABUSO DE CONFIANZA','CONTRA EL PATRIMONIO'),(38,'FRAUDE','CONTRA EL PATRIMONIO'),(39,'DELITO INFROMATICO','CONTRA EL PATRIMONIO'),(40,'DESPOJO','CONTRA EL PATRIMONIO'),(41,'DAÑOS','CONTRA EL PATRIMONIO'),(42,'EXTORSION','CONTRA EL PATRIMONIO'),(43,'INCUMPLIMIENTO DE OBLIGACIONES','CONTRA LA FAMILIA'),(44,'VIOLENCIA FAMILIAR','CONTRA LA FAMILIA'),(45,'SUSTRACCION DE MENORES','CONTRA LA FAMILIA'),(46,'TRAFICO DE MENORES','CONTRA LA FAMILIA'),(47,'DISPARO DE ARMA DE FUEGO','CONTRA LA SOCIEDAD'),(48,'VENTA ILICITA DE BEBIDAD ALCOHOLICAS','CONTRA LA SOCIEDAD'),(49,'VANDALIZACION','CONTRA LA SOCIEDAD'),(50,'PORNOGRAFIA','CONTRA LA SOCIEDAD'),(51,'PROSTITUCION','CONTRA LA SOCIEDAD'),(52,'DELITO ELECTORAL','CONTRA EL ESTADO'),(53,'CORRUPCION','CONTRA EL ESTADO'),(54,'SOBORNO','CONTRA EL ESTADO'),(55,'VENTA DE NARCOTICOS','CONTRA EL ESTADO');
/*!40000 ALTER TABLE `delito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delito_lugar`
--

DROP TABLE IF EXISTS `delito_lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delito_lugar` (
  `iddelitos` int(2) NOT NULL,
  `idlugar` int(2) NOT NULL,
  PRIMARY KEY (`iddelitos`,`idlugar`),
  KEY `idlugar_idx` (`idlugar`),
  CONSTRAINT `iddelitos` FOREIGN KEY (`iddelitos`) REFERENCES `delito` (`iddelito`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idlugar` FOREIGN KEY (`idlugar`) REFERENCES `lugarpeligroso_estado` (`idlugarpeligroso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delito_lugar`
--

LOCK TABLES `delito_lugar` WRITE;
/*!40000 ALTER TABLE `delito_lugar` DISABLE KEYS */;
INSERT INTO `delito_lugar` VALUES (11,10),(20,10),(23,10),(24,10),(26,10),(42,11),(37,12),(11,15),(11,16),(14,16),(42,16),(14,17),(23,17),(28,17),(24,18),(42,19),(24,20),(11,21),(15,21),(26,21),(15,22),(18,23),(15,24),(17,25),(26,25),(15,26),(24,26),(17,28),(18,28),(20,28),(21,29),(18,30),(37,31),(18,33),(27,36),(26,39),(26,40),(11,41),(18,42),(27,42),(34,42);
/*!40000 ALTER TABLE `delito_lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delito_tecnica`
--

DROP TABLE IF EXISTS `delito_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delito_tecnica` (
  `iddelitos` int(2) NOT NULL,
  `idtec` int(3) NOT NULL,
  PRIMARY KEY (`iddelitos`,`idtec`),
  KEY `idtec_idx` (`idtec`),
  CONSTRAINT `idelitos` FOREIGN KEY (`iddelitos`) REFERENCES `delito` (`iddelito`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idtec` FOREIGN KEY (`idtec`) REFERENCES `tecnica` (`idtecnica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delito_tecnica`
--

LOCK TABLES `delito_tecnica` WRITE;
/*!40000 ALTER TABLE `delito_tecnica` DISABLE KEYS */;
INSERT INTO `delito_tecnica` VALUES (11,101),(18,101),(19,101),(22,101),(24,101),(25,101),(29,101),(50,101),(11,102),(25,102),(28,102),(29,102),(31,102),(33,102),(50,102),(16,103),(18,103),(20,103),(23,103),(27,103),(19,104),(21,104),(27,104),(37,104),(42,104),(44,104),(47,104),(51,104),(11,105),(31,105),(50,105),(51,105),(46,106),(48,106),(51,106),(10,107),(12,107),(13,107),(16,107),(17,107),(23,107),(26,107),(33,107),(34,107),(35,107),(36,107),(44,107),(39,108),(55,108),(39,109),(47,109),(55,109),(46,110),(49,110),(55,110),(34,111),(55,111),(32,112),(38,112),(50,112),(53,112),(54,112),(55,112),(55,113),(16,114),(17,114),(40,114),(45,114),(15,115),(46,115),(52,115);
/*!40000 ALTER TABLE `delito_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detencion`
--

DROP TABLE IF EXISTS `detencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detencion` (
  `iddetencion` int(3) NOT NULL,
  `fecha` date NOT NULL,
  `delincuente` int(5) NOT NULL,
  `reclusorio` int(5) NOT NULL,
  `delito` int(5) NOT NULL,
  `condena` int(5) NOT NULL,
  `derechofianza` int(10) DEFAULT NULL,
  PRIMARY KEY (`iddetencion`),
  KEY `iddelincuente_idx` (`delincuente`),
  KEY `idreclusorio_idx` (`reclusorio`),
  KEY `iddelito_idx` (`delito`),
  KEY `idcondena_idx` (`condena`),
  CONSTRAINT `idcondenas` FOREIGN KEY (`condena`) REFERENCES `condenas` (`idcondenas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iddelincuente` FOREIGN KEY (`delincuente`) REFERENCES `delincuente` (`iddelincuente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iddelito` FOREIGN KEY (`delito`) REFERENCES `delito` (`iddelito`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idreclusorio` FOREIGN KEY (`reclusorio`) REFERENCES `prision` (`idreclusorio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detencion`
--

LOCK TABLES `detencion` WRITE;
/*!40000 ALTER TABLE `detencion` DISABLE KEYS */;
INSERT INTO `detencion` VALUES (1,'2018-03-25',201,2010,10,501,2000000),(2,'2018-05-26',206,2024,15,510,25000),(3,'2007-11-15',234,2028,20,526,0),(4,'2014-01-01',233,2032,26,508,5000),(5,'2018-02-23',221,2030,36,521,0),(6,'2016-07-07',224,2013,54,506,0),(7,'2015-12-30',209,2027,51,511,10000000),(8,'2011-09-01',218,2025,41,523,100000),(9,'2018-04-30',216,2035,26,513,0),(10,'2008-03-31',207,2019,27,522,2500),(11,'2014-10-05',209,2019,18,521,3000000),(12,'2003-06-25',215,2029,11,528,0),(13,'2010-08-21',214,2039,12,530,15300),(14,'2000-07-15',219,2026,16,502,60520),(15,'2010-09-09',222,2014,23,513,150000),(16,'2013-01-14',223,2030,33,521,0),(17,'2018-04-04',225,2029,41,528,12620),(18,'2016-10-29',235,2025,51,504,2500000),(19,'2017-07-23',231,2016,50,512,0),(20,'2015-12-24',220,2017,49,506,350000),(21,'2018-06-20',230,2026,45,503,0),(22,'2007-07-24',231,2010,31,529,0),(23,'2009-05-04',211,2018,30,511,10000000),(24,'2018-11-11',205,2019,20,522,260700),(25,'2018-06-17',227,2038,21,526,140000),(26,'2015-03-16',228,2037,14,516,18000),(27,'2013-08-22',204,2029,13,528,12000),(28,'2016-05-01',203,2029,52,519,0),(29,'2015-06-25',233,2025,53,523,0),(30,'2006-04-29',228,2037,12,516,30000),(31,'2013-07-12',226,2026,52,502,0),(32,'2011-05-11',224,2033,41,527,26450),(33,'2010-03-29',206,2018,36,526,0),(34,'2018-07-28',202,2011,34,504,120000),(35,'2018-01-06',208,2019,37,502,450000),(36,'2017-09-21',204,2029,27,519,26000),(37,'2015-06-15',207,2027,17,530,17580),(38,'2014-12-13',206,2015,18,524,600000),(39,'2018-07-16',233,2025,10,529,0),(40,'2018-06-21',213,2027,42,511,12000000);
/*!40000 ALTER TABLE `detencion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugarpeligroso_estado`
--

DROP TABLE IF EXISTS `lugarpeligroso_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugarpeligroso_estado` (
  `idlugarpeligroso` int(2) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idlugarpeligroso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugarpeligroso_estado`
--

LOCK TABLES `lugarpeligroso_estado` WRITE;
/*!40000 ALTER TABLE `lugarpeligroso_estado` DISABLE KEYS */;
INSERT INTO `lugarpeligroso_estado` VALUES (10,'AGUASCALIENTES'),(11,'BAJA CALIFORNIA'),(12,'BAJA CALIFORNIA SUR'),(13,'CAMPECHE'),(14,'COAHUILA'),(15,'COLIMA'),(16,'CHIAPAS'),(17,'CHIHUAHUA'),(18,'CIUDAD DE MEXICO'),(19,'DURANGO'),(20,'GUANAJUATO'),(21,'GUERRERO'),(22,'HIDALGO'),(23,'JALISCO'),(24,'MEXICO'),(25,'MICHOACAN'),(26,'MORELOS'),(27,'NAYARIT'),(28,'NUEVO LEON'),(29,'OAXACA'),(30,'PUEBLA'),(31,'QUERETARO'),(32,'QUINTANA ROO'),(33,'SAN LUIS POTOSI'),(34,'SINALOA'),(36,'TABASCO'),(37,'TAMAULIPAS'),(38,'TLAXCALA'),(39,'VERACRUZ'),(40,'YUCATAN'),(41,'ZACATECAS'),(42,'SONORA');
/*!40000 ALTER TABLE `lugarpeligroso_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugarpeligroso_municipio`
--

DROP TABLE IF EXISTS `lugarpeligroso_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugarpeligroso_municipio` (
  `idmunicipio` int(2) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `lugarmunicipio` int(2) NOT NULL,
  PRIMARY KEY (`idmunicipio`),
  KEY `lugarmunicipio_idx` (`lugarmunicipio`),
  CONSTRAINT `lugarmunicipio` FOREIGN KEY (`lugarmunicipio`) REFERENCES `lugarpeligroso_estado` (`idlugarpeligroso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugarpeligroso_municipio`
--

LOCK TABLES `lugarpeligroso_municipio` WRITE;
/*!40000 ALTER TABLE `lugarpeligroso_municipio` DISABLE KEYS */;
INSERT INTO `lugarpeligroso_municipio` VALUES (10,'ACAPULCO',21),(11,'TIJUANA',11),(12,'CIUDAD JUAREZ',17),(13,'ECATEPEC',24),(14,'MONTERREY',28),(15,'CIUDAD VICTORIA',37),(16,'CHILPANCINGO',21),(17,'IZTAPALAPA',18),(18,'MANZANILLO',15),(19,'NEZAHUALCOYOTL',24),(20,'TLALNEPANTLA',24),(21,'CHIMALHUACAN',24),(22,'NAUCALPAN',24),(23,'TECAMAC',24),(24,'IGUALA',21),(25,'ZIHUATANEJO',21),(26,'GUSTAVO A MADERO',18),(27,'CUAUHTEMOC',18),(28,'NUEVO LAREDO',37),(29,'LEON',20),(30,'GUADALAJARA',23),(31,'MAZATLAN',34),(32,'HERMOSILLO',42),(33,'CELAYA',20),(34,'APATZINGAN',26),(35,'TORREON',14),(36,'MEXICALI',27),(37,'CUERNAVACA',26),(38,'PUEBLA',30),(39,'ZAPOPAN',23);
/*!40000 ALTER TABLE `lugarpeligroso_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prision`
--

DROP TABLE IF EXISTS `prision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prision` (
  `idreclusorio` int(4) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`idreclusorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prision`
--

LOCK TABLES `prision` WRITE;
/*!40000 ALTER TABLE `prision` DISABLE KEYS */;
INSERT INTO `prision` VALUES (2010,'EL ALTIPLANO','SANTA JUANA CENTRO EDOMEX','CENTRO VARONIL'),(2011,'OCCIDENTE','PUENTE GRANDE, JALISCO','CENTRO VARONIL'),(2012,'NORESTE','MATAMOROS TAMAULIPAS','CENTRO VARONIL'),(2013,'NOROESTE','EL RINCON NAYARIT','CENTRO VARONIL'),(2014,'ORIENTE','VILLA ALDAMA VERACRUZ','CENTRO VARONIL'),(2015,'SURESTE','VILLA ESTACION CHONTALPA TABASCO','CENTRO VARONIL'),(2016,'NOR-NOROESTE','GUADALUPE VICTORIA DURANGO','CENTRO VARONIL'),(2017,'NOR-PONIENTE',' EJIDO LA CHUPARROSA SINALOA','CENTRO VARONIL'),(2018,'NORTE','CIUDAD JUAREZ CHIHUAHUA','CENTRO VARONIL'),(2019,'SANTA MARTHA ACATITLA','CDMX','CENTRO FEMENIL'),(2020,'R NORTE','CDMX','RECLUSORIO'),(2021,'R SUR','CDMX','RECLUSORIO'),(2022,'BARRIENTOS','EDOMEX','CENTRO PENAL'),(2023,'TOPO CHICO','MONTERREY NUEVO LEON','CENTRO PENAL'),(2024,'R ORIENTE','CDMX','RECLUSORIO'),(2025,'FEMENIL CERESO TAPACHULA','TAPACHULA CHIAPAS','CENTRO FEMENIL'),(2026,'FEMENIL CERESO 1','AQUILES SERDAN','CENTRO FEMENIL'),(2027,'FEMENIL CERESO 2','CHIHUAHUA CHIHUAHUA','CENTRO FEMENIL'),(2028,'REINSERCION SOCIAL TEPEPAN','XOCHIMILCO CDMX','CENTRO FEMENIL'),(2029,'TRIBUNAL DE MENORES INFRACTORES','SAN LUIS POTOSI','TUTELAR DE MENORES'),(2030,'CENTRO PENITENCIARIO','SALTILLO COAHUILA','CENTRO FEMENIL'),(2031,'CENTRO PENITENCIARIO','SALTILLO COAHUILA','CENTRO VARONIL'),(2032,'PIEDRAS NEGRAS',' PIEDRAS NEGRAS','CENTRO VARONIL'),(2033,'PREVENTIVO TECOMAN','COLIMA','RECLUSORIO'),(2034,'CANATLAN','DURANGO','CARCEL'),(2035,'CUENCAME','CUENCAME DURANGO','CARCEL'),(2036,'GUADALUPE VICTORIA','GDPE VICTORIA DURANGO','CARCEL'),(2037,'SN JUAN DEL RIO','SAN JUAN DEL RIO DURANGO','CARCEL'),(2038,'NAZAS','NAZAS DURANGO','CARCEL'),(2039,'CENTRO ESTATAL DE PREVENCION','CELAYA GUANAJUATO','CENTRO VARONIL');
/*!40000 ALTER TABLE `prision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prision_condenas`
--

DROP TABLE IF EXISTS `prision_condenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prision_condenas` (
  `idreclu` int(4) NOT NULL,
  `idcond` int(3) NOT NULL,
  PRIMARY KEY (`idreclu`,`idcond`),
  KEY `idcond` (`idcond`),
  CONSTRAINT `idcond` FOREIGN KEY (`idcond`) REFERENCES `condenas` (`idcondenas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idreclu` FOREIGN KEY (`idreclu`) REFERENCES `prision` (`idreclusorio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prision_condenas`
--

LOCK TABLES `prision_condenas` WRITE;
/*!40000 ALTER TABLE `prision_condenas` DISABLE KEYS */;
INSERT INTO `prision_condenas` VALUES (2010,501),(2011,501),(2014,501),(2015,501),(2016,501),(2018,501),(2020,501),(2021,501),(2023,501),(2026,501),(2027,501),(2010,502),(2011,502),(2014,502),(2019,502),(2026,502),(2011,503),(2012,503),(2015,503),(2019,503),(2024,503),(2026,503),(2027,503),(2011,504),(2025,504),(2011,505),(2013,505),(2017,505),(2013,506),(2016,506),(2017,506),(2021,506),(2028,506),(2010,507),(2031,507),(2032,508),(2020,509),(2011,510),(2020,510),(2024,510),(2010,511),(2012,511),(2014,511),(2016,511),(2018,511),(2020,511),(2023,511),(2027,511),(2016,512),(2027,512),(2014,513),(2035,513),(2018,514),(2020,514),(2036,514),(2016,515),(2010,516),(2015,516),(2020,516),(2037,516),(2012,517),(2020,517),(2017,518),(2017,519),(2029,519),(2012,520),(2016,521),(2019,521),(2021,521),(2028,521),(2030,521),(2013,522),(2019,522),(2027,522),(2018,523),(2025,523),(2015,524),(2034,525),(2018,526),(2021,526),(2028,526),(2038,526),(2020,527),(2033,527),(2013,528),(2016,528),(2022,528),(2023,528),(2029,528),(2010,529),(2021,529),(2025,529),(2014,530),(2016,530),(2018,530),(2020,530),(2023,530),(2027,530),(2028,530),(2039,530);
/*!40000 ALTER TABLE `prision_condenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnica`
--

DROP TABLE IF EXISTS `tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecnica` (
  `idtecnica` int(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `objetos` varchar(30) NOT NULL,
  PRIMARY KEY (`idtecnica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnica`
--

LOCK TABLES `tecnica` WRITE;
/*!40000 ALTER TABLE `tecnica` DISABLE KEYS */;
INSERT INTO `tecnica` VALUES (101,'LLAMADAS TELEFONICAS','TELEFONO'),(102,'CIBER-TECNICA','COMPUTADORA'),(103,'REUNION DE PERSONAS','PALOS Y DERIVADOS'),(104,'ESPIAR','TODO TIPO DE OBJETOS'),(105,'ENAMORAMIENTO','TODO TIPO DE OBJETOS'),(106,'LABOR DE VENTAS','TODO TIPO DE OBJETOS'),(107,'GOLPES','TODO TIPO DE OBJETOS'),(108,'VIA AEREA','AVION'),(109,'VIA TERRESTRE','TREN/AUTOMOVIL'),(110,'VIA SUBTERRANEA','TREN'),(111,'VIA ACUATICA','BARCO'),(112,'VIA ECONOMICA','DINERO'),(113,'COMIDA','ALIMENTOS'),(114,'ESCRITO','CARTAS,REVISTAS,ETC'),(115,'JUNTAS Y ACUERDOS','TODO TIPO DE OBJETOS');
/*!40000 ALTER TABLE `tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnica_delincuente`
--

DROP TABLE IF EXISTS `tecnica_delincuente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecnica_delincuente` (
  `idtecnicas` int(3) NOT NULL,
  `iddelincuentes` int(3) NOT NULL,
  PRIMARY KEY (`idtecnicas`,`iddelincuentes`),
  KEY `iddelincuentes_idx` (`iddelincuentes`),
  CONSTRAINT `iddelincuentes` FOREIGN KEY (`iddelincuentes`) REFERENCES `delincuente` (`iddelincuente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idtecnicas` FOREIGN KEY (`idtecnicas`) REFERENCES `tecnica` (`idtecnica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnica_delincuente`
--

LOCK TABLES `tecnica_delincuente` WRITE;
/*!40000 ALTER TABLE `tecnica_delincuente` DISABLE KEYS */;
INSERT INTO `tecnica_delincuente` VALUES (101,201),(107,201),(109,201),(102,202),(110,202),(101,203),(107,203),(101,204),(103,205),(107,205),(108,205),(114,205),(102,206),(103,206),(106,206),(107,206),(112,206),(102,207),(106,207),(102,208),(102,209),(101,210),(107,210),(103,211),(105,212),(114,213),(102,214),(102,215),(102,216),(106,217),(106,218),(113,218),(106,219),(107,220),(101,221),(107,221),(111,221),(101,222),(102,222),(105,222),(107,222),(115,222),(111,223),(104,224),(114,225),(107,226),(104,227),(115,228),(102,229),(104,229),(111,229),(104,230),(101,231),(102,231),(104,231),(107,231),(111,231),(112,231),(105,232),(114,232),(101,233),(107,233),(112,233),(101,234),(102,234),(107,234),(111,234),(102,235),(107,235);
/*!40000 ALTER TABLE `tecnica_delincuente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistados_peorfianza`
--

DROP TABLE IF EXISTS `vistados_peorfianza`;
/*!50001 DROP VIEW IF EXISTS `vistados_peorfianza`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vistados_peorfianza` AS SELECT 
 1 AS `La fianza mas cara`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistatres_estadisticaestados`
--

DROP TABLE IF EXISTS `vistatres_estadisticaestados`;
/*!50001 DROP VIEW IF EXISTS `vistatres_estadisticaestados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vistatres_estadisticaestados` AS SELECT 
 1 AS `Variedad de delitos`,
 1 AS `Estados mas peligrosos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistauno_condenasdadas`
--

DROP TABLE IF EXISTS `vistauno_condenasdadas`;
/*!50001 DROP VIEW IF EXISTS `vistauno_condenasdadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vistauno_condenasdadas` AS SELECT 
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistados_peorfianza`
--

/*!50001 DROP VIEW IF EXISTS `vistados_peorfianza`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistados_peorfianza` AS select max(`detencion`.`derechofianza`) AS `La fianza mas cara` from `detencion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistatres_estadisticaestados`
--

/*!50001 DROP VIEW IF EXISTS `vistatres_estadisticaestados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistatres_estadisticaestados` AS select count(`delito`.`iddelito`) AS `Variedad de delitos`,`lugarpeligroso_estado`.`estado` AS `Estados mas peligrosos` from (((`delito` join `delito_lugar`) join `lugarpeligroso_estado`) join `lugarpeligroso_municipio`) where ((`delito`.`iddelito` = `delito_lugar`.`iddelitos`) and (`delito_lugar`.`idlugar` = `lugarpeligroso_estado`.`idlugarpeligroso`) and (`lugarpeligroso_estado`.`idlugarpeligroso` = `lugarpeligroso_municipio`.`lugarmunicipio`)) group by `lugarpeligroso_estado`.`estado` order by count(`delito`.`iddelito`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistauno_condenasdadas`
--

/*!50001 DROP VIEW IF EXISTS `vistauno_condenasdadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistauno_condenasdadas` AS select distinct `condenas`.`descripcion` AS `descripcion` from (`condenas` join `detencion`) where (`condenas`.`idcondenas` = `detencion`.`condena`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-25 21:37:50
