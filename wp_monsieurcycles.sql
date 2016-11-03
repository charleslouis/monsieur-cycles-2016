-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wp_monsieurcycles
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `wp_cntctfrm_field`
--

DROP TABLE IF EXISTS `wp_cntctfrm_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cntctfrm_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cntctfrm_field`
--

LOCK TABLES `wp_cntctfrm_field` WRITE;
/*!40000 ALTER TABLE `wp_cntctfrm_field` DISABLE KEYS */;
INSERT INTO `wp_cntctfrm_field` VALUES (1,'name'),(2,'email'),(3,'subject'),(4,'message'),(5,'address'),(6,'phone'),(7,'attachment'),(8,'attachment_explanations'),(9,'send_copy'),(10,'sent_from'),(11,'date_time'),(12,'coming_from'),(13,'user_agent');
/*!40000 ALTER TABLE `wp_cntctfrm_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `disqus_dupecheck` (`meta_key`,`meta_value`(11)),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=470 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_commentmeta` VALUES (404,202,'is_customer_note','0'),(405,203,'is_customer_note','0'),(408,201,'_wp_trash_meta_status','0'),(419,205,'is_customer_note','0'),(420,206,'is_customer_note','0'),(421,207,'is_customer_note','0'),(422,208,'is_customer_note','0'),(423,209,'is_customer_note','0'),(429,214,'is_customer_note','0'),(430,215,'is_customer_note','0'),(431,216,'is_customer_note','0'),(432,217,'is_customer_note','0'),(433,218,'is_customer_note','0'),(434,219,'is_customer_note','0'),(435,233,'_wp_trash_meta_status','0'),(436,231,'_wp_trash_meta_status','0'),(437,232,'_wp_trash_meta_status','0'),(438,230,'_wp_trash_meta_status','0'),(439,229,'_wp_trash_meta_status','0'),(440,228,'_wp_trash_meta_status','0'),(441,227,'_wp_trash_meta_status','0'),(442,226,'_wp_trash_meta_status','0'),(443,225,'_wp_trash_meta_status','0'),(444,224,'_wp_trash_meta_status','0'),(445,223,'_wp_trash_meta_status','0'),(446,222,'_wp_trash_meta_status','0'),(447,221,'_wp_trash_meta_status','0'),(448,220,'_wp_trash_meta_status','0'),(449,243,'_wp_trash_meta_status','0'),(450,240,'_wp_trash_meta_status','0'),(451,239,'_wp_trash_meta_status','0'),(452,238,'_wp_trash_meta_status','0'),(453,242,'_wp_trash_meta_status','0'),(454,241,'_wp_trash_meta_status','0'),(455,237,'_wp_trash_meta_status','0'),(456,236,'_wp_trash_meta_status','1'),(461,255,'_wp_trash_meta_status','1'),(466,260,'_wp_trash_meta_status','0'),(467,259,'_wp_trash_meta_status','0'),(468,258,'_wp_trash_meta_status','0'),(469,257,'_wp_trash_meta_status','0');
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (201,55,'Jasmineheme','jasmine-lucky777@outlook.com','http://12k-cash-software.com/Download.html','178.137.162.171','2015-02-24 11:15:12','2015-02-24 10:15:12','Hi monsieurcycles.fr admin I bet you wanna make more money? So how about \r\n \r\nthe insider secret software cashing $12,234 in 2 months? \r\nhttp://12k-cash-software.com/Download.html \r\n \r\nThat\'s what you can make and it is much more easy as internet marketing... \r\n \r\nLet me get it straight. \r\n \r\nI dont care about sports. Shame on me but I dont even know the \r\nfootball rules. Never cared less. \r\n \r\nWhat I care about is making money for me and my family. \r\n \r\nI tried everything from stocks &amp; forex to internet marketing and \r\naffiliate programs.. I even made some money but then blew it all away \r\nwhen the stock market went south. \r\n \r\nWhat I was looking is the long term solution that can give me an edge. \r\nI think I finally found it. It is called Z code system. \r\n \r\nZ Code is not about sports. It is about following the system and \r\nwinning in a long run. That is why it is called sports investing and \r\nnot gambling. \r\n \r\nGuys will send you game picks and the predictions from the insider \r\ninfo based on their precise statistical model proven since 1999. \r\n \r\nYou place the bets and win. That\'s it. \r\n \r\nDon\'t take my word on it. Check out the proof video here: \r\n \r\nhttp://12k-cash-software.com/Download.html \r\n \r\nThese guys combine the power of their human cappers who are experts in \r\nsports with the power of technology: statistical data since 1999. \r\nTheir wins are documented and proven - each winning and losing pick is \r\navailable for members to check and verify in the members zone. \r\n \r\nThe performance chart goes straight into profits. Over $12,000 usd \r\nprofit for average bet of $100 during the last 2 months! \r\n \r\nNo wonder... I mean, \r\n \r\neven if you are skeptical you really NEED to check out how transparent \r\nthese guys truly are... \r\nVideos of bank accounts stuffed with money, videos of bookmaker \r\naccounts, screenshots proving how effective this killer software is, \r\nvideos of how to make the money risk free, hundreds of real people \r\ntestimonials... \r\n \r\n...proof, proof, and more proof!!  All sitting there for you to \r\nabsorb! Don\'t take my word for it - you have to see it to believe it. \r\n \r\nhttp://12k-cash-software.com/Download.html \r\n \r\nAnd the best part about it is just how easy it is to use!  Everything \r\nabout this product is TOP class- \r\n \r\n- from the software itself \r\n- to the video tutorials showing how to use the software &amp; picks \r\n- to the comprehensive FAQ &amp; Money management tips \r\n- to the well trained support team lead by Anny. \r\n \r\nThese guys have everything covered! \r\n \r\nCheck it out for yourself: \r\n \r\nhttp://12k-cash-software.com/Download.html \r\n \r\n \r\nYour friend Jasmine',0,'spam','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36','',0,0),(202,1101,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-02-26 19:23:08','2015-02-26 18:23:08','En attente règlement par chèque État de la commande modifié de Attente paiement à En attente',0,'1','WooCommerce','order_note',0,0),(203,1101,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-02-26 19:23:08','2015-02-26 18:23:08','Articles de la commande sortis du stock.',0,'1','WooCommerce','order_note',0,0),(205,1109,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-03-11 14:44:43','2015-03-11 13:44:43','État de la commande modifié de Attente paiement à Terminée',0,'1','WooCommerce','order_note',0,0),(206,1109,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-03-11 14:44:44','2015-03-11 13:44:44','Articles de la commande sortis du stock.',0,'1','WooCommerce','order_note',0,0),(207,1109,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-03-11 14:44:44','2015-03-11 13:44:44','Payment is successfully completed.',0,'1','WooCommerce','order_note',0,0),(208,1183,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-05-04 10:28:21','2015-05-04 09:28:21','En attente règlement par chèque État de la commande modifié de Attente paiement à En attente',0,'1','WooCommerce','order_note',0,0),(209,1183,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-05-04 10:28:22','2015-05-04 09:28:22','Articles de la commande sortis du stock.',0,'1','WooCommerce','order_note',0,0),(214,1204,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-05-14 13:02:18','2015-05-14 12:02:18','Articles de la commande sortis du stock.',0,'1','WooCommerce','order_note',0,0),(215,1204,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-05-14 13:02:18','2015-05-14 12:02:18','Payment successfully completed',0,'1','WooCommerce','order_note',0,0),(216,1204,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-05-14 13:02:18','2015-05-14 12:02:18','État de la commande modifié de Attente paiement à En cours',0,'1','WooCommerce','order_note',0,0),(217,1204,'WooCommerce','woocommerce@monsieurcycles.fr','','','2015-05-14 13:02:19','2015-05-14 12:02:19','Articles de la commande sortis du stock.',0,'1','WooCommerce','order_note',0,0),(218,1183,'Monsieur Cycles','monsieurcycles@gmail.com','','','2015-05-15 09:46:16','2015-05-15 08:46:16','État de la commande modifié de En attente à Terminée',0,'1','WooCommerce','order_note',0,0),(219,1101,'Monsieur Cycles','monsieurcycles@gmail.com','','','2015-05-15 09:46:26','2015-05-15 08:46:26','État de la commande modifié de En attente à Terminée',0,'1','WooCommerce','order_note',0,0),(220,985,'asics women\'s knee tight','gyzgefbx@gmail.com','','183.138.185.62','2015-08-21 08:28:21','2015-08-21 07:28:21','You actually make it appear really easy with your presentation but I find this matter to be really one thing which I think I\'d never understand. It sort of feels too complex and extremely wide for me. I\'m looking forward on your next submit, Iˇll attempt to get the cling of it!\r\nhttp://www.apkrb.info/pg.php?hgoz5lrhu\r\nhttp://ciphet.in/pg.php?hgspllvw\r\nhttp://eng.enkcf.com/pg.php?hgixagji8\r\nhttp://pishdadservice.com/pg.php?hghm6t\r\nhttp://smartcast.co.il/pg.php?hgd6rx1s5\r\nhttp://thuvien.tuaf.edu.vn/pg.php?hg8np\r\nhttp://www.altriauguri.it/pg.php?hgrk81stqu\r\nhttp://www.comerciallr.com.br/pg.php?hgtkzdw0i\r\nhttp://www.fjell-kjell.com/pg.php?hg7b\r\nhttp://www.gh-zsh.com/pg.php?hgtqv51cx\r\nhttp://www.kppco.com/pg.php?hg2wive\r\nhttp://www.mundocerto.com.br/pg.php?hgjnibem7j\r\nhttp://www.PolHome.nl/pg.php?hgv47la\r\nhttp://www.siftbearing.com/pg.php?hgpuxrw\r\nhttp://www.sxjdbz.com/pg.php?hgz866\r\nhttp://www.tossahoteles.com/pg.php?hgclx6eiv\r\nhttp://www.vitas.cc/pg.php?hgaec6\r\nhttp://www.grupofarma.com/pg.php?hg2bjwhx\r\nhttp://www.hamedan-samacollege.ir/p.php?asfnuwl1\r\nhttp://www.getdigest.com/p.php?askj34ks\r\nhttp://res.bus.ubu.ac.th/p.php?asgk77nhs\r\nhttp://www.mudasemtubetes.com.br/p.php?asmrk1b\r\nhttp://211.225.79.197/pg.php?asub1m\r\nhttp://www.cdlckj.net/pg.php?asvowps\r\nhttp://ndcarmel.com/pg.php?as2x550u\r\nhttp://www.bookyouroffice.com/pg.php?asw7z3\r\nhttp://www.jepvc.com/pg.php?as7rsihvfc\r\nhttp://www.skiromania.ro/pg.php?as1c57kt2q\r\nhttp://www.gryfino.sr.gov.pl/pg.php?as16a72r\r\nhttp://yagabroadcast.com.br/pg.php?as87cv\r\nhttp://www.u1media.co.kr/pg.php?astxnslwi\r\nhttp://www.eklavyaeducationfoundation.org/pg.php?aswgs4\r\nhttp://revraya.com.my/pg.php?aslkxkp0oq\r\nhttp://www.jainexim.co.in/pg.php?asadnaxd\r\nhttp://www.hayatiucaremlak.com/pg.php?hg4l7vn\r\nhttp://www.massimosiragusa.it/pg.php?hgnantu\r\nhttp://job1.khu.ac.kr/pg.php?hg8vcp\r\nhttp://www.hcchocen.cz/pg.php?hgj8t33\r\nhttp://consumeradvice.in/pg.php?hg5s82aemp\r\nhttp://www.cdlckj.net/pg.php?hgonhmiu7z\r\nhttp://azussystems.com/pg.php?hg2esxx\r\nhttp://ejournal.neuroregen.com/pg.php?hgl5plg5\r\nhttp://macedoniancross.com.mk/pg.php?hgn3nz\r\nhttp://service.immergas.com/pg.php?hgat7yijx\r\nhttp://theprimemall.com/pg.php?hgxqzlx5q8\r\nhttp://www.agrar-landtechnik.ch/pg.php?hgzr2nfv\r\nhttp://www.ciademaria.net/pg.php?hgjm51k\r\nhttp://www.edible-birdnest.com.my/pg.php?hg52gdr4p\r\nhttp://www.getdigest.com/pg.php?hg2rzrqw\r\nhttp://www.jepvc.com/pg.php?hgbynh\r\n\r\nasics women\'s knee tight http://www.comerciallr.com.br/pg.php?as85v4',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','',0,0),(221,862,'william hogan joliet junior college','lchqsduohh@gmail.com','','183.138.149.196','2015-08-21 12:06:45','2015-08-21 11:06:45','You really make it seem so easy with your presentation however I to find this matter to be really something which I think I might by no means understand. It kind of feels too complicated and extremely broad for me. I\'m having a look forward for your next put up, Iˇll try to get the hang of it!\r\nhttp://www.duncowinn.co.uk/pg.php?as1xt6r35y\r\nhttp://dragonvilleinteriors.co.uk/pg.php?as3ok0k8ef\r\nhttp://www.pianetaazzurro.it/pg.php?askojfue6j\r\nhttp://62.153.164.171/pg.php?ashti8\r\nhttp://www.columbusregional.com/pg.php?asjb2w8cgn\r\nhttp://www.mathios.gr/pg.php?askxgwof7\r\nhttp://www.xosovungtau.com.vn/pg.php?asdqa6rf\r\nhttp://www.slpa.lk/pg.php?asbziqht\r\nhttp://www.cdlckj.net/pg.php?aspu1yzr8\r\nhttp://aestheticsdelhi.com/pg.php?as6i1dc\r\nhttp://citycollegesofchicagoathletics.com/pg.php?asrk86\r\nhttp://ejournal.neuroregen.com/pg.php?as4r1tb\r\nhttp://www.ciademaria.net/pg.php?asz664vp\r\nhttp://www.iwater.org/pg.php?as1eu2i2d\r\nhttp://www.siftbearing.com/pg.php?as5qio8z\r\nhttp://almashhadalyoum.com/pg.php?as0wr7d33\r\nhttp://res.bus.ubu.ac.th/pg.php?asw550ln\r\nhttp://new.hansungstring.com/pg.php?ass0ssv\r\nhttp://issue.abt.ro/pg.php?asw4gem6n8\r\nhttp://kanakplastic.com/pg.php?as54wdm67s\r\nhttp://www.gaziantepmetal.com/pg.php?hgeb5hus\r\nhttp://www.columbusregional.com/pg.php?hg3rga2ayc\r\nhttp://education.vorstu.ru/pg.php?hg3ison\r\nhttp://crm.global-opportunities.net/pg.php?hggr78\r\nhttp://saigonnais.com/pg.php?hganhl\r\nhttp://www.alokily.org/pg.php?hg85v4\r\nhttp://www.fjell-kjell.com/pg.php?hgow3osb\r\nhttp://www.kppco.com/pg.php?hghtqwjqu\r\nhttp://www.pousanave.com.br/pg.php?hgh5ybru6\r\nhttp://www.talenttv.co.il/pg.php?hgnc88vqm\r\nhttp://www.gryfino.sr.gov.pl/pg.php?hg8t6gb\r\nhttp://www.lichiao.com/pg.php?hgfsb0\r\nhttp://uristi.com/pg.php?hg11ug\r\nhttp://www.u1media.co.kr/pg.php?hgeulyli0\r\nhttp://www.joeun.com/pg.php?hgv228\r\nhttp://admin.eturizam.net/pg.php?hgp6wkfrqi\r\nhttp://nuriyilmaz.com.tr/pg.php?hggtxjucv\r\nhttp://www.ookami.ae/pg.php?hg6zz00l\r\nhttp://kanakplastic.com/pg.php?hgwfzt2u\r\nhttp://typtp.co.uk/pg.php?ashaew3\r\nhttp://dln.tums.ac.ir/pg.php?asena8sjr\r\nhttp://www.mistercrm.it/pg.php?asryqemo\r\nhttp://211.225.79.197/pg.php?asns1ja\r\nhttp://www.blkinsaatcilarodasi.org/pg.php?asuuo12zx\r\nhttp://www.hcchocen.cz/pg.php?aszbpam50\r\nhttp://www.vinklum.es/pg.php?asd1xp\r\nhttp://27.251.38.187/pg.php?asf768\r\nhttp://www.northdeltaschool.net/pg.php?as0fqb\r\nhttp://83.216.172.107/pg.php?asd0aez\r\nhttp://ciphet.in/pg.php?asa7agkvr7\r\n\r\nwilliam hogan joliet junior college http://1infmardiv.org/p.php?hgswcwda3',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),(222,862,'asics 2000 mens black','lrouprvxldu@gmail.com','','240e:f2:45:d21b:c93:f185:61a9:9e95','2015-08-21 12:36:50','2015-08-21 11:36:50','You actually make it seem really easy along with your presentation but I to find this matter to be actually something that I feel I\'d by no means understand. It sort of feels too complex and extremely wide for me. I\'m taking a look ahead to your subsequent put up, Iˇll attempt to get the grasp of it!\r\nhttp://www.prakticaservis.com/p.php?as2xtwm\r\nhttp://www.fundaciontecnicosdelmundo.es/p.php?aszrt6e\r\nhttp://www.diaocthanhbinh.vn/p.php?hguup3ll\r\nhttp://u1media.com/pg.php?hgvyhq\r\nhttp://travelinsure.ca/pg.php?hgtwj\r\nhttp://www.pipetechitalia.com/pg.php?asexo55g4\r\nhttp://technoscan.elsyasi.com/pg.php?ase68lcc\r\nhttp://www.mundocerto.com.br/pg.php?aslpxnkrg\r\nhttp://www.franchising.silcare.com/pg.php?ask0cqi\r\nhttp://www.villa-calussovo.com/pg.php?asi2fdi\r\nhttp://www.digirolamoeditore.com/pg.php?asc3x8mu\r\nhttp://www.hayatiucaremlak.com/p.php?asvocync\r\nhttp://62.77.42.149/p.php?asxc2jk\r\nhttp://consumeradvice.in/p.php?aspa08\r\nhttp://aestheticsdelhi.com/p.php?ased774fm2\r\nhttp://gemwave.com/p.php?as3gq3s73\r\nhttp://suwon.njob.net/p.php?asaq126y\r\nhttp://www.bigeast.com/p.php?asl4gij\r\nhttp://www.fl-packaging.com/p.php?astrg1y\r\nhttp://www.kppco.com/p.php?asp48utc4\r\nhttp://www.polytape.ru/p.php?asx0u7euo2\r\nhttp://www.sxjdbz.com/p.php?as3srxkl\r\nhttp://www.vitas.cc/p.php?astpj4h\r\nhttp://www.aztechlocknut.com/p.php?asmp2r\r\nhttp://www.adr.ipportalegre.pt/p.php?asl5wx\r\nhttp://tesourosdaopera.com.br/p.php?asidbn4\r\nhttp://www.gavearioimoveis.com.br/p.php?asa7e6qd\r\nhttp://www.asegim.com/p.php?asddjsxkm\r\nhttp://admin.eturizam.net/p.php?ass1q0pac\r\nhttp://mobilestelecom.com/p.php?asg5pu\r\nhttp://www.mudasemtubetes.com.br/p.php?asn8xbbvk2\r\nhttp://www.filltoppumps.in/p.php?asbmjl\r\nhttp://imoveisbino.com/p.php?aslihqyjh6\r\nhttp://www.portal.energypolitics.ru/p.php?asfiany\r\nhttp://tumspress.tums.ac.ir/p.php?as0dc514i0\r\nhttp://www.pianetaazzurro.it/p.php?as1pi0f1\r\nhttp://62.153.164.171/p.php?as8dvgpdu\r\nhttp://www.blkinsaatcilarodasi.org/p.php?as2fn7j\r\nhttp://www.hamedan-samacollege.ir/p.php?asxev1\r\nhttp://www.prakticaservis.com/p.php?ase1fg8sh\r\nhttp://www.fundaciontecnicosdelmundo.es/p.php?asbua322td\r\nhttp://ayvazbaski.com/p.php?hgxl3ck7a\r\nhttp://ciphet.in/pg.php?hgu6pw1og\r\nhttp://izh-stanok.ru/pg.php?hghsoelif\r\nhttp://reeyah-lighting.com/pg.php?asp8r1\r\nhttp://pishdadservice.com/pg.php?asmsivmpe\r\nhttp://www.jepvc.com/pg.php?aszvqo\r\nhttp://www.queengamestore.com/pg.php?ash0cdojli\r\nhttp://izh-stanok.ru/pg.php?asdm4xm\r\nhttp://mail-genie.com/pg.php?asot3r\r\n\r\nasics 2000 mens black http://62.77.42.149/p.php?asw1yosg5v',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),(223,862,'asics apparel hang','gyzgefbx@gmail.com','','183.138.185.62','2015-08-21 16:10:12','2015-08-21 15:10:12','You actually make it seem really easy with your presentation however I in finding this matter to be really one thing which I think I\'d by no means understand. It seems too complex and very large for me. I\'m taking a look ahead for your next post, I will attempt to get the dangle of it!\r\nhttp://www.potterswheelacademy.com/pg.php?hga32gp\r\nhttp://cms.triteknoiaxarnon.gr/pg.php?hggs3s4z\r\nhttp://member.gims.or.kr/pg.php?hgf77x\r\nhttp://tvbar.hr/pg.php?hgad08cpb\r\nhttp://www.alokily.org/pg.php?hgcb4a\r\nhttp://www.diaocthanhbinh.vn/pg.php?hgmpu7ifk\r\nhttp://www.getdigest.com/pg.php?hgkobzve5\r\nhttp://www.kppco.com/pg.php?hgbgom\r\nhttp://www.misswellness.it/pg.php?hgvz3tumvh\r\nhttp://www.reisebaz