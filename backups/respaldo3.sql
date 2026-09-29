-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_test_7b
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_logs`
--

DROP TABLE IF EXISTS `tb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(80) NOT NULL,
  `table_operation` enum('Create','Read','Update','Delete') DEFAULT NULL,
  `db_user` varchar(80) NOT NULL,
  `operation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table_description` text NOT NULL,
  `operation_status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logs`
--

LOCK TABLES `tb_logs` WRITE;
/*!40000 ALTER TABLE `tb_logs` DISABLE KEYS */;
INSERT INTO `tb_logs` VALUES (1,'tb_users','Create','root@localhost','2026-09-10 10:24:59','Usuario creado. ID=2, email=240242@utxicotepec.edu.mx, nick=Margaret Isabela,creation_date=2026-09-10 10:24:59, status=',_binary ''),(2,'tb_users','Create','root@localhost','2026-09-10 10:26:34','Usuario creado. ID=3, email=240080@utxicotepec.edu.mx, nick=Jhonatan Eliel,creation_date=2026-09-10 10:26:34, status=',_binary ''),(3,'tb_users','Create','root@localhost','2026-09-10 10:27:01','Usuario creado. ID=4, email=240755@utxicotepec.edu.mx, nick=Sarita,creation_date=2026-09-10 10:27:01, status=',_binary ''),(4,'tb_users','Create','root@localhost','2026-09-10 10:27:35','Usuario creado. ID=5, email=240497@utxicotepec.edu.mx, nick=Harold,creation_date=2026-09-10 10:27:35, status=',_binary ''),(5,'tb_products','Create','root@localhost','2026-09-24 09:49:54','Se creó el producto: Laptop HP 15 con ID: 5, precio: 14500.00, stock: 10',_binary ''),(6,'tb_products','Create','root@localhost','2026-09-24 09:49:54','Se creó el producto: Monitor Samsung 24\" con ID: 6, precio: 4200.00, stock: 15',_binary ''),(7,'tb_products','Create','root@localhost','2026-09-24 10:49:54','Se creó el producto: Laptop Lenovo IdeaPad 3 con ID: 7, precio: 12499.00, stock: 15',_binary ''),(8,'tb_products','Create','root@localhost','2026-09-24 10:49:54','Se creó el producto: Mouse Logitech M185 con ID: 8, precio: 349.00, stock: 40',_binary ''),(9,'tb_products','Create','root@localhost','2026-09-24 10:49:54','Se creó el producto: Teclado Mecánico Redragon con ID: 9, precio: 899.00, stock: 25',_binary ''),(10,'tb_products','Create','root@localhost','2026-09-24 10:49:54','Se creó el producto: Monitor Samsung 24\" con ID: 10, precio: 3299.00, stock: 12',_binary ''),(11,'tb_products','Create','root@localhost','2026-09-24 10:49:54','Se creó el producto: Audífonos Sony WH-CH520 con ID: 11, precio: 1099.00, stock: 20',_binary ''),(12,'tb_products','Delete','root@localhost','2026-09-24 10:57:43','Se eliminó el producto: Laptop HP 15 con ID: 5, precio: 14500.00, stock: 10',_binary ''),(13,'tb_products','Delete','root@localhost','2026-09-24 10:57:43','Se eliminó el producto: Monitor Samsung 24\" con ID: 6, precio: 4200.00, stock: 15',_binary ''),(14,'tb_products','Delete','root@localhost','2026-09-24 10:57:43','Se eliminó el producto: Laptop Lenovo IdeaPad 3 con ID: 7, precio: 12499.00, stock: 15',_binary ''),(15,'tb_products','Delete','root@localhost','2026-09-24 10:57:43','Se eliminó el producto: Mouse Logitech M185 con ID: 8, precio: 349.00, stock: 40',_binary ''),(16,'tb_products','Delete','root@localhost','2026-09-24 10:57:43','Se eliminó el producto: Teclado Mecánico Redragon con ID: 9, precio: 899.00, stock: 25',_binary ''),(17,'tb_products','Create','osmar.gael@PC-12','2026-09-24 10:58:35','Se creó el producto: Laptop Lenovo IdeaPad 3 con ID: 12, precio: 12499.00, stock: 15',_binary ''),(18,'tb_products','Create','osmar.gael@PC-12','2026-09-24 10:58:35','Se creó el producto: Mouse Logitech M185 con ID: 13, precio: 349.00, stock: 40',_binary ''),(19,'tb_products','Create','osmar.gael@PC-12','2026-09-24 10:58:35','Se creó el producto: Teclado Mecánico Redragon con ID: 14, precio: 899.00, stock: 25',_binary ''),(20,'tb_products','Create','osmar.gael@PC-12','2026-09-24 10:58:35','Se creó el producto: Monitor Samsung 24\" con ID: 15, precio: 3299.00, stock: 12',_binary ''),(21,'tb_products','Create','osmar.gael@PC-12','2026-09-24 10:58:35','Se creó el producto: Audífonos Sony WH-CH520 con ID: 16, precio: 1099.00, stock: 20',_binary ''),(22,'tb_products','Update','root@localhost','2026-09-24 11:06:47','Se actualizó el producto: Laptop Lenovo IdeaPad 3 con ID: 12. Precio anterior: 12499.00, precio nuevo: 13000.00. Stock anterior: 15, stock nuevo: 20',_binary ''),(23,'tb_products','Update','root@localhost','2026-09-24 11:06:52','Se actualizó el producto: Mouse Logitech M185 con ID: 13. Precio anterior: 349.00, precio nuevo: 399.00. Stock anterior: 40, stock nuevo: 50',_binary ''),(24,'tb_users','Create','dara.gomez@PC-18','2026-09-24 11:08:35','Usuario creado. ID=6, email=alex.martin@example.com, nick=alexmartin,creation_date=2026-09-24 11:08:35, status=',_binary ''),(25,'tb_users','Create','dara.gomez@PC-18','2026-09-24 11:08:35','Usuario creado. ID=7, email=luna.garcia@example.com, nick=lunagarcia,creation_date=2026-09-24 11:08:35, status=',_binary ''),(26,'tb_users','Create','dara.gomez@PC-18','2026-09-24 11:08:35','Usuario creado. ID=8, email=diego.lopez@example.com, nick=diegolopez,creation_date=2026-09-24 11:08:35, status=',_binary ''),(27,'tb_users','Update','dara.gomez@PC-18','2026-09-24 11:09:59','Usuario actualizado. ID=7, email=luna.actualizada@example.com, nick=lunaactualizada, creation_date=2026-09-24 11:08:35, status=',_binary ''),(28,'tb_users','Create','dara.gomez@PC-18','2026-09-24 12:00:30','Usuario creado. ID=9, email=andrea.morales@example.com, nick=andreamorales,creation_date=2026-09-24 12:00:30, status=',_binary '');
/*!40000 ALTER TABLE `tb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `categoria` varchar(100) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (10,'Monitor Samsung 24\"','Monitor Full HD de 24 pulgadas con conexión HDMI',3299.00,12,'Monitores','2026-09-24 10:49:54',NULL,_binary ''),(11,'Audífonos Sony WH-CH520','Audífonos inalámbricos Bluetooth con batería de larga duración',1099.00,20,'Audio','2026-09-24 10:49:54',NULL,_binary ''),(12,'Laptop Lenovo IdeaPad 3','Laptop de 15.6 pulgadas con procesador Intel Core i5 y 8 GB de RAM',13000.00,20,'Computadoras','2026-09-24 10:58:35',NULL,_binary ''),(13,'Mouse Logitech M185','Mouse inalámbrico compacto con conexión USB',399.00,50,'Accesorios','2026-09-24 10:58:35',NULL,_binary ''),(14,'Teclado Mecánico Redragon','Teclado mecánico RGB con switches para uso gaming',899.00,25,'Accesorios','2026-09-24 10:58:35',NULL,_binary ''),(15,'Monitor Samsung 24\"','Monitor Full HD de 24 pulgadas con conexión HDMI',3299.00,12,'Monitores','2026-09-24 10:58:35',NULL,_binary ''),(16,'Audífonos Sony WH-CH520','Audífonos inalámbricos Bluetooth con batería de larga duración',1099.00,20,'Audio','2026-09-24 10:58:35',NULL,_binary '');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_insert` AFTER INSERT ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (table_name, table_operation, db_user, table_description, operation_status)
    VALUES
    (
        'tb_products',
        'Create',
        USER(),
        CONCAT(
            'Se creó el producto: ', NEW.nombre,
            ' con ID: ', NEW.id,
            ', precio: ', NEW.precio,
            ', stock: ', NEW.stock
        ),
        1
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_update` AFTER UPDATE ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (table_name, table_operation, db_user, table_description, operation_status)
    VALUES
    (
        'tb_products',
        'Update',
        USER(),
        CONCAT(
            'Se actualizó el producto: ', NEW.nombre,
            ' con ID: ', NEW.id,
            '. Precio anterior: ', OLD.precio,
            ', precio nuevo: ', NEW.precio,
            '. Stock anterior: ', OLD.stock,
            ', stock nuevo: ', NEW.stock
        ),
        1
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_delete` AFTER DELETE ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (table_name, table_operation, db_user, table_description, operation_status)
    VALUES
    (
        'tb_products',
        'Delete',
        USER(),
        CONCAT(
            'Se eliminó el producto: ', OLD.nombre,
            ' con ID: ', OLD.id,
            ', precio: ', OLD.precio,
            ', stock: ', OLD.stock
        ),
        1
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nick` (`nick`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (2,'240242@utxicotepec.edu.mx','Margaret Isabela','871534c2971fceb021437786bc940bd2','2026-09-10 10:24:59',NULL,NULL,_binary ''),(3,'240080@utxicotepec.edu.mx','Jhonatan Eliel','871534c2971fceb021437786bc940bd2','2026-09-10 10:26:34',NULL,NULL,_binary ''),(4,'240755@utxicotepec.edu.mx','Sarita','871534c2971fceb021437786bc940bd2','2026-09-10 10:27:01',NULL,NULL,_binary ''),(5,'240497@utxicotepec.edu.mx','Harold','871534c2971fceb021437786bc940bd2','2026-09-10 10:27:35',NULL,NULL,_binary ''),(6,'alex.martin@example.com','alexmartin','2c9341ca4cf3d87b9e4eb905d6a3ec45','2026-09-24 11:08:35','2026-09-24 11:08:35',NULL,_binary ''),(7,'luna.actualizada@example.com','lunaactualizada','2c9341ca4cf3d87b9e4eb905d6a3ec45','2026-09-24 11:08:35','2026-09-24 11:09:59',NULL,_binary ''),(8,'diego.lopez@example.com','diegolopez','2c9341ca4cf3d87b9e4eb905d6a3ec45','2026-09-24 11:08:35','2026-09-24 11:08:35',NULL,_binary ''),(9,'andrea.morales@example.com','andreamorales','2c9341ca4cf3d87b9e4eb905d6a3ec45','2026-09-24 12:00:30',NULL,NULL,_binary '');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_users_after_insert` AFTER INSERT ON `tb_users` FOR EACH ROW BEGIN
INSERT INTO tb_logs (
table_name,
table_operation,
db_user,
table_description,
operation_date,
operation_status
)
VALUES (
'tb_users',
'Create',
USER(),
CONCAT(
'Usuario creado. ID=', NEW.ID,
', email=', NEW.email,
', nick=', NEW.nick,
',creation_date=', NEW.creation_date,
', status=', NEW.status
),CURRENT_TIMESTAMP,
b'1'
);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_users_after_update` AFTER UPDATE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs (
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Update',
        USER(),
        CONCAT(
            'Usuario actualizado. ID=', NEW.ID,
            ', email=', NEW.email,
            ', nick=', NEW.nick,
            ', creation_date=', NEW.creation_date,
            ', status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_users_after_delete` AFTER DELETE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs (
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Delete',
        USER(),
        CONCAT(
            'Usuario eliminado. ID=', OLD.ID,
            ', email=', OLD.email,
            ', nick=', OLD.nick,
            ', creation_date=', OLD.creation_date,
            ', status=', OLD.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_trazabilidad_products`
--

DROP TABLE IF EXISTS `vw_trazabilidad_products`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_products` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `inserted_by`,
 1 AS `roles`,
 1 AS `operation_description`,
 1 AS `operation_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trazabilidad_users`
--

DROP TABLE IF EXISTS `vw_trazabilidad_users`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_users` AS SELECT 
 1 AS `id`,
 1 AS `email`,
 1 AS `nick`,
 1 AS `creation_date`,
 1 AS `last_update`,
 1 AS `last_login`,
 1 AS `status`,
 1 AS `inserted_by`,
 1 AS `roles`,
 1 AS `operation_description`,
 1 AS `operation_date`,
 1 AS `operation_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_trazabilidad_products`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_products` AS select `p`.`ID` AS `id`,`p`.`nombre` AS `nombre`,`p`.`descripcion` AS `descripcion`,`b`.`db_user` AS `inserted_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_description` AS `operation_description`,`b`.`operation_date` AS `operation_date` from ((`tb_products` `p` join `tb_logs` `b` on((`b`.`table_description` like concat('%ID: ',`p`.`ID`,'%')))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) where ((`b`.`table_operation` = 'Create') and (`b`.`table_name` = 'tb_products')) group by `p`.`ID`,`p`.`nombre`,`p`.`descripcion`,`b`.`db_user`,`b`.`table_description`,`b`.`operation_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trazabilidad_users`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_users` AS select `u`.`ID` AS `id`,`u`.`email` AS `email`,`u`.`nick` AS `nick`,`u`.`creation_date` AS `creation_date`,`u`.`last_update` AS `last_update`,`u`.`last_login` AS `last_login`,`u`.`status` AS `status`,`b`.`db_user` AS `inserted_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_description` AS `operation_description`,`b`.`operation_date` AS `operation_date`,`b`.`operation_status` AS `operation_status` from ((`tb_users` `u` join `tb_logs` `b` on((`b`.`table_description` like concat('%ID=',`u`.`ID`,',%')))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) where ((`b`.`table_operation` = 'Create') and (`b`.`table_name` = 'tb_users')) group by `u`.`ID`,`u`.`email`,`u`.`nick`,`u`.`creation_date`,`u`.`last_update`,`u`.`last_login`,`u`.`status`,`b`.`db_user`,`b`.`table_description`,`b`.`operation_date`,`b`.`operation_status` */;
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

-- Dump completed on 2026-09-29  8:32:32
