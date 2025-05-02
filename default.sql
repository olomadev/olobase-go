
--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `version` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isActive` tinyint unsigned DEFAULT '0',
  `isCore` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES ('38a05004-172c-4a06-99cb-2b7808d54fe3','Users','1.0.0',1,0),('5849be27-f6c0-4b82-b909-19814a053984','i18n','1.0.0',1,0),('5e110a30-1378-4bab-87f4-3b81871b898a','Patients','1.0.0',1,0),('88748bef-695d-435b-a752-8a6e7608c220','Modules','1.0.0',1,1),('8fa5064f-2d24-4ce1-9cf2-21058f9166a4','Authorization','1.0.0',1,0),('aed7da0a-d81e-4d2e-973d-ef536ba7102f','Intakes','1.0.0',1,0),('e320e4ac-db03-4dd5-aa6c-118c95e1ca56','Medicines','1.0.0',1,0);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `route` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('05e6c960-6e20-4b69-8bde-87340388f072','Authorization','UserRoles','edit','/api/authorization/userRoles/assign','PUT'),('10e5a2e3-9c81-44a5-8c4f-4522ef11df5b','Users','Users','delete','/api/users/delete/:userId','DELETE'),('119a2ce9-c938-4a59-8ee2-72bf4bead996','Authorization','Roles','list','/api/authorization/roles/findOneById/:roleId','GET'),('134d17de-2ee1-4418-b9a9-d09678dba70f','Medicines','Medicines','list','/api/medicines/findAllByPaging','GET'),('2d059610-9351-4d1e-b2e2-035bdc353b64','Modules','Modules','list','/api/modules/findAllByPaging','GET'),('2ecb0afa-5802-4a81-92c9-72c311d9fec4','Users','Users','edit','/api/users/updatePassword/:userId','PUT'),('35944e66-e1f8-4892-81d4-eb47c13b2f07','Intakes','MaleInfants','list','/api/intakes/maleInfants/findAllByPaging','GET'),('4489a158-8d19-4100-adaa-e1de137fc4b3','Users','Users','list','/api/users/findAllByPaging','GET'),('496ef5b5-e39d-4ece-baab-82fe18b632c3','Modules','Modules','list','/api/modules/findAll','GET'),('4aeaefad-a4bd-4273-9d92-7908471f95b4','Modules','Modules','create','/api/modules/update/:moduleId','PUT'),('52272f27-1f73-40ca-9869-0b4c81720887','Intakes','Intakes','list','/api/intakes/findAll','GET'),('5335a5a6-d7b3-4207-a738-560ee1738440','Medicines','Medicines','list','/api/medicines/update/:medicineId','PUT'),('5401297e-a971-4df2-a550-7cde1455a3e4','Authorization','Roles','list','/api/authorization/roles/findAll','GET'),('56075480-5a2a-4597-988b-76fe53eb7eae','Authorization','Roles','create','/api/authorization/roles/create','POST'),('5a210c0f-3034-4aa8-a592-dd002cdd4c04','Authorization','Roles','list','/api/authorization/roles/findAllByPaging','GET'),('5c0d864d-7792-4d56-8a37-5792a415b6bc','Patients','Patients','edit','/api/patients/update/:patientId','PUT'),('6566781a-267e-46d6-91c7-d92d46c9d501','Authorization','Permissions','list','/api/authorization/permissions/findAllByPaging','GET'),('65d2b3ea-f392-4992-b2ef-729d2af8356f','Authorization','UserRoles','list','/api/authorization/userRoles/findAllByPaging/:roleId','GET'),('6cb2bea6-2e6f-4135-86e5-e6249779c49a','Modules','Modules','create','/api/modules/create','POST'),('7bf8ca21-26f1-471c-a076-8ee2298cd2f1','Patients','Patients','delete','/api/patients/delete/:patientId','DELETE'),('7f7320be-7882-4ae4-bdd1-1a577b9fecf8','Users','My Account','list','/api/users/myAccount/findMe','GET'),('81a4e936-0ca9-46c0-a4c2-f757ffa9a705','Users','Users','show','/api/users/findAllByPaging','GET'),('82129429-ec97-4d46-a215-20cf7c1d4374','Patients','Patients','list','/api/patients/findOneById/:patientId','GET'),('861aa1d3-fd95-401f-9666-d2616eb43eb8','Users','Users',NULL,'/api/users/findAll','GET'),('8b336350-9ed7-4eee-94b1-d335b33fff2a','Authorization','Permissions','delete','/api/authorization/permissions/delete/:permId','DELETE'),('8be4cfb7-3a3c-4b9d-b475-144f6b5fb89b','Medicines','Medicines','list','/api/medicines/findOneById/:medicineId','GET'),('8d14368f-3899-4d54-9948-fda03a4e2f87','Authorization','Roles','edit','/api/authorization/roles/update/:roleId','PUT'),('8df0baf1-8d4a-470a-ace7-986ea7c39f61','Intakes','Intakes','list','/api/intakes/findOneById/:intakeId','GET'),('9951e57b-b2a7-4ab3-8443-4649add1e079','Modules','Modules','delete','/api/modules/delete/:moduleId','DELETE'),('9bd4cda7-0a9f-4f80-b7db-bad7936694fb','Intakes','Intakes','edit','/api/intakes/update/:intakeId','PUT'),('9d83d2a8-136a-4160-b273-1215a7519e43','Medicines','Medicines','list','/api/medicines/delete/:medicineId','DELETE'),('9f0e7359-021e-4853-b577-7a1b174794e9','Authorization','Permissions','create','/api/authorization/permissions/copy/:permId','POST'),('a7b0b4a2-4504-46d8-88c8-0a4c49f23b07','Users','Users',NULL,'/api/users/findOneById/:userId','GET'),('a8b787bc-0652-4b13-b24c-7cc9ed565b13','Users','Roles','list','/api/users/roles/findAll','GET'),('ad138dd4-4694-4494-a5f7-efcbc7610163','Authorization','UserRoles','edit','/api/authorization/userRoles/unassign','PUT'),('ae28c04b-07b7-486d-b782-6b5c0e93ab01','Users','Users','edit','/api/users/update/:userId','PUT'),('b023a08f-1360-42b9-aab3-8a348f3fc6ca','Intakes','Intakes','delete','/api/intakes/delete/:intakeId','DELETE'),('b28ad0b2-4c0a-47b9-8556-c826ada80903','Patients','Patients','list','/api/patients/findAll','GET'),('bf077931-9467-434e-afe8-8cb531187280','Authorization','Permissions','create','/api/authorization/permissions/create','POST'),('c7c041a4-ba3a-4585-8bab-6401832b1aaa','Intakes','Intakes','list','/api/intakes/findAllById/:patientId','GET'),('c99e90cd-0403-4a4e-aa8c-b6d21dc38e96','Users','Users','create','/api/users/create','POST'),('ce6fbef7-129a-4cab-bce6-055d96f78bc1','Intakes','Intakes','create','/api/intakes/create','POST'),('d0d25176-c4e1-402c-9317-d5fe71bb9d8b','Medicines','Medicines','list','/api/medicines/findAll','GET'),('d6ad9002-10aa-43a7-b7a7-4bbbd554c521','Medicines','Medicines','create','/api/medicines/create','POST'),('d7ff840b-8b6f-4e9c-b7e1-50b7c2c42ee5','Patients','Patients','list','/api/patients/findAllByPaging','GET'),('e55d7246-7d38-4c6c-b347-0754bb88a06c','Authorization','Roles','delete','/api/authorization/roles/delete/:roleId','DELETE'),('e7a2a41b-dec3-48bb-911d-d8adab449105','Authorization','Permissions','edit','/api/authorization/permissions/update/:permId','PUT'),('e9c3e297-397b-4210-b215-c79be7937313','Intakes','Intakes','list','/api/intakes/findAllByPaging','GET'),('ee3c41ff-aa4b-48de-86cd-bf1590bbc275','Users','My Account','edit','/api/users/myAccount/update','PUT'),('eea19739-696a-4276-9394-67df2dc3f4e4','Intakes','FemaleAdults','list','/api/intakes/femaleAdults/findAllByPaging','GET'),('f03cb2aa-1a5c-495b-aa05-2809da2f2bbe','Authorization','Permissions','list','/api/authorization/permissions/findOneById','GET'),('f3aaafe3-8c21-415a-9dc3-544f0c7a3e69','Patients','Patients','create','/api/patients/create','POST'),('f7ff6d01-a40c-4cbf-9501-840153120764','Users','My Account','edit','/api/users/myAccount/updatePassword','PUT');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolePermissions`
