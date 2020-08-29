-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: DB_Spotify
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB-1:10.4.13+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `id_artista` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `id_artista` (`id_artista`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Coluber constrictor',57,'6806 Oxford Park'),(2,'Ovis ammon',46,'3052 Stephen Circle'),(3,'Ursus americanus',8,'988 Green Place'),(4,'Acrantophis madagascariensis',48,'797 Westridge Center'),(5,'Corallus hortulanus cooki',48,'8 Roth Trail'),(6,'Lemur catta',49,'4 Kingsford Avenue'),(7,'Cacatua galerita',13,'22 Cordelia Court'),(8,'Grus antigone',90,'552 Glendale Terrace'),(9,'Pelecanus conspicillatus',12,'70 Buhler Point'),(10,'Smithopsis crassicaudata',5,'189 Lunder Street'),(11,'Varanus sp.',50,'10 Golf Course Court'),(12,'Leprocaulinus vipera',4,'72663 Canary Court'),(13,'Eolophus roseicapillus',74,'8 Ryan Terrace'),(14,'Acrantophis madagascariensis',53,'13867 3rd Crossing'),(15,'Libellula quadrimaculata',64,'64627 Farragut Circle'),(16,'Melanerpes erythrocephalus',58,'686 Fremont Avenue'),(17,'Phalacrocorax carbo',42,'232 Lien Avenue'),(18,'Pycnonotus barbatus',55,'832 Pepper Wood Center'),(19,'Uraeginthus granatina',20,'036 Boyd Trail'),(20,'Vulpes chama',74,'390 Fairfield Lane'),(21,'Grus antigone',48,'73 Mcbride Avenue'),(22,'Taxidea taxus',8,'94 Birchwood Way'),(23,'Spizaetus coronatus',1,'82534 Crescent Oaks Drive'),(24,'Butorides striatus',90,'05 Bonner Hill'),(25,'Carduelis uropygialis',45,'29 Hoard Trail'),(26,'Loris tardigratus',93,'3 Springs Circle'),(27,'Myotis lucifugus',45,'9856 Eliot Road'),(28,'Ratufa indica',29,'52897 Claremont Alley'),(29,'Anas bahamensis',85,'5 David Terrace'),(30,'Ara macao',83,'302 Pierstorff Alley'),(31,'Isoodon obesulus',6,'76626 Debra Trail'),(32,'Eolophus roseicapillus',2,'11080 Marquette Hill'),(33,'Cynictis penicillata',65,'87 Alpine Crossing'),(34,'Dromaeus novaehollandiae',68,'34017 Swallow Hill'),(35,'Vulpes vulpes',26,'5950 Brown Trail'),(36,'Rangifer tarandus',91,'3667 Waubesa Center'),(37,'Coluber constrictor foxii',26,'240 Superior Place'),(38,'Hyaena brunnea',13,'2994 Sachtjen Junction'),(39,'Haliaetus leucogaster',28,'02293 Waubesa Road'),(40,'Dusicyon thous',28,'0 Oak Trail'),(41,'Connochaetus taurinus',85,'72275 Prairie Rose Circle'),(42,'Panthera leo',4,'9 Norway Maple Drive'),(43,'Rhea americana',43,'32 3rd Plaza'),(44,'Spermophilus tridecemlineatus',16,'8588 Granby Pass'),(45,'Haematopus ater',42,'10754 Duke Park'),(46,'Spizaetus coronatus',53,'877 Shasta Pass'),(47,'Cyrtodactylus louisiadensis',93,'67801 Talmadge Park'),(48,'Castor fiber',67,'8 Sage Plaza'),(49,'Erinaceus frontalis',71,'48 Blackbird Drive'),(50,'Gazella thompsonii',79,'0672 Sauthoff Pass'),(51,'Giraffe camelopardalis',98,'59339 Montana Terrace'),(52,'Platalea leucordia',84,'2 Derek Lane'),(53,'Ateles paniscus',17,'06 Alpine Court'),(54,'Junonia genoveua',49,'0 Sunnyside Way'),(55,'Trichosurus vulpecula',18,'7 Arkansas Place'),(56,'Butorides striatus',57,'18664 Debs Center'),(57,'Taxidea taxus',92,'6606 Almo Way'),(58,'Macropus fuliginosus',45,'608 Sycamore Road'),(59,'Nyctanassa violacea',96,'53813 Old Gate Drive'),(60,'Limosa haemastica',97,'71 Browning Junction'),(61,'Iguana iguana',69,'532 Union Crossing'),(62,'Chelodina longicollis',73,'5 North Drive'),(63,'Pytilia melba',8,'45394 Center Terrace'),(64,'Deroptyus accipitrinus',44,'68942 Marcy Plaza'),(65,'Herpestes javanicus',83,'98 Dapin Avenue'),(66,'Canis lupus baileyi',3,'6 Bartillon Center'),(67,'Cracticus nigroagularis',29,'089 Meadow Ridge Center'),(68,'Semnopithecus entellus',71,'1 Nelson Road'),(69,'Sauromalus obesus',76,'1 Melrose Circle'),(70,'Dicrostonyx groenlandicus',36,'6 Mayfield Way'),(71,'Manouria emys',91,'88 Kedzie Lane'),(72,'Coluber constrictor',20,'253 Morningstar Hill'),(73,'Phascogale calura',4,'037 Melody Avenue'),(74,'Tockus flavirostris',77,'7 Eggendart Street'),(75,'Nasua narica',31,'9 Orin Avenue'),(76,'Hyaena brunnea',56,'62 Stuart Street'),(77,'Cracticus nigroagularis',15,'7 Arrowood Crossing'),(78,'Funambulus pennati',35,'5 Shoshone Point'),(79,'Streptopelia decipiens',94,'99 Killdeer Lane'),(80,'Columba palumbus',52,'1213 Meadow Valley Pass'),(81,'Haliaetus vocifer',63,'85985 Monument Road'),(82,'Buteo galapagoensis',39,'78 Northfield Pass'),(83,'Pseudocheirus peregrinus',8,'0022 Corben Center'),(84,'Lamprotornis nitens',15,'56 Helena Trail'),(85,'Macropus parryi',76,'091 Starling Lane'),(86,'Rangifer tarandus',98,'2072 Farmco Drive'),(87,'Tamandua tetradactyla',48,'39 Westridge Pass'),(88,'Oryx gazella',83,'975 Sachs Avenue'),(89,'Amazona sp.',73,'22688 Sunfield Junction'),(90,'Lama guanicoe',97,'33903 Briar Crest Center'),(91,'Uraeginthus angolensis',69,'67 Express Alley'),(92,'Eubalaena australis',59,'1685 Vidon Place'),(93,'Helogale undulata',77,'15008 Mosinee Pass'),(94,'Zalophus californicus',95,'0619 Havey Terrace'),(95,'Threskionis aethiopicus',27,'2240 Sunfield Street'),(96,'Caiman crocodilus',77,'4732 Corry Trail'),(97,'Connochaetus taurinus',43,'0281 Northland Terrace'),(98,'Trichoglossus haematodus moluccanus',59,'15713 Scofield Park'),(99,'Acrobates pygmaeus',45,'630 Northview Park'),(100,'Spilogale gracilis',76,'1 Rieder Place');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `acerca` varchar(50) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Tildie','671 Spenser Terrace','https://robohash.org/temporeperferendisvoluptate.png?size=50x50&set=set1'),(2,'Yasmin','77175 Moulton Plaza','https://robohash.org/remdoloraut.png?size=50x50&set=set1'),(3,'Pietra','014 Ohio Terrace','https://robohash.org/enimquodest.png?size=50x50&set=set1'),(4,'Ed','09 Nelson Junction','https://robohash.org/dolorenatusmagnam.png?size=50x50&set=set1'),(5,'Karlis','4 Mcbride Hill','https://robohash.org/excepturiautcum.png?size=50x50&set=set1'),(6,'Ozzie','34995 Vahlen Alley','https://robohash.org/rerumquaemaiores.png?size=50x50&set=set1'),(7,'Donavon','082 Anthes Way','https://robohash.org/repellatrerummolestiae.png?size=50x50&set=set1'),(8,'Waverly','1 Kedzie Lane','https://robohash.org/accusamusdeseruntaliquid.png?size=50x50&set=set1'),(9,'Perri','1 International Terrace','https://robohash.org/utnemocorporis.png?size=50x50&set=set1'),(10,'Thomasine','267 Sauthoff Way','https://robohash.org/experspiciatisvoluptatem.png?size=50x50&set=set1'),(11,'Roarke','698 Northport Lane','https://robohash.org/aliasdoloreodit.png?size=50x50&set=set1'),(12,'Carlene','06 Boyd Alley','https://robohash.org/quidemeosquibusdam.png?size=50x50&set=set1'),(13,'Jasmina','8549 Glacier Hill Lane','https://robohash.org/rationenatusaccusantium.png?size=50x50&set=set1'),(14,'Cletus','96847 Clemons Alley','https://robohash.org/consequaturdoloribusaut.png?size=50x50&set=set1'),(15,'Ferne','9870 Elgar Place','https://robohash.org/quisaepeut.png?size=50x50&set=set1'),(16,'Opalina','67 Donald Crossing','https://robohash.org/etautemsit.png?size=50x50&set=set1'),(17,'Reube','83908 Corscot Junction','https://robohash.org/cupiditateiustodeleniti.png?size=50x50&set=set1'),(18,'Ware','04204 Bayside Circle','https://robohash.org/minusaperiamsunt.png?size=50x50&set=set1'),(19,'Scarface','612 Daystar Circle','https://robohash.org/velestqui.png?size=50x50&set=set1'),(20,'Rolland','5852 Evergreen Junction','https://robohash.org/nobisimpeditdolor.png?size=50x50&set=set1'),(21,'Curran','17 Orin Court','https://robohash.org/involuptatemquia.png?size=50x50&set=set1'),(22,'Genevra','17963 Little Fleur Trail','https://robohash.org/quismollitiaautem.png?size=50x50&set=set1'),(23,'Benedict','99 Troy Crossing','https://robohash.org/laboriosamsuscipitqui.png?size=50x50&set=set1'),(24,'Chariot','02 7th Plaza','https://robohash.org/modisequiinventore.png?size=50x50&set=set1'),(25,'Elton','0 Becker Plaza','https://robohash.org/numquamessequia.png?size=50x50&set=set1'),(26,'Lois','40725 Esch Avenue','https://robohash.org/doloribusquisoptio.png?size=50x50&set=set1'),(27,'Raffarty','2 Butternut Drive','https://robohash.org/harumassumendaenim.png?size=50x50&set=set1'),(28,'Nicoli','60023 Autumn Leaf Alley','https://robohash.org/sintutasperiores.png?size=50x50&set=set1'),(29,'Ruggiero','241 Novick Center','https://robohash.org/eaqueundelaudantium.png?size=50x50&set=set1'),(30,'Valaree','5 Del Mar Parkway','https://robohash.org/etnisimaiores.png?size=50x50&set=set1'),(31,'Mauricio','295 Chive Way','https://robohash.org/eiussuscipitadipisci.png?size=50x50&set=set1'),(32,'Noell','351 Arapahoe Court','https://robohash.org/temporequirepellendus.png?size=50x50&set=set1'),(33,'Harlan','28 Bultman Hill','https://robohash.org/autveritatisquam.png?size=50x50&set=set1'),(34,'Meryl','7487 Judy Way','https://robohash.org/enimtemporeveniam.png?size=50x50&set=set1'),(35,'Aubree','45 Independence Alley','https://robohash.org/blanditiisquiqui.png?size=50x50&set=set1'),(36,'Jacinda','281 Lillian Crossing','https://robohash.org/oditvoluptatemexercitationem.png?size=50x50&set=set1'),(37,'Debby','72118 Texas Court','https://robohash.org/etreiciendisdoloribus.png?size=50x50&set=set1'),(38,'Corbin','356 Dixon Road','https://robohash.org/reprehenderitessequaerat.png?size=50x50&set=set1'),(39,'Bud','565 Towne Place','https://robohash.org/eligendiatquequisquam.png?size=50x50&set=set1'),(40,'Gwyneth','88 Monterey Court','https://robohash.org/asperioresvelaut.png?size=50x50&set=set1'),(41,'Shel','5651 Nevada Point','https://robohash.org/velitmagnamlaboriosam.png?size=50x50&set=set1'),(42,'Amelia','64681 Park Meadow Junction','https://robohash.org/repudiandaecorporislibero.png?size=50x50&set=set1'),(43,'Gertrud','3 New Castle Place','https://robohash.org/accusamusvoluptatibuseos.png?size=50x50&set=set1'),(44,'Wyndham','076 5th Circle','https://robohash.org/perferendisdignissimosblanditiis.png?size=50x50&set=set1'),(45,'Selinda','95531 Magdeline Lane','https://robohash.org/esseconsequaturab.png?size=50x50&set=set1'),(46,'Kathie','5 Kedzie Parkway','https://robohash.org/eaipsaut.png?size=50x50&set=set1'),(47,'Grace','28 Lighthouse Bay Plaza','https://robohash.org/suscipitvoluptatempossimus.png?size=50x50&set=set1'),(48,'Paolina','6877 Vermont Way','https://robohash.org/autmolestiassint.png?size=50x50&set=set1'),(49,'Andrea','9209 Swallow Center','https://robohash.org/quiaautdoloribus.png?size=50x50&set=set1'),(50,'Gennie','03709 Spohn Park','https://robohash.org/quisfacerequia.png?size=50x50&set=set1'),(51,'Bethina','9 Magdeline Court','https://robohash.org/quamimpeditminus.png?size=50x50&set=set1'),(52,'Jard','2937 Susan Crossing','https://robohash.org/providentiustopariatur.png?size=50x50&set=set1'),(53,'Silvie','9961 Thackeray Trail','https://robohash.org/fugapossimusaut.png?size=50x50&set=set1'),(54,'Reagen','7 Heath Street','https://robohash.org/sitcumquevoluptas.png?size=50x50&set=set1'),(55,'Filip','19 Sage Place','https://robohash.org/doloresetdolor.png?size=50x50&set=set1'),(56,'Wendi','52067 Blackbird Place','https://robohash.org/illumaliasab.png?size=50x50&set=set1'),(57,'Zackariah','0 Commercial Circle','https://robohash.org/voluptatemetqui.png?size=50x50&set=set1'),(58,'Sandy','01 Blue Bill Park Circle','https://robohash.org/cupiditateteneturlibero.png?size=50x50&set=set1'),(59,'Jackson','42145 Hazelcrest Court','https://robohash.org/rerumaspernaturvoluptate.png?size=50x50&set=set1'),(60,'Shaina','8 Johnson Lane','https://robohash.org/autmagniquo.png?size=50x50&set=set1'),(61,'Wolfy','56566 Oneill Center','https://robohash.org/culpaconsequaturperferendis.png?size=50x50&set=set1'),(62,'Sherye','0123 Brentwood Way','https://robohash.org/iustosuntitaque.png?size=50x50&set=set1'),(63,'Keven','860 Mcbride Center','https://robohash.org/eaundeest.png?size=50x50&set=set1'),(64,'Byram','0934 Blaine Trail','https://robohash.org/nemorecusandaeatque.png?size=50x50&set=set1'),(65,'Roobbie','0665 Mcbride Plaza','https://robohash.org/sitomnislaborum.png?size=50x50&set=set1'),(66,'Jason','857 Troy Center','https://robohash.org/autemmagniipsum.png?size=50x50&set=set1'),(67,'Whit','8164 Canary Plaza','https://robohash.org/etsedmagnam.png?size=50x50&set=set1'),(68,'Wenona','551 Graedel Trail','https://robohash.org/nemoabmolestiae.png?size=50x50&set=set1'),(69,'Warner','94 Ronald Regan Hill','https://robohash.org/atetvoluptatem.png?size=50x50&set=set1'),(70,'Stafford','435 Dexter Plaza','https://robohash.org/recusandaeadipiscinostrum.png?size=50x50&set=set1'),(71,'Leonelle','1145 Oriole Way','https://robohash.org/estvoluptasamet.png?size=50x50&set=set1'),(72,'Corina','4351 Birchwood Avenue','https://robohash.org/porroblanditiissaepe.png?size=50x50&set=set1'),(73,'Igor','8374 Fisk Crossing','https://robohash.org/ipsumdoloremqueperspiciatis.png?size=50x50&set=set1'),(74,'Reinold','76 Shasta Trail','https://robohash.org/aliquidrerumquibusdam.png?size=50x50&set=set1'),(75,'Bartholomew','7290 Dennis Street','https://robohash.org/necessitatibusdoloremeum.png?size=50x50&set=set1'),(76,'Joella','5 Eliot Place','https://robohash.org/inciduntquisquam.png?size=50x50&set=set1'),(77,'Vilma','08734 Forster Avenue','https://robohash.org/optioinautem.png?size=50x50&set=set1'),(78,'Gearard','7 Doe Crossing Hill','https://robohash.org/autnatusquis.png?size=50x50&set=set1'),(79,'Udell','09044 Hallows Pass','https://robohash.org/undeeosducimus.png?size=50x50&set=set1'),(80,'Mortie','6769 Division Avenue','https://robohash.org/veniamsuntodit.png?size=50x50&set=set1'),(81,'Devy','40200 Schlimgen Pass','https://robohash.org/repellendusautblanditiis.png?size=50x50&set=set1'),(82,'Clarey','2 Eastlawn Crossing','https://robohash.org/iustoeaveniam.png?size=50x50&set=set1'),(83,'Ollie','2 Anniversary Park','https://robohash.org/voluptatemutlaudantium.png?size=50x50&set=set1'),(84,'Danny','902 Carioca Pass','https://robohash.org/molestiaeconsequunturdeserunt.png?size=50x50&set=set1'),(85,'Nappy','7 Colorado Avenue','https://robohash.org/magninondoloribus.png?size=50x50&set=set1'),(86,'Nettie','571 Hoffman Place','https://robohash.org/quissaepedeserunt.png?size=50x50&set=set1'),(87,'Eva','24588 Arapahoe Avenue','https://robohash.org/repudiandaeporromaiores.png?size=50x50&set=set1'),(88,'Steffie','47 Kinsman Alley','https://robohash.org/facerenonqui.png?size=50x50&set=set1'),(89,'Sandro','794 Larry Place','https://robohash.org/nesciunteligendifacere.png?size=50x50&set=set1'),(90,'Karlik','0 Anzinger Street','https://robohash.org/abperferendissint.png?size=50x50&set=set1'),(91,'Kirsten','47 Susan Plaza','https://robohash.org/ullamoptioaccusamus.png?size=50x50&set=set1'),(92,'Magdalene','917 Northport Pass','https://robohash.org/maioresquisquamillum.png?size=50x50&set=set1'),(93,'Quinn','0 Iowa Drive','https://robohash.org/etiustovelit.png?size=50x50&set=set1'),(94,'Guinevere','4 Namekagon Lane','https://robohash.org/iustodictasaepe.png?size=50x50&set=set1'),(95,'Jolynn','54818 Portage Way','https://robohash.org/harumducimusvoluptatem.png?size=50x50&set=set1'),(96,'Dela','354 Paget Court','https://robohash.org/consequunturquiaiure.png?size=50x50&set=set1'),(97,'Lewes','491 Westend Drive','https://robohash.org/voluptatumdoloremvoluptatem.png?size=50x50&set=set1'),(98,'Darrell','04 Mcbride Terrace','https://robohash.org/etbeataesunt.png?size=50x50&set=set1'),(99,'Orel','5 Armistice Way','https://robohash.org/minusenimullam.png?size=50x50&set=set1'),(100,'Abe','1 Scott Terrace','https://robohash.org/optioquianihil.png?size=50x50&set=set1');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `hora_entrada` datetime DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_auditoria`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,'escuchando musica','2019-06-09 00:00:00','2019-06-15 00:00:00',64),(2,'escuchando musica','2019-09-11 00:00:00','2019-09-17 00:00:00',38),(3,'login','2020-04-25 00:00:00','2020-04-28 00:00:00',65),(4,'escuchando musica','2019-07-27 00:00:00','2019-08-01 00:00:00',54),(5,'cerrar session','2019-11-07 00:00:00','2019-11-17 00:00:00',38),(6,'login','2019-09-14 00:00:00','2019-09-22 00:00:00',93),(7,'escuchando musica','2019-12-04 00:00:00','2019-12-12 00:00:00',36),(8,'escuchando musica','2020-04-15 00:00:00','2020-04-19 00:00:00',14),(9,'login','2019-09-12 00:00:00','2019-09-14 00:00:00',44),(10,'cerrar session','2020-04-18 00:00:00','2020-04-20 00:00:00',2),(11,'escuchando musica','2019-12-02 00:00:00','2019-12-03 00:00:00',98),(12,'login','2020-02-08 00:00:00','2020-02-16 00:00:00',75),(13,'escuchando musica','2019-06-21 00:00:00','2019-06-30 00:00:00',5),(14,'escuchando musica','2019-10-28 00:00:00','2019-11-01 00:00:00',95),(15,'login','2019-06-09 00:00:00','2019-06-17 00:00:00',91),(16,'escuchando musica','2020-03-14 00:00:00','2020-03-24 00:00:00',88),(17,'escuchando musica','2020-05-13 00:00:00','2020-05-21 00:00:00',6),(18,'login','2020-04-15 00:00:00','2020-04-17 00:00:00',92),(19,'escuchando musica','2019-08-09 00:00:00','2019-08-16 00:00:00',82),(20,'cerrar session','2020-04-29 00:00:00','2020-05-03 00:00:00',2),(21,'login','2019-10-27 00:00:00','2019-10-29 00:00:00',12),(22,'escuchando musica','2019-08-13 00:00:00','2019-08-18 00:00:00',69),(23,'escuchando musica','2019-11-29 00:00:00','2019-12-05 00:00:00',45),(24,'login','2020-02-26 00:00:00','2020-03-03 00:00:00',13),(25,'cerrar session','2019-06-14 00:00:00','2019-06-21 00:00:00',50),(26,'escuchando musica','2019-12-11 00:00:00','2019-12-14 00:00:00',60),(27,'login','2020-03-12 00:00:00','2020-03-16 00:00:00',52),(28,'escuchando musica','2020-05-07 00:00:00','2020-05-13 00:00:00',13),(29,'escuchando musica','2019-09-11 00:00:00','2019-09-20 00:00:00',63),(30,'login','2019-09-03 00:00:00','2019-09-08 00:00:00',80),(31,'escuchando musica','2019-07-11 00:00:00','2019-07-20 00:00:00',87),(32,'escuchando musica','2019-06-12 00:00:00','2019-06-17 00:00:00',91),(33,'login','2019-07-22 00:00:00','2019-07-23 00:00:00',97),(34,'escuchando musica','2020-04-03 00:00:00','2020-04-12 00:00:00',36),(35,'cerrar session','2019-08-31 00:00:00','2019-09-10 00:00:00',3),(36,'login','2020-02-07 00:00:00','2020-02-14 00:00:00',38),(37,'escuchando musica','2020-01-18 00:00:00','2020-01-27 00:00:00',6),(38,'escuchando musica','2019-07-26 00:00:00','2019-08-02 00:00:00',26),(39,'login','2019-06-24 00:00:00','2019-06-29 00:00:00',28),(40,'cerrar session','2020-05-28 00:00:00','2020-06-03 00:00:00',26),(41,'escuchando musica','2020-02-21 00:00:00','2020-02-29 00:00:00',29),(42,'login','2019-09-01 00:00:00','2019-09-09 00:00:00',64),(43,'escuchando musica','2020-03-11 00:00:00','2020-03-15 00:00:00',84),(44,'escuchando musica','2019-08-01 00:00:00','2019-08-11 00:00:00',68),(45,'login','2019-09-27 00:00:00','2019-10-01 00:00:00',45),(46,'escuchando musica','2020-02-28 00:00:00','2020-03-05 00:00:00',88),(47,'escuchando musica','2019-08-05 00:00:00','2019-08-11 00:00:00',22),(48,'login','2020-03-22 00:00:00','2020-03-23 00:00:00',94),(49,'escuchando musica','2019-12-07 00:00:00','2019-12-10 00:00:00',58),(50,'cerrar session','2019-07-14 00:00:00','2019-07-23 00:00:00',54),(51,'login','2020-02-10 00:00:00','2020-02-13 00:00:00',76),(52,'escuchando musica','2019-06-17 00:00:00','2019-06-27 00:00:00',46),(53,'escuchando musica','2019-06-02 00:00:00','2019-06-08 00:00:00',62),(54,'login','2019-07-11 00:00:00','2019-07-17 00:00:00',69),(55,'cerrar session','2020-04-07 00:00:00','2020-04-13 00:00:00',43),(56,'escuchando musica','2019-10-05 00:00:00','2019-10-11 00:00:00',22),(57,'login','2019-10-31 00:00:00','2019-11-06 00:00:00',22),(58,'escuchando musica','2019-11-26 00:00:00','2019-12-04 00:00:00',78),(59,'escuchando musica','2019-08-06 00:00:00','2019-08-13 00:00:00',92),(60,'login','2019-08-01 00:00:00','2019-08-07 00:00:00',91),(61,'escuchando musica','2020-01-05 00:00:00','2020-01-15 00:00:00',49),(62,'escuchando musica','2019-08-18 00:00:00','2019-08-23 00:00:00',20),(63,'login','2019-08-05 00:00:00','2019-08-06 00:00:00',22),(64,'escuchando musica','2020-01-16 00:00:00','2020-01-18 00:00:00',40),(65,'cerrar session','2020-03-12 00:00:00','2020-03-20 00:00:00',24),(66,'login','2019-06-03 00:00:00','2019-06-13 00:00:00',63),(67,'escuchando musica','2020-02-16 00:00:00','2020-02-19 00:00:00',96),(68,'escuchando musica','2019-12-04 00:00:00','2019-12-13 00:00:00',56),(69,'login','2020-01-26 00:00:00','2020-01-28 00:00:00',6),(70,'cerrar session','2020-01-28 00:00:00','2020-02-02 00:00:00',49),(71,'escuchando musica','2020-02-04 00:00:00','2020-02-12 00:00:00',86),(72,'login','2020-04-09 00:00:00','2020-04-18 00:00:00',26),(73,'escuchando musica','2019-07-29 00:00:00','2019-08-04 00:00:00',8),(74,'escuchando musica','2019-08-12 00:00:00','2019-08-18 00:00:00',78),(75,'login','2019-06-24 00:00:00','2019-07-02 00:00:00',72),(76,'escuchando musica','2019-11-04 00:00:00','2019-11-05 00:00:00',90),(77,'escuchando musica','2019-12-02 00:00:00','2019-12-05 00:00:00',41),(78,'login','2019-06-22 00:00:00','2019-06-26 00:00:00',59),(79,'escuchando musica','2019-11-09 00:00:00','2019-11-11 00:00:00',50),(80,'cerrar session','2020-05-12 00:00:00','2020-05-17 00:00:00',89),(81,'login','2020-04-15 00:00:00','2020-04-19 00:00:00',30),(82,'escuchando musica','2020-02-17 00:00:00','2020-02-19 00:00:00',34),(83,'escuchando musica','2020-01-13 00:00:00','2020-01-17 00:00:00',6),(84,'login','2019-12-25 00:00:00','2020-01-04 00:00:00',48),(85,'cerrar session','2020-02-10 00:00:00','2020-02-19 00:00:00',8),(86,'escuchando musica','2020-02-16 00:00:00','2020-02-21 00:00:00',89),(87,'login','2019-12-04 00:00:00','2019-12-12 00:00:00',35),(88,'escuchando musica','2019-11-16 00:00:00','2019-11-17 00:00:00',2),(89,'escuchando musica','2020-01-06 00:00:00','2020-01-13 00:00:00',14),(90,'login','2019-06-24 00:00:00','2019-07-01 00:00:00',31),(91,'escuchando musica','2020-01-20 00:00:00','2020-01-27 00:00:00',19),(92,'escuchando musica','2019-12-21 00:00:00','2019-12-27 00:00:00',57),(93,'login','2019-11-23 00:00:00','2019-11-27 00:00:00',35),(94,'escuchando musica','2019-11-09 00:00:00','2019-11-10 00:00:00',42),(95,'cerrar session','2019-12-12 00:00:00','2019-12-17 00:00:00',57),(96,'login','2020-05-14 00:00:00','2020-05-17 00:00:00',68),(97,'escuchando musica','2019-07-10 00:00:00','2019-07-12 00:00:00',56),(98,'escuchando musica','2019-12-26 00:00:00','2020-01-03 00:00:00',69),(99,'login','2019-09-04 00:00:00','2019-09-10 00:00:00',22),(100,'cerrar session','2019-07-18 00:00:00','2019-07-20 00:00:00',21);
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion` (
  `id_cancion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `duracion` time DEFAULT NULL,
  `pista` tinyint(4) DEFAULT NULL,
  `anio_de_creacion` year(4) DEFAULT NULL,
  `letra` varchar(50) DEFAULT NULL,
  `favorita` bit(1) DEFAULT NULL,
  `id_album` int(11) NOT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `id_lista_de_reproduccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `id_genero` (`id_genero`),
  KEY `id_album` (`id_album`),
  KEY `id_lista_de_reproduccion` (`id_lista_de_reproduccion`),
  CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  CONSTRAINT `cancion_ibfk_2` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  CONSTRAINT `cancion_ibfk_3` FOREIGN KEY (`id_lista_de_reproduccion`) REFERENCES `lista_de_reproduccion` (`id_lista_de_reproduccion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (1,'Furbish\'s Lousewort','03:18:41',31,2001,'95246 Monument Drive','\0',12,16,59),(2,'Corchoropsis','06:27:57',58,1990,'8052 Anthes Road','',96,24,80),(3,'Kokea Lau Li\'i','10:17:00',35,2000,'0 Dixon Court','\0',62,28,38),(4,'Yellow Hairgrass','15:25:06',100,2002,'7 Hollow Ridge Road','',5,67,1),(5,'Hooker\'s Scratchdaisy','04:36:24',59,2010,'8845 Cordelia Plaza','\0',79,5,32),(6,'Zizotes Milkweed','05:15:25',44,1994,'2499 Farwell Drive','\0',21,54,42),(7,'Yellow-horn','00:28:09',100,1998,'118 Prairie Rose Avenue','\0',39,47,29),(8,'Rim Lichen','17:05:58',50,2008,'9 Moland Center','\0',62,96,45),(9,'Santa Cruz Tarplant','15:58:17',28,2011,'327 Muir Point','\0',82,35,51),(10,'Negra Lora','17:31:39',66,2007,'92767 Kim Parkway','\0',49,1,2),(11,'Manchurian Crab Apple','23:58:42',79,2012,'8773 Bunting Point','',97,28,48),(12,'Guinea Bactris','08:15:20',71,1999,'79 Spohn Pass','\0',74,99,91),(13,'Recurved Bryoerythrophyllum Moss','20:46:38',69,2012,'188 Fremont Center','\0',23,26,82),(14,'San Francisco Owl\'s-clover','12:07:53',83,1995,'8 Hermina Plaza','\0',63,44,7),(15,'White Snakeroot','21:16:36',62,1985,'7 Oak Valley Park','\0',33,33,84),(16,'Ahart\'s Cluster Rose','05:30:33',72,2005,'076 Saint Paul Hill','\0',82,90,21),(17,'Soft Agrimony','09:19:12',8,1997,'87065 Brentwood Court','',89,52,48),(18,'Phaeosporobolus','07:34:38',87,1992,'16 Division Crossing','\0',56,88,76),(19,'Bonnet Orchid','04:49:18',83,2002,'25511 Prairieview Place','\0',84,7,90),(20,'Engelmann\'s Evening Primrose','09:37:49',74,1994,'1 Ruskin Avenue','\0',77,80,63),(21,'Chondrilla','01:01:01',37,2002,'6 Morrow Trail','',58,93,83),(22,'Winter Vetch','22:56:39',81,2010,'19161 Bonner Lane','\0',20,46,23),(23,'Cedarglade St. Johnswort','20:35:29',67,2001,'1921 Hazelcrest Avenue','',3,34,44),(24,'Smooth Blue Aster','20:41:53',89,2004,'9 Golden Leaf Plaza','\0',17,54,46),(25,'White Edge Sedge','13:32:40',9,2009,'671 Hollow Ridge Parkway','',100,86,96),(26,'Woodland Sage','08:36:33',49,1992,'70 Marcy Hill','\0',72,15,57),(27,'Golden Polypody','05:34:22',65,2011,'010 Kedzie Crossing','\0',85,96,14),(28,'Falsegold Groundsel','16:00:16',88,2006,'2509 Claremont Lane','\0',98,16,19),(29,'Mosquito Plant','21:19:07',41,1991,'4863 Oakridge Parkway','',2,88,77),(30,'Smallflower Phacelia','05:53:13',21,1998,'67 Walton Place','\0',24,94,19),(31,'Piedmont Threeawn','19:08:21',27,2000,'19387 Fulton Street','',88,33,99),(32,'Nodding Beggartick','05:02:59',10,1992,'41 West Hill','',65,88,54),(33,'Yellowstone Draba','13:45:49',63,2012,'87780 Thackeray Street','\0',11,43,86),(34,'Orange Lichen','22:51:01',92,2008,'625 Eliot Road','\0',52,32,20),(35,'Pointed Gumweed','07:05:35',34,1985,'4347 Brown Avenue','\0',98,77,17),(36,'Cuban Nutrush','18:33:50',28,2006,'7 Sutteridge Alley','\0',34,90,81),(37,'Thelopsis Lichen','12:56:16',73,2007,'4 Hermina Drive','',61,9,13),(38,'Oregon False Goldenaster','00:37:42',17,1995,'61121 Grover Park','',86,13,27),(39,'Whitebark Raspberry','12:27:16',30,2012,'7 Clyde Gallagher Trail','\0',8,72,78),(40,'Jones Spiderflower','19:59:18',29,2010,'060 Vermont Road','',48,3,53),(41,'Pore Lichen','04:00:25',89,2005,'25 Katie Junction','\0',44,64,10),(42,'American Cracked Lichen','07:33:03',28,2013,'5821 Spaight Pass','',94,11,68),(43,'Pitcherplant','14:36:41',66,2008,'207 Sommers Drive','\0',46,17,81),(44,'Freeman Maple','21:05:43',1,2009,'46 Ruskin Place','\0',41,43,52),(45,'Kenwood Marsh Checkerbloom','13:14:39',73,2005,'8 Helena Pass','\0',13,77,44),(46,'Parmotrema Lichen','05:40:47',29,1993,'4 Spohn Drive','\0',73,13,1),(47,'Olona','06:04:26',59,2009,'74628 Lukken Point','',84,73,70),(48,'Maguey','23:56:28',50,1991,'30 Tennessee Center','',95,2,96),(49,'Marsh Grass Of Parnassus','14:20:33',71,1992,'1 American Plaza','',73,44,26),(50,'Smith\'s Buckthorn','00:46:45',82,2003,'89559 Logan Road','\0',95,30,90),(51,'Beechleaf Frangula','15:00:22',83,2003,'94 Fieldstone Plaza','\0',99,11,42),(52,'Haller\'s Campylium Moss','09:28:31',45,2005,'22 Marquette Trail','\0',30,1,17),(53,'Jewels Of Opar','05:42:45',78,2008,'9978 Brickson Park Parkway','',48,62,60),(54,'Common Twinpod','16:57:46',31,1993,'189 Crescent Oaks Crossing','',40,18,16),(55,'Smallflower Bird\'s-foot Trefoil','15:43:56',51,1995,'5 Kennedy Plaza','\0',51,42,99),(56,'Puffballs','06:20:17',99,2006,'2 Buhler Crossing','',73,21,14),(57,'Whitewoolly Buckwheat','18:10:39',86,1985,'16840 Anniversary Alley','\0',91,40,13),(58,'Vernal Pool Indian Paintbrush','15:41:37',69,2000,'95084 Summer Ridge Point','',96,47,1),(59,'Torrey\'s Yucca','04:53:02',77,1988,'69 Utah Park','\0',12,96,64),(60,'Gray\'s Biscuitroot','04:36:01',24,2009,'8004 Morrow Trail','',39,90,55),(61,'Pitted Stripeseed','10:28:46',78,1969,'636 Dixon Point','\0',55,66,43),(62,'Northern Fescue','22:45:34',34,2009,'59 Sunbrook Pass','',95,99,71),(63,'Big Blue Lilyturf','14:16:26',89,2001,'17 Carberry Court','',67,95,87),(64,'Sainfoin','21:28:29',16,2006,'19 Sutherland Alley','\0',78,18,9),(65,'Dwarf Rockcress','17:24:20',84,1993,'509 Lukken Way','\0',91,69,64),(66,'Pacific Saxifrage','17:50:26',7,2005,'15577 Londonderry Hill','',78,41,86),(67,'Funaria Moss','15:47:11',65,1999,'896 Randy Parkway','\0',70,67,26),(68,'Spiral Sorrel','13:35:51',78,1997,'39 Crownhardt Crossing','',50,48,91),(69,'Swampweed','19:00:10',17,2008,'4061 Dryden Crossing','',91,91,62),(70,'Giant Shield Lichen','17:14:45',39,2001,'84 Sachtjen Drive','',87,74,1),(71,'Little Evening Primrose','15:08:48',51,1997,'81183 Orin Place','\0',2,18,76),(72,'Sedge','23:19:22',28,2004,'1 Ilene Junction','',96,95,54),(73,'Riverside Spineflower','02:39:14',74,1999,'07442 Straubel Circle','\0',22,39,70),(74,'Hybrid Hickory','02:18:14',26,1991,'6 Anthes Trail','',15,9,19),(75,'Alaska Blackberry','19:14:49',41,2005,'9 Moulton Hill','',19,73,28),(76,'Fescue','17:41:23',89,1993,'21 Huxley Pass','',66,94,47),(77,'Cows Clover','05:46:37',92,2005,'52 Clove Parkway','\0',77,15,2),(78,'Field Parsley Piert','09:52:54',52,2009,'893 Macpherson Court','\0',12,35,64),(79,'Taiwanese Cheesewood','16:43:17',15,2000,'4 Maywood Circle','\0',2,73,9),(80,'Elliott\'s Fanpetals','06:01:58',97,2009,'88118 Debra Avenue','',6,100,8),(81,'Hairy Manzanita','07:01:24',55,1989,'060 Golden Leaf Point','\0',25,54,78),(82,'Four O\'clock','09:18:57',10,2000,'9387 Mccormick Pass','',42,40,55),(83,'Avian Goosefoot','08:56:21',67,1997,'8467 Novick Park','\0',64,81,21),(84,'Mouseear Hawkweed','01:10:35',19,1984,'15571 Dixon Crossing','',93,22,64),(85,'Rattan\'s Phacelia','22:12:31',38,2010,'5430 Fremont Road','\0',43,53,5),(86,'Naked Buckwheat','13:37:35',73,2001,'5420 Corscot Avenue','\0',36,100,91),(87,'Staghorn Cholla','07:48:55',19,2001,'65175 Upham Drive','\0',34,58,93),(88,'Entireleaf Mountain-avens','11:47:55',92,1999,'850 Texas Avenue','\0',75,20,27),(89,'Mugo Pine','13:46:45',43,1984,'72 Meadow Ridge Alley','',44,50,61),(90,'Cuban Wart Lichen','11:42:18',97,1998,'48 Bowman Parkway','',56,47,41),(91,'Habilla','00:23:05',51,2010,'8 Hauk Avenue','',6,54,41),(92,'Small Rocklettuce','18:22:27',16,2005,'82 Norway Maple Circle','',61,34,83),(93,'Bastard Cherry','05:00:32',95,2007,'7 Sachtjen Plaza','\0',79,89,66),(94,'Crater Lake Grapefern','01:58:31',73,2007,'71 Crowley Alley','',15,17,28),(95,'Swamp Wallaby Grass','08:56:51',9,1994,'230 Elgar Center','',9,84,89),(96,'Atwood\'s Evening Primrose','00:45:32',96,2009,'4 Canary Parkway','\0',93,91,64),(97,'Polycoccum Lichen','05:17:20',37,2011,'90 Ridgeway Avenue','',19,31,70),(98,'Florida Yellow Flax','22:28:02',57,2000,'22835 Steensland Pass','\0',31,51,95),(99,'Sadleria','17:26:34',97,2001,'83112 Esker Way','\0',96,30,29),(100,'White Shootingstar','23:36:55',66,2003,'9428 Forest Street','\0',68,16,75);
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_escuchada`
--

DROP TABLE IF EXISTS `cancion_escuchada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_escuchada` (
  `id_cancion_escuchada` int(11) NOT NULL AUTO_INCREMENT,
  `duracion` time DEFAULT NULL,
  `id_cancion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cancion_escuchada`),
  KEY `id_cancion` (`id_cancion`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cancion_escuchada_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`),
  CONSTRAINT `cancion_escuchada_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_escuchada`
--

LOCK TABLES `cancion_escuchada` WRITE;
/*!40000 ALTER TABLE `cancion_escuchada` DISABLE KEYS */;
INSERT INTO `cancion_escuchada` VALUES (1,'00:01:38',16,13),(2,'00:08:57',16,13),(3,'00:01:46',50,98),(4,'00:02:10',14,59),(5,'00:04:12',66,7),(6,'00:05:23',76,24),(7,'00:02:58',15,91),(8,'00:08:25',16,89),(9,'00:00:06',41,1),(10,'00:05:08',64,36),(11,'00:01:10',64,34),(12,'00:03:21',1,65),(13,'00:08:38',49,10),(14,'00:03:42',3,47),(15,'00:07:43',16,58),(16,'00:05:11',81,4),(17,'00:00:15',79,70),(18,'00:03:52',22,19),(19,'00:04:36',56,13),(20,'00:09:12',52,95),(21,'00:07:37',67,12),(22,'00:01:21',8,52),(23,'00:09:33',49,11),(24,'00:02:50',36,12),(25,'00:06:32',83,26),(26,'00:02:44',98,48),(27,'00:05:07',25,79),(28,'00:01:11',71,79),(29,'00:09:06',3,14),(30,'00:02:26',53,54),(31,'00:04:38',84,93),(32,'00:04:52',70,53),(33,'00:04:15',27,76),(34,'00:07:47',18,20),(35,'00:06:44',84,64),(36,'00:08:53',29,84),(37,'00:09:35',99,28),(38,'00:04:26',52,43),(39,'00:03:46',79,17),(40,'00:06:20',72,23),(41,'00:00:44',65,23),(42,'00:05:57',12,24),(43,'00:04:56',61,19),(44,'00:02:29',43,22),(45,'00:09:57',42,71),(46,'00:08:23',96,80),(47,'00:01:58',1,49),(48,'00:01:03',18,43),(49,'00:04:21',31,60),(50,'00:01:27',16,25),(51,'00:06:54',45,68),(52,'00:02:17',84,46),(53,'00:04:48',44,74),(54,'00:05:22',32,51),(55,'00:00:43',45,70),(56,'00:04:32',95,14),(57,'00:04:25',91,95),(58,'00:00:41',8,42),(59,'00:02:02',91,95),(60,'00:03:21',96,79),(61,'00:06:02',62,98),(62,'00:03:47',45,31),(63,'00:08:00',80,32),(64,'00:02:49',25,30),(65,'00:02:07',82,89),(66,'00:03:02',11,75),(67,'00:09:56',76,31),(68,'00:02:32',29,11),(69,'00:09:41',34,87),(70,'00:00:32',81,8),(71,'00:00:22',39,36),(72,'00:08:45',71,54),(73,'00:07:28',23,69),(74,'00:01:40',73,5),(75,'00:02:53',82,68),(76,'00:06:48',28,50),(77,'00:06:06',3,65),(78,'00:04:02',10,40),(79,'00:02:19',73,98),(80,'00:04:58',82,71),(81,'00:01:10',24,12),(82,'00:06:39',95,90),(83,'00:01:58',80,36),(84,'00:09:58',100,9),(85,'00:09:06',24,75),(86,'00:01:30',28,59),(87,'00:02:23',86,59),(88,'00:04:17',81,10),(89,'00:08:25',4,50),(90,'00:03:26',65,49),(91,'00:04:33',76,47),(92,'00:07:21',51,92),(93,'00:03:56',55,35),(94,'00:00:57',98,43),(95,'00:04:39',42,94),(96,'00:09:46',93,75),(97,'00:03:03',83,13),(98,'00:02:27',44,33),(99,'00:09:32',60,43),(100,'00:09:52',59,88);
/*!40000 ALTER TABLE `cancion_escuchada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Action|Drama|Romance|Western'),(2,'Drama|Mystery'),(3,'Comedy|Drama'),(4,'Comedy|Drama|Fantasy|Romance|Thriller'),(5,'Action|Comedy|Drama|Western'),(6,'Musical'),(7,'Drama'),(8,'Drama|Musical'),(9,'Adventure|Children|Comedy|Mystery'),(10,'Documentary|Musical'),(11,'Documentary'),(12,'Drama|Western'),(13,'Animation|Documentary'),(14,'Drama'),(15,'Comedy|Crime'),(16,'Comedy|Drama'),(17,'Drama'),(18,'Action|Adventure|Fantasy'),(19,'Drama|Thriller'),(20,'Comedy'),(21,'Animation|Children'),(22,'Adventure'),(23,'Western'),(24,'Comedy|Crime|Mystery|Thriller'),(25,'Drama'),(26,'(no genres listed)'),(27,'Mystery|Sci-Fi|Thriller'),(28,'Horror'),(29,'Adventure|Drama|War'),(30,'Drama'),(31,'Horror'),(32,'Action|Drama|Romance'),(33,'Action|Drama|Mystery'),(34,'Comedy|Drama'),(35,'Musical'),(36,'Adventure|Comedy|Fantasy'),(37,'Crime|Film-Noir|Thriller'),(38,'Comedy|Drama'),(39,'Drama|War'),(40,'Western'),(41,'Drama'),(42,'Drama|Thriller'),(43,'Comedy|Horror|Sci-Fi'),(44,'Drama'),(45,'Drama|Thriller'),(46,'Comedy|Drama|Romance'),(47,'Comedy|Fantasy|Romance'),(48,'Drama|Fantasy'),(49,'Action|Crime|Thriller'),(50,'Comedy|Romance'),(51,'Drama|Romance'),(52,'Documentary'),(53,'Comedy'),(54,'Drama'),(55,'Drama|Romance'),(56,'Drama|Romance'),(57,'Drama'),(58,'Comedy|Mystery|Thriller'),(59,'Comedy|Drama'),(60,'Crime|Horror|Mystery|Thriller'),(61,'Children|Comedy'),(62,'Romance|Western'),(63,'Comedy'),(64,'Action|Adventure|Crime|Drama|Thriller'),(65,'Comedy|Horror|Sci-Fi|Thriller'),(66,'Drama|War'),(67,'Drama'),(68,'Adventure|Comedy|Fantasy'),(69,'Drama|Romance'),(70,'Drama'),(71,'Drama|Romance'),(72,'Drama'),(73,'Crime|Thriller'),(74,'Comedy|Drama'),(75,'Musical|Romance'),(76,'Crime|Drama|Romance'),(77,'Drama'),(78,'Comedy|Romance'),(79,'Action|Comedy|Romance|War'),(80,'Drama|Romance'),(81,'Drama'),(82,'Comedy'),(83,'Drama|Romance'),(84,'Crime|Drama'),(85,'Drama'),(86,'Drama|Thriller'),(87,'Drama|Thriller|War'),(88,'Action|Horror|Sci-Fi'),(89,'Drama|War'),(90,'Drama'),(91,'Comedy|Drama'),(92,'Drama|Romance'),(93,'Adventure|Drama|War'),(94,'Documentary'),(95,'Drama'),(96,'Drama'),(97,'Comedy|Drama|Romance'),(98,'Drama'),(99,'Comedy|Drama|Romance'),(100,'Comedy');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_de_reproduccion`
--

DROP TABLE IF EXISTS `lista_de_reproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lista_de_reproduccion` (
  `id_lista_de_reproduccion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_lista_de_reproduccion`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `lista_de_reproduccion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_de_reproduccion`
--

LOCK TABLES `lista_de_reproduccion` WRITE;
/*!40000 ALTER TABLE `lista_de_reproduccion` DISABLE KEYS */;
INSERT INTO `lista_de_reproduccion` VALUES (1,'Needle Mountain Milkvetch',81),(2,'Summer Coralroot',26),(3,'Bruchia Moss',40),(4,'Fiddlewood',69),(5,'Carbonea Lichen',43),(6,'Packard\'s Blazingstar',93),(7,'Irion County Buckwheat',75),(8,'False Box',81),(9,'Pseudocyphellaria Lichen',45),(10,'Wavyleaf Thoroughwort',14),(11,'Broadleaf Lupine',63),(12,'New Mexico Raspberry',84),(13,'Largeflowered Fiddleneck',15),(14,'Phaeographis',32),(15,'Dwarf Barley',82),(16,'South African Hoarypea',95),(17,'Virginia Wildrye',32),(18,'Palo De Hueso',69),(19,'Varigated Beard Lichen',73),(20,'Icelandic Poppy',56),(21,'Oklahoma Beardtongue',56),(22,'Lori\'s Columbine',41),(23,'Freckled Milkvetch',21),(24,'Beefsteakplant',24),(25,'Carolina Wild Petunia',92),(26,'Japanese Primrose',34),(27,'Barkplant',33),(28,'Schmidt\'s Xanthoparmelia Lichen',12),(29,'Patch Phacelia',29),(30,'Swamp-redwood',43),(31,'Ballhead Sandwort',75),(32,'White Mountain Clover',28),(33,'Plumed Clover',32),(34,'Coast Whitethorn',22),(35,'Indian Goosegrass',21),(36,'Florida Nutmeg',33),(37,'Hoary Phacelia',17),(38,'Guyandotte Beauty',10),(39,'Beard Lichen',88),(40,'New Mexico Maple',27),(41,'Dahoon',59),(42,'Vernal Pool Indian Paintbrush',66),(43,'Glypholecia Lichen',76),(44,'Cup Lichen',25),(45,'Snow Dwarf-primrose',63),(46,'Sweetscented Joe Pye Weed',89),(47,'Canadian Horseweed',18),(48,'Greenwhite Sedge',95),(49,'Dicranum Moss',1),(50,'Lemmon\'s Lessingia',26),(51,'Guinea Bactris',20),(52,'Clustered Frostweed',12),(53,'Mound Saltbush',16),(54,'Wisconsin Blackberry',2),(55,'Mountain Lovegrass',79),(56,'Serrate Aphanorrhegma Moss',55),(57,'Small Philippine Acacia',41),(58,'Elegant Silverpuffs',64),(59,'Aulacomnium Moss',38),(60,'Wrinkleseed Pygmyweed',3),(61,'Heartleaf Four O\'clock',33),(62,'White Rosewood',71),(63,'Jovibarba',77),(64,'Cracked Lichen',10),(65,'Quillwort',77),(66,'Desert Muhly',27),(67,'Pinkglobe Prairie Clover',56),(68,'Orcutt\'s Yellow Pincushion',99),(69,'Hybrid Oak',82),(70,'Snowline Springparsley',72),(71,'Ischaemum',53),(72,'Mt. Albert Goldenrod',46),(73,'Finehair Hymenopappus',73),(74,'Kauai Labordia',22),(75,'Slender Orcutt Grass',32),(76,'Chocolate Chip Lichen',6),(77,'Pine Barren Ticktrefoil',87),(78,'Tworank Sedge',15),(79,'Austroamerican Skin Lichen',2),(80,'Scarlet Bottlebrush',86),(81,'Woolly Huckleberry',11),(82,'Longstalk Holly',99),(83,'Red Trillium',88),(84,'Lousewort',90),(85,'Green Beebalm',36),(86,'Lacy Thistle',10),(87,'Wand Woollystar',69),(88,'Branching Phacelia',35),(89,'Cyamopsis',78),(90,'Springtape',52),(91,'Deflexed Brachiaria',58),(92,'Evans\' Beard Lichen',99),(93,'Canadian Gooseberry',45),(94,'Ginseng',22),(95,'Common Motherwort',26),(96,'Longspur Lupine',91),(97,'Bartramia Moss',48),(98,'Rimmed Lichen',53),(99,'Lance Fern',87),(100,'Showy Coneflower',79);
/*!40000 ALTER TABLE `lista_de_reproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `correo_electronico` varchar(30) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `restablecer_clave` varchar(20) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_login`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'bchance0@microsoft.com','5wT5J1D','NsToyAoo',86),(2,'sjehaes1@slate.com','THEtQrXf6Y','gVQLpXM',59),(3,'tnaylor2@lulu.com','HyvAtWPTcE','eOeO3W',46),(4,'swaplington3@prnewswire.com','L4bn9z','wdVxbPABA',58),(5,'cpossek4@alexa.com','YuGIyMnU','o9IaO2pvDMw',10),(6,'jjennings5@wisc.edu','5zSqPA36w','CBChrQg',77),(7,'vkinforth6@squarespace.com','jVCmGq6sDyx','YWYkOVv4',90),(8,'lgoose7@live.com','bzp7vFFnQEYY','pvzxPQ',53),(9,'nblasetti8@istockphoto.com','bb9AL4Tes','xclxq1gTd4',28),(10,'zdinning9@w3.org','My4VNh0Jgo','0WJXVoE45',58),(11,'mglena@cdbaby.com','cY2Xar','KGF3khsZ1FFB',40),(12,'acliffordb@woothemes.com','cYffNskeSFQ','CDwjTTZAVN',24),(13,'teisikowitchc@aol.com','j98NvzjIuAV','imNBG7orj5Xv',26),(14,'ipiggensd@businessinsider.com','swMLi4r42QJ','PqQl3vdu8F',95),(15,'gdownee@netscape.com','IXeiE4KL','6EOnJZpklvE0',60),(16,'rbarreauf@archive.org','UeVx83uHo','5Mu3G2qhXS',25),(17,'ogulleng@samsung.com','AmVAcvYXw8lw','We8vzU8',76),(18,'ihewsh@i2i.jp','YnI5hVUZ3Hv','WySMQq',19),(19,'zyannei@wufoo.com','L7C2Fj','P7lvAOAs',14),(20,'dsierj@ask.com','ufuopRK','OSZNgxtXYTL',96),(21,'dmcfaterk@who.int','atAlJ2PcnSD','LlOMhveL',94),(22,'aboulesl@ameblo.jp','8A3UdZcW','TgWVhc',27),(23,'aacorsm@miibeian.gov.cn','8DwtvACaS','ZShWPxdKxg',92),(24,'skneelandn@tamu.edu','5YgulP','iY2ASWSow3',26),(25,'cchieneo@exblog.jp','8Fe6rufxM2','1r3Ovs5',34),(26,'bshawdforthp@marketwatch.com','NKhgkk','RHvHXk2Q0p',42),(27,'mlammertzq@vistaprint.com','PxCOTWO1O','ZUXj0e',16),(28,'jcropr@mashable.com','Q34ZypL','gpz7054',14),(29,'hlowrances@bigcartel.com','Zjl2634JSR5','CSYhxTRi',79),(30,'sheaffeyt@google.co.uk','r4js3R2Mu','7nzoZf',96),(31,'jismailu@nydailynews.com','EK8wPf68R8gh','0Un5qONC9H9o',48),(32,'wreadmanv@msu.edu','a6TX1d3W','8R3qC90H',33),(33,'sjenkingw@epa.gov','5w9CDmxlc','5PTAWqLV8t',70),(34,'tmcgarrityx@slideshare.net','gOrxKu','TbyOqMICYQm',30),(35,'mdmychy@fc2.com','fzKUgBtEI71','JvPUco',15),(36,'swillishirez@mayoclinic.com','IgIB1Sj','RLWtWJOyiLkZ',36),(37,'ddabes10@mail.ru','yhB22Yyv8','ImojWD',72),(38,'themerijk11@nymag.com','v05eIExXaawl','CrT5e8OiCM90',41),(39,'wcreyke12@earthlink.net','xWQlhl','H0BxN7v',53),(40,'cnaper13@answers.com','jwKDvKGroSL','GGwGQ1G',7);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `reporte_creada_por_el_estudiante`
--

DROP TABLE IF EXISTS `reporte_creada_por_el_estudiante`;
/*!50001 DROP VIEW IF EXISTS `reporte_creada_por_el_estudiante`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `reporte_creada_por_el_estudiante` (
  `Titulo` tinyint NOT NULL,
  `Artista` tinyint NOT NULL,
  `Album` tinyint NOT NULL,
  `Duracion` tinyint NOT NULL,
  `Año_de_creacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `reporte_de_canciones_mas_escuchados`
--

DROP TABLE IF EXISTS `reporte_de_canciones_mas_escuchados`;
/*!50001 DROP VIEW IF EXISTS `reporte_de_canciones_mas_escuchados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `reporte_de_canciones_mas_escuchados` (
  `Titulo` tinyint NOT NULL,
  `Album` tinyint NOT NULL,
  `Artista` tinyint NOT NULL,
  `Cantidad_de_veces_escuchando` tinyint NOT NULL,
  `Cantidad_de_usuarios` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `reporte_de_ingresos_de_usuarios`
--

DROP TABLE IF EXISTS `reporte_de_ingresos_de_usuarios`;
/*!50001 DROP VIEW IF EXISTS `reporte_de_ingresos_de_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `reporte_de_ingresos_de_usuarios` (
  `Nombre_de_usuario` tinyint NOT NULL,
  `Ultimo_ingreso` tinyint NOT NULL,
  `Cantidad_de_ingresos_en_total` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `fecha_de_creacion` datetime NOT NULL,
  `foto_de_perfil` blob DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Solène','Cally','Mounsey','2019-10-29 00:00:00','https://robohash.org/corruptioditea.jpg?size=50x50&set=set1'),(2,'Yóu','Madelaine','Ranvoise','2020-01-12 00:00:00','https://robohash.org/quosplaceatconsequuntur.jpg?size=50x50&set=set1'),(3,'Uò','Rodd','Kinzett','2019-08-03 00:00:00','https://robohash.org/eumipsablanditiis.bmp?size=50x50&set=set1'),(4,'Stéphanie','Carny','Brambley','2020-05-24 00:00:00','https://robohash.org/nisiquisquamtotam.jpg?size=50x50&set=set1'),(5,'Kévina','Barry','Tooth','2019-12-23 00:00:00','https://robohash.org/temporelaborumquam.jpg?size=50x50&set=set1'),(6,'Séréna','Boniface','McGrah','2019-08-02 00:00:00','https://robohash.org/exconsequaturconsequatur.png?size=50x50&set=set1'),(7,'Mélinda','Aretha','Jouannisson','2019-06-25 00:00:00','https://robohash.org/facereametqui.bmp?size=50x50&set=set1'),(8,'Dà','Dalli','Clewlow','2020-05-15 00:00:00','https://robohash.org/etcommodiipsum.png?size=50x50&set=set1'),(9,'Cloé','Maura','Varnals','2020-04-29 00:00:00','https://robohash.org/illumautvelit.bmp?size=50x50&set=set1'),(10,'Erwéi','Ilka','Cazin','2019-07-08 00:00:00','https://robohash.org/solutaexplicabodignissimos.png?size=50x50&set=set1'),(11,'Nuó','Avivah','MacNeilly','2019-12-09 00:00:00','https://robohash.org/quiadelenitiimpedit.png?size=50x50&set=set1'),(12,'Maïté','Linnet','Sclanders','2019-07-30 00:00:00','https://robohash.org/sedaliasvoluptatem.jpg?size=50x50&set=set1'),(13,'Lorène','Marcie','Luetkemeyers','2019-10-28 00:00:00','https://robohash.org/laborumsitsed.jpg?size=50x50&set=set1'),(14,'Kuí','Tucky','Hubbart','2019-07-21 00:00:00','https://robohash.org/saepesintrepellendus.jpg?size=50x50&set=set1'),(15,'Aurélie','Jane','Valiant','2020-04-02 00:00:00','https://robohash.org/deseruntliberocommodi.png?size=50x50&set=set1'),(16,'Loïs','Hobie','Itzhak','2019-11-28 00:00:00','https://robohash.org/doloremreprehenderitsuscipit.bmp?size=50x50&set=set1'),(17,'Gisèle','Keefer','Sedgmond','2019-09-27 00:00:00','https://robohash.org/veltemporaeum.png?size=50x50&set=set1'),(18,'Océanne','Armin','Munkton','2019-08-05 00:00:00','https://robohash.org/sitmaioreseum.bmp?size=50x50&set=set1'),(19,'Bérénice','Malissa','Winton','2020-03-01 00:00:00','https://robohash.org/aspernaturperferendisanimi.bmp?size=50x50&set=set1'),(20,'Maëly','Leona','Glencrosche','2019-11-08 00:00:00','https://robohash.org/solutaistedolor.jpg?size=50x50&set=set1'),(21,'Táng','Jacquelin','Habershaw','2020-03-14 00:00:00','https://robohash.org/adillotenetur.bmp?size=50x50&set=set1'),(22,'Faîtes','Robinette','Hamshaw','2019-11-10 00:00:00','https://robohash.org/nihilsedlibero.png?size=50x50&set=set1'),(23,'Håkan','Kippie','MacKimmie','2019-07-12 00:00:00','https://robohash.org/fugitinciduntdelectus.jpg?size=50x50&set=set1'),(24,'Maëlann','Carolan','Spolton','2019-09-15 00:00:00','https://robohash.org/distinctionecessitatibusdolores.jpg?size=50x50&set=set1'),(25,'Ruì','Arden','Cocks','2020-02-13 00:00:00','https://robohash.org/quiasaepepossimus.jpg?size=50x50&set=set1'),(26,'Léandre','Terrie','Dransfield','2020-02-15 00:00:00','https://robohash.org/quosdolorqui.png?size=50x50&set=set1'),(27,'Mélissandre','Novelia','Baldetti','2020-01-31 00:00:00','https://robohash.org/consequunturvelnumquam.png?size=50x50&set=set1'),(28,'Stévina','Zeke','Poulgreen','2020-02-03 00:00:00','https://robohash.org/hicnesciuntrepellat.jpg?size=50x50&set=set1'),(29,'Océanne','Mable','Gladman','2019-12-27 00:00:00','https://robohash.org/expeditaeumeveniet.bmp?size=50x50&set=set1'),(30,'Garçon','Stepha','Hillyatt','2019-07-12 00:00:00','https://robohash.org/velmollitiaenim.bmp?size=50x50&set=set1'),(31,'Mélanie','Wildon','Coale','2019-11-30 00:00:00','https://robohash.org/etquasdolorem.png?size=50x50&set=set1'),(32,'Ráo','Shay','Bernadzki','2019-06-03 00:00:00','https://robohash.org/etiustoipsa.jpg?size=50x50&set=set1'),(33,'Mahélie','Antonella','Bridgeman','2019-07-05 00:00:00','https://robohash.org/estquisiusto.png?size=50x50&set=set1'),(34,'Lèi','Nicolina','Arnald','2019-10-10 00:00:00','https://robohash.org/liberoquoditaque.png?size=50x50&set=set1'),(35,'Östen','Lynn','Keddie','2019-08-29 00:00:00','https://robohash.org/quamaspernaturcorporis.jpg?size=50x50&set=set1'),(36,'Méline','Jodi','Pomfrey','2019-11-18 00:00:00','https://robohash.org/corporisevenietdoloremque.png?size=50x50&set=set1'),(37,'Maéna','Maure','Gendrich','2019-07-30 00:00:00','https://robohash.org/quasinid.png?size=50x50&set=set1'),(38,'Océane','Hugues','Shiers','2019-08-03 00:00:00','https://robohash.org/suscipitverodolorum.bmp?size=50x50&set=set1'),(39,'Adélie','Bartholomeo','Poone','2019-06-15 00:00:00','https://robohash.org/autvoluptatemomnis.bmp?size=50x50&set=set1'),(40,'Mélodie','Percival','Dorie','2019-08-07 00:00:00','https://robohash.org/repellatsapienteet.png?size=50x50&set=set1'),(41,'Océane','Lyman','Galletly','2020-01-25 00:00:00','https://robohash.org/assumendaautqui.bmp?size=50x50&set=set1'),(42,'Laïla','Ilyse','Lloyds','2019-09-30 00:00:00','https://robohash.org/aperiamdebitisdicta.bmp?size=50x50&set=set1'),(43,'Thérèse','Crichton','Dedon','2020-01-22 00:00:00','https://robohash.org/minusetdignissimos.png?size=50x50&set=set1'),(44,'Eloïse','Verina','Manktelow','2020-05-21 00:00:00','https://robohash.org/voluptatemdoloredeserunt.jpg?size=50x50&set=set1'),(45,'Régine','Roselle','Highnam','2019-10-15 00:00:00','https://robohash.org/suntquaeratquam.bmp?size=50x50&set=set1'),(46,'Sòng','Cazzie','Solon','2019-08-31 00:00:00','https://robohash.org/etperspiciatisrerum.jpg?size=50x50&set=set1'),(47,'Océanne','Maegan','Aiston','2019-12-15 00:00:00','https://robohash.org/etconsequunturet.jpg?size=50x50&set=set1'),(48,'Laurélie','Adara','Skinn','2019-12-02 00:00:00','https://robohash.org/officiisestiste.png?size=50x50&set=set1'),(49,'Esbjörn','Leslie','Drain','2019-06-17 00:00:00','https://robohash.org/illumetquia.bmp?size=50x50&set=set1'),(50,'Illustrée','Gipsy','Kenningham','2019-07-29 00:00:00','https://robohash.org/evenietessedeleniti.png?size=50x50&set=set1'),(51,'Mårten','Bengt','Karolczyk','2020-05-11 00:00:00','https://robohash.org/recusandaequivitae.bmp?size=50x50&set=set1'),(52,'Mélia','Tedra','Linn','2019-08-26 00:00:00','https://robohash.org/uteumcum.bmp?size=50x50&set=set1'),(53,'Bérangère','Dede','Booij','2020-04-10 00:00:00','https://robohash.org/saeperecusandaedolores.jpg?size=50x50&set=set1'),(54,'Réservés','Orelia','Escalante','2019-06-08 00:00:00','https://robohash.org/saepeitaquenostrum.png?size=50x50&set=set1'),(55,'Mårten','Adler','Marczyk','2019-11-28 00:00:00','https://robohash.org/repellatrepudiandaeexpedita.jpg?size=50x50&set=set1'),(56,'Adèle','Melody','Gurnee','2019-10-19 00:00:00','https://robohash.org/omnissimiliqueet.jpg?size=50x50&set=set1'),(57,'Méng','Fields','Bolton','2020-02-08 00:00:00','https://robohash.org/perspiciatisrerumsequi.bmp?size=50x50&set=set1'),(58,'Lauréna','Sharline','Dunlea','2019-06-25 00:00:00','https://robohash.org/explicabomaximesequi.png?size=50x50&set=set1'),(59,'Irène','Winne','Bare','2020-03-09 00:00:00','https://robohash.org/minimaquiqui.png?size=50x50&set=set1'),(60,'Renée','Lavina','Gawthorp','2020-04-16 00:00:00','https://robohash.org/quiafugiatmolestiae.bmp?size=50x50&set=set1'),(61,'Joséphine','Jammal','Arens','2019-10-25 00:00:00','https://robohash.org/cumquerepellendustotam.bmp?size=50x50&set=set1'),(62,'Maïwenn','Donnell','Nestoruk','2020-01-12 00:00:00','https://robohash.org/eteumdolor.jpg?size=50x50&set=set1'),(63,'Maïwenn','Robbyn','Pealing','2019-07-21 00:00:00','https://robohash.org/doloranon.bmp?size=50x50&set=set1'),(64,'Mélia','Reinhold','Scranney','2019-10-24 00:00:00','https://robohash.org/voluptatemautimpedit.jpg?size=50x50&set=set1'),(65,'Léone','Cobb','Henmarsh','2019-10-03 00:00:00','https://robohash.org/asperioresdoloreset.bmp?size=50x50&set=set1'),(66,'Solène','Baxy','Etheredge','2019-09-22 00:00:00','https://robohash.org/officiisdoloremnon.bmp?size=50x50&set=set1'),(67,'Amélie','Ansley','Britian','2020-05-04 00:00:00','https://robohash.org/quofacilisvoluptas.jpg?size=50x50&set=set1'),(68,'Intéressant','Ernesto','Napoleone','2020-05-29 00:00:00','https://robohash.org/nullavoluptatemmaiores.png?size=50x50&set=set1'),(69,'Pål','Tobit','Janku','2019-06-05 00:00:00','https://robohash.org/voluptatemvelitquo.png?size=50x50&set=set1'),(70,'Geneviève','Waldon','Markushkin','2019-07-30 00:00:00','https://robohash.org/inventoremolestiaeipsam.png?size=50x50&set=set1'),(71,'Estée','Vivie','Kytter','2019-10-24 00:00:00','https://robohash.org/quasiiustodolores.png?size=50x50&set=set1'),(72,'Esbjörn','Marmaduke','Frick','2020-04-04 00:00:00','https://robohash.org/aspernaturomnisvoluptas.jpg?size=50x50&set=set1'),(73,'Nadège','Tracey','Downey','2019-06-16 00:00:00','https://robohash.org/doloremipsaaperiam.bmp?size=50x50&set=set1'),(74,'Cloé','Frances','Meecher','2019-09-06 00:00:00','https://robohash.org/aquasex.png?size=50x50&set=set1'),(75,'Åslög','Charmane','Cornhill','2020-05-24 00:00:00','https://robohash.org/saepeutipsam.bmp?size=50x50&set=set1'),(76,'Angélique','Shep','Howard - Gater','2019-12-06 00:00:00','https://robohash.org/rerumipsamnihil.bmp?size=50x50&set=set1'),(77,'Cloé','Mead','Glasner','2019-07-25 00:00:00','https://robohash.org/solutaquibusdamofficia.bmp?size=50x50&set=set1'),(78,'Michèle','Maury','Hacking','2019-09-29 00:00:00','https://robohash.org/recusandaeearumquia.png?size=50x50&set=set1'),(79,'Lyséa','Modestine','Martello','2020-02-24 00:00:00','https://robohash.org/autofficiisdelectus.png?size=50x50&set=set1'),(80,'Hélèna','Lane','Faldoe','2019-06-21 00:00:00','https://robohash.org/aperiamsitet.png?size=50x50&set=set1'),(81,'Börje','Dalenna','Darko','2019-07-12 00:00:00','https://robohash.org/quidemitaquequi.jpg?size=50x50&set=set1'),(82,'Angèle','Leoine','Dornan','2019-07-11 00:00:00','https://robohash.org/quibusdamdoloremea.bmp?size=50x50&set=set1'),(83,'Pò','Thatcher','Mustarde','2019-11-10 00:00:00','https://robohash.org/cupiditatevoluptatemvoluptatem.png?size=50x50&set=set1'),(84,'Joséphine','Madison','Vockings','2019-10-09 00:00:00','https://robohash.org/veniamremanimi.bmp?size=50x50&set=set1'),(85,'Marie-thérèse','Filmer','Hacquel','2019-10-21 00:00:00','https://robohash.org/eiusutexpedita.png?size=50x50&set=set1'),(86,'Åsa','Marsha','Sacchetti','2020-02-29 00:00:00','https://robohash.org/quiaautut.png?size=50x50&set=set1'),(87,'André','Ramsay','Vanes','2019-11-29 00:00:00','https://robohash.org/facereconsequunturofficiis.bmp?size=50x50&set=set1'),(88,'Östen','Devi','Dines','2019-12-28 00:00:00','https://robohash.org/maximequisvoluptatem.bmp?size=50x50&set=set1'),(89,'Bérénice','Coreen','Issitt','2019-09-22 00:00:00','https://robohash.org/explicaboquisdolor.png?size=50x50&set=set1'),(90,'Léonore','Susanna','Mathelin','2019-07-26 00:00:00','https://robohash.org/eamolestiasest.bmp?size=50x50&set=set1'),(91,'Gösta','Mar','Oret','2019-10-10 00:00:00','https://robohash.org/consequaturprovidentab.bmp?size=50x50&set=set1'),(92,'Lèi','Justin','Tulleth','2020-02-04 00:00:00','https://robohash.org/repellendusnonsequi.bmp?size=50x50&set=set1'),(93,'Estée','Gerald','Mewhirter','2020-02-19 00:00:00','https://robohash.org/suscipiteiusa.jpg?size=50x50&set=set1'),(94,'Chloé','Ulises','Chataignier','2019-11-05 00:00:00','https://robohash.org/exetnihil.jpg?size=50x50&set=set1'),(95,'Maëlle','Lou','Leicester','2020-01-21 00:00:00','https://robohash.org/ipsautsoluta.bmp?size=50x50&set=set1'),(96,'Renée','Kellyann','Comazzo','2020-05-06 00:00:00','https://robohash.org/quioditest.png?size=50x50&set=set1'),(97,'Gérald','Gerry','Sainthill','2019-07-23 00:00:00','https://robohash.org/dolorbeataeet.jpg?size=50x50&set=set1'),(98,'Léa','Cathyleen','Anthill','2020-03-09 00:00:00','https://robohash.org/eoslaboreet.png?size=50x50&set=set1'),(99,'Tú','Heddi','Cuell','2019-08-20 00:00:00','https://robohash.org/solutaminusvoluptatem.png?size=50x50&set=set1'),(100,'Anaël','Renae','Hains','2020-03-05 00:00:00','https://robohash.org/nihilautcommodi.jpg?size=50x50&set=set1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `reporte_creada_por_el_estudiante`
--

/*!50001 DROP TABLE IF EXISTS `reporte_creada_por_el_estudiante`*/;
/*!50001 DROP VIEW IF EXISTS `reporte_creada_por_el_estudiante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_creada_por_el_estudiante` AS select `cancion`.`titulo` AS `Titulo`,`artista`.`nombre` AS `Artista`,`album`.`nombre` AS `Album`,`cancion`.`duracion` AS `Duracion`,`cancion`.`anio_de_creacion` AS `Año_de_creacion` from ((`cancion` join `album`) join `artista`) where `album`.`id_album` = `cancion`.`id_album` and `artista`.`id_artista` = `album`.`id_artista` and (`artista`.`nombre` like 'A%' or `artista`.`nombre` like 'P%') and `cancion`.`favorita` = 1 and `cancion`.`anio_de_creacion` > 2001 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporte_de_canciones_mas_escuchados`
--

/*!50001 DROP TABLE IF EXISTS `reporte_de_canciones_mas_escuchados`*/;
/*!50001 DROP VIEW IF EXISTS `reporte_de_canciones_mas_escuchados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_de_canciones_mas_escuchados` AS select `cancion`.`titulo` AS `Titulo`,`album`.`nombre` AS `Album`,`artista`.`nombre` AS `Artista`,count(`cancion_escuchada`.`id_cancion`) AS `Cantidad_de_veces_escuchando`,count(distinct `usuario`.`id_usuario`) AS `Cantidad_de_usuarios` from ((((`cancion` join `album`) join `artista`) join `usuario`) join `cancion_escuchada`) where `cancion`.`id_album` = `album`.`id_album` and `artista`.`id_artista` = `album`.`id_artista` and `usuario`.`id_usuario` = `cancion_escuchada`.`id_usuario` and `cancion`.`id_cancion` = `cancion_escuchada`.`id_cancion` group by `cancion`.`titulo` order by count(`cancion_escuchada`.`id_cancion`) desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporte_de_ingresos_de_usuarios`
--

/*!50001 DROP TABLE IF EXISTS `reporte_de_ingresos_de_usuarios`*/;
/*!50001 DROP VIEW IF EXISTS `reporte_de_ingresos_de_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_de_ingresos_de_usuarios` AS select `usuario`.`nombre` AS `Nombre_de_usuario`,`auditoria`.`hora_entrada` AS `Ultimo_ingreso`,count(`auditoria`.`id_usuario`) AS `Cantidad_de_ingresos_en_total` from (`usuario` join `auditoria`) where `auditoria`.`descripcion` = 'login' and `usuario`.`id_usuario` = `auditoria`.`id_usuario` group by `auditoria`.`id_usuario` */;
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

-- Dump completed on 2020-06-09  4:20:35
