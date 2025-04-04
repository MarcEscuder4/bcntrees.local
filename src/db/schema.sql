-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-04-2025 a las 15:54:27
-- Versión del servidor: 8.0.41-0ubuntu0.22.04.1
-- Versión de PHP: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trees_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute`
--

CREATE TABLE `attribute` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf32_bin NOT NULL,
  `original_image` text CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `local_image` text CHARACTER SET utf32 COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Volcado de datos para la tabla `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `original_image`, `local_image`) VALUES
(1, 'Tipus de fulla - Caduca', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_fulla_caduca.png?itok=pBisjPbE', ''),
(2, 'Tipus de fulla - Perenne', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_fulla_perenne.png?itok=AgqN7zdy', ''),
(3, 'Zona climàtica - Totes', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_zonaclima_totes.png?itok=q7Y9hDtj', ''),
(4, 'Alçada - Mitjana (de 6 a 15 m)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_alsada_6_15.png?itok=rIfuq0La', ''),
(5, 'Capçada - Mitjana (de 4 a 6 m de diàmetre)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_capsada_4_6.png?itok=LqE2AIbh', ''),
(6, 'Tolerància a la sequera - Tolerant', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_sequera_tolerant.png?itok=eMeSNbTP', ''),
(7, 'Tolerància a la calor - Tolerant', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_calor_tolerant.png?itok=sTsc9AKn', ''),
(8, 'Tolerància a les gelades - Resistent', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_mediorigen_glassades_resistents_0.png?itok=AwWtuUOo', ''),
(9, 'Proximitat al mar - Tolerant', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_proximitatmar_tolerant.png?itok=0sKauerW', ''),
(10, 'Plagues - escasses', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_plagues_escasses.png?itok=DyLEGwVk', ''),
(11, 'Resistència a la calç - Tolerant', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_mediorigen_cals_tolerant.png?itok=Ma4rN4dV', ''),
(12, 'Tolerància a la calor - Resistent', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_calor_resistent.png?itok=Ienxsa-y', ''),
(13, 'Ubicació - Zones pavimentades', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_ubicacio_pavimentades_0.png?itok=aLpcN_gw', ''),
(14, 'Resistència a la calç - Resistent', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_mediorigen_cals_resistent.png?itok=fnsq91t1', ''),
(15, 'Plagues - freqüents', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_plagues_frequents.png?itok=q_S46sdi', ''),
(16, 'Ubicació - Zones verdes', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_ubicacio_zona_verda.png?itok=_Y5QQ4xp', ''),
(17, 'Zona climàtica - Interior/Muntanya', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_zonaclima_muntanya_interior.png?itok=cD33uNIW', ''),
(18, 'Capçada - Ampla (de 6 a 8 m de diàmetre)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_capsada_6_8.png?itok=6y1riGnA', ''),
(19, 'Proximitat al mar - Sensible', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_proximitatmar_sensible.png?itok=iW76QhH_', ''),
(20, 'Plagues - Cròniques', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_plagues_croniques.png?itok=ay-AGF_Z', ''),
(21, 'Alçada - Alta (més de 15 m)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_alsada_15.png?itok=8vOnpWmM', ''),
(22, 'Capçada - Molt ampla (més de 8 m de diàmetre)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_capsada_8.png?itok=IIXSqZGr', ''),
(23, 'Tolerància a la calor - Sensible', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_calor_sensible_0.png?itok=cugWktGj', ''),
(24, 'Alçada - Baixa (menys de 6 m)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_alsada_6.png?itok=MXXtpJ1y', ''),
(25, 'Resistència a la calç - Sensible', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_mediorigen_cals_resistent_sensible.png?itok=P5Poy0fI', ''),
(26, 'Tolerància a la sequera - Sensible ', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_sequera_sensible.png?itok=7o-VQ23b', ''),
(27, 'Tolerància a les gelades - Tolerant', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_mediorigen_glassades_tolerant.png?itok=W3fzyYeX', ''),
(28, 'Tolerància a la sequera - Resistent', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_sequera_resistent_0.png?itok=UIzIDuBD', ''),
(29, 'Zona climàtica - Costa/Interior', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_zonaclima_interior_costa.png?itok=uMm5oOXi', ''),
(30, 'Zona climàtica - Costa', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_zonaclima_costa.png?itok=HZPHgYH6', ''),
(31, 'Tolerància a les gelades - Sensible', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_mediorigen_glassades_sensible.png?itok=UsW5Iq4T', ''),
(32, 'Proximitat al mar - Resistent', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_proximitatmar_resistent.png?itok=sDLdK0AM', ''),
(33, 'Capçada - Estreta (de 2 a 4 m de diàmetre)', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_capsada_2_4.png?itok=1ChY6Cqd', ''),
(34, 'Zona climàtica - Muntanya', 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/thumbnail/public/icona_arbrat_zonaclima_muntanya.png?itok=Q8xS0YhK', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genre`
--

CREATE TABLE `genre` (
  `name` varchar(255) COLLATE utf32_bin NOT NULL,
  `id` int DEFAULT NULL,
  `description` text COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Volcado de datos para la tabla `genre`
--

INSERT INTO `genre` (`name`, `id`, `description`) VALUES
('Acer', 1, 'Són un gènere de plantes angiospermes de la família de les sapindàcies (Sapindaceae). Son plantes natives d\'Europa, Àsia, Amèrica del Nord i nord d\'Àfrica.'),
('Aesculus', 2, 'Aesculus és un gènere de plantes angiospermes de la família de les sapindàcies.\r\nN\'hi ha entre 13 i 19 espècies de castanyer d\'Índia. L\'única espècie europea del gènere és el castanyer bord (Aesculus hippocastanum), originari dels Balcans. D\'altres es troben de manera natural del Japó i la Xina fins a l\'Himalaia, al subcontinent indi, a l\'Àsia del sud-est i també a l\'Amèrica del Nord.'),
('Albizia', 3, 'Albizia (sinònim Albizzia Benth.) és un gènere de plantes amb flors amb unes 150 espècies d\'arbres i arbusts de creixement ràpid, subtropicals i tropicals, dins la subfamília Mimosoideae de les fabàcies.\r\nÉs un gènere pantropical d\'Asia, Àfrica, Madagascar, Amèrica Central, Amèrica del Sud, sud d\'Amèrica del Nord i Austràlia.'),
('Alnus', 4, 'Alnus és un gènere de plantes angiospermes de la família de les betulàcies (Betulaceae). Compren unes 40 espècies, natives de la zona temperada nord i dels Andes a Sud-amèrica. Als Països Catalans l\'única espècie autòctona n\'és el vern (Alnus glutinosa).\r\nSón arbres o arbusts caducifolis, les fulles són simples, ovades, obovades o el·líptiques, alternes i serrades. Les flor es presenten agrupades en inflorescències en forma d\'aments, els masculins allargats i els femenins més curts, tots dos a la mateixa planta i propers. Els aments poden presentar-se solitaris o en agrupacions racemoses. Les flors masculines acostumen a tenir 4 estams. Els fruits, sàmares amb dues ales, s\'agrupen en infructescències que resten a la planta molt de temps després d\'alliberar els fruits.'),
('Amelanchier', 5, 'Amelanchier és un gènere de plantes de la família Rosàcia amb unes 20 espècies d\'arbusts i petits arbres caducifolis. Només Amelanchier ovalis és present als Països Catalans.\r\nEl nom del gènere Amelanchier es creu que deriva del nom comú occità del corner (A. ovalis). El nom de la ciutat canadenca de Saskatoon deriva del nom indígena, Cree, d\'A. alnifolia.'),
('Araucaria', 6, 'Les araucàries (Araucaria) són un gènere coníferes de la família de les araucariàcies (Araucariaceae), que inclou 20 espècies d\'arbres natives de l\'hemisferi sud. El nom del gènere prové del mot \"araucano\", el nom amb què els colonitzadors espanyols denominaven els maputxes de Xile.\r\nSón grans arbres perennifolis amb un tronc massiu que, segons l\'espècie, pot arribar a alçades de 30-80 m. Les branques s\'estenen de forma horitzontal i les fulles són en forma d\'agulla, típica de les coníferes. Generalment les araucàries són dioiques, amb pinyes mascles i femelles en arbres separats. '),
('Arbutus', 7, 'Arbutus és un gènere de plantes amb flors dins la família de les ericàcies. És natiu de la conca del Mediterrani, oest d\'Europa i Amèrica del Nord i Central. Consta de 14 espècies acceptades, dues de les quals natives d\'Europa: l\'arboç (Arbutus unedo) i Arbutus andrachne, els quals s\'hibriden de manera natural. Les espècies d\'Arbutus són aliment de certs lepidòpters com Pavonia pavonia. \r\nSón arbres petits o arbusts amb l\'escorça vermella i fruits comestibles. El desenvolupament del fruit es retarda uns cinc mesos després de la pol·linització i les flors apareixen l\'any previ a la maduració del fruit. '),
('Bauhinia', 8, 'Bauhinia és un gènere de plantes amb flor de la subfamília Caesalpinioideae.\r\nSón arbres de les zones tropicals amb flors de cinc pètals i de 7.5 a 12.5 cm de diàmetres força espectaculars. Els fruits són en beina. El gènere comprèn unes 200 espècies.'),
('Betula', 9, 'Els bedolls o beços són les plantes del gènere Betula, del grup de les plantes amb flor dins la família de les betulàcies. La major part són arbres.\r\nÉs originari de l\'hemisferi nord amb moltes espècies de zones fredes. A Europa s\'hi troben quatre espècies de bedolls, dues de molt esteses Betula pendula, el bedoll comú, i Betula pubescens, el bedoll pubescent, i altres dues que només es troben a les regions àrtiques, Betula nana, el bedoll nan, i Betula humilis.'),
('Brachychiton', 10, 'Brachychiton (kurrajong o arbre de foc) és un gènere de plantes amb flors que té 31 espècies. Pertany a la família esterculiàcia (la mateixa que la del gènere Theobroma del cacau). Són arbres i arbustos grans monoics i són plantes natives d\'Austràlia (amb 30 espècies) i de Nova Guinea (una espècie). Els seus fòssils daten del Cenozoic.\r\nArriben a fer entre 4 a 30 metres d\'alt i algunes espècies són caducifòlies durant l\'estació seca. Algunes espècies tenen un tronc molt curt en relació a la seva mida total i en ell emmagatzemen aigua.\r\nEl color de les seves flors varia segons les espècies. Les espècies forestals més orientals perden la fulla abans de florir però en les regions seques acostumen a florir amb fulles a les plantes. '),
('Broussonetia', 11, 'Broussonetia és un gènere amb 38 espècies d\'àrbres de la familia Moraceae, són natius del est d\'Àsia. '),
('Calocedrus', 12, 'Calocedrus és un gènere de les coníferas de la familia Cupressaceae. Comprén 14 espècies descrites, i d\'aquestes, nomès 4 acceptadas.'),
('Carpinus', 13, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Castanea', 14, 'Castanea és un gènere de plantes amb flor de l\'ordre Fagales. Tot i que en català la paraula castanyer es refereix només a l\'espècie europea d\'aquest gènere (Castanea sativa) de vegades s\'aplica de forma genèrica a qualsevol arbre del gènere.\r\n\r\nSón arbres caducifolis que es troben a les zones temperades del món. La majoria de castanyers són arbres grans, de 20 a 40 metres d\'alçaria, però algunes espècies són de la mida d\'un arbust.\r\n\r\nEl fruit, la castanya, és una càpsula espinosa en cúpula que fa entre 5 i 11 centímetres de diàmetre i conté de 2 a 7 castanyes. Les castanyes són fruits comestibles, força apreciats a la gastronomia d\'alguns països, tot i que de vegades es consideren \"menjar de pobre\".'),
('Casuarina', 15, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Catalpa', 16, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Cedrus', 17, 'Cedrus és un gènere de coníferes de la família de les pinàcies que inclou el cedres verdaders, per bé que hi ha altres espècies que reben el nom de cedres i que pertanyen a d\'altres gèneres, com el cedre de Virgínia (Juniperus virginiana) o el cedre americà (Cedrela odorata).\r\n\r\nAdopten la forma d\'arbres sempre verds, de fulles aciculars agrupades en fascicles i pinyes ovoides i dretes, que cauen amb la maturitat. Són arbres de capçada grossa i figura cònica en la joventut passant a la forma tabular quan són vells. Un bosc de cedres s\'anomena cedreda.\r\n'),
('Celtis', 18, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Ceratonia', 19, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Cercis', 20, 'Els Cercis, anomenats Redbuds als Estats Units, són un gènere d\'aproximadament 6-10 espècies de la família Fabaceae, originaris de regions temperades de l\'hemisferi nord. Són petits arbres o grans arbusts, caracteritzats per fulles senzilles de forma arrodonida o en forma de cor i flors vermelles o rosades que surten al principi de la primavera a parts de l\'arbre sense fulles.'),
('Chitalpa', 93, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Chorisia', 21, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Citrus', 22, 'Els cítrics o agres (Citrus) són un gènere de grans arbusts, d\'entre 3 i 15 metres, de fulla perenne, de la família de les rutàcies. Els seus fruits posseeixen un alt contingut en vitamina C, la qual els proporciona aquest típic sabor àcid tan característic. Són originaris de l\'Àsia tropical i subtropical, i en formen part tres espècies pròpiament dites i nombrosos híbrids conreats, incloses les fruites més àmpliament comercialitzades, com la llimona, la taronja, la llima o llimona dolça i la mandarina, amb diverses varietats que depenen de la regió en què es conreïn.\r\n\r\nGeneralment, els cítrics no són resistents al fred, temperatures continuades sota zero poden fer malbé tant els fruits com els brots joves, i per això són espècies cultivades en zones compreses entre els paral·lels 40 N i 40 S. Aquests conreus són abundants en totes les zones litorals de la conca mediterrània, essent molt comuns al sud del Principat i al País Valencià, on és regulat com a Indicació Geogràfica Protegida. '),
('Clerodendrum', 23, 'Clerodendrum és un gènere de plantes amb flors dins la família Lamiàcia. Actualment es classifica dins la subfamília Ajugoideae, essent un dels gèneres transferits des de Verbenàcia a Lamiàcia a la dècada de 1990.\r\n\r\nSón arbusts, lianes o arbrets. Clerodendrum fistulosum i Clerodendrum myrmecophila tenen les tiges buides on habiten formigues. Clerodendrum trichotomum és una planta ornamental comuna.'),
('Corylus', 24, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Crataegus', 25, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Cupressus', 26, 'Cupressus és un gènere de coníferes de la família de les cupressàcies. Inclou els xiprers típics, per bé que molts altres gèneres de la família reben el nom comú de xiprer. Inclou el xiprer comú o mediterrani (Cupressus sempervirens) un arbre molt freqüents als Països Catalans. Inclou nombroses espècies natives de l\'hemisferi nord.\r\n\r\nÉs un arbre de zones càlides o temperades, de creixement ràpid en els primers anys de vida, per alentir-se posteriorment; pot assolir els 20 metres d\'alçada. Segons l\'espècie, pot viure de 300 a 2.000 anys. \r\n\r\nCreix naturalment a qualsevol part del món si té la temperatura i el sòl adequats, i es cultiva comercialment a l\'Àfrica oriental, Sud-àfrica i Nova Zelanda.'),
('Diospyros', 27, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Elaeagnus', 28, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Eriobotrya', 29, 'Eriobotrya és un gènere de plantes amb flor de la família de les rosàcies.\r\n\r\nLa Xina és el lloc del món on es troben més espècies d\'Eriobotrya, amb 14 espècies diverses de les quals 3 són endèmiques.'),
('Erythrina', 30, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Fagus', 31, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Ficus', 32, 'Ficus és un gènere de plantes llenyoses de la família de les moràcies, de fulles simples i en siconi que comprèn unes 2.000 espècies, pròpies de països tropicals i subtropicals.\r\n\r\nLes plantes d\'aquest gènere adopten la forma d\'arbres, arbusts i lianes i fan el fruit (una figa normalment comestible) en forma de siconi. Són originàries de la zona de clima tropical amb unes poques espècies en zones de clima temperat càlid.'),
('Firmiana', 33, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Fraxinus', 34, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Ginkgo', 35, 'El ginkgo (Ginkgo) és un gènere de gimnospermes de la divisió Ginkgophyta del qual només en queda una espècie, Ginkgo biloba.\r\n\r\nEl ginkgo modern és un fòssil vivent, amb fòssils clarament propers a ell del període permià, fa 270 milions d\'anys. Es van estendre i diversificar per tota Lauràsia durant el Juràssic mitjà i el Cretaci i començà a escassejar a partir d\'aleshores. Fins al Paleocè, el Ginkgo adiantoides era l\'única espècie que hi restava i, al final del Plistocè, els fòssils de ginkgo desaparegueren de tots els registres, a excepció d\'una petita zona de la Xina central, on ha sobreviscut l\'espècie moderna. '),
('Gleditsia', 36, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Grevillea', 37, 'Grevillea és un gènere d\'angiosperma de la família de les proteàcies (Proteaceae). Són plantes natives essencialment d\'Austràlia, amb unes poques espècies de Papua Nova Guinea i de les illes al nord d\'Austràlia.'),
('Hibiscus', 38, 'Hibiscus o Hibisc, és un gènere de plantes amb flors de la família de les malvàcies (Malvaceae).\r\n\r\nÉs originari de les regions càlides, temperades, subtropicals i tropicals del món. En aquest gènere hi ha tant plantes anuals com perennes, i tant arbusts com arbres. Les flors són grosses, vistoses, en forma de trompeta de colors variats amb un pistil llarg amb diversos estams als costats. \r\n\r\nEl fruit és una càpsula que conté diverses llavors. '),
('Jacaranda', 39, 'Jacaranda és un gènere de plantes de la família Bignoniaceae.'),
('Juglans', 40, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Koelreuteria', 41, 'Koelreuteria és un gènere de plantes amb flors dins la família Sapindaceae, és natiu del sud i est d\'Àsia.\r\n\r\nSón arbres caducifolis de mida mitjana que fan de 10 a 20 m d\'alt amb les fulles disposades en espiral i pinnades o bipinnades. Les flors són petites i grogues agrupades en grosses panícules. Els fruits són càpsules amb llavors dures.'),
('Laburnum', 42, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Lagerstroemia', 43, 'Lagerstroemia és un gènere de plantes amb flors. Conté unes 50 espècies d\'arbres i arbusts caducifolis i de fulla persistent i són plantes natives del subcontinent indi, sud-est d\'Àsia, nord d\'Austràlia i parts d\'Oceania. Es cultiven en climes càlids de tot el món. El gènere rep el nom del mercader suec Magnus von Lagerström, qui subministrà a Carl von Linné amb plantes que ell recollia. Són plantes considerades com plantes ornamentals pels seus colors atractius. '),
('Lagunaria', 44, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Laurus', 45, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Ligustrum', 46, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Liquidambar', 47, 'Liquidàmbar (Liquidambar) és un gènere de fanerògames pertanyent a la família Altingiaceae, que de vegades és considerada com una part d\'Hamamelidaceae. Són arbres grans, caducifolis, 25 a 40 m d\'altura, amb fulles palmellades, lobulades, en arranjament espiralat en les branques. Les flors són petites, produint una inflorescència globular, densa, d\'1 a 2 cm de diàmetre, pèndols a 3 a 7 cm de la branca. El infrutesència és una càpsula llenyosa, múltiple, de 2 a 4 cm de diàmetre, amb nombroses llavors.'),
('Liriodendron', 48, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Maclura', 49, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Magnolia', 50, 'Magnòlia o Manyòlia (Magnolia) és un gran gènere de plantes amb flors que compta cap a 210 espècies. Magnolia grandiflora és la magnòlia per excel·lència dins la subclasse Magnolioideae de la família Magnoliaceae. El gènere rep aquest nom en honor del botànic Pierre Magnol. Aquest gènere té una distribució disjunta, amb un centre principal a l\'est i sud-est d\'Àsia i un centre secundari a l\'est de Nord-amèrica, les Antilles occidentals i algunes espècies a Amèrica del Sud.\r\n\r\nMagnolia és un gènere antic. Va evolucionar abans que apareguessin les abelles i les flors s\'adapten a la pol·linització per coleòpters. Per això els carpels de les flors de Magnolia són resistents a les mossegades d\'aquests insectes. Espècies fòssils de M. acuminata daten de fa 20 milions d\'anys, i plantes de la família Magnoliaceae daten de fa 95 milions d\'anys. Un altre aspecte primitiu de les magnòlies és el de no tenir diferenciats els sèpals dels pètals. '),
('Malus', 51, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Melia', 52, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Metasequoia', 53, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Morus', 54, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Nerium', 55, 'El baladre, oleandre o roser reial (Nerium oleander), és una espècie de planta amb flors, l\'únic representant del gènere Nerium, dins la família de les apocinàcies nativa de la zona compresa entre la Mediterrània i Myanmar. És un arbust perennifoli que s\'utilitza com a planta ornamental tot i ser verinós.'),
('Olea', 56, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Ostrya', 57, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Parkinsonia', 58, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Parrotia', 59, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Paulownia', 60, 'La paulònia (Paulownia tomentosa) és una planta amb flor de la família de les paulowniàcies.\r\n\r\nÉs una espècie d\'arbre caducifoli originari del centre i oest de la Xina. Als Estats Units hom el considera una planta invasora.'),
('Phoenix', 61, 'Phoenix és un gènere amb 14 espècies de palmeres, que és originari de les Illes Canàries, nord i centre d\'Àfrica, extrem sud-oest d\'Europa (Creta), i sud d\'Àsia des de Turquia al sud de la Xina i Malàisia. La tribu Phoeniceae conté només el gènere Phoenix. Els hàbitats on viuen les palmeres del gènere Phoenix inclouen aiguamolls, deserts, i manglars.'),
('Photinia', 62, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Phytolacca', 63, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Pinus', 64, 'Pinus és un gènere de conífera de la família Pinaceae. Són arbres coneguts popularment com a pins, per bé que altres arbres d\'altres gèneres també s\'anomenen pins. Quan creixen junts, formen boscos que s\'anomenen pinedes.\r\n\r\nEls pins són arbres de fulla perenne, generalment de tronc dret i elevat. La capçada pot ser piramidal o arrodonida i, en els arbres adults, ampla i deprimida. Els macroblasts presenten fulles esquamiformes sense clorofil·la. Les fulles tenen una forma acicular característica amb dos o més canals resinífers cadascuna, i s\'apleguen en forma de fascicles de dues a cinc unitats en petites branquetes anomenades braquiblasts. Les espècies europees tenen totes braquiblasts amb dues fulles. '),
('Pistacia', 65, 'Pistacia és un gènere de plantes amb flors amb una desena d\'espècies dins la família Anacardiaceae. La seva distribució és a les Illes Canàries, nord-oest d\'Àfrica, sud d\'Europa, l\'Àsia central i occidental i Amèrica del Nord (Mèxic, Texas). Són arbusts o petits arbres de 5 a 15 m d\'alt. Les fulles són de disposició alternada, compostes de manera pinnada i poden ser espècies caducifòlies o perennifòlies. Totes les espècies són de sexualitat dioica, però s\'han trobat individus monoics de l\'espècie Pistacia atlantica. S\'estima que aquest gènere té una antiguitat d\'uns 80 milions d\'anys. Entre les espècies més conegudes hi ha el pistatxer, el llentiscle i el terebint. '),
('Platanus', 66, 'Platanus és un gènere d\'angiospermes de la família de les platanàcies (Platanaceae). Els plàtans o plataners són originaris de l\'hemisferi nord on viuen al costat de corrents d\'aigua o on la capa freàtica és alta. \r\n\r\nTotes les espècies adopten la forma de grans arbres (de 30 a 50 metres d\'alt). Són caducifolis amb excepció de l\'espècie Platanus kerrii. Les fulles són grans i amb forma palmada amb 5 lòbuls. Les flors apareixen en estructures globulars dotades d\'un llarg peduncle, són unisexuals monoiques; són reduïdes i es donen en boles (caps globosos).'),
('Podocarpus', 67, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Populus', 68, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Prunus', 69, 'Prunus és un gènere compost per arbres i arbustos que pren el nom de la prunera, que és considerat el tipus d\'on derivarien les altres espècies, entre les quals es troben entre les conreades els cirerers, presseguers (i nectarina), albercocs i ametllers i entre les silvestres l\'aranyoner (Prunus spinosa).\r\n\r\nEl gènere Prunus està classificat dins la família Rosaceae dins la subfamília Prunoideae (o Amygdaloideae).'),
('Pterocarya', 70, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Punica', 71, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Pyrus', 72, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Quercus', 73, 'Quercus és un gènere d\'arbres (i alguns arbusts) de la família de les fagàcies. Es caracteritzen sobretot pel seu fruit en forma de gla, que és una nou amb un involucre en forma de cúpula a la base que conté una llavor (rarament dues o tres, però no en les espècies autòctones dels Països Catalans). A més, es caracteritzen per tenir flors masculines en aments pènduls amb periant acampanulat o pateniforme, de 4 a 9 lòbuls i 6-12 estams amb anteres exertes. Les flors femenines són tricarpelars, solitàries o bé estan agrupades en glomèruls, situades a l\'interior d\'un involucre constituït per nombroses esquames. Les fulles són esparses, pinnatilobades, pinnatífites o en menor freqüència serrades, dentades o enteres. Presenten generalment gemmes ovoides o subgloboses.'),
('Rhus', 74, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Robinia', 75, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Salix', 76, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Schinus', 77, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Sorbus', 78, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Styphnolobium', 79, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Syagrus', 80, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Tabebuia', 81, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Tamarix', 82, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Taxodium', 83, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Taxus', 84, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Tecoma', 85, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Tilia', 86, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Tipuana', 87, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Trachycarpus', 88, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Ulmus', 89, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Washingtonia', 90, 'Actualment la descripció d\'aquesta espècie no és troba disponible.'),
('Zelkova', 91, 'Zelkova és un gènere d\'arbres caducifolis dins la família Ulmaceae, natius del sud d\'Europa i sud-oest d\'Àsia. La mida de les espècies és variable des d\'arbusts com Z. sicula a grans arbres de 35 m d\'alt com Z. carpinifolia. Les fulles són de disposició alternada amb els marges serrats i al contrari que els seus parents els oms la base de la fulla és simètrica. El fruit és una drupa seca.'),
('Ziziphus', 92, 'Ziziphus és un gènere amb unes 40 espècies d\'arbusts espinosos i arbrets dins la família Rhamnaceae. Està distribuït en zones temperades càlides i subtropicals d\'arreu del món. Les flors són petites i poc vistoses. El fruit és una drupa comestible amb un gust i textura que recorda els dàtils.\r\n\r\nEl nom del gènere deriva de zizfum o zizafun, que és la paraula en persa per l\'espècie Z. lotus.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specie`
--

CREATE TABLE `specie` (
  `id` bigint UNSIGNED NOT NULL,
  `common_name` varchar(255) COLLATE utf32_bin NOT NULL,
  `id_genre` int NOT NULL,
  `imagen_url` text COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Volcado de datos para la tabla `specie`
--

INSERT INTO `specie` (`id`, `common_name`, `id_genre`, `imagen_url`) VALUES
(1, 'Warrenred Pacific Sunset', 1, 'https://plants.jimwhitingnursery.com/Plant-Name/_ccLib/image/plantstock/WEB/WEB-114616.jpg'),
(2, 'Auró tridentat', 1, 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/main_detail_image/public/Morris_Arboretum_Acer_buergerianum.JPG?itok=8whb_f4C'),
(3, 'Auró blanc', 1, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTY1cVhMfvtfvRo71pN3KQGd-lekVTzhHwKxxf7hy9g01GVS0FKVz94LFpvPXjL6_QAY3jnAXRHZTZepwi0jLmLMg'),
(4, 'Auró blanc \'Elsrijk\'', 1, 'data:image/webp;base64,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'),
(5, 'Auró blanc \'Queen Elizabeth\'', 1, 'https://verd-urba.diba.cat/sites/verd-urba.diba.cat/files/public/styles/fullscreen_image/public/camps/arbres/acer_campestre_queen_elizabeth_fulla_web_uni_illinois_0.jpg?itok=nrgSps37'),
(6, 'Auró de Capadòcia', 1, 'data:image/webp;base64,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'),
(7, 'Auró de Capadòcia vermell', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Acer_cappadocicum.jpg/960px-Acer_cappadocicum.jpg'),
(8, 'Auró de David', 1, 'data:image/jpeg;base64,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');
INSERT INTO `specie` (`id`, `common_name`, `id_genre`, `imagen_url`) VALUES
(9, 'Auró negre', 1, 'data:image/webp;base64,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'),
(10, 'Negundo', 1, 'https://wcbotanicalclub.org/wp-content/uploads/2023/06/box-elder-ashleaf-maple-acer-negundo-leaves.jpg?w=900'),
(11, 'Negundo \'Flamingo\'', 1, 'https://www.vdberk.de/media/2980/acer-negundo-flamingo.jpg'),
(12, 'Blada', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Acer_opalus_a.JPG/300px-Acer_opalus_a.JPG'),
(13, 'Erable', 1, 'https://www.natura-beziers.com/cdn/shop/files/EableduJaponacerpalmatumdisplay-plantesexterieur-Natura-Beziers_Jardinerie_plante_exterieur-plante-interieur-venteenligne.png?v=1686402994'),
(14, 'Erable columnar', 1, 'https://www.jardindupicvert.com/media/catalog/product/e/r/erable-champetre-colonnaire-green-column-22647.jpg'),
(15, 'Erable \'Crimson King\'', 1, 'https://www.georgesdelbard.com/pub/catalog/Arbres/.Acer_Crimson_King_AdobeStock_287347171_web_s.jpg'),
(16, 'Erable \'Crimson Sentry\'', 1, 'https://tree2mydoor.com/cdn/shop/products/acer-platanoides-crimson-king-tree.jpg?v=1711400538&width=750'),
(17, 'Erable \'Deborah\'', 1, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhITExMVFhUXGBUXGBgXGBUVFRYVGBUXFhUVGBUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0mHyYtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS8tLS0tLS0tLS0tLS0tLf/AABEIAO4A1AMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAFBgMEAAIHAf/EAD0QAAEDAwMCBAQFAwIFBAMAAAEAAhEDBCEFEjFBUQYiYXETgZGhMkKxwfAUUtEjcgdiwuHxFTOishZDgv/EABoBAAIDAQEAAAAAAAAAAAAAAAIDAAEEBQb/xAAtEQACAgIBAwMCBgIDAAAAAAAAAQIRAyESBDFBE1FhInEFFDKBkeGh8BUjM//aAAwDAQACEQMRAD8AO3xlqUrzk4Rxm5/BXtTTgRgI5wsSpiJegDoqbLkt4JRrWLXYTIS9ctWJd6Y5fBtXuSTkojo915gEvPJVvSK21+UyGmRnS7PzY4RGnaNxwlvTtQ4V12oOBk8J7yUEo2i3qVq3acBc38TWwa6RhPt3q7S1JuvWzq2ZhSc1JAwTTKPhG8+HV9Cu26JqMtELiuiaS74oB+Xqu0aHZhjGyn4LaF5qTGGi7ElaXNyAFlRwjCDX1Xp3TXoVHZvX86oi1dukIlYAR69kRFEKuKYTm0ZpjcZRdqoU4apXXYCkkKs3uKMhDTpDZmEQp3YKstdKHsRMq21Davbl4HPCtEKlfMlpVp2y7B1Vzc9kPqtY0zhAtZv3UncqnSvnVDnhZ8mdRfEfCDexg/qznaEvajcveTJhFG1YGED1ndOELn9NltbomoNMcrEOt7h4EQsVLLGienL2J7LUA3kyjbL5pEgrklvqcdUUt9f29ZS1mlewOAya5VDp7JLuuSFcuda3mByeB6oe5xJQ5JeRsXSClho7XiXIpb6M1nmGfdQ6RW3AAcpgt7F5GeFpxqNWkKlNsitaYIwFuyzc6eytigB3U1OuIiIKLim9jIyaQu3lrBj1V+y0f4nClvACrdpqLLamaj+MAAcknGEElFPfYKPKWl3Llj4dDC10ZCPNvqTJaXAOa0uIJjAnjvwUgu169Fy4sedro/03AENb0gd012+iPqu/qK8D4YENgNLnDILuokn9EX5hJVFGr/jpJ3levFAq+8YVTuDaLmkBpaMOLmzLi4j8Ij35QoeJLmpVb/ovAaHeVm7zHoXEj8PojlOqbJ9WtsaX1hO0O4ByTPTPRVtO8SVKU0mlpDnBxLj+InJAgTEysbyTf6mzqwwYUv8Arxp/Nv22F5rUaTK1RpAcATHm2+hA4Cu2WvCoQ2mC53WQQ0epKqXHx67A11YtEztY0NEEfh5zjurej2+x20ABv8yT1K2YvUfwjj5/y0E29y9vC+/9DDbsMZyep/x2Co6k0gIvR4VHVKgAK0fBzG7dgmwr5hMNCsISdRv2hxyjLNRbEoVJNEph34wWtVwhKl3rfZRf/kQjJQvJBMNQbBnjlrYB9UCtq0AEIhrlyKqCuZAXK6malktHS6eNQpklXW3btqK2bC/JSvA3pq02uA3lInll2sJKN9jZ9iAsUF1qQ3crxLth8kcdC3DlhCI6ZYl/5SV0krOcynTcQQeESovc+SZMdT68e6Ls0qGubEbo6dRwCexk/OEOFEsMbY6cfqhmmnQ3HG9+Bw8I2QMGMp5qtp0mbnlrW9zAC5noGs1qT/hhjHDJl5gABu4+brgY6nhF6vi2jX+M2pQLmGBTNSCKZn8Y52uOR6LRHOowpLY+P4bOU9vXuMFw5j6dWrTe0tZzBEk9GtHUpabdS0uJ2xENIJcfol2jUfTfuLiwE8CTgHGTzxypaupPdgNBMzMQXDHKU8smdCH4fiWpWGaVyXx09Dg/ROdlp1P+mYXNDnGHjd1I4jsAkC3uBTaHuMEmAARM9smQEW1HVg9rC5zwQDwC/aPXbwlyySegodFjx5E4thnTrWlTcKlR4fULhDWmYzJkjn5KzeeKjUZWplwEBxE7mmoZw2R1+YS5b6n8E03NqtBeC0ECXwRxt/Ljqq1YbcmRMxmXzzntic+qo1uClK5b9ixZ1aTxFd81QIJkyZ7D80equ2bGCoHgGYDQT0aMcIKGlpG0DcQXDG4iBucdxkgwD1RXTSTE5Kdhrs12OZ+IznCXGLdSV99fZL20NVuiVBpGUO08cJgt6EhbonGnGkauvwwZQHVNV3AgI1eaYCCg9xo4GQilbWhSoWnNe3PIK8dqZAgoheUyARElBbu1fztKxzTj2GJ2aV70nhD61Q98q3QoPJgNU79KfiQs/pyybYxT4lOhWcOVBd3kBF6ViZXlzpLX+iW+n4uzZjlboV9znOBRL+pc0QrDtPDCVA97ZAKVOKl2GZIcVYGu69TceViPtsicwsRrGZNiVQtGlwXRvDmlMABgLmDbqCmfQ/FZpjaThbcElF7EZE2tHRL6ypubkBLGoWDen3yq7vFYdgfNRPu92ZTMjjImKc8b5RdM8/8ATS6m8sHnGQM5zkQEIc90PlvkE8Asl5G3dHUtnEpl0m8bJ8yE3dJ5c57yCDIOMugzz6cx7rNlikk0dz8O6qeWTjklf3KFKo0tLXN9Zjr1PTotbi5ZTYe5/CMSO/rxhQVNWptcRtc5okHIbPoOy88T/DFbZT+HUiPNSJeDI4B6pNt68HTnKELcXv28A+4qlxLyZ/ZR0Lp7J2kgT9VuaDmQXNc2eA4RPstm1mbgceoRaRz5ZG5WwzodZjn7arCQRyDtLO5aUfuNP/NTLXt6eZwdx1zylumGmC1F9LlpJB5GQpGaT2Oliytc8Urfz2/o3d7bTOSMiPQdPZFtEPmw6Y7TB9ROVXoWMtc+o7a0AknoAOUpahrbvM2gXMacTMOI9+ibFOMuTOdmzy6lKElXE6PW8bWtDc2S97egwCeo3d0LsP8AiHeVKhLQxrCcN2TDZ53dSuatZ3RnTtULcOG4RHY/90bnN+SseLGtSV/c6lfeIar27W1CHckjyx7x0Qxnim5Y474qM7EbXA/7h+6G2l9Tq8Oz2ODj9Vb+ByeOnaEtSkndmj0cTVOKoZrDWqFT8bXMd2I3fdqIiravO34jAezvKflPKSqL2MP4pP3Xj7lhP4STHbj1PomrPMRL8NxPatDxS0ynMtg+0H9F5c2wShSsakbw1tNv9xkE+w6qV90GCC9zz6kx9JTVna7ox5Okxwf67/b+6LdwWh0KlXrhpMlVjXnKr16e7JKDI+UdCscnGVlmowVFVpaJudzgKS2dAwrLbuOCsELhOpHSyzWTH9Ids7FrWgLECOtbcbl4mtrwY/Tkccap/hEHGfZQwsaSOEYpV5CNhViRB+iMBrhEyAevp3QS1uXSJPH0KMXl8SxoYYMHcD2PEFU5taN3TdHiyq3L9grYMoHa5r3DBPmBE7cHjE/5U+rXR2Et2hvEcnjkE8FBNKv9lI742NdLD1JP4mt78AqpqOql+DgAQG/ufVKm240djDixYnyikCaxTf4J0+u5oMUxScZG4S6eJEZPzSZEpl8D6nVp12UwXFjztLckCfzAdIRVoyzm3Kxg8X2D7i4p29ICW0y4udiJ6T2x90g1KMEg9MLvDbNoc50CXANJ9BOJ+a5D4k00UbiowRtklsGfKePmri/AppvYGpPc3gkLpdnojq1vTfSa6nVhu5rvM13Hm+fOEj6NpFS4qBlNs8SegHcldT1Oq6mwDcQYAhuAAIgE8koM3Y09Kp8qi6JLzw4Kts+3DnbsFz42zEGAD6gLlOoaW+i8scPY9CO4XU9CrVKzYc8tkuaCDGQJE9/xodf05LmVmAxPb2lBilJdws2FOT3s5qKBU1uNpBHIyExXXh05dScHDscOH+UFq0S0w4EHscFbYUzBOMoPaHHSqpq0g/yyDDhA/mURGkF/5D3MOx6YISv4Tv20621/4HjaZ6Hof2+a6TbgQO/8goZJJjoZZUB6Hhjd1dn/AGzP+Foy7qaeXPYA6QWlrusO4kZB6pmuNTZSHyMnpxOPouXa/qNS7qu2sLyMNDWnqcYGMZ5S3J+B2N801NfSWrz/AIiOqOitSa1pn8BJc31M8q3bOZVALHTPHKEab4GrEh9eGj+38TvbsE4UrBlFrWUwGkwJ6x1j15Qz3tszS6bElfZfBSfp4ptLnmezR19z2Q8XHTA+yP3VIEJfu7UE4SI9VxZyptP9PYiq3MccqOhcFx4XvwFaoUwFeTMpFQyOPYqVLeTJWK++u1YkWw/WmI11pYHCpssM5TfU0x72yIVG10S4qOhtMn14aP8A+it8YyS2A9ukC6GlgFgHmc4/Jv8Ak/ZR+IrZ1Ks+mZ2jg8hwjmU82mhMpDdcVASOGtxn/dyfklXxjRIq7mmWuGD2A5b/ADuhk1Z2ehxzjB3qwBSJdtaJIEwOYJjj6BE9D0o1a4+IAGNMvngx+URyU1+HfCBZRD3/AIngEkHLWnho9TjKq3OiPpPb5SAT0mfdSh6aa4gbxlbUmVx8Fga0tGAIG7rC28GOeyuKgwACCffgI1c6c+pTeNgyMEZzPEn5K54OsB8ItcCHBztw7ZHQ9Va7ASSUgw2o5/Uu+fCDeKfDstdXZJcI3N6bep9+E32enhsR9VtqVwykAIBceJ44Q3xL3N0hJ8CVxRFZ0ZdtaPTkz+iL3TiZcZ57fdCqFMMdUwYcQ7y8D0j+coj8SGROI68fRU1bs0wSgqLfhWvsqADvP/T/ANX2RrXLRpl4GD9j6wlrSqgbVE9cd89B9QE3VWgie8cY/RSPcRne0xOrUi1+HcEAnj6qJ1cny1GteBP4gMD3TBqFgHTHPXsR8uqXLu3MzyABnPbt2wm0VDIpKmDbvSmO81J22TGx3Q+jv8ph0PVKgAoVBFXAaScPb0IPX5IO9sCPUzHstTUO0iZjIHUdDHbuo233C9KPdDhc2oqO/wBSXD+2Ybx1jJVqlQa1vkDWDsIASvpniIt8tQbgBhwmQfXv7pgt7hr4cHh2JHb6IULlGQRpuGOYj/wtL+o0B20T5ScyQCOOeOv0VQ1sgk/5j2VSvWJaQY8x+3ZWwYxvuQG8Dqe7gjBHYoXTuAfdZcURnzbcR7+6F2YPM4Wb0LZzep6f05Wuz/2i1qVaIIQ8XpKIXoBQ82PLi8MaAT3J7ABO9CK2Z1BydRIm3L1ivaZodStTFQPaAZgHJj1jhYr4w9hnpT9hwp2cNBEYSd4w1Kuww2q8dtpj7BFxre4AA/RaUbRr67BLKmZIB8xH+0rTklGtg4McpSpMpeHNArPpsqVA7OZOXR15Q3Vrd1xcmhRMgE7S7kMxue/16Qn/AMWarWFAUrWg6nv8nxHFojoYz5Rzn6JD8OXTaDnkAue7yl7gYj/lHqVlrfweihNrGku9V/f3OllrWtHcAZ6Y6wq7iHHccmcH7Ja/9VfUMz2xgY+ilpOOSXEz1yfkAjM3pV3DgpsHBaJ9h6LG02NduBbJEHIz2+aGW9iI7j6fVSajfU7ZslwBOJPDfYdT6KmycE3SCd7ehrfLE8e3SSEvVLkgEP8ANJ5xIP8Aj0VGhrVMbnGq0tdIJmTPTAyMqodRY4FzXAwenmHzlDXuaYxS0g3ReHg7QZE8GD9OyjuCKYjMniZgDrI7qpb6iAJhszEtaYHflbElw8vz/wC4KMFp38EDakODhy1wdz2Mp+tam+mHNAnr69JSHdECPXMdPqnDwvWLrcTGMIX3Azbib18/h5zjqPkgN7SdLunBxgz7/VMdzQB5/wAEeyFXoc3JIcOxbn2DgZJRicckA7igSB6j6EKg5mzzOloAJJ5IEGcJjdSY8E05nq13LT7cfSUIv7YOZUpkSXNIA42uMQ4nuCELZsi04sUrLUy+pB4dwAOPTuj1pVIGCWluZB+R/ZJjmvpPioxzXAx1BB/nVErG+87Hg4GHdfmR6/sroRDLy0O1vqzm/jzPUYKvUbhj8tdJ6Dr24SqKsxtnvE44UTapBjg9OiqzR6DY06jbQO5zjol2i4t3MOJyP3/nqr7bys0SRLeBuk9Oh56j6qhcXO+SREemBP3CpyoTk6f1IvG2i5ZBuXPIhonPBMgAT0yUIrzLi6TJk5/RTVXl7Sw4aSCD/dC0p2WcOnt3+iuLb7mTHh9LXk0oXr2Dayq9rZmAsRIaFIBdUa2cgEZjuvEWinKK1ZWraY21ndVk+n+FFZeImtcGsAZuPme7JjoOevZLd9cl5kuJ9yqzQSYAJPYZJPspx92ZF1XD/wA4pHXtFt21w6oaxqCC0HoHGJ+2Md1Vq6aGlw2yCcz3HBEIh4Vs/gWlOmfxEFzv9zskfLj5KSvU56oaS7HTjObX1dwbRoNH5QJ55/yrlvSkDy8cZ/kLbAglsD5fT/sq9S9kkDDcz3IA6/NWXuRPXuxB2YcZBz0joqNXw82pUY+uCWtbhpODPmJd9ePRF/DVmxznVHiWgDaIwSe/tHHqrOsPLt23mMIuGuTMfU9TKEvSx692c90fR2uq1K1QgU6bzDYw6Dho9FU12if6g1meRp8z2jgNBGCOsmB7uCvanY1Lalvruy4nY0fr7rPDOnF9q+o8kuqP8s8bacj/AOzj9ElW2bFXFLuCbLUHGSQCekjkRn5o/QvTsaSA1xyOY2ng+/8AlQUtM2uJf+EcA4LnD8s9ll5Vk+vpwE0kW/JuDJ/X5pv8E1fI9szB4j6n7pIaJGDGOO3r7I94Rr7K23u0j9/mqkW6aY9hwJUFxZNOdvIx1/VY8z0j1GFo65e0dCPv1x/IVoyV7Am/0b8wmehBiDx0/aEOq7mfjDTHJIzzwI6pgragC39Z+v8APZCNTpipj9+fp6qOmaMcpJ1LsUtX0N920VQ1rXbQWmN/qAe/bjqle18C3dVrqgayi4DDXT/qHv8A8qbNDvK9u6CQacy5rjMDMlpHH3CcX3LXND2mQeCmQ4NHP6mWXFK9V4ZwqvdV7eoWVmFjxGCMR3BHIRunqVGuPNAOOcGe4Kcdf0ylWL3VACQw7ARILhkAxkArm2o+FazG72QepYDlvsTyly40FHqnLbk7HB1WpVa3eWna3aC0AAtHBMcn1KqPte4B9wCkvT9Zq0HjkRy09k52viGhUb+INPZ2EmUGip8uXNefYir0O61oUiHBzXFrhwREfNpwVPcVQeDK1oiVE67mb1ZKWmW/h3By4seTkuJIJ+ULFYYzCxX6qGeo/Zfwc3dblHvBOluqV3PHFJu75k7QPoXH5KnWaGiSnPwXaGhSeX4dUIJBwQ0Ax+pKdIrpcblkT9thlzXRnPbHRetjAiT2B5HfPCFaxrrKJH4pPBABiMEwSPb6pePi+HYYQ3+4mXE+o4A9MoYq2dDP1EYJ+/sdIsPDBrN3Vq5a4mQKYGxg7Zy73wrI8C0xM1qjvYMb+oKVtD8bMMDcR7p5sNba9oIK2xhj8HJfWZ/eilX0ctAa1xDfuo36WQJCPtqBygr1QAqlFCVJt2zgfivUKtWqW1JhhIAPTK2dq221o2zTncSYIIO58hp9M5V7xgG/1dVn9xDh3kpTqNLKjQMw4fMyFiST0egU2oqa9v4GV99UFQ0yZaCQMDEnHsP0Xjrg9TBPfH3XmqtO58Dh37lUrSm57s5YOTMY7CUcdomWTjJoMWroYXkZI8v+3qY+am0GuW12GfzgfXH7qnXuMxEDp3A/cLKboggGeh9eVGRHXnRELwUg6Mdfn91VsroPpseOC0fplTMcO8f5QoTJUaVNPmTj7fYgKleWIxPHpz9P3ReuYEDnvj5/PhDtSgghrRPfr6gdic5ReNkhKVgC/umsPw+SRAPSOFa0nVWsJpunY4khxI/F6kYyO3UeqXLmlD8gkepM8nr16Ldl8xkzTmfVwj9Uq/KGdRm6anind/byMt9XB4KEV6mVVfqjCBFMj1D5+xaqj7wSe37JN7ONKk9OyzXtbd8mrRbUkRmQ4eocMgrn+o06IeRQL9ucPgkGeJHIVzUNTqPeSHuDOgGP0VfTtPfWeA0GCcnoPcrVFOMfqNGKMk+5rbXtSkRP4fsfYo9p/iClidw98j6oddWlNgLX+fJyP2Q52ntP/tvz/a7/ACqkosKVN3JfudJpXLSAQQQsXMx8dmIePaYWJXo/IPBe49WGhQRUqRDfNHbbmXHoFNc+ImjDQX9gcN9yeT7QFQv9YfVG3DWf2twPc9XH3QxhkpjsYs6guOLXz5LtffWdveZPHYAdAB0Cp3NkiFKphR1auVcROSGrPdOsQmOwqup8FAKNeFep3ifVGNjfYak7+5WKl85LFjdSUW+NhLm5BwQl3Fn/AFN+7fhreY9BwljWmbKr44Bwn/T6O2pUdGXux3jgKtr9pSd5SwAkSXfzqkdqbOxjyc5PGnqv8oqazay4gZcSdoB7mRlV6tBrGbAcxLjGCevsrh1FlNpqOIngT/0oNqGqCqSaTIDRlzuT3ho49/0TE6Rplxbvya/EOBjsOOOytU3AAdf0CCOefKejhOOmSDPrIKMWLJIHfHP6oxClbOgeEKwNu0Yw5wP6j7I8x+D/AD6eiU/B74+LT9A7HB6HH0Rv+r2kgifbmPZASSthFrRjkcrT4Wc8fv6qGjdhxw4GP5kcq2a4jjH6eihS0APENmPIR2P6lLVzRB90d8f3zqdsKlJwLmubIIJhhxzjqWrn2leIHOftqRngjGexSpxb2jH1GKXJyDnwICo6g8Bpz/lEqRLvZCNcpYkco8ONv6mZoRtgKrEyfkOy1pvfBLTg8hY9hWjiA0+/3T2a4onJO3Mop4Zt2kvLm+0qho7ab5a+psd+Un8PzXlw0MfsFec5c38PyQtWi5/UuIfuafmwsQUW3auV6lcUZ+KXn/AQrN2yCFBS5TVe6PvHCoU9CI7oYzVCqKTKeF4Lcyib9LcFNQtoVKdMJzb7g4WhUzaKL06U4hT/ANBKt52gHGwfp1HzBGywgcKSw0+HIwbMQijmstRoVH0zuUtfS/iEOd+XhF6tsA5W6tuIQznY3E2uwj6hpzajmsfxKCUdHLK1VgB2gdU26s0sc1w5Bn6IffX/AOKo6Jd29Evl4Oh0U43wl9xJ1CmGu+GM7NzSe5DjP3/RE9Eu3fhIJxyPyj19FcvNPHxXlsO3HcJHO/zA+0OCtvpsZ5Q0ARGOp9ce61RkqDeKXOy14audlyzs4Fh7ZEj7gJxqU88fPqueUam1zHDO0g+0GfvC6NVEgOEiQCPnn9CqZJLYNqUiHSzBjB4gcfNSUNUE7XYj83T5jorTKJM8ZlUbyww4E7R8umfoqsKKTKvju4p/0NVrvxOA2EAnO4OyRgDHPHC5ExsEFdDv9Yo0QWucX9xAI6YgkD7pT1W6ta0ubvpv/wBo2O9xux7/AKqRYOeCXnZJYapUA2zuaOB2W1zdb8QQl9jyCCFao3h/wnKfuYnHyi38E/z9gqVxUDoDf/KLG6FvUY/l+zeBAgEyACT9UvIXK+wXGu5uMLA5ahy9hUXZKKxXijlYoQ7/AE6bXKRtq1LFrrMDlWRroHJXNdmKwzXs2qsdPagdfxO0HlbUfEbHfmV8ZEsM07ZoPCtBjQgLteZ3XjdVkKNMsPNriVO+6wlu3rFxRGlxyhTosnqXIJW9e4xhUH08hSV6ZARxdsOIv61dS4BUKjQ9hB6hS6zRO4KGnQI5RsDfK0S6XXpvpUwSPi0gWFpMF20nY6TgiI9oPosrU3xuLTz0O4D5j91VuSKTXPA6fdCGeJHDlue4wnwt9jpvqWkqVoI3lTG1pkc/P9xwnfw/dl1tTPJaNjh1x2PtC5rd3zqjWVC2CXOaInzABpM+xd9z2Tf4HrS2rTM8NeB/8Tj6JngtS5eBupvB6ZGVFroabW4qECWU3kETIO08BQf1ewgEQOJn7pZ/4g+Ig2gbdh81WN3f4cyfrEfMoe+g2nFcjm1xXLzP2US9XiNKjHJtu2eKSiYMkT6GY+y0XrFZRvWqFxJPJ/kKMhbEL1glQs1DCei92O7FN2nWAFMHbla3VD0S/U2J570KJasTILIHkZXqLkFyY1VNNgYS1qzXgnJhdBqAEJa1yzkHCw4p/VszyiI9STyVGC4dSrVWmQ6Cr9tY7oELoOSoWitYVnOcAnLT2yMqPS/D8QQEfp6ftEQsGafJ6GRRQ+MGK/Z3EqvU02SiGnaaWpVOg6JGCSFeqUZWC3ghX/hFXjTDSFXUbCXBV6tnCaLmgJCVPGepuoMYGBu5xiTwB3V25SpBKDbpC54krAAU8yc8Yj3QO10d9TPA9UzaI+lWp1DVeX1GvkEDywRx8oUnx2b/AIYc0OiQ0kN+5wD81qg3FUbsWBcU2VrLTQKbaQMvaXvA7tgbo9iAfaeyveGSG12/8wc358gfVoVPV7va2ltd/qNc50tOW4ECQienW3/s3EiHuDuPwuBh4jtM/Iooys0OKSoKa1VbBl22BJI7exXIbusXvc4kkk4nt0H0XRP+JDfhBrQc1CYHWBBcfbIHzSI6jsEkc91fKhMoc9XpFJ1OAolJVqSokxX5Ms6v6T1bsWi3pqwDZS2xAc0niQotqtO02rt3bTCp0Q6BZta9gLTiFHWoAEIV4UrFtItdODx6Ke7vCT5QkUkOwY1ZZdbBYprfzNBhYpZs/LBsuVe+pbmytjUwonVTwsqaRxmLN/p2cL22qBhAKMXAiUsapUIK0QnyVA8TpOiVmloRhoaVzbwxqTgIPCdKN1hJnSYSRd+GJCtsAQardr2ldlUpWFFBqRIVtjksuvSCCtn6xAcZiBKZFouth91j8YkDpnsuP+O9KuW13F8ub0jO0dl0DS/E5e3d1hUdRvviSXQPdGqjtHUh0+qf8g6x0UspsLdraRAIIEkkgTPzS3S0t76z3HPmcJ4ESmO6vxSp7pJb+UAeUnnHp6pTvNRq1SW7tjOzcT7nlSmxi+j59i9eVrekYcd7ujGZ+pRHTH1XW9R9TZSpgzSB53kxBPY8cYOe6G+GtEbUfnDG5e49B7opfXAuqjQ0bbelhg/vI/N7Ibp6AnKS3JmtyP6us17/AMLJAB7kif0H0U3iLQfi0YYIc3I9URdbNDpZxgn/AHQNx+solQGEMpvlZgyZG5fByOjoVZ27yRt7oY8EEg4IXZtSpw07QJgrkN+D8R84MlPw5HNuwE22VluzlarZnKeEFNGa34zN3Ero1ezaWxCR9C0h1RzXzABldALhAAWfLP2E5AWbHGBlTWmkE8o7aUBC1vLtrFUFrZtwR4qzWnp4AwFi3oagCJWI6NXqSAoK1Llo58KCq9Y6OQe1jKDXunbiilJ8qdjUS0TuiHR7INAEI+0wFQtzC3qVsIJLZa0WGvkq2KKD29bIRhr8KKIcSrcsyAl7xVXLKJEHJE+0o++qd4UlWyZVBbUEtPKbBUy4upCnZXzixpb5RCr3lUl0ElENT2tMMEN6BBbuqQUxbOv2WyW5qEtaHHDRA9lVpNDnBrRJP8lV31C9yYNOtRSYHDL6mAf7QrekKlOlZPc1Ypi3pYb/APsd1cf7VNprQGgcAIvb6Q0MCq3Nvs4V8KicvJmlN14JG1eyI060BBGOhaV7sgJHEgWu7kYS14k8PNqN+JT/ABdQtH3xLoRO1uDClODtAqWznFzbOYYe0gqJqcPFVuKjQ7gtn6JRhbIS5Kxl2Pnh66aaQA5CLUq6VfC1SQQmZjUmS2DQSbew3CA31wXOyVYe8hUXskmVSGKUm0ieldECJWKtsWIrOxGOj//Z'),
(18, 'Erable de Drummond', 1, 'https://pepinieresavio.com/hubfs/Imported_Blog_Media/Acer-platanoides-Drummondi1-4.jpg'),
(19, 'Erable globós', 1, 'https://www.pepinieredeschenes.com/upload/art-158-1--full.jpg'),
(20, 'Plàtan fals', 1, 'https://www.baumschule-horstmann.de/bilder/popup/bergahorn-m000004_w_0.jpg'),
(21, 'Plàtan fals atropurpuri', 1, 'https://www.floragard.de/content/files/10212/ACER-PSEUDOPLATANUS-ATROPURPUREUM-850x500-proportionalexact.webp'),
(22, 'Auró roig', 1, 'https://www.frankpmatthews.com/app/uploads/2022/07/13506_13298_0f9a.jpg'),
(23, 'Erable argentat', 1, 'https://garten-von-ehren.imgbolt.de/thumbnail/62/7d/c4/1675711383/acer-saccharinum-leaves_1920x1920.jpg'),
(24, 'Erable argentat de Wier', 1, 'https://pflanzenkatalog.ley-baumschule.de/content/files/21114/ACER-SACCHARINUM-LACINIATUM-WIERI-600x600-proportionalsmallest.webp'),
(25, 'Erable argentat piramidal', 1, 'https://www.nvknurseries.com/_ccLib/image/plants/DETA-996.jpg'),
(26, 'Auró de Freeman \'Armstrong\'', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(27, 'Auró de Freeman Autumn Blaze', 1, 'https://esveld.de/a/wp-content/uploads/2022/10/Acer-freemanii-Jeffersred-AUTUMN-BLAZE.jpg'),
(28, 'Castanyer bord', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(29, 'Castanyer bord de flor doble', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(30, 'Castanyer d\'Índia rosa', 2, 'https://upload.wikimedia.org/wikipedia/commons/4/48/Aesculus_carnea_BotGartenMuenster_PurpurKastanie_6685.jpg'),
(31, 'Castanyer d\'Índia de Briot', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(32, 'Acàcia taperera', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(33, 'Acàcia taperera Ombrella', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(34, 'Acàcia taperera \'Summer Chocolate\'', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(35, 'Vern italià', 4, 'https://www.vdberk.de/media/7670/alnus_cordata_3.jpg'),
(36, 'Vern', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(37, 'Vern imperial', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(38, 'Vern piramidal', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(39, 'Corner llis', 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(40, 'Arbre de pisos', 6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRLmp6az0AGp1WdzCEJtA1tTzkCapVF1E0UZL6cR3HJd108IjuSBa-dUwyVwPlUYnBgWc&usqp=CAU'),
(41, 'Arboç', 7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(42, 'Bauhínia purpúria', 8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(43, 'Arbre de les orquídies', 8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(44, 'Bedoll de paper', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(45, 'Bedoll comú', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(46, 'Bedoll fastigiat', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(47, 'Bedoll de Young', 9, 'https://www.baumschule-engel.de/content/files/17971/Betula-pendula-Youngii-718x750-proportionalsmallest.webp'),
(48, 'Bedoll de Jacquemont', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(49, 'Arbre del foc', 10, 'https://inaturalist-open-data.s3.amazonaws.com/photos/761699/large.JPG'),
(50, 'Braquiquíton rosa', 10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Brachychiton_discolor_5Dsr_3992.jpg/1200px-Brachychiton_discolor_5Dsr_3992.jpg'),
(51, 'Arbre ampolla', 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(52, 'Morera de paper', 11, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(53, 'Calocedre de Califòrnia', 12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(54, 'Calocedre de Califòrnia variegat', 12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(55, 'Carpí', 13, 'https://nature.guide/cdn/photos/Large/9adecf1a-451b-4fa4-8e14-77f1c426cffe.jpg'),
(56, 'Carpi fastigiat', 13, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(57, 'Castanyer', 14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(58, 'Casuarina de Cunningham', 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(59, 'Catalpa comuna', 16, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(60, 'Catalpa de bola', 16, 'https://fleurexcel.com/cdn/shop/files/catalpa-bignonioides-600x450.webp?v=1714499863&width=1024'),
(61, 'Cedre de l\'Atlas blau', 17, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(62, 'Cedre de l’Himàlaia', 17, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(63, 'Cedre del Líban', 17, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(64, 'Lledoner', 18, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(65, 'Lledoner de la Xina', 18, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Celtis_sinensis%2C_loof_en_vrugte%2C_Queenswood%2C_c.jpg/1200px-Celtis_sinensis%2C_loof_en_vrugte%2C_Queenswood%2C_c.jpg'),
(66, 'Garrofer', 19, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(67, 'Arbre de l\'amor del Canadà', 20, 'https://media.plantesdehaies.be/media/catalog/product/cache/93df1b319648cc705d8aa5fa24bbfb87/6/1/615LS6TJ_2573.jpg'),
(68, 'Arbre de l\'amor \'Forest Pansy\'', 20, 'https://www.baumschule-horstmann.de/bilder/popup/kanadischer-judasbaum-forest-pansy-m009793_h_0.jpg'),
(69, 'Arbre de l\'amor de la Xina', 20, 'https://www.gorinipiante.it/wp-content/uploads/2021/11/Cercis-chinensis-Avondale-00-scaled.jpg'),
(70, 'Arbre de l\'amor', 20, 'https://res.cloudinary.com/fronda/image/upload/f_auto%2Cq_auto/productos/fol/11228/11228366_1.jpg?03-03-2023'),
(71, 'Corísia comuna', 21, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(72, 'Taronger agre', 22, 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Citrus_aurantium.jpg'),
(73, 'Clerodendre arlequí', 23, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(74, 'Avellaner turc', 24, 'https://www.vdberk.de/media/Bomen/COCOLURN/Corylus%20colurna-vrucht.jpg'),
(75, 'Espinalb centreeuropeu \'Paul\'s Scarlet\'', 25, 'https://www.baumschule-horstmann.de/bilder/popup/echter-rotdorn-m000022_h_0.jpg'),
(76, 'Arç de Carrière', 25, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(77, 'Xiprer blau fastigiat', 26, 'https://www.schwitter.ch/content/uploads/2017/11/Cupressus-arizonica-Glauca-Fastigiata.jpg'),
(78, 'Xiprer de Lambert daurat', 26, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(79, 'Xiprer estret', 26, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(80, 'Caquier', 27, 'https://www.mypalmshop.de/media/catalog/product/cache/7e47a816da2f8f1d082e569b4e2be5e7/2/0/2052714504.jpg'),
(81, 'Arbre argentat \'Quicksilver\'', 28, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(82, 'Arbre argentat', 28, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(83, 'Nesprer del Japó', 29, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(84, 'Arbre del coral del Cap', 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(85, 'Eritrina cresta de gall', 30, 'https://upload.wikimedia.org/wikipedia/commons/3/32/Erythrina_crista-galli_09_ies.jpg'),
(86, 'Eritrina de Jujuy', 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(87, 'Faig', 31, 'https://www.vdberk.de/media/41170/fagus_sylvatica_8.jpg'),
(88, 'Faig purpuri', 31, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(89, 'Figuera', 32, 'https://tiendahusqvarna.es/files/2018/02/ficus-carica.jpg'),
(90, 'Ficus de l\'india', 32, 'https://i0.wp.com/borneoficus.info/wp-content/uploads/2018/10/01-Ficus-microcarpa-shutterstock_438637687-Copy.jpg?fit=1319%2C1759&ssl=1'),
(91, 'Ficus austral', 32, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(92, 'Ficus de Watkins', 32, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(93, 'Firmiana', 33, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(94, 'Freixe blanc', 34, 'https://static.inaturalist.org/photos/39080377/large.jpeg'),
(95, 'Freixe de fulla petita', 34, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(96, 'Freixe de fulla petita \'Raywood\'', 34, 'https://www.southernwoods.co.nz/wp-content/uploads/2019/03/Fraxinus-raywoodii.jpg'),
(97, 'Freixe de fulla gran', 34, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(98, 'Freixe de fulla gran \'Westhof\'s Glorie\'', 34, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(99, 'Freixe de flor', 34, 'https://www.baumschule-horstmann.de/bilder/popup/blumenesche-mannaesche-m006266_w_4.jpg'),
(100, 'Freixe de flor \'Mecsek\'', 34, 'https://www.baumschule-griewe.de/content/files/4250/Fraxinus-ornus-Obelisk-718x750-proportionalsmallest.webp'),
(101, 'Freixe de flor Obelisk', 34, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(102, 'Ginkgo', 35, 'https://www.guiadearbolado.com.ar/wp-content/uploads/como-diferenciar-un-ginkgo-macho-y-hembra.webp'),
(103, 'Ginkgo fastigiat', 35, 'https://www.garten-sauer.de/content/files/35147/Ginkgo-biloba-1200x630-proportionalsmallest.webp'),
(104, 'Acàcia negra elegantíssima', 36, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(105, 'Acàcia negra \'Rubylace\'', 36, 'https://www.vdberk.de/media/45510/gleditsia-triacanthos-rubylace.jpg'),
(106, 'Acàcia negra \'Skyline\'', 36, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(107, 'Acàcia negra \'Sunburst\'', 36, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(108, 'Acàcia negra inerme', 36, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(109, 'Grevíl·lea', 37, 'https://m.media-amazon.com/images/I/81LfzGpy-ZL.jpg'),
(110, 'Hibisc de Síria', 38, 'https://blog.3bee.com/_next/image/?url=https%3A%2F%2Fapi-backend-assets.s3.eu-south-1.amazonaws.com%2Fprivate%2Ffiler_public%2F50%2F24%2F5024dd2e-7490-4549-9059-5e6367318376%2F89832637-eebe-421c-a402-717a31c9aee6.jpg&w=3840&q=75'),
(111, 'Xicranda', 39, 'https://cdn.britannica.com/41/124141-050-4A9AF68E/Jacaranda.jpg'),
(112, 'Noguera negra', 40, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Black_Walnut_nut_and_leave_detail.JPG/1200px-Black_Walnut_nut_and_leave_detail.JPG'),
(113, 'Noguera', 40, 'https://www.euforgen.org/fileadmin/templates/euforgen.org/upload/speciesImages/Juglans_regia/1.Juglans_regia_fruit.jpg'),
(114, 'Arbre de la flama xinès', 41, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(115, 'Sapinde de la Xina', 41, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(116, 'Sapinde de la Xina fastigiat', 41, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(117, 'Laburn', 42, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(118, 'Arbre de Júpiter', 43, 'https://unjardinparami.com/wp-content/uploads/2020/09/lagerstroemia-indica-flor-600x400.jpg'),
(119, 'Lagunària', 44, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(120, 'Llorer', 45, 'https://www.asturnatura.com/photo/_files/photogallery/ea84dcb146edb0f673d0f45dca099b60.webp'),
(121, 'Troana', 46, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(122, 'Troana variegada', 46, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(123, 'Liquidàmbar americà', 47, 'https://inaturalist-open-data.s3.amazonaws.com/photos/151075271/original.jpg'),
(124, 'Liquidàmbar americà \'Worplesdon\'', 47, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(125, 'Tuliper de Virgínia', 48, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(126, 'Maclura', 49, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(127, 'Magnòlia de La Galissonnière', 50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(128, 'Pomera de flor \'Evereste\'', 51, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(129, 'Pomera de flor \'Golden Hornet\'', 51, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(130, 'Pomera del Japó', 51, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(131, 'Pomera de flor \'Van Eseltine\'', 51, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(132, 'Mèlia', 52, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(133, 'Mèlia de bola', 52, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(134, 'Sequoia de la Xina', 53, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(135, 'Morera blanca', 54, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(136, 'Morera blanca sense fruit', 54, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(137, 'Morera pèndula', 54, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(138, 'Morera de Kagayama', 54, 'https://www.koju.de/media/image/0d/fc/37/morus-alba_1280x1280.jpg'),
(139, 'Morera negra', 54, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(140, 'Baladre', 55, 'https://upload.wikimedia.org/wikipedia/commons/c/cc/Nerium_oleander_flowers_leaves.jpg'),
(141, 'Olivera', 56, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(142, 'Òstria europea', 57, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(143, 'Parkinsònia', 58, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(144, 'Parròtia de Pèrsia', 59, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(145, 'Paulònia', 60, 'https://www.vdberk.de/media/Bomen/PATOMENT/Paulownia%20tomentosa-s%20flowers.jpg'),
(146, 'Palmera de Canàries', 61, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(147, 'Palmera de dàtils', 61, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(148, 'Fotínia de Fraser \'Red Robin\'', 62, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(149, 'Bellaombra', 63, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(150, 'Pi de Canàries', 64, 'https://www3.gobiernodecanarias.org/medusa/ecoescuela/plantillawiki/files/formidable/12/dsc09721-pinus-canariensis-pinas-masculina-y-femeninas.jpg'),
(151, 'Pi blanc', 64, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(152, 'Pinastre', 64, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(153, 'Pi pinyer', 64, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(154, 'Noguerola de la Xina', 65, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(155, 'Plàtan d\'orient', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(156, 'Plàtan digitat', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(157, 'Plàtan cuneat', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(158, 'Plàtan comú', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(159, 'Plàtan \'Bloodgood\'', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(160, 'Plàtan piramidal', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(161, 'Plàtan \'Vallis Clausa\'', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(162, 'Podocarp comú', 67, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(163, 'Àlber nivi', 68, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(164, 'Àlber piramidal', 68, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(165, 'Pollancre gavatx', 68, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(166, 'Trèmol', 68, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(167, 'Cirerer de flor doble', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(168, 'Mirabolà negre', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(169, 'Prunera vermella', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(170, 'Cirerer d\'hivern', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(171, 'Cirerer de Virgínia \'Shubert\'', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(172, 'Cirerer nan', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(173, 'Cirerer de Tòquio', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(174, 'Ametller', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(175, 'Cirerer del Japó \'Amanogawa\'', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(176, 'Cirerer del Japó \'Kanzan\'', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(177, 'Noguera alada del Caucas', 70, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(178, 'Magraner', 71, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(179, 'Perera de Callery \'Aristocrat\'', 72, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(180, 'Perera de Callery \'Bradford\'', 72, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(181, 'Perera de Callery \'Chanticleer\'', 72, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(182, 'Perera de Callery \'Redspire\'', 72, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(183, 'Perera \'Beech Hill\'', 72, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(184, 'Perera pèndula', 72, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(185, 'Roure turc', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(186, 'Roure escarlata', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(187, 'Alzina blava del Japó', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(188, 'Alzina', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(189, 'Roure dels pantans', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(190, 'Roure martinenc', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(191, 'Roure pènol \'Fastigiata Koster\'', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(192, 'Roure pènol fastigiat', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(193, 'Roure roig', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(194, 'Alzina surera', 73, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(195, 'Sumac americà', 74, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(196, 'Robínia', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(197, 'Robínia de Besson', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(198, 'Robínia \'Frisia\'', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(199, 'Robínia piramidal', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(200, 'Robínia de bola', 75, 'https://www.pflanzeninfothek.de/content/files/29775/Robinia-pseudoacacia-Umbraculifera-600x725-proportionalsmallest.webp'),
(201, 'Robínia d\'un folíol', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(202, 'Robínia \'Casque Rouge\'', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(203, 'Salze blanc', 76, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s');
INSERT INTO `specie` (`id`, `common_name`, `id_genre`, `imagen_url`) VALUES
(204, 'Salze daurat', 76, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(205, 'Desmai', 76, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(206, 'Pebrer bord', 77, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(207, 'Pebrer bord del Brasil', 77, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(208, 'Moixera', 78, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(209, 'Moixera de guilla', 78, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(210, 'Server', 78, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(211, 'Acàcia del Japó Princeton Upright', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(212, 'Acàcia del Japó columnar', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(213, 'Acàcia del Japó pèndula', 79, 'https://d35f6g7b2umlat.cloudfront.net/500x500/filters:format(jpg)/filters:strip_exif()/assets/v3/2024-04-06/2f8b9399-5b3e-4ca3-bf6d-96d11f9bd60c.jpg'),
(214, 'Acàcia del Japó \'Regent\'', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(215, 'Acàcia del Japó', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(216, 'Palmera de la reina', 80, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(217, 'Ipé rosa', 81, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(218, 'Tamariu africà', 82, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(219, 'Tamariu francès', 82, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(220, 'Tamariu d\'estiu \'Pink Cascade\'', 82, 'https://www.vdberk.de/media/87730/tamarix_ramosissima_pink_cascade-1.jpg'),
(221, 'Tamariu d\'estiu', 82, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(222, 'Tamariu tetrandre', 82, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(223, 'Xiprer dels pantans', 83, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(224, 'Teix', 84, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(225, 'Tecoma groga', 85, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(226, 'Tell americà', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(227, 'Tell de fulla petita', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(228, 'Tell de fulla petita \'Greenspire\'', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(229, 'Tell de fulla gran', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(230, 'Tell argentat', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(231, 'Tell argentat \'Szeleste\'', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(232, 'Tell de Crimea', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(233, 'Tell d\'Holanda', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(234, 'Tell pàl·lid', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(235, 'Tipuana', 87, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(236, 'Palmera excelsa', 88, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(237, 'Om \'Columella\'', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(238, 'Om \'New Horizon\'', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(239, 'Om \'Sapporo Autumn Gold\'', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(240, 'Om', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(241, 'Om de Sibèria', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(242, 'Washingtònia de Califòrnia', 90, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(243, 'Washingtònia de Mèxic', 90, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(244, 'Zelkova del Japó', 91, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(245, 'Zelkova del Japó Green Vase', 91, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnvISVTYopMAy17o3mB2lfSPeEjoKfAdV2w&s'),
(246, 'Ginjoler', 92, 'https://www.pflanzenhof-online.de/media/image/50/9a/bd/Jujube-erweiterte-Lizenz.jpg'),
(247, 'Quitalpa Summer Bells', 93, 'https://www.vdberk.de/media/Bomen/CHTSBELL/Chitalpa%20tashkentensis%20Summer%20Bells%20Bloei.jpg'),
(248, 'Quitalpa \'Pink Dawn\'', 93, 'https://de-de.bakker.com/cdn/shop/files/100431_2.jpg?v=1706111043');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specie_attribute`
--

CREATE TABLE `specie_attribute` (
  `specie_id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Volcado de datos para la tabla `specie_attribute`
--

INSERT INTO `specie_attribute` (`specie_id`, `attribute_id`) VALUES
(1, 3),
(1, 7),
(1, 8),
(1, 4),
(1, 5),
(1, 6),
(1, 1),
(1, 9),
(1, 10),
(2, 3),
(2, 8),
(2, 12),
(2, 11),
(2, 6),
(2, 13),
(2, 9),
(2, 4),
(2, 5),
(2, 10),
(2, 9),
(2, 3),
(2, 8),
(2, 12),
(2, 14),
(2, 6),
(2, 13),
(2, 9),
(2, 4),
(2, 5),
(2, 15),
(2, 9),
(3, 14),
(3, 8),
(3, 9),
(3, 15),
(3, 3),
(3, 1),
(3, 12),
(3, 6),
(3, 13),
(3, 4),
(3, 5),
(4, 3),
(4, 16),
(4, 4),
(4, 5),
(4, 6),
(4, 1),
(4, 7),
(4, 8),
(4, 14),
(4, 9),
(4, 10),
(5, 3),
(5, 13),
(5, 4),
(5, 5),
(5, 6),
(5, 1),
(5, 7),
(5, 8),
(5, 14),
(5, 9),
(5, 10),
(6, 17),
(6, 16),
(6, 4),
(6, 18),
(6, 6),
(6, 1),
(6, 7),
(6, 8),
(6, 11),
(6, 19),
(6, 15),
(7, 17),
(7, 16),
(7, 4),
(7, 18),
(7, 6),
(7, 1),
(7, 7),
(7, 8),
(7, 11),
(7, 19),
(7, 15),
(8, 11),
(8, 8),
(8, 9),
(8, 15),
(8, 17),
(8, 1),
(8, 7),
(8, 6),
(8, 16),
(8, 4),
(8, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `jwt` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `username`, `email`, `password`, `token`, `jwt`, `created_at`) VALUES
(2, 'mescuder', 'mescuder@elpuig.xeill.net', '$2y$10$sMLvatOa579iAa4JwsfVleqomVNdwucOmtCwtyHwMWQ3RpmaR/i/y', 'a17c2f679d82d85c454d6f2ffc5a4b9a', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6Im1lc2N1ZGVyIiwiZXhwIjoxNzQ2MTI0MDUxfQ.pCfQLHHYrpHsNpENKE3vWsFZ9E_HsDIuhyd4kg29W1k', '2025-04-01 13:35:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `specie`
--
ALTER TABLE `specie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `specie_attribute`
--
ALTER TABLE `specie_attribute`
  ADD KEY `fk_attribute_id` (`attribute_id`),
  ADD KEY `fk_specie_id` (`specie_id`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT de la tabla `specie`
--
ALTER TABLE `specie`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `specie_attribute`
--
ALTER TABLE `specie_attribute`
  ADD CONSTRAINT `fk_attribute_id` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_specie_id` FOREIGN KEY (`specie_id`) REFERENCES `specie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;