--

DROP TABLE IF EXISTS `rolePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolePermissions` (
  `roleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`roleId`,`permId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolePermissions`
--

LOCK TABLES `rolePermissions` WRITE;
/*!40000 ALTER TABLE `rolePermissions` DISABLE KEYS */;
INSERT INTO `rolePermissions` VALUES ('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','05e6c960-6e20-4b69-8bde-87340388f072'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','10e5a2e3-9c81-44a5-8c4f-4522ef11df5b'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','119a2ce9-c938-4a59-8ee2-72bf4bead996'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','134d17de-2ee1-4418-b9a9-d09678dba70f'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','2d059610-9351-4d1e-b2e2-035bdc353b64'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','2ecb0afa-5802-4a81-92c9-72c311d9fec4'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','35944e66-e1f8-4892-81d4-eb47c13b2f07'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','4489a158-8d19-4100-adaa-e1de137fc4b3'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','496ef5b5-e39d-4ece-baab-82fe18b632c3'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','4aeaefad-a4bd-4273-9d92-7908471f95b4'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','4fc4bf3e-a1ab-4194-9f8c-6d73236210cc'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','52272f27-1f73-40ca-9869-0b4c81720887'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','5335a5a6-d7b3-4207-a738-560ee1738440'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','5401297e-a971-4df2-a550-7cde1455a3e4'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','56075480-5a2a-4597-988b-76fe53eb7eae'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','5a210c0f-3034-4aa8-a592-dd002cdd4c04'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','5c0d864d-7792-4d56-8a37-5792a415b6bc'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','60c180ab-2ab5-49ea-95d0-467d755591ac'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','6566781a-267e-46d6-91c7-d92d46c9d501'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','65d2b3ea-f392-4992-b2ef-729d2af8356f'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','6cb2bea6-2e6f-4135-86e5-e6249779c49a'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','7bf8ca21-26f1-471c-a076-8ee2298cd2f1'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','7f7320be-7882-4ae4-bdd1-1a577b9fecf8'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','81a4e936-0ca9-46c0-a4c2-f757ffa9a705'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','82129429-ec97-4d46-a215-20cf7c1d4374'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','861aa1d3-fd95-401f-9666-d2616eb43eb8'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','8b336350-9ed7-4eee-94b1-d335b33fff2a'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','8be4cfb7-3a3c-4b9d-b475-144f6b5fb89b'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','8d14368f-3899-4d54-9948-fda03a4e2f87'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','8df0baf1-8d4a-470a-ace7-986ea7c39f61'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','9951e57b-b2a7-4ab3-8443-4649add1e079'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','9bd4cda7-0a9f-4f80-b7db-bad7936694fb'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','9d83d2a8-136a-4160-b273-1215a7519e43'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','9f0e7359-021e-4853-b577-7a1b174794e9'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','a7b0b4a2-4504-46d8-88c8-0a4c49f23b07'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','a89410c4-48f5-4f0d-8aea-c07d8ef33907'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','a8b787bc-0652-4b13-b24c-7cc9ed565b13'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','ad138dd4-4694-4494-a5f7-efcbc7610163'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','ae28c04b-07b7-486d-b782-6b5c0e93ab01'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','b023a08f-1360-42b9-aab3-8a348f3fc6ca'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','b28ad0b2-4c0a-47b9-8556-c826ada80903'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','bf077931-9467-434e-afe8-8cb531187280'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','c7c041a4-ba3a-4585-8bab-6401832b1aaa'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','c99e90cd-0403-4a4e-aa8c-b6d21dc38e96'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','ce6fbef7-129a-4cab-bce6-055d96f78bc1'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','d0d25176-c4e1-402c-9317-d5fe71bb9d8b'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','d6ad9002-10aa-43a7-b7a7-4bbbd554c521'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','d7ff840b-8b6f-4e9c-b7e1-50b7c2c42ee5'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','e55d7246-7d38-4c6c-b347-0754bb88a06c'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','e7a2a41b-dec3-48bb-911d-d8adab449105'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','e9c3e297-397b-4210-b215-c79be7937313'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','ee3c41ff-aa4b-48de-86cd-bf1590bbc275'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','eea19739-696a-4276-9394-67df2dc3f4e4'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','f03cb2aa-1a5c-495b-aa05-2809da2f2bbe'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','f3aaafe3-8c21-415a-9dc3-544f0c7a3e69'),('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','f7ff6d01-a40c-4cbf-9501-840153120764'),('9d548023-899f-461e-bd45-c925a66499ee','0aad9252-395d-4c18-a6b0-90a7625cf423'),('9d548023-899f-461e-bd45-c925a66499ee','383390d1-6d27-40da-949e-048426c6bd83'),('9d548023-899f-461e-bd45-c925a66499ee','a0c1c61d-8591-4bfb-a467-2407da6001ac'),('9d548023-899f-461e-bd45-c925a66499ee','e1fcfe44-67d4-4818-92ac-8a3303f8658c'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','05e6c960-6e20-4b69-8bde-87340388f072'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','10e5a2e3-9c81-44a5-8c4f-4522ef11df5b'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','119a2ce9-c938-4a59-8ee2-72bf4bead996'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','134d17de-2ee1-4418-b9a9-d09678dba70f'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','2d059610-9351-4d1e-b2e2-035bdc353b64'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','2ecb0afa-5802-4a81-92c9-72c311d9fec4'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','35944e66-e1f8-4892-81d4-eb47c13b2f07'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','4489a158-8d19-4100-adaa-e1de137fc4b3'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','496ef5b5-e39d-4ece-baab-82fe18b632c3'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','4aeaefad-a4bd-4273-9d92-7908471f95b4'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','4fc4bf3e-a1ab-4194-9f8c-6d73236210cc'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','52272f27-1f73-40ca-9869-0b4c81720887'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','5335a5a6-d7b3-4207-a738-560ee1738440'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','5401297e-a971-4df2-a550-7cde1455a3e4'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','56075480-5a2a-4597-988b-76fe53eb7eae'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','5a210c0f-3034-4aa8-a592-dd002cdd4c04'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','60c180ab-2ab5-49ea-95d0-467d755591ac'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','6566781a-267e-46d6-91c7-d92d46c9d501'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','65d2b3ea-f392-4992-b2ef-729d2af8356f'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','6cb2bea6-2e6f-4135-86e5-e6249779c49a'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','7f7320be-7882-4ae4-bdd1-1a577b9fecf8'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','81a4e936-0ca9-46c0-a4c2-f757ffa9a705'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','82129429-ec97-4d46-a215-20cf7c1d4374'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','861aa1d3-fd95-401f-9666-d2616eb43eb8'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','8b336350-9ed7-4eee-94b1-d335b33fff2a'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','8be4cfb7-3a3c-4b9d-b475-144f6b5fb89b'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','8d14368f-3899-4d54-9948-fda03a4e2f87'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','8df0baf1-8d4a-470a-ace7-986ea7c39f61'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','9951e57b-b2a7-4ab3-8443-4649add1e079'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','9bd4cda7-0a9f-4f80-b7db-bad7936694fb'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','9d83d2a8-136a-4160-b273-1215a7519e43'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','9f0e7359-021e-4853-b577-7a1b174794e9'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','a7b0b4a2-4504-46d8-88c8-0a4c49f23b07'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','a89410c4-48f5-4f0d-8aea-c07d8ef33907'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','a8b787bc-0652-4b13-b24c-7cc9ed565b13'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','ad138dd4-4694-4494-a5f7-efcbc7610163'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','ae28c04b-07b7-486d-b782-6b5c0e93ab01'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','b023a08f-1360-42b9-aab3-8a348f3fc6ca'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','b28ad0b2-4c0a-47b9-8556-c826ada80903'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','bf077931-9467-434e-afe8-8cb531187280'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','c7c041a4-ba3a-4585-8bab-6401832b1aaa'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','c99e90cd-0403-4a4e-aa8c-b6d21dc38e96'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','ce6fbef7-129a-4cab-bce6-055d96f78bc1'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','d0d25176-c4e1-402c-9317-d5fe71bb9d8b'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','d6ad9002-10aa-43a7-b7a7-4bbbd554c521'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','e55d7246-7d38-4c6c-b347-0754bb88a06c'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','e7a2a41b-dec3-48bb-911d-d8adab449105'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','e9c3e297-397b-4210-b215-c79be7937313'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','ee3c41ff-aa4b-48de-86cd-bf1590bbc275'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','eea19739-696a-4276-9394-67df2dc3f4e4'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','f03cb2aa-1a5c-495b-aa05-2809da2f2bbe'),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','f7ff6d01-a40c-4cbf-9501-840153120764');
/*!40000 ALTER TABLE `rolePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('6be6178d-fe99-47b6-90d5-2a0c4d25b6dc','admin','Admin',1),('c87e615c-dd9c-4ecd-bcd7-de38dac2f39f','user','User',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userAvatars`
--

DROP TABLE IF EXISTS `userAvatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userAvatars` (
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mimeType` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatarImage` mediumblob,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userAvatars`
--

LOCK TABLES `userAvatars` WRITE;
/*!40000 ALTER TABLE `userAvatars` DISABLE KEYS */;
INSERT INTO `userAvatars` VALUES ('c13e550a-60ee-48d5-bf6e-ed29310640b2','image/jpeg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\â\ØICC_PROFILE\0\0\0\È\0\0\0\00\0\0mntrRGB XYZ \à\0\0\0\0\0\0\0\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ö\Ö\0\0\0\0\0\Ó-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	desc\0\0\0\ð\0\0\0$rXYZ\0\0\0\0\0gXYZ\0\0(\0\0\0bXYZ\0\0<\0\0\0wtpt\0\0P\0\0\0rTRC\0\0d\0\0\0(gTRC\0\0d\0\0\0(bTRC\0\0d\0\0\0(cprt\0\0Œ\0\0\0<mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0\0\0\0\0s\0R\0G\0BXYZ \0\0\0\0\0\0o¢\0\08\õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0\ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶\ÏXYZ \0\0\0\0\0\0\ö\Ö\0\0\0\0\0\Ó-para\0\0\0\0\0\0\0\0ff\0\0\ò§\0\0\rY\0\0\Ð\0\0\n[\0\0\0\0\0\0\0\0mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0 \0\0\0\0G\0o\0o\0g\0l\0e\0 \0I\0n\0c\0.\0 \02\00\01\06ÿ\Û\0C\0	\n\n			\n\n		\r\r\nÿ\Û\0C	ÿÀ\0\0\ö\0\ö\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿ\Ä\0P\0\r	\0\0\0\0!1AQ\"a2q‘	#BRV¡6bu‚“•±³Á\Ò$3rst7c’¢²%8CST\Â\Ñ\á\ðÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0$\0\0\0\0\0\0\0\01!AQa\"23qÿ\Ú\0\0\0?\0\ÕR\" \"\"\" &¥V0\Î\Äx\Ö\óO‡p’²\ët«v\ÌT´±½\ÝN\î\0s\'@\òT\êÈƒ‚Ž”ø=.>‘1\ÒF\Øh%\"6\ó\Òi†\÷­f€\ë8)’Þ„(À9]˜£t|„\îš@y‚?‹‹^o\è\Æ~‘\naegÁ™q©l7\ß\Æ-¤i\ÑÎ¶Ù´{ú\è\éž4\r<\ôw5;p\Î\Ã82\Ó\r‹	Ø¨m6úv\ì\ÇOIc`Á\Äùª²\Òa\'jí‹²\ó³Få€Š\\-—\Ö\ßL‹B+«\éU:\ó\"I5#S¿A YAdl\ÆÆ±£ƒZ4\à¹Etˆ€ˆˆˆ€º+hhnP>–\ãGT24µ\Ñ\Í{H<Aw¢	˜ýˆ»=\æ+eŸ\ïHa\Úù5Ò®\È\áLA<IC‰;\õ-%Dl\Øø9sO¶kž]\\\équ5w£n§­h\è\Z\ã°ý0\àz5l\Ñn2§m\Þ\ì¬5qšÏˆm–\Êús³-5\\.ŠF6¸©\ëw9Ÿ’\Ùgœ6§Z±þ¤¸\è\Ò\"©\ÙØ¨€žq\Ê\Ý\ß~þj\0g\çÁ\óŽpj1&VK>+±³WºcþÐ§o“[º`:·G~I\â©p±;DT]³E-<¯‚¢7G$n,{s\\„xº•\"\"\" \"\"\" \"\":¬\Ó\Ù\ç²\Ö`\öº	mt\æÙ‡)\å­¼\Ô0\÷m\êÈ›ÿ\0Šÿ\0!¸s#p7\÷dŽ\Æw<è¨‡\ã\è\êm\Ø*\ë¬š\è\à}X\ÏÇ¯\ñ<¿x\Ù\Æ\Ã\Ö<)f¤\Ã\Øn\×Mn¶\Ð\Æ!§¦§Œ28\Ø9\0\ñ\Ç~\ê-Yy5™q‘v&\Ù\ðM™­¨‘£\Ò\îU\0>®©\Ý^ý8thÑ£]ÁdTEª¢\" \"\"\" \"\"\" \"\"\" \"\"\ï\Ú;±–_g…<\÷\ÛDQa\ì\\Lw\nxÀŠ©Ü›PÁ\ët\Û!»yE¬|\ÍÊ¬q”žl\',¯ ­WDÿ\0Z\ZˆùIø=§\Þ8\å¼b\çK\à<\ïÂ²\á\\sk3{©j\âÑµr\éºHŸ\È\õ\ÜA\n™c´\Ê\ÒJ,­\Ú³\Ö3\ìýŠe\Äš«eKœ\ëe\Ö&\r\\c—\ä\È>S	\Ý\ËQ½b•’\Â\" \"\"\" ª”ýŒû$Mœ\÷6c\ÜqM$8*\Ý6ŒŒ\ê\×]&i\ßÝ´\îs¹Ÿß®–e¾\Ï7^\Ðy®f\ÍO‡-…µš\Ö\r6c\×\Ã\Ï~„ƒS\È·l=‡\ì\ØV\ÉC†\ðý¾\Zmº\Ó\ÓS\ÂÝ–GF€\0¯Ž;\÷Qk\ÕCCGl£‚\Ýn¥Šš–š6\Å105‘±£@Ö¸\0z\"\ÕQŽ\åy³Ù™\Þ\Ý\î\ÔT,#Pêš†D\ò\Ú!3\ãk´:\ñ©,i;\ÂÀ³¿\æ°~\óÀ}cX\ç‰{HcË¼\îGSÙ©u\ð²8\Û$š~S\Ü8û\0TL\è\ÇRc|iS%=P–\Ùo&–„4\ê\Â\Ð|R¥\Ç~½6G ¬%\Ù\Ç\Å$\Ý\í®8Ïµ\æ\ì\ä\Ì\çN2¸cÀ\Ãfý3¸þ±Y¨´\ð\Ç\ñ}E\åøb\Ìß¦w\Ö\'\á‹3~™\ÜX¬\ÔO\rE\åøb\Ìß¦w\Ö\'\á‹3~™\ÜX¬\ÔO\rE\åøb\Ìß¦w\Ö/e&{f¥n\Æ)|¼¦‚)5\ö\í4«øcø\Îsµú”¶,Qb¥¯œ´\Î0\É\í#{O°\0³n\Ì\\%Ž©û\Ë\rÑŽœ\r_K)Ÿ¡®\ñ»ˆ\Ô(D»¨«j\í\ÕqWPT\ÉOQÄ‘\Ë‹\\\×¨ …–\\Þ½\"\á/Iú‹\ä\Öu³\Z‘‡1)Ž\Ó\ZL2\ZÊ°8€85\àrç¿†›\ò\â\å\Ë\Õef„DUB\Ô\ÌÌ³\Â9·ƒ\ëpV3¶¶®‚±¾p’	«,nù/i\à~£¹j\'´CâŒ€\Ç2\á[ûME\r@t\ö«‹[¤uk\Ç\É\í\Ô7‘Ó‘\î…cœ\÷\É</žø«b(\Û\à­\Õ\Í`2QÔ€v^Þ£“‡0HU\Ë¦V•Q\\Xû\â<µ\Å\×,Š\è]Kr¶La•§\Õpù/a\æ\×\r=\n·V+ˆ€«S^±¦#¶\á<;Hj®wj–R\ÓDß”\÷7ž@q\'€\0žJŽ¶\ðpdC)\è\ê\ó\Ó\Ñ5F\Ý…²7ÕŒ&œÌ‘°¹9L›º§!2jÅ‘yqnÁ6v5\õ\rh¨¹Ué£ªª\ÜÜ‡\Ëp\rš\0Yn ˆˆ\âYb‚\'\Ï<¬Š8\Ú\\\÷½Á­hI\'p\íG¾\Ò“7ø>³\ÎX\Æ\Ër‘Ž ¸‘«a\Ý\È|\ôè­†7;¨™7t\ëÌ¾Ñµožk._¸CXû“Û«\äÓtÓ¹­ü¢5<´X2º\á]s©’¶\åY=UD§W\Ë4…\îq\êI\ÞWv8L&£i$\èDEtˆˆ€ˆˆˆ€ˆˆˆƒº’®¦‚ª*\Ú)\ß\ð<IŒ:9®*gef8\àú[»\Þ\ßM‹û=s›¦h\Þ\í9\r=¤rP­fÌ¸ˆ[±E†i\"»S8FÝ¯{Œú!\ã\ëX\óc\åŽÿ\0\În%\".&\"\" Š}¼{9340K³\Ð\âŒ1#c*\Ú\ê\çÇ§\æosHYj\ío½\Ík\ÚX\ö‡5\ÃB¦;l\äHÉœØžº\ÍI\Ý\á¼Q·p·\ì2\ñ\Ðt.:É®\0pY\ç>Öˆîˆ‹4®¬­À7\\\Ñ\Ì³µÞ‘y¬d\àk\ÝG\ÆI?E\Îú–\ì0¦´\à\Ü3kÂ–*f\Ó\ÐZic¤§£pc\Z\0ú\÷(%\ðfecj®‡8.4À¶‘¿q­®pùn\r|\Ï\Z\ô\ÛA\\:­­pš›Vˆˆ®t\ÖU\Ó\Û\é\'¯«v\Ì±>iOF4O¸¯7:›\ÍÚ²\íY!|\õ“¾yNº¹\Î$þ\õ5sgÁ€±‘\÷.¤kíŒ\æ \ðàº¾<\îµÀDEÒ¸ˆwq\\m7\çz\Ê.6›\ó‡½6›\ó‡½(¸\Úo\Î\ô\Úo\Î\ô¢\ãi¿8{\Ói¿8{\Ðr‹¦ü\á\ïM¦ü\á\ïA\Ê.• ®œ­¬\ô\ÆÃ“—lƒrŽ=\Zç†Ÿ°«YW0?ã­ƒ\ó•7\ñ\Z«—T©Îˆx¢\óœ\â\" ,-\Ú\ç&\ã\Î|˜»Y\é)„—«KM\Î\Ò\à<]ü`“ÿ\0v›\õ\ë\Éf•Æ€\î xƒ\Í,\ØÐ‹š\æ8µÀ‚„:¢\Î=²²°e^|_h(é»«e\é\ßvh\0\õC&$½£\Ò@\ð!²‹\Û,\ìÇ—c+\ò3	\áY)ûªÁD\Ú\Ê\àFÿ\0I›\ã$\óÐ¸\ä\ÊK†±‘±±\Æ4k\0kG\Ü+eD@DD\Öe³\ÜEù¶£þ‚¡\à¦\öe³\ÜEù¶£þ‚¡\àºþ?U®“]›{\Ý\óbŽ›cªº‹6›I)b„Upn¾³I\ÔGù\Ä\áÀ\0C•‡\Ù_)©\óƒ7­\Ö;¬\"[5²7].lp\ð\Ënh\ñ½\Ìi7oNj\ÐS\ÃK)©\ãlQD\Ð\Æ1ƒFµ h\0€Tù\×\ñÇ´\åt\ÇXO³†G`ªV\ÓY2\Ö\È\ç4\ë\ß\Ö\Ó\n¹\Éÿ\06m§}@\é\ä®Á—ø 5¸2\Æ\0\Z\0-\ñnÿ\0•\\¸.VûµE\ï}\r²~Ï‹úS\ï}\r²~Ï‹úUytP~\ð°7\Ð\Û\'\ìø¿¥>\ð°7\Ð\Û\'\ìø¿¥W‘7E\ï}\r²~Ï‹úS\ï}\r²~Ï‹úUytP~\ð°7\Ð\Û\'\ìø¿¥>\ð°7\Ð\Û\'\ìø¿¥W‘7E“}Éœ¦\Ä\Ô\ÒR\ß2\Û\r\Õ2A¡s\í±·všµ\á¡\Í:¼B†¦û3\0\Ú\ê\ó+SSf¥[…®g\÷’\ÒG\ÎH\Å\ñ·˜v®u#†ÁWT±E<oŠV±\í-s\\5 «\ñ\ò\å\Çw*e\ÓI*¹ÿ\0lœ©¿ˆ\Õr\ç\ö¦\Ë\â\Å6¡´4u\íGS\Ì\Ö\Ë8ŸU¯\rß¿Ãª¶°?ã­ƒ\ó•7\ñ\Z½]ùc¸\Ó\é9\ÏC\Åœ\çDŸ„$/Y¡‡0¶ \ÂV\ïJ¼Z\ëd£xMi¥Œ¼’@:\èøÛ§øŠ)g--5c{ª¦\êÀv‡·ÿ\0Ä¢‹%N\ßhˆ¥\" \"\"\n:¥5\Ø&ÿ\0H\Ý6¤¶T†\ë×ºqjƒ\Zi¹lX£ž\'Á3v£‘¥ZF„()Š\ìS\áœIr°Tmm\ÐÔ¾H\Ói ø]\õÖº~=\î4Á2¾\r«l]\Æ<»–4\Ê\÷\Û\éš\â­kD\Î #]¡¯°tSqCƒg\ñÿ\0­£þ\Ô\Î\\œÿ\0\ô¦]ˆˆ±@ˆˆˆ€ˆˆˆ€ˆˆ5…Û•¢\ïD\06¨¨‰\ó=\ÈX›-)\rvaa\Ê`5¹Ó—o\Ó\Â¾ÀVY\í\Íÿ\0x»\Ïú*/\à…j\ör\Ãn¼\æ.’1\ÝÅžT“®\î\ðøX>\ÒEz˜\ÝqKý4\ë¯DE\ÆÀDDD@DDD@DDD@Që´¾_¹“G˜6\ØIl›\÷\ÞN£ù£O˜oU!Wž¾‚Š\éG5º\ãME5Cr\Å Õ¯i\âW\Ã/´Ë«·‡\à\Ùü_\Æÿ\0\ëhÿ\0†\õ3x{e³²\é\Ø\Ö\ZiD–\Úú\Êi¨\É:¹€1ú±\Þ\ÍFþcO5$\Ö\Öe\Él^\ÝÝˆˆ³@ˆˆˆ€ˆˆˆ€ˆˆ5‡Û”k\Ú.\ðþŠ‹ø!dÀ\áKY—;°mMV£|m\ÓÁ\è‚I\óq\è¯\\\ã\Êj[¯h›ž?¿lM4ô‚†—@C¤l@\ä\Ôjw¯½v&\ð˜\Ã,½hDEš‚\" \"\"\" \"\"\" \"\"\" \Ëù00^i\õ\Þ\×\Âý=¡\Ãù,²°nG\\>%ª·¹\Ú\nºRG›˜\à@\÷{–rX\å\Ú\ÐDETˆˆ€ˆˆˆ€ˆˆˆ‚<f\ä\Â\\w\\\Ðu\î™\êÁþj\ÎUŒcpLUu®iÕ²U<4\õkN\È>\ào:PDE ˆˆˆ€ˆˆº(k`¹P\Ó\Üidl\ÕDÉ£sN µÀAú\×z\" \"\"\" ª\á[Á°b+}\ßRO02–|.ÿ\0”•(\ö\È\Æ\È\Ç5ÀA\ÜB‰K>e\'m\ó2\ÛQ&µ–À\"p\'{¢ù\÷nú¼\ÖyÏ´\Åøˆ‹5„D@DDD@DDD\Æ7¶\á\ì5_tH\â-‹\ÎGno\ÚB­¬+X¡µ•\Ð\ášI5ŽŒ\÷µ:\ÆR<-ú\'\ô‡E8\Í\ÔV1\ß\Ìêˆ‹uDD@DDD@EK\Ä8šÓ…h\Ù_xªŽd”B\Ò\÷†\ê\â	\Ó“J \Ã=ˆ³¹‹\Ù\ò\Ã\ß\Ï\ÞW\á\Ðl•c]H0Ý’y“ŒŸ2³\Ò\ÖWÁË›\Â9¥Y—W:Š]\öm£¹µ±æŽƒi›c^­h[5U\Æ\î&ˆˆ¬V0¦$«Â—¸.Ôº¹­;3F‚X\Ïÿ\01\æ£¢	Sh»P\ß-\ð\\\í\Ó	)\ê´\Ó\Ìur \î!{\Ö\n\ÊLGUf–²	ù(IŒº-}Wus|\÷\rz¬\ÝIWO]j)el‘»±\Ò\Ò\íÞˆŠ©žj–G# )d\ÞÖŽœ\É\è[ø\ó\ÓaC§$>¶pYK¼]\ó\äŽ\'\ê\Ôs¨¨ž®y*ªet³L\òù\ã©s‰Ô’®,Ç¬¬«\ÆW&VTºQO)†-x1ƒƒ@\å\Å[+lf¢¶\ìDEdˆ€ˆˆ‹ª®ªž†–j\Ú\É[\ñºY^\ã kZ5$Ÿ`A¾<Ðž’L)–Š\×\Å;\ïU¦7½£GEÝ¿C¬¿\ð„Q´fM›ù»ˆ\ñÉ•Î¥««tT\r?&’?[¹j\ÐGWY\\½­U‚\÷r\ÃWºCg©u=u²¦:ºi[Å’1Á\Í>\ð\êr[3\íYÃ–v<j{G\Ý\Zq\é1j`¨o†XÏ±Àûx­#)w\ð}g\àÀ\âL¬\Äu›<W+}\r\ï>\Z{†\æ´y	?”Ô¦T­š¢\"\ÕQ\î\Zž\ËYt¶\Û\Ød®¸SS°qt²µ£\í(•\ëtÒ¿¯\Å\ïW½²\ï]i›½¤—F“«\ã;\Úÿ\0hVF]U\ÛnVyn6Ú¸*£–rÁ,/kƒ@\æœIWRYú‹\Û!Z±²¼6:—ú,\Çv>|ÿ\0Ê¯µ\Íxka\åé¤¹\Ü(O\öJ\Éb\Z\í\Þ\î\n—\ð™~²\Ò,u5¿F\0t°É§7\Ç\ÇÝ¢\í8\ò\ôF‚*A\æ#w\õ*øTùF@]54\ô±™ªfdln\ò\\tTc\ô\ãdU¶!þ\í€}§Uä¤¥º_\ê\Äm|“¿‹Ÿ#‰I<\Ã\ô\òü]µX±\Õs‹~§5¼\éÞ¸h\Æùÿ\0\÷ÁV-¶ÿ\0AŒ™¥t\õ2he™\ÛËA\ÐAu\Ùl”¶jq#jWŒ”\î?\Èy*—[gQ3ûF\ÜÉ‹¹\Ç7vi\Æf»\ÞÆŸæ­¥vgµ}šÃ»Ë¥Ö–\×\ÓG+\ó6=¢iS¿sB³¡©¦¨²\Ó\ÔG#½®cÜ¶*\íDE ˆˆˆ€¢\ß\ÂMË¼§v´\Õ\ì^±–\Õ&wŠ*!ý\óü¶\â\'’’\÷»Í³Y\ë¯\÷ª¸\éh-\Ô\òUT\Ï!Ñ±\ÄÆ—9\Äù\0Vš»Dg\Ë<\óFëªK\ÙB_\èÖºw\î(\ØHŒiÈ»{\Ý\æ\ã\È\\\î¢c¢\"\Åav\Ã,´\ò²zy‘¸=a!\Íp:‚\àB\êDi\ìg\Ú6Ÿ<2ù–›\í\\ca\è\ÙOpŒU\Z2¥£žÖš;Np)´•Y›‰\òƒÛ±\æ©\î\ëh\ã\Ç\â\ê!>¼O\Ú\á\î:¼¶Œ\ÚK/q¦RÁš\ÖÚ°\"x\î%·—HŠ°µNGQ®º\ð\Ù\ñp[a|½}«c\'\Ü.4ªI+\îu°RSD5|³<1d\îX›všÁÖ¹_Oa «¼HÃ§x4†\ìs¼G\ênžkc\Ì\Å\Äyƒr5—Š’\Êf8šj6Š€yn\ê\ã¿\Ø7+]v\áÁ\'û4˜~³eËµ>\'œ8ZpÕ¶žy_>ž\í…l\Ü{@\æ\ÃhG{†‰®<)©X>­^~ÕŽQi8\ðŸKx\Å~¿ã‹¦¢»]\äk†…‚­\íimi\ìT)d|\òºi\Þ\é$y\Õ\Ïy\Úq>d\ï+\åä“¤³ÿ\0c<U=«2*°¼•nm%\ê†G6\ïª\"\Ñ\Íp{±/M\Ã\È)²µ‡\ñe~\Å\öœ]m\Ô\Ïl©l\ÛOŒ{d\r¦7^[Ke\öK\Å ´Q\ß-s‰©+\àeD/\Ú\á¨ú\×\'>:\Ëly\'½½¨ˆ°f\"\ô\Ð\Ûk®R\÷TT\ï\ó n\ÓÀ+\ÆË‚©\é‹j.nl\ò\â1\ê4ù\õý\Þ\Õe\"d\Úß±\ášË»„²k\r0;\ä#{¼š9ûUÿ\0An¤¶@)¨\â`\ây¸\õ\'™^†€\Ð\Z\Ð\0€—\Ò\Ê\år^Mƒ ž[\×+\r\ö¨Í¯ÁP\Ý.tB+\Í\Ð}Ìµ\0\í&\éý|\Ú~½Cz¨\Ç•\ÔK[™Ñ\ç\Ìl\Ó\ÄØ¶ZÉª ­¸\Î(+µ,¤kÈ€j@»†\íI\ê­*:\ê\Û{û\Û}mE+þt2º3\ïi \0ƒ’/cdšjº-ù£˜–²=]\0h\0	f\ï€\Éú…sÛ»F\æm¨¬ ¯\ÅE(\Zþ¬µcK†7¸Fv·\öªº\Æ\0ºa\ZYŽ›\ÝS£ß¯B\Óû\ÖB\Â9ÿ\0€\ñ;ã¤ª©’\ÑY!\rVh\ç› \ðû\ô>J#¢\Î\ð\áQp5\Ípi\àŽk•²›:\î\Ø*¦5\îYklr<4‡¸ºJPy°Ÿ“Ì·‡4U\Þ\×=«\í93ƒ\"µ\à\êúz\ÜYˆ©‹\í\Û=´”\î\Ý\éO\ðÀx¸M+—“\Ç\Û;Œ%\ð…\ö”Ž¶S‘2\à.l¸†¦\î/\ÙJ\é¹\Ï\ó\Ù8( ½•U7\n¹««j=EDŽ–idqs\ä{Ž®s‰\ÞI$’WrÛ»´Á\" +\Ï-s\Z\á—\÷~ý¬uEº †\Õ\Ó¼ž\Íx8{È‹1\Ëq»‚pYoV\ÌCl‚\ñg«eM%Kv™#~\ÐGA\ÜA\Þ\n\ö¨‡—Ù“zÀ\öŒúE\Î¦\îÑ\å´\Ó\ò]§?fº©K…±e‹Z\Ùw°U\÷±;\È\Þ\0–|\É©\Ðý‡ˆ$hW¥\Ã\Ï9&¯m%Ú®ˆ‹¡\"\" )Ù‹?©\ð4\íÀxÊ­Ì±\ÕË­S\Ýà •\ÇxwH\ÜN¤\ðiÔÄ‘‘W,fSUnj¶\éC„.\ÕÑ²fˆcŠF‡5\æ@Aj\Ù\ÕW¨0-I]3\ê7\ì}OØµÍ‘=¯\ó\'D;¡“a–\0\Æ\ÐTÍ¤´­A\ÜHA §€\ê\Ý\Ú\rIS.;W\ä–d\Ã(1}=ª\á.€Û®\ÎÓ‡ h.;<\Î\â¼\î^>L?ñŸ†™z\nx)b\Ó\Ä\È\Ø\Þ\rh\Ð.\Õ\×\ÑL6¢•Z\àWÞ£ª\ç\ì\\¯\r\Î\ói²\Ó>²\ïr¥¢‚1´ù*&lmh\êI*>\æ¿nL¥À]\å»\Ì\ì_uh\Ü\Ë|€R1ß—Q½½}@\òš€§2\Î\ëkl\ãq¦\Ë\Ü7[‹qm\Ö+}²›r\Í!\âNæ±£‹œ\ã \r\É «N\Ðù\ãw\Ï\\w. ˜MMf¢i¦´P=úˆ!ùOp\á\Þ<\\G \Ö\ï\rS\ó=s:\î\âáŒ®\Ç\Ð\á~\Õ²›VRR\î ³_\ô\'W»Wxˆ\Z\r\Ã/Gƒƒøý\Þ\ÚI¡JDD@DV>ef•«/\è\Ì,\Ö^fGµ¹ƒÿ\02B=V\ô\\w\rÚ‘\\³˜M\ät¨f?´`9®­pš®`[IH\×hùŸüš9»\÷’‰¸‡\\\ñMÞ¢\õx¨\ïªj¤\ðkG&´r\0n}bEw\ÅY¯º·TTMÄŸU­\äÖŽM?š¥/3›š\ò\ßé»bg\â›\Þ¹2\ïb®t7s\ÛÅ’·›\Þi\è}£BTdS.½Á*\ò\ó9°\î5lV\ê\÷Gk¼;Fú<Žø©\Ý\ÃXžy“§€\ïß \ÚÐ•”\Ô\ëª\Éø=±.\Ð^C¯\æ\îYž!¿Õ\ë¨\ßÁ\Ú\ð\0…\Ù\Å\òµ\ë5\æ_©<Š\ÙÂ™ƒ±œmk³AN¤¨ø¹\Ù\ÌøO­§2\ÒGš¹ˆ \èWf9Ì¦\ñ[±hF¡nÇŽq¾ŒÃ†±ú\Ñ‰&:”\Ð0“Ä–±ÀZ“;s’XD\Íl[°ƒK\Ä\àÿ\0\Ä¯Ú¬¤U\ñ—\è{¯û\ö\"•³\â\å\Æ\ë#75\õ\ÕrT9¾\Â\òH^E ˆŠA	\r\Î Äž|M44ð¾¢¦h\á†&—\É$Ž\rk\Z¤’w\0°qŽv\à\Ü(OK?ÝŠ\æ\ê=•\ãa§£\ä\ÞÀ‚¤tX\Z\æn*\Ç29—:\ã\r:²Šœ–\Ä8zÃ‹\Î\àuvºt\Ó]?\'\É\ÇS\ÝE\ËL§˜ùÿ\0OI\ÞY\ðŒž`K%¸=š\Æ\Ï\òA\õŽ¿(Ûƒ\Ô`JšªŠ\Éäª«žI\æ™\Å\òI#‹œ\÷$“¼Ÿ5Ð‹\ÏÏ“.Kº¥»Q\" \"\"\" \"\"\" \"\"¸\Þ\ö8H\Ç¹§PA\ÞU°\Æyc\Ü>\ÖS\Ï^Ûµ+Iøº\í^\ð\Ô\é\'­®›†\Ñp±\Ê\ã}Ï—™\Çj\Ç\Õ\í´2\ÓWC[°\é^›$A \îÚ‚Oè…´\ÜQª\"\õ8²¹OmgNjˆ€ˆˆ@h\ß(\ì\îDQzkvŒ¥µTT\Û,8~Yª©\ß,–±á±²F»@\àÖ’^7Ä·’Ä¸£31¦0e\Ú\ñ+id.þ\ÉNLP\ì\ê\Éh\õ†\á¦\Ñ:\"/3›“+\ö¥µh¢\"ÁQÿ\Ù');
/*!40000 ALTER TABLE `userAvatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userRoles`
--

DROP TABLE IF EXISTS `userRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userRoles` (
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `roleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`userId`,`roleId`) USING BTREE,
  KEY `fk_role_to_roles` (`roleId`) USING BTREE,
  CONSTRAINT `fk_userRoles_to_roles` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_userRoles_to_users` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userRoles`
--

LOCK TABLES `userRoles` WRITE;
/*!40000 ALTER TABLE `userRoles` DISABLE KEYS */;
INSERT INTO `userRoles` VALUES ('a399797c-1748-4161-a8cd-2e0f9828840b','6be6178d-fe99-47b6-90d5-2a0c4d25b6dc'),('c13e550a-60ee-48d5-bf6e-ed29310640b2','6be6178d-fe99-47b6-90d5-2a0c4d25b6dc'),('08438d97-a449-4a93-8169-f14ea4e200ee','c87e615c-dd9c-4ecd-bcd7-de38dac2f39f');
/*!40000 ALTER TABLE `userRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `firstname` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `isEmailActivated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`id`) USING BTREE,
  KEY `client_id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('08438d97-a449-4a93-8169-f14ea4e200ee','user@example.com','$2y$10$gSyk9dqbvNVJJL2Tc3ZbdORH59SzKobZ4jQcMvgKUP4mSBqz/KAyy','User','Demo','2025-01-22 12:32:17','2025-04-29 22:27:38',1,1),('a399797c-1748-4161-a8cd-2e0f9828840b','eguvenc@gmail.com','$2y$10$MnD2EU8T9Sy/JWkTJ4bDle2mCxoaS9JBIyN.n060C6ICdq.3xwkey','Ersin','GÃ¼venÃ§','2025-01-22 12:32:17',NULL,1,1),('c13e550a-60ee-48d5-bf6e-ed29310640b2','admin@example.com','$2y$10$kQA15ijSHJiS8anknJlGsetWk2QSnXWio.Dsh5enAI49egGPwUYQC','Demo','Admin','2024-12-22 12:32:17','2025-03-16 19:08:14',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
