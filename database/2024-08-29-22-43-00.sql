DROP TABLE IF EXISTS dt01_gen_document_file_dt;

CREATE TABLE `dt01_gen_document_file_dt` (
  `ORG_ID` varchar(36) NOT NULL,
  `NO_FILE` varchar(100) NOT NULL,
  `FILENAME` varchar(1000) DEFAULT NULL,
  `SOURCE_FILE` varchar(255) DEFAULT NULL,
  `JENIS_DOC` varchar(10) DEFAULT NULL,
  `ASSIGN` varchar(1000) DEFAULT NULL,
  `USER_IDENTIFIER` varchar(1000) DEFAULT NULL,
  `URL` varchar(1000) DEFAULT NULL,
  `LINK` varchar(1000) DEFAULT NULL,
  `PASIEN_IDX` varchar(1000) DEFAULT NULL,
  `TRANSAKSI_IDX` varchar(1000) DEFAULT NULL,
  `REQUEST_ID` varchar(36) DEFAULT NULL,
  `STATUS_SIGN` varchar(1) NOT NULL DEFAULT '0' COMMENT '0 : File Not Uploaded / File Belum Di Upload\r\n1 : Files Have Been Uploaded / File Sudah Di Upload\r\n2 : Request Sign Success / Sedang Process Pengajuan Tanda Tangan\r\n3 : Request Sign Gagal / Sedang Process Pengajuan Tanda Tangan\r\n4 : Sign Success / Tanda Tangan Berhasil\r\n5 : Sign Gagal/ Tanda Tangan Berhasil',
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `NOTE` text NOT NULL,
  `STATUS_FILE` varchar(1) DEFAULT '0',
  PRIMARY KEY (`NO_FILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




DROP TABLE IF EXISTS dt01_gen_document_ms;

CREATE TABLE `dt01_gen_document_ms` (
  `ORG_ID` varchar(36) NOT NULL,
  `JENIS_DOC` varchar(10) NOT NULL,
  `DOCUMENT_NAME` varchar(100) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT '1',
  `CREATED_BY` varchar(36) NOT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`JENIS_DOC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




DROP TABLE IF EXISTS dt01_gen_enviroment_ms;

CREATE TABLE `dt01_gen_enviroment_ms` (
  `ORG_ID` varchar(36) NOT NULL,
  `ENV_ID` varchar(36) NOT NULL,
  `ENVIRONMENT_NAME` varchar(1000) NOT NULL,
  `DEV` varchar(1000) NOT NULL,
  `PROD` varchar(1000) DEFAULT NULL,
  `URUT` int(10) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) NOT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ENV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "09e38d6a-ff50-4aa9-8fb6-80c115780919", "CLIENT_SECRET_TILAKA", "", "", "7", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "0c10dd61-ede7-419b-96a0-10d841e8269f", "AUTHURL_SATUSEHAT", "https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1", "https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1", "4", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "0cfda026-78e2-4ceb-8183-a7617ea394ba", "PAGE", "1", "1", "16", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "10ce745d-309c-498a-9161-ad55becc3287", "WIDTH", "550", "550", "13", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "11ed5085-6644-48bb-b853-3d826afcfb50", "ORGID_SATUSEHAT", "", "", "1", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "12777d2d-98fe-495a-b206-76e55ac09101", "HEIGHT", "70", "70", "12", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "135a58c1-b88c-466f-bb84-ff7fe0916bbb", "TILAKA_BASE_URL", "https://sb-api.tilaka.id/", "https://api.tilaka.id/", "8", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "14c65d63-a28a-4a44-bdda-de1bd7a3c5e9", "ORGID_SATUSEHAT", "", "", "1", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "15e22677-ab6a-4615-8ef3-dc97fe390d4d", "MAX_VALUE_ACTIVITY", "70", "70", "18", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "195a0602-bf50-4cc6-a8da-3a1099698c20", "CLIENTID_SATUSEHAT", "", "", "2", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "2621c461-0ecf-491e-8495-99166b904b2d", "END_VALID_ACTIVITY", "", "", "20", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "318ddf16-5969-4035-acac-9c25d2ecd348", "PATHFILE_POST_TILAKA", "", "", "10", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "33b23606-10ba-4490-9ebd-94e8c4f51d15", "ORG_ID", "378a0728-a914-43a5-ae90-186d8a052ff2", "378a0728-a914-43a5-ae90-186d8a052ff2", "17", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "3494fa6b-f012-4c40-8cae-70ab8a398b89", "KEY_EKLAIM", "", "", "16", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3c369046-8856-41fb-a021-301266fccc12", "CLIENTID_SATUSEHAT", "", "", "2", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "48b864ea-3545-4366-a3c3-3c303472be98", "BASEURL_SATUSEHAT", "https://api-satusehat-stg.kemkes.go.id", "https://api-satusehat-stg.kemkes.go.id", "5", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "4cf1de59-1805-4649-bfd9-054b067d527d", "CLIENT_ID_TILAKA", "", "", "6", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "4cf2982c-8906-43d4-8a69-bca58f0cbdf0", "SERVER_EKLAIM", "", "", "16", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "4f07a29b-f73b-4c9a-8900-da9a7d716524", "MAX_VALUE_ASSESSMENT", "", "", "19", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "53958b2a-6f73-4e4f-9703-40b64959d755", "CLIENT_SECRET_TILAKA", "", "", "7", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "5629f961-a987-4f3f-bfcc-3ece76e4eb3c", "CLIENT_ID_TILAKA", "", "", "6", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "5a9bc4e9-77f9-441d-8e69-2785a7e147f8", "TILAKA_BASE_URL", "", "", "8", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "678bb734-3849-4a84-8c1b-3526c6029f95", "TILAKALITE_URL", "", "", "9", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "67aeb868-636b-4e86-9cc1-690bbba5216d", "PATHFILE_POST_TILAKA", "", "", "10", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6938614d-276b-4161-a470-32156c1e3980", "PATHFILE_GET_TILAKA", "", "", "11", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "6a5eba7b-c605-4ca5-90e7-3b603f7b2d8c", "END_VALID_ASSESSMENT", "2", "2", "22", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6bba06d0-4387-4585-95d1-42f3cbd6d682", "END_VALID_ASSESSMENT", "", "", "22", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "7b31610f-f3de-4dde-86b6-6c22e8a2f309", "COORDINATE_X", "", "", "14", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "89d877ee-ba14-45df-9ac0-c82060acc3e1", "CLIENTSECRET_SATUSEHAT", "", "", "3", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "a7a2ef53-c1df-4911-9e02-f4bebfa9e4ee", "COORDINATE_Y", "", "", "15", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "ae4ade89-db55-4d46-a7e9-25ceeeb56a50", "MAX_VALUE_ACTIVITY", "", "", "18", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b491453a-ab4e-4229-b1d2-74fbc896e2ed", "END_VALID_ACTIVITY", "5", "5", "20", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "b61b421d-b824-41a5-ad14-a4c412e4e11e", "HEIGHT", "", "", "12", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b9a6874c-af0c-4849-bb76-50fa3ec20132", "PATHFILE_GET_TILAKA", "", "", "11", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "be5fb86b-9c8c-4eb3-8699-15f979629206", "START_VALID_ASSESSMENT", "1", "1", "21", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "c952ea22-ef19-4aa6-9a11-0b639cdb9dbc", "ORG_ID", "", "", "17", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 10:25:12");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ca2733ba-30e2-4901-b7b4-8e736f8eb51d", "COORDINATE_X", "10", "10", "14", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ca535628-fe43-4a4f-8ee3-19d69a68e32a", "CLIENTSECRET_SATUSEHAT", "", "", "3", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "cfe9f8b4-66c5-44f8-95a0-a594bad4862d", "COORDINATE_Y", "10", "10", "15", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "dcfbceb0-9532-4e1f-99bf-776e406fe274", "AUTHURL_SATUSEHAT", "", "", "4", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "de1663f5-2c65-41ce-92ad-fcb102eec161", "MAX_VALUE_ASSESSMENT", "30", "30", "19", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "dfefa28c-c03a-425c-9557-ebb6d37ba4ee", "WIDTH", "", "", "13", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "e847ce7a-835f-4a9a-a163-1f9e874497a0", "START_VALID_ASSESSMENT", "", "", "21", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "f55cce3a-b3da-4b63-9882-853d65c93295", "TILAKALITE_URL", "", "", "9", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "f7c0b2fb-956f-4938-b3f4-dba592c29d1f", "BASEURL_SATUSEHAT", "", "", "5", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");
INSERT INTO dt01_gen_enviroment_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "fda0e07a-f1f9-4a7e-9b7f-5b2501dd5e8d", "PAGE", "", "", "16", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-04-26 09:21:18");



DROP TABLE IF EXISTS dt01_gen_modules_ms;

CREATE TABLE `dt01_gen_modules_ms` (
  `MODULES_ID` varchar(36) NOT NULL,
  `MODULES_NAME` varchar(100) NOT NULL,
  `VERSION` varchar(100) NOT NULL,
  `MODULES_HEADER_ID` varchar(36) NOT NULL,
  `PACKAGE` varchar(100) NOT NULL,
  `DEF_CONTROLLER` varchar(100) NOT NULL,
  `PARENT` varchar(1) NOT NULL DEFAULT 'N',
  `ICON` varchar(500) NOT NULL,
  `STATUS` varchar(1) NOT NULL DEFAULT '0',
  `URUT` int(11) NOT NULL DEFAULT 0,
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) NOT NULL,
  `CREATED_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`MODULES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_modules_ms VALUES ("01b1b52a-7d47-4352-b145-37d9bb2646c3", "Tilaka", "", "45304d5b-390d-4618-a08d-793b475f37b7", "tilaka", "", "Y", "bi bi-filetype-pdf", "0", "998", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("029f2730-7ee9-4383-a409-4b5fe0d61fcc", "Calendar", "", "ef759cae-8fd6-4e36-9790-439e03c3a503", "cuti", "", "N", "bi bi-calendar3", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("04ee7f51-5847-4099-9d70-7b4f4d9a989c", "Environment", "", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "operation", "environment", "N", "bi bi-layers", "0", "6", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("07eab05f-be52-45ce-8a53-8dd69df443f4", "User List", "", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "mastersystem", "user", "N", "bi bi-layers", "0", "3", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("1048ed1d-fef4-4e19-9df3-21c5fdec338f", "Meeting", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "meeting", "N", "fa-solid fa-handshake", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("113cf5a2-ff11-4091-99d5-afb1c525b23d", "Training", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "training", "N", "bi bi-bookmark-star-fill", "0", "5", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("1226a31c-fe9d-4102-9750-a4571a08a8b5", "Setting", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "setting", "N", "bi bi-gear", "0", "8", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("123f022c-72ae-401b-9144-624dad3a906a", "Years", "", "ece1ad09-4d5e-4dcd-98b2-aba0a43aed8a", "monev", "kunjunganyears", "N", "bi bi-layers", "0", "3", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("171a2550-9fa1-4fe8-84c3-7b61b7cc2c55", "Sign Document", "", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "tilaka", "signdocument", "N", "bi bi-vector-pen", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("1d1d4319-e834-4876-87a9-f3148e17514a", "Daily", "", "ece1ad09-4d5e-4dcd-98b2-aba0a43aed8a", "monev", "kunjungandaily", "N", "bi bi-layers", "0", "1", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("1eebee7e-a774-4572-a660-8ab49f6a734a", "Dashboard", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "dashboard", "dashboard", "N", "bi bi-grid", "0", "1", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("21dff9a1-aaf1-4cc6-8e76-ab3d14121993", "Repository Document V2", "", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "tilaka", "repodocumentV2", "N", "bi bi-archive", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("266ad13d-4096-4e9b-a1b4-46b46eff0a6c", "Employee", "", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "hrd", "employee", "N", "bi bi-person-badge", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:31:40");
INSERT INTO dt01_gen_modules_ms VALUES ("266bd8f2-8e09-404b-985e-0196c14218fa", "Human Resource", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "hrd", "", "Y", "bi bi-people", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("2980ec1e-cdbc-4e8c-a000-78cbdacabb34", "Meeting", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "meeting", "schedulemeeting", "N", "fa-solid fa-handshake", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("2acf8f9e-9143-4089-b4af-4da2aa25dab6", "Head of Division approval", "", "ef759cae-8fd6-4e36-9790-439e03c3a503", "cuti", "", "N", "bi bi-ui-checks", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("2b01f779-9d92-439b-8afd-a114c4ecfae6", "Grouper", "", "6b2a3be9-6716-42b3-9df1-cdd0d68dfc52", "inacbg", "grouper", "N", "bi bi-filetype-pdf", "0", "998", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("361f2f6f-ab8c-4abe-827e-985d40f04f31", "Activity", "", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "hrd", "activity", "N", "bi bi-person-badge", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:31:40");
INSERT INTO dt01_gen_modules_ms VALUES ("39425516-e7b9-42f9-b23b-02bf04bae967", "Supervisor approval", "", "ef759cae-8fd6-4e36-9790-439e03c3a503", "cuti", "", "N", "bi bi-ui-checks", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("3d143838-e2e4-4d31-99a7-af6f1dca434d", "Activity", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "kpi", "activity", "N", "bi bi-calendar3", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("45304d5b-390d-4618-a08d-793b475f37b7", "Bridging System", "", "", "", "", "C", "", "0", "997", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("4610c39b-de32-450b-812d-db8c37fcc643", "Repository Document", "", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "tilaka", "repodocument", "N", "bi bi-archive", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("47b4877d-7fdf-41de-a2ec-c6f467250478", "RKK", "", "635e52ec-e7d3-4a67-9616-fdadd0eceb61", "komiteperawat", "rkk", "N", "bi bi-people", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("49e22574-cb55-450f-9d47-6b895b2caed3", "Modules", "", "988c76dd-f5d3-4aca-bea2-1249f980bfc9", "masterroot", "mastermodules", "N", "bi bi-code-slash", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "Master System", "", "266bd8f2-8e09-404b-985e-0196c14218fa", "hrd", "", "Y", "bi bi-database-fill", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("50e11dfd-7c94-4f7e-a66b-347b7e506fe5", "Submission", "", "ef759cae-8fd6-4e36-9790-439e03c3a503", "cuti", "", "N", "bi bi-patch-plus", "0", "1", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("510acdce-1c9c-49ab-8f91-fc8a77fc4dc4", "Registrasi", "", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "tilaka", "registrasi", "N", "bi bi-people", "0", "1", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("5e9a1b26-93fe-4dbc-af0e-2967710e4483", "Role List", "", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "mastersystem", "role", "N", "bi bi-layers", "0", "1", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("635e52ec-e7d3-4a67-9616-fdadd0eceb61", "Nurse/Midwife Committee", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "komiteperawat", "", "Y", "fa-solid fa-user-nurse", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("65e39b7b-a4ee-4045-a6f0-73667f5026d8", "Daily", "", "cda2e6e6-99f8-415d-b52b-320b51b0028a", "report", "daily", "N", "fa-solid fa-money-bill-trend-up", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("68228796-8ea0-4b51-9fef-f9ba7a365f3e", "Payroll", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "payroll", "", "N", "bi bi-cash-stack", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("6b2a3be9-6716-42b3-9df1-cdd0d68dfc52", "E-Klaim", "", "45304d5b-390d-4618-a08d-793b475f37b7", "inacbg", "", "Y", "bi bi-filetype-pdf", "0", "998", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "IT Operation", "", "", "", "", "C", "", "0", "998", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("78d3e701-b660-4ea5-abb8-c935d1387e2d", "FAQ", "", "f56a43c9-f28d-4230-a0ce-7bf5cd86f2df", "support", "faq", "N", "bi bi-question-octagon", "0", "9999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("78f2fea7-efe5-4d45-9dc2-9b94eb9d6f5d", "Master Client", "", "988c76dd-f5d3-4aca-bea2-1249f980bfc9", "masterroot", "masterclient", "N", "bi bi-database-fill", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:59:33");
INSERT INTO dt01_gen_modules_ms VALUES ("7c69522f-cebf-4377-945a-3324b0a26baa", "Developer", "", "", "", "", "C", "", "0", "999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("7e0b2ac1-cdac-4eee-8392-fa92e227fa2c", "Domisili", "", "988c76dd-f5d3-4aca-bea2-1249f980bfc9", "masterroot", "domisili", "N", "bi bi-compass", "0", "999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:25:26");
INSERT INTO dt01_gen_modules_ms VALUES ("868afde4-08e8-4899-b596-301c1bae2258", "Service API", "", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "operation", "logservice", "N", "bi bi-layers", "0", "5", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "Master System", "", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "mastersystem", "", "Y", "bi bi-database-fill", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("951544df-6ad1-482d-89e0-4bd3d348e215", "User Access", "", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "operation", "useraccess", "N", "bi bi-layers", "0", "1", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("988c76dd-f5d3-4aca-bea2-1249f980bfc9", "Master Root System", "", "7c69522f-cebf-4377-945a-3324b0a26baa", "masterroot", "", "Y", "bi bi-database-fill", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:59:33");
INSERT INTO dt01_gen_modules_ms VALUES ("99d2e39c-89a0-48bc-9117-2770c2d65caa", "SPK", "", "635e52ec-e7d3-4a67-9616-fdadd0eceb61", "komiteperawat", "", "N", "bi bi-people", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "Apps", "", "", "", "", "C", "", "0", "1", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("a12feb54-1885-4be6-aa09-2c3523eec3dc", "Emergency Contact", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "emergencycontact", "N", "bi bi-book-half", "0", "2", "0", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("a2d9bdb5-2973-4d60-8cbd-4d88b4286f32", "Department", "", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "mastersystem", "department", "N", "fa-solid fa-building-circle-check", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("a894d7ed-a10e-4359-804e-8223fde34bbd", "Monitoring Evaluasi", "", "", "", "", "C", "", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("aa816bb5-2197-4c1a-90b2-f1e955063ca8", "Backup Database", "", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "operation", "backupdb", "N", "bi bi-database-fill", "0", "3", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("abdabe47-4395-4f92-a66d-3d8844ff34bc", "Absence", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "absence", "absence", "N", "bi bi-clock", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("ad2aff45-72bb-4f2b-96da-2a9ab6cf33e4", "HR approval", "", "ef759cae-8fd6-4e36-9790-439e03c3a503", "cuti", "", "N", "bi bi-ui-checks", "0", "5", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("b56ff379-5619-4064-b572-407671edc15e", "Education", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "education", "N", "bi bi-book-half", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("b9e4aa99-b324-4c2c-9c1a-b7ee1e23e3b7", "Careers", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "careers", "", "Y", "bi bi-person-raised-hand", "0", "9999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("bacde412-a651-4c8c-8237-155b39a4595b", "Connections", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "connection", "N", "bi bi-link-45deg", "0", "7", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("c1c69eb9-a775-4b56-a7ce-6deb3fec8fab", "Overview", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "overview", "N", "bi bi-speedometer2", "0", "1", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("c3ef6c77-86a0-40dc-8f33-087871394836", "Document", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "document", "N", "bi bi-archive", "0", "5", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("cbb9bd4f-15d9-4799-a942-b8601961adeb", "RKK", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "rkk", "N", "bi bi-bookmark-star-fill", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("cda2e6e6-99f8-415d-b52b-320b51b0028a", "Report", "", "", "", "", "C", "", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("d014e2f9-3d6d-49c7-8a00-63fde9a58b40", "Table Database", "", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "operation", "tabledb", "N", "bi bi-table", "0", "4", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("d52c72cb-f61b-4354-9ffd-6200d2d7da85", "Substitute approval", "", "ef759cae-8fd6-4e36-9790-439e03c3a503", "cuti", "", "N", "bi bi-ui-checks", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("d97e8a15-4a46-4389-a8ff-ab0f694d6d95", "Mapping Role", "", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "mastersystem", "mappingrole", "N", "bi bi-layers", "0", "2", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("e3a75d9b-132f-47a5-8d3c-fbe2681474a5", "Careers List", "", "b9e4aa99-b324-4c2c-9c1a-b7ee1e23e3b7", "careers", "careerslist", "N", "bi bi-question-octagon", "0", "9999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("ece1ad09-4d5e-4dcd-98b2-aba0a43aed8a", "Kunjungan", "", "a894d7ed-a10e-4359-804e-8223fde34bbd", "monev", "", "Y", "bi bi-layers", "0", "0", "1", "", "2024-04-29 23:10:27");
INSERT INTO dt01_gen_modules_ms VALUES ("eeb5b08f-596b-4966-8649-f3f119325a67", "Careers Apply", "", "b9e4aa99-b324-4c2c-9c1a-b7ee1e23e3b7", "careers", "careersapply", "N", "bi bi-question-octagon", "0", "9999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("ef759cae-8fd6-4e36-9790-439e03c3a503", "Paid leave", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "cuti", "", "Y", "bi bi-airplane", "0", "4", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("f48e1e18-d42f-4d70-83e1-6210cdc22e5a", "Medical devices", "", "", "", "", "C", "", "0", "997", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");
INSERT INTO dt01_gen_modules_ms VALUES ("f56a43c9-f28d-4230-a0ce-7bf5cd86f2df", "Support", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "support", "", "Y", "bi bi-person-raised-hand", "0", "9999", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("f71515e5-57b8-41de-9c49-5e494c497563", "Position", "", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "hrd", "position", "N", "bi bi-person-badge", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:31:40");
INSERT INTO dt01_gen_modules_ms VALUES ("f7d07231-f33e-4050-a6f8-c846cc6aa031", "Validation", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "kpi", "validation", "N", "fa-solid fa-list-check", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:00:57");
INSERT INTO dt01_gen_modules_ms VALUES ("f977f8cb-2d62-4f85-a403-93f7ec1fcde1", "Group Activity", "", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "hrd", "groupactivity", "N", "bi bi-person-badge", "0", "0", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:31:40");
INSERT INTO dt01_gen_modules_ms VALUES ("f9afc38a-bb61-4f98-b593-211766ec6133", "Leka", "", "f48e1e18-d42f-4d70-83e1-6210cdc22e5a", "medicaldevice", "leka", "N", "bi bi-grid", "0", "1", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "Profile", "", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "profile", "", "Y", "bi bi-people", "0", "2", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 09:08:59");
INSERT INTO dt01_gen_modules_ms VALUES ("fd4bd82d-b1c2-4560-95ed-5124ca53e6c1", "Position", "", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "profile", "position", "N", "bi bi-book-half", "0", "3", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-04-27 08:56:49");



DROP TABLE IF EXISTS dt01_gen_organization_ms;

CREATE TABLE `dt01_gen_organization_ms` (
  `ORG_ID` varchar(36) NOT NULL,
  `CODE` varchar(6) NOT NULL,
  `ORG_NAME` varchar(4000) NOT NULL,
  `WEBSITE` varchar(1000) NOT NULL,
  `TRIAL` varchar(1) NOT NULL DEFAULT 'Y',
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) NOT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `LAST_UPDATED_BY` varchar(36) DEFAULT NULL,
  `LAST_UPDATED_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_organization_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "WT7A14", "RS Permata Hati", "", "N", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_organization_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "5P1555", "Dtechnology Developer", "", "N", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42");



DROP TABLE IF EXISTS dt01_gen_referensi_dt;

CREATE TABLE `dt01_gen_referensi_dt` (
  `ORG_ID` varchar(36) NOT NULL,
  `REF_ID` varchar(36) NOT NULL,
  `REFERENSI` varchar(100) NOT NULL,
  `NOTE` varchar(4000) NOT NULL,
  `LINK` varchar(1000) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) NOT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`REF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




DROP TABLE IF EXISTS dt01_gen_role_access;

CREATE TABLE `dt01_gen_role_access` (
  `ORG_ID` varchar(36) DEFAULT NULL,
  `TRANS_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT '1',
  `CREATED_BY` varchar(36) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT current_timestamp(),
  `LAST_UPDATE_BY` varchar(36) DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT current_timestamp(),
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_role_access VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4c1ccc93-cfc2-450d-8265-0ac2771d4a91", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:20:28", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29");
INSERT INTO dt01_gen_role_access VALUES ("6a4e6ef7-bdbc-42cc-820b-2ba371a3d912", "a55821d3-0a73-44ea-80e3-8a1e4d9ec7ff", "99f3311f-bf6b-4e1b-a663-aa415217171e", "9cc4a687-a294-462f-b2a1-db13ccf0719b", "1", "99f3311f-bf6b-4e1b-a663-aa415217171e", "2024-08-29 22:18:00", "", "2024-08-29");
INSERT INTO dt01_gen_role_access VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "c5703b19-399d-460e-8404-c9e347a2a6bf", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "b100a97f-5594-414d-93bd-a1e4599fee77", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "", "2024-08-29");
INSERT INTO dt01_gen_role_access VALUES ("7cc7b45d-f0b2-4813-9604-c480903b4880", "c9754874-e588-4ab3-b705-160b33046504", "c1e00872-fe1b-4253-93b6-b454ee448f59", "cc1deca5-d4d6-4847-bde0-590a50cbe98f", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-29 22:08:56", "", "2024-08-29");
INSERT INTO dt01_gen_role_access VALUES ("10c84edd-500b-49e3-93a5-a2c8cd2c8524", "ecd1c53c-c835-4087-8a2e-169f02415d94", "55b16625-efca-4093-8df0-20fc838f21b1", "6a954648-6b0b-4db0-88f2-7446218b85f5", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-07-12 22:22:37", "", "2024-07-13");



DROP TABLE IF EXISTS dt01_gen_role_dt;

CREATE TABLE `dt01_gen_role_dt` (
  `ORG_ID` varchar(36) DEFAULT NULL,
  `TRANS_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `MODULES_ID` varchar(36) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT '1',
  `CREATED_BY` varchar(36) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT current_timestamp(),
  `LAST_UPDATE_BY` varchar(36) DEFAULT NULL,
  `LAST_UPDATE_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "01f90899-4279-4316-a691-cb5abc33c01d", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "c3ef6c77-86a0-40dc-8f33-087871394836", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "0259ffd3-dbb2-4129-ad22-733798a5a6ad", "b100a97f-5594-414d-93bd-a1e4599fee77", "266bd8f2-8e09-404b-985e-0196c14218fa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "029ac47f-a06d-4973-a9fd-b286df79c25c", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "951544df-6ad1-482d-89e0-4bd3d348e215", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "03780592-7055-49c4-9611-48f57485dc33", "b100a97f-5594-414d-93bd-a1e4599fee77", "635e52ec-e7d3-4a67-9616-fdadd0eceb61", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "04476257-bbf1-4a1e-a8bf-69c319e30741", "b100a97f-5594-414d-93bd-a1e4599fee77", "c1c69eb9-a775-4b56-a7ce-6deb3fec8fab", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "0543ff74-d7d9-4ee9-bb62-736181d051f8", "b100a97f-5594-414d-93bd-a1e4599fee77", "a2d9bdb5-2973-4d60-8cbd-4d88b4286f32", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "059f048f-ab94-4892-a404-0917d11a02d6", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "f9afc38a-bb61-4f98-b593-211766ec6133", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "078e6940-cfd0-4381-91e2-28f509dfda3c", "b100a97f-5594-414d-93bd-a1e4599fee77", "ece1ad09-4d5e-4dcd-98b2-aba0a43aed8a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "08dbd932-4760-4b86-a712-3b8f35eba993", "6a954648-6b0b-4db0-88f2-7446218b85f5", "45304d5b-390d-4618-a08d-793b475f37b7", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "08f6ca6d-afb6-41bc-806c-72d410b25971", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "1d1d4319-e834-4876-87a9-f3148e17514a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "09bb8e9d-050b-43f2-8aeb-f25c9842fad5", "6a954648-6b0b-4db0-88f2-7446218b85f5", "4610c39b-de32-450b-812d-db8c37fcc643", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "0a3d1110-418b-4037-ac55-f47871353607", "b100a97f-5594-414d-93bd-a1e4599fee77", "39425516-e7b9-42f9-b23b-02bf04bae967", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "0ea53f3d-e001-4d59-908a-28481ca8876c", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "f71515e5-57b8-41de-9c49-5e494c497563", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "1260e934-5a04-4a43-8fd3-32a2db2e4bb8", "b100a97f-5594-414d-93bd-a1e4599fee77", "d97e8a15-4a46-4389-a8ff-ab0f694d6d95", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "137d9ba6-c9d8-420a-bb7b-5f831185a5a8", "6a954648-6b0b-4db0-88f2-7446218b85f5", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "1445ed73-3f84-4b08-b9fb-31b20b57718b", "6a954648-6b0b-4db0-88f2-7446218b85f5", "c1c69eb9-a775-4b56-a7ce-6deb3fec8fab", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "15475195-ed6d-4cdb-956f-02b992ad6e48", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "f7d07231-f33e-4050-a6f8-c846cc6aa031", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "156dd307-7328-485b-98b9-be6a52dd7c05", "6a954648-6b0b-4db0-88f2-7446218b85f5", "f9afc38a-bb61-4f98-b593-211766ec6133", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "16bd928d-89a8-4c88-afa2-9c76860fba06", "6a954648-6b0b-4db0-88f2-7446218b85f5", "aa816bb5-2197-4c1a-90b2-f1e955063ca8", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "178ee4ef-74bd-4e63-bd2e-fd0e5022ed8a", "b100a97f-5594-414d-93bd-a1e4599fee77", "d014e2f9-3d6d-49c7-8a00-63fde9a58b40", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "188c8d8e-1b91-4dc0-843d-448edc18a453", "6a954648-6b0b-4db0-88f2-7446218b85f5", "f71515e5-57b8-41de-9c49-5e494c497563", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "18f63abe-c8af-43ed-811d-8ecceb48bfa9", "b100a97f-5594-414d-93bd-a1e4599fee77", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "1982759c-7fab-444c-a4a9-af7e5aad12e2", "b100a97f-5594-414d-93bd-a1e4599fee77", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "1a4e35fd-7c44-4823-80b7-f0d0eafa9ebe", "b100a97f-5594-414d-93bd-a1e4599fee77", "45304d5b-390d-4618-a08d-793b475f37b7", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "1a5c8a44-2ca1-48f4-a0c7-d73b7004ff59", "6a954648-6b0b-4db0-88f2-7446218b85f5", "2acf8f9e-9143-4089-b4af-4da2aa25dab6", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "1df199fc-d4d6-44c3-a2aa-619c7e83a981", "6a954648-6b0b-4db0-88f2-7446218b85f5", "d52c72cb-f61b-4354-9ffd-6200d2d7da85", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "1e7be72e-1ddb-4161-a2a7-b9abb6e45be9", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "7c69522f-cebf-4377-945a-3324b0a26baa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "1ff58f39-a434-4526-ad6f-0d29103fe8b9", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "4610c39b-de32-450b-812d-db8c37fcc643", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "2157e572-4abd-4834-a9cf-804b49099cdf", "6a954648-6b0b-4db0-88f2-7446218b85f5", "65e39b7b-a4ee-4045-a6f0-73667f5026d8", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "2345fc5c-2b8b-4cc1-8aa1-6237e0bff3da", "b100a97f-5594-414d-93bd-a1e4599fee77", "113cf5a2-ff11-4091-99d5-afb1c525b23d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "2373aa15-6ac0-4261-950b-b54271a5a25d", "b100a97f-5594-414d-93bd-a1e4599fee77", "c3ef6c77-86a0-40dc-8f33-087871394836", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "272ac946-2314-46d7-a791-2df6b4d75259", "b100a97f-5594-414d-93bd-a1e4599fee77", "21dff9a1-aaf1-4cc6-8e76-ab3d14121993", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "29d9fe20-2ee7-49bb-95c7-c1204b86a84d", "6a954648-6b0b-4db0-88f2-7446218b85f5", "fd4bd82d-b1c2-4560-95ed-5124ca53e6c1", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "2df9bf8c-cd11-4b40-8a21-a2f276a29488", "b100a97f-5594-414d-93bd-a1e4599fee77", "3d143838-e2e4-4d31-99a7-af6f1dca434d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "2f322eee-d52e-497f-8fdb-bff16aa9f871", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "f48e1e18-d42f-4d70-83e1-6210cdc22e5a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "2f5a80b8-b972-4d91-acd6-45753ae4875e", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "b9e4aa99-b324-4c2c-9c1a-b7ee1e23e3b7", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "2fa27aa9-e4cb-4f22-9e0b-073d4cedc178", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "e3a75d9b-132f-47a5-8d3c-fbe2681474a5", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "31e0aa2e-d9f0-411f-bdad-98da3aa2c424", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "d52c72cb-f61b-4354-9ffd-6200d2d7da85", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "32a09df0-dc7c-43ba-9b69-e50df4b7c94d", "6a954648-6b0b-4db0-88f2-7446218b85f5", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "333aa991-3afb-4abd-a600-991fdf2844e3", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "f977f8cb-2d62-4f85-a403-93f7ec1fcde1", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "33637fac-4910-4d95-a2cd-368f4c651784", "6a954648-6b0b-4db0-88f2-7446218b85f5", "266ad13d-4096-4e9b-a1b4-46b46eff0a6c", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "33909c97-9c84-4e4a-979f-a3770737849d", "b100a97f-5594-414d-93bd-a1e4599fee77", "951544df-6ad1-482d-89e0-4bd3d348e215", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3496322a-cb72-461f-a6e0-260c619a73c5", "b100a97f-5594-414d-93bd-a1e4599fee77", "78f2fea7-efe5-4d45-9dc2-9b94eb9d6f5d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "35b8e5ca-9aea-4059-a522-42485ebece77", "b100a97f-5594-414d-93bd-a1e4599fee77", "1eebee7e-a774-4572-a660-8ab49f6a734a", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "35fe78db-07a0-4ff4-9bc6-2489bc91034f", "b100a97f-5594-414d-93bd-a1e4599fee77", "eeb5b08f-596b-4966-8649-f3f119325a67", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3602b4c5-2e63-49bf-98bb-0ab3f9b6a204", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "c1c69eb9-a775-4b56-a7ce-6deb3fec8fab", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "362e49f2-2b86-4bad-a994-25f73f267eba", "6a954648-6b0b-4db0-88f2-7446218b85f5", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "37d299c9-ddc8-414e-991a-78d446b921fa", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "37d6efa7-f8ef-436b-873a-6db24f19a6cb", "6a954648-6b0b-4db0-88f2-7446218b85f5", "6b2a3be9-6716-42b3-9df1-cdd0d68dfc52", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "39ef8fe7-9c4a-44c4-ad12-b3ee5bdb0460", "b100a97f-5594-414d-93bd-a1e4599fee77", "4610c39b-de32-450b-812d-db8c37fcc643", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "3afee680-5eb1-47d1-85cc-197d5a2e9003", "6a954648-6b0b-4db0-88f2-7446218b85f5", "7e0b2ac1-cdac-4eee-8392-fa92e227fa2c", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3b78cc80-9331-4199-be0a-ac56c5f83a3c", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "21dff9a1-aaf1-4cc6-8e76-ab3d14121993", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3bbdea30-8d48-42af-ae3a-180edc95af58", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "d97e8a15-4a46-4389-a8ff-ab0f694d6d95", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3c66ad1e-2bd4-4645-a467-c58bc28a9a98", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "47b4877d-7fdf-41de-a2ec-c6f467250478", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3cac2f4d-6d58-42e9-94fa-a3e483331eb6", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3d95209c-a882-477e-9cb0-860e496bccdb", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "ece1ad09-4d5e-4dcd-98b2-aba0a43aed8a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3e6d816f-bbe3-4171-86cb-25e9e5316f51", "b100a97f-5594-414d-93bd-a1e4599fee77", "abdabe47-4395-4f92-a66d-3d8844ff34bc", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "420eacf6-19c5-416c-8e7b-282e7319d046", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "5e9a1b26-93fe-4dbc-af0e-2967710e4483", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "425df20b-e4c5-4cd1-b3aa-3ba50c8028b5", "b100a97f-5594-414d-93bd-a1e4599fee77", "f7d07231-f33e-4050-a6f8-c846cc6aa031", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "429b561a-84bf-476a-a544-be4f68f4c614", "6a954648-6b0b-4db0-88f2-7446218b85f5", "635e52ec-e7d3-4a67-9616-fdadd0eceb61", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "42d080b0-b0e7-4f0b-a773-a3ba77b5a3b3", "b100a97f-5594-414d-93bd-a1e4599fee77", "07eab05f-be52-45ce-8a53-8dd69df443f4", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "42dd0ca9-b239-4119-9ae6-87bcb3e49c7b", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "65e39b7b-a4ee-4045-a6f0-73667f5026d8", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4369e7da-38de-4ffb-899a-3a0304304fd0", "b100a97f-5594-414d-93bd-a1e4599fee77", "2b01f779-9d92-439b-8afd-a114c4ecfae6", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "43cbf970-e4ec-4901-9f0f-3715e6e60e06", "6a954648-6b0b-4db0-88f2-7446218b85f5", "a894d7ed-a10e-4359-804e-8223fde34bbd", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "449ea3a2-4422-4ad2-a4d2-7df6fe5f038e", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "45304d5b-390d-4618-a08d-793b475f37b7", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "44e2c6bb-648a-4a19-8810-3a9c4649d2e8", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "113cf5a2-ff11-4091-99d5-afb1c525b23d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "455efd07-2cf6-4bbf-8df7-b01d40d3e682", "6a954648-6b0b-4db0-88f2-7446218b85f5", "868afde4-08e8-4899-b596-301c1bae2258", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "46d8b65f-9893-46f2-9472-f234920462b9", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "486f07d9-591c-41b2-ab44-99da7adf047a", "6a954648-6b0b-4db0-88f2-7446218b85f5", "ece1ad09-4d5e-4dcd-98b2-aba0a43aed8a", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "4aecd6eb-7dc9-4040-92d6-47dac9501d68", "6a954648-6b0b-4db0-88f2-7446218b85f5", "ad2aff45-72bb-4f2b-96da-2a9ab6cf33e4", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4b17ea1b-9222-423a-a12f-7f2f44ad590f", "b100a97f-5594-414d-93bd-a1e4599fee77", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4c6e7e43-d331-4eab-bfc5-bbd27b149eae", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "b56ff379-5619-4064-b572-407671edc15e", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "4d73381a-cef2-45f0-842b-901094486c2b", "6a954648-6b0b-4db0-88f2-7446218b85f5", "b56ff379-5619-4064-b572-407671edc15e", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4da90ef1-e519-4a15-9827-5d4112194f47", "b100a97f-5594-414d-93bd-a1e4599fee77", "01b1b52a-7d47-4352-b145-37d9bb2646c3", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4de6a6f5-65f6-4898-9860-2109f6081b22", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "171a2550-9fa1-4fe8-84c3-7b61b7cc2c55", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "4e8d147a-974a-4235-a28b-68dac1d30c84", "b100a97f-5594-414d-93bd-a1e4599fee77", "f9afc38a-bb61-4f98-b593-211766ec6133", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "4ec8dd9e-1a54-4b80-b632-30c267793fc6", "6a954648-6b0b-4db0-88f2-7446218b85f5", "cbb9bd4f-15d9-4799-a942-b8601961adeb", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "526eadfb-f13e-4b58-a157-9b5320eb995c", "6a954648-6b0b-4db0-88f2-7446218b85f5", "4ca01133-e004-428d-bc56-4e9e2dbdbbd6", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "527edc68-78f4-49b2-be70-e507525ebf9d", "6a954648-6b0b-4db0-88f2-7446218b85f5", "1226a31c-fe9d-4102-9750-a4571a08a8b5", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "541e771d-74bf-47e5-b33f-546d87032b6a", "6a954648-6b0b-4db0-88f2-7446218b85f5", "a2d9bdb5-2973-4d60-8cbd-4d88b4286f32", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "543ec99f-3c93-4c73-9f54-bbfbf59878d7", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "2980ec1e-cdbc-4e8c-a000-78cbdacabb34", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "549f4c40-6237-4ee3-b2e7-8f19ea453a6e", "6a954648-6b0b-4db0-88f2-7446218b85f5", "f977f8cb-2d62-4f85-a403-93f7ec1fcde1", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "55edbeed-25e3-4079-a507-78336e347833", "6a954648-6b0b-4db0-88f2-7446218b85f5", "49e22574-cb55-450f-9d47-6b895b2caed3", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "561f444e-9278-4dc9-b393-e198c3625ada", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "bacde412-a651-4c8c-8237-155b39a4595b", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "56e0bb0b-ff0e-43b0-a0d4-6582627059e6", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "d014e2f9-3d6d-49c7-8a00-63fde9a58b40", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "598cfe79-0dc4-43bf-bb9c-cd5448e35e28", "b100a97f-5594-414d-93bd-a1e4599fee77", "510acdce-1c9c-49ab-8f91-fc8a77fc4dc4", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "59dd2e20-5bf4-4d87-8c3f-3e4671f18cd3", "b100a97f-5594-414d-93bd-a1e4599fee77", "6b2a3be9-6716-42b3-9df1-cdd0d68dfc52", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "5c64e270-00b0-4551-9129-21cc937e51a6", "6a954648-6b0b-4db0-88f2-7446218b85f5", "07eab05f-be52-45ce-8a53-8dd69df443f4", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "5cfac6de-dcd8-4de4-bf32-7f03a456299f", "6a954648-6b0b-4db0-88f2-7446218b85f5", "7c69522f-cebf-4377-945a-3324b0a26baa", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "615a5652-60a5-4b1d-94bb-87e366510a13", "6a954648-6b0b-4db0-88f2-7446218b85f5", "029f2730-7ee9-4383-a409-4b5fe0d61fcc", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "64924d5a-547f-4306-8beb-1ac3c0983368", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "50e11dfd-7c94-4f7e-a66b-347b7e506fe5", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "64d73b1a-b741-4a54-b495-109e5932f390", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "868afde4-08e8-4899-b596-301c1bae2258", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "670ea444-96f9-4fe1-b504-d9abec4efeac", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "6b2a3be9-6716-42b3-9df1-cdd0d68dfc52", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "6a1cbb8b-c865-4b2c-9c81-03eb5a4afca3", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "361f2f6f-ab8c-4abe-827e-985d40f04f31", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "6a5fce63-a422-402d-9f01-58086d23b163", "b100a97f-5594-414d-93bd-a1e4599fee77", "cda2e6e6-99f8-415d-b52b-320b51b0028a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6aa1ec2b-6ca5-4618-a510-5a79fa773186", "6a954648-6b0b-4db0-88f2-7446218b85f5", "2b01f779-9d92-439b-8afd-a114c4ecfae6", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6e5d44c4-857a-4a57-87bb-7b7bdd79d6ae", "6a954648-6b0b-4db0-88f2-7446218b85f5", "988c76dd-f5d3-4aca-bea2-1249f980bfc9", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6e8086ef-61a5-4f06-b440-83455cf5e9ad", "6a954648-6b0b-4db0-88f2-7446218b85f5", "68228796-8ea0-4b51-9fef-f9ba7a365f3e", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6f80009d-b65b-405d-a32b-a27cb98e3cb2", "6a954648-6b0b-4db0-88f2-7446218b85f5", "c3ef6c77-86a0-40dc-8f33-087871394836", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "6fe02abe-337c-40eb-be6d-1ca755805b5d", "6a954648-6b0b-4db0-88f2-7446218b85f5", "d014e2f9-3d6d-49c7-8a00-63fde9a58b40", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7009083d-b2f8-42ed-b13b-3e1d5b5b7f8b", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "1226a31c-fe9d-4102-9750-a4571a08a8b5", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7170c8f1-36e9-49e9-8253-b3e539f882b2", "b100a97f-5594-414d-93bd-a1e4599fee77", "68228796-8ea0-4b51-9fef-f9ba7a365f3e", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "71d2858f-60db-4572-ab75-272dc5b23f33", "b100a97f-5594-414d-93bd-a1e4599fee77", "123f022c-72ae-401b-9144-624dad3a906a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7240ff4b-ac8a-4fba-a97b-453ef888fc62", "b100a97f-5594-414d-93bd-a1e4599fee77", "1048ed1d-fef4-4e19-9df3-21c5fdec338f", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "72e7e941-ec52-4846-9558-64c1922c3ad9", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "99d2e39c-89a0-48bc-9117-2770c2d65caa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "730395c3-7af2-4c04-8dcd-18b918f16843", "b100a97f-5594-414d-93bd-a1e4599fee77", "cbb9bd4f-15d9-4799-a942-b8601961adeb", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "73468366-ce73-4547-a38c-87e0d9622bcd", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "123f022c-72ae-401b-9144-624dad3a906a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "740d4063-e200-44b5-ad1b-f6e05a1e0527", "6a954648-6b0b-4db0-88f2-7446218b85f5", "99d2e39c-89a0-48bc-9117-2770c2d65caa", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "752d761f-1963-43ae-b2d3-289ef46e80d2", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "ad2aff45-72bb-4f2b-96da-2a9ab6cf33e4", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7545e2e4-7933-4701-a6c9-82a7d99930f9", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "39425516-e7b9-42f9-b23b-02bf04bae967", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "75ab778f-9bdc-4f04-b0e0-d9e7722a476a", "b100a97f-5594-414d-93bd-a1e4599fee77", "50e11dfd-7c94-4f7e-a66b-347b7e506fe5", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "75be2579-42c6-4184-aa0c-bafa71caa196", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "a2d9bdb5-2973-4d60-8cbd-4d88b4286f32", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7606820c-97cd-4635-92e0-7e56b3f0179f", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "04ee7f51-5847-4099-9d70-7b4f4d9a989c", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "7a48a0c0-cc73-463c-be0a-4e0e0070ca75", "6a954648-6b0b-4db0-88f2-7446218b85f5", "cda2e6e6-99f8-415d-b52b-320b51b0028a", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7a8a83a5-ade2-45a3-a5fa-dfb365ecc8e9", "b100a97f-5594-414d-93bd-a1e4599fee77", "d52c72cb-f61b-4354-9ffd-6200d2d7da85", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "7ddfdd21-e9d0-4c1a-839d-f524710fe3ce", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "2b01f779-9d92-439b-8afd-a114c4ecfae6", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "8967e90a-612d-45d0-b79f-1211d1f7b204", "6a954648-6b0b-4db0-88f2-7446218b85f5", "f48e1e18-d42f-4d70-83e1-6210cdc22e5a", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "89a10ff8-7818-48bf-9659-88b62ad714cb", "b100a97f-5594-414d-93bd-a1e4599fee77", "fd4bd82d-b1c2-4560-95ed-5124ca53e6c1", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "8aea2556-17f3-4b08-ab03-82806fb4909f", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "78f2fea7-efe5-4d45-9dc2-9b94eb9d6f5d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "917f4ec6-df2a-4917-9d00-5289ec2fc50a", "b100a97f-5594-414d-93bd-a1e4599fee77", "f56a43c9-f28d-4230-a0ce-7bf5cd86f2df", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "93407e9b-d580-4077-9f54-72c0c95ad5d1", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "07eab05f-be52-45ce-8a53-8dd69df443f4", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "960b5aa3-5470-4074-a80b-079bfe40b5be", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "f56a43c9-f28d-4230-a0ce-7bf5cd86f2df", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "9616aad5-d914-4aec-9217-e7eaccaec9eb", "b100a97f-5594-414d-93bd-a1e4599fee77", "8f9cf15d-8e83-4c75-bcc1-fff8ddd2e614", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "970c7338-8f1b-49bf-bac4-3275a190f0fd", "b100a97f-5594-414d-93bd-a1e4599fee77", "b56ff379-5619-4064-b572-407671edc15e", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "98360711-028c-4e6a-afd4-940478534098", "6a954648-6b0b-4db0-88f2-7446218b85f5", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "99249280-38bf-4777-a1d8-b78825068701", "b100a97f-5594-414d-93bd-a1e4599fee77", "f977f8cb-2d62-4f85-a403-93f7ec1fcde1", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "99be7a40-ecb1-41c9-8ea5-89a1bae21781", "6a954648-6b0b-4db0-88f2-7446218b85f5", "47b4877d-7fdf-41de-a2ec-c6f467250478", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "9bf782d4-c728-4348-8b2c-5a28d5594707", "6a954648-6b0b-4db0-88f2-7446218b85f5", "510acdce-1c9c-49ab-8f91-fc8a77fc4dc4", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "9c26a15a-e366-4c5d-bed2-0095f586e2eb", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "a894d7ed-a10e-4359-804e-8223fde34bbd", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "9c2c1dcd-a405-4ef0-8577-6ec71bf18757", "b100a97f-5594-414d-93bd-a1e4599fee77", "78d3e701-b660-4ea5-abb8-c935d1387e2d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "9c57b5ec-f3ff-4576-b3a2-da8bf2194855", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "266bd8f2-8e09-404b-985e-0196c14218fa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "9cf7697a-644d-494f-b26c-1b86e31047a0", "b100a97f-5594-414d-93bd-a1e4599fee77", "aa816bb5-2197-4c1a-90b2-f1e955063ca8", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "9d746c0b-24f2-4d0c-8aa2-9b681dd0f98c", "6a954648-6b0b-4db0-88f2-7446218b85f5", "21dff9a1-aaf1-4cc6-8e76-ab3d14121993", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "9ea6746a-158e-461d-a438-8d52c13a3bf3", "6a954648-6b0b-4db0-88f2-7446218b85f5", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "a0216639-55b2-4d68-8358-4c1ae873e56b", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "68228796-8ea0-4b51-9fef-f9ba7a365f3e", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "a2d3285b-a942-4713-bfa1-4c9b66e99f20", "b100a97f-5594-414d-93bd-a1e4599fee77", "029f2730-7ee9-4383-a409-4b5fe0d61fcc", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "a518a901-2a59-4a78-b2d2-8783c0b34d7c", "6a954648-6b0b-4db0-88f2-7446218b85f5", "78d3e701-b660-4ea5-abb8-c935d1387e2d", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "a72c6a2a-ab16-4bad-ae9b-2029382d0e6d", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "266ad13d-4096-4e9b-a1b4-46b46eff0a6c", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "a8be69cd-2d01-4c4f-94e9-a6f9453a349a", "b100a97f-5594-414d-93bd-a1e4599fee77", "04ee7f51-5847-4099-9d70-7b4f4d9a989c", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "a9390a79-d99b-4e7a-9a8a-0f8ecb40693b", "6a954648-6b0b-4db0-88f2-7446218b85f5", "bacde412-a651-4c8c-8237-155b39a4595b", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ad10c473-a543-4d25-9848-a6afdc142fa3", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "988c76dd-f5d3-4aca-bea2-1249f980bfc9", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "ad2067ff-f908-4a4d-b38b-e63b5c70c697", "6a954648-6b0b-4db0-88f2-7446218b85f5", "78f2fea7-efe5-4d45-9dc2-9b94eb9d6f5d", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ae74f8c1-3933-44dc-8d12-d96d4d21710e", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "9b873e90-d8fd-48f3-8c98-ec2aff0c207f", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b036336e-c8a6-4f7a-b0c7-dd4e6a2c7324", "b100a97f-5594-414d-93bd-a1e4599fee77", "ad2aff45-72bb-4f2b-96da-2a9ab6cf33e4", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "b0e5739e-519c-413e-bd71-e65e4ec58d28", "6a954648-6b0b-4db0-88f2-7446218b85f5", "d97e8a15-4a46-4389-a8ff-ab0f694d6d95", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b219bd81-cf2a-4d53-b4b2-5391106ef50f", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "635e52ec-e7d3-4a67-9616-fdadd0eceb61", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b2975d33-02bd-4066-9bd6-038b317fb53b", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "abdabe47-4395-4f92-a66d-3d8844ff34bc", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b2ecaea9-b479-483b-a036-93743152505e", "b100a97f-5594-414d-93bd-a1e4599fee77", "7e0b2ac1-cdac-4eee-8392-fa92e227fa2c", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b399a2d1-0749-410a-9269-68c0e6a0daab", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "fd4bd82d-b1c2-4560-95ed-5124ca53e6c1", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "b3ae4397-0f7a-4329-8b53-03267e951b4c", "6a954648-6b0b-4db0-88f2-7446218b85f5", "266bd8f2-8e09-404b-985e-0196c14218fa", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "b4961d89-2e90-4f7d-bdfe-912534570a9c", "6a954648-6b0b-4db0-88f2-7446218b85f5", "39425516-e7b9-42f9-b23b-02bf04bae967", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b4e4fc29-3ca1-487e-b621-0288327a2670", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "1048ed1d-fef4-4e19-9df3-21c5fdec338f", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b546e664-ba40-4c19-82ec-601021c5b159", "b100a97f-5594-414d-93bd-a1e4599fee77", "171a2550-9fa1-4fe8-84c3-7b61b7cc2c55", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b8476df6-ad73-43d2-948e-789e5d048f98", "b100a97f-5594-414d-93bd-a1e4599fee77", "f71515e5-57b8-41de-9c49-5e494c497563", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "b89e96e0-5662-4564-865c-c33a31562776", "6a954648-6b0b-4db0-88f2-7446218b85f5", "1eebee7e-a774-4572-a660-8ab49f6a734a", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b8eeb4e2-8380-4c71-8fac-d031c44f214e", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "029f2730-7ee9-4383-a409-4b5fe0d61fcc", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "b9b473a7-65d1-4f74-833b-d04af90a9965", "6a954648-6b0b-4db0-88f2-7446218b85f5", "eeb5b08f-596b-4966-8649-f3f119325a67", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "b9fa5cdf-1fb6-492f-a433-c66739277cff", "b100a97f-5594-414d-93bd-a1e4599fee77", "988c76dd-f5d3-4aca-bea2-1249f980bfc9", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "bbe67505-0f57-4c51-8309-216c5c5f86be", "6a954648-6b0b-4db0-88f2-7446218b85f5", "1048ed1d-fef4-4e19-9df3-21c5fdec338f", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "c01918d2-9048-42e0-b91c-0e3296e76e88", "b100a97f-5594-414d-93bd-a1e4599fee77", "868afde4-08e8-4899-b596-301c1bae2258", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "c0b3e0bc-0405-418d-90b0-6aae4dc0d9b3", "b100a97f-5594-414d-93bd-a1e4599fee77", "bacde412-a651-4c8c-8237-155b39a4595b", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "c10ca7c0-288f-43d5-ae55-2bf3308f907f", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "2acf8f9e-9143-4089-b4af-4da2aa25dab6", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "c12edfbc-6421-4656-8328-55ecfa0c3678", "b100a97f-5594-414d-93bd-a1e4599fee77", "7c69522f-cebf-4377-945a-3324b0a26baa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "c32eddba-f283-4db0-86e4-2596d059cbee", "b100a97f-5594-414d-93bd-a1e4599fee77", "266ad13d-4096-4e9b-a1b4-46b46eff0a6c", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "c64661d4-5418-491c-9c86-2ae47d128f3d", "6a954648-6b0b-4db0-88f2-7446218b85f5", "2980ec1e-cdbc-4e8c-a000-78cbdacabb34", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "c945ed10-82f0-4607-b6e4-126326dbb1b9", "6a954648-6b0b-4db0-88f2-7446218b85f5", "f56a43c9-f28d-4230-a0ce-7bf5cd86f2df", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "caa6e55f-8369-49bd-bc25-5f0d5fe21def", "b100a97f-5594-414d-93bd-a1e4599fee77", "47b4877d-7fdf-41de-a2ec-c6f467250478", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ccd0f520-53ec-4cde-9216-9952cb5e3959", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "aa816bb5-2197-4c1a-90b2-f1e955063ca8", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "cea53d57-13cb-4dab-a62e-c2fbecf9a4a0", "b100a97f-5594-414d-93bd-a1e4599fee77", "65e39b7b-a4ee-4045-a6f0-73667f5026d8", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "d27b13da-94de-4b10-b3c8-b70a79bc4503", "b100a97f-5594-414d-93bd-a1e4599fee77", "361f2f6f-ab8c-4abe-827e-985d40f04f31", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "d4be81fb-81c3-40ca-8e5f-0712f3fc23e0", "b100a97f-5594-414d-93bd-a1e4599fee77", "e3a75d9b-132f-47a5-8d3c-fbe2681474a5", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "d58b1416-a25f-46cc-a63d-98215506b02b", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "49e22574-cb55-450f-9d47-6b895b2caed3", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "d696f444-1654-4f44-b103-98c884e0cdf1", "b100a97f-5594-414d-93bd-a1e4599fee77", "49e22574-cb55-450f-9d47-6b895b2caed3", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "d9f973db-7c74-401b-a02e-787805086be4", "b100a97f-5594-414d-93bd-a1e4599fee77", "2acf8f9e-9143-4089-b4af-4da2aa25dab6", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "da84e828-b1c1-4fcb-852c-a2af8431410a", "b100a97f-5594-414d-93bd-a1e4599fee77", "99d2e39c-89a0-48bc-9117-2770c2d65caa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "daaa4e6f-6c96-4153-9a27-1717b159b883", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "cda2e6e6-99f8-415d-b52b-320b51b0028a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "db100e43-000c-48d4-b1b1-914eaf108180", "6a954648-6b0b-4db0-88f2-7446218b85f5", "3d143838-e2e4-4d31-99a7-af6f1dca434d", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "dcd0a4bd-8b01-4378-b376-2ff6fe00bcb1", "6a954648-6b0b-4db0-88f2-7446218b85f5", "113cf5a2-ff11-4091-99d5-afb1c525b23d", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "de27481d-6101-4707-bcab-59baade13d15", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "510acdce-1c9c-49ab-8f91-fc8a77fc4dc4", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e1cd18fc-b95d-48cd-a3cc-7f18c4370c54", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "cbb9bd4f-15d9-4799-a942-b8601961adeb", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e1d2793c-5f93-48d9-ae32-8f4b2b6ec9f5", "b100a97f-5594-414d-93bd-a1e4599fee77", "1226a31c-fe9d-4102-9750-a4571a08a8b5", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e57a3378-2380-47e8-93b3-75e3669cbb2e", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "78d3e701-b660-4ea5-abb8-c935d1387e2d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e5dfe4bd-a568-4e74-94c9-f08f5d044487", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "3d143838-e2e4-4d31-99a7-af6f1dca434d", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "e5f6eef1-d69c-41f3-aa58-1e18e9ff9ee3", "6a954648-6b0b-4db0-88f2-7446218b85f5", "f7d07231-f33e-4050-a6f8-c846cc6aa031", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e5fd4872-a191-40c8-a754-d7fc1c3a3350", "b100a97f-5594-414d-93bd-a1e4599fee77", "b9e4aa99-b324-4c2c-9c1a-b7ee1e23e3b7", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e6c43585-84a7-4a4a-bc75-6ffc9d44de90", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "1eebee7e-a774-4572-a660-8ab49f6a734a", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "e6d1a154-1dd1-471b-9780-cf10ac603e7e", "6a954648-6b0b-4db0-88f2-7446218b85f5", "123f022c-72ae-401b-9144-624dad3a906a", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "e79b8d68-4e83-4e89-8124-76d0f1da996a", "6a954648-6b0b-4db0-88f2-7446218b85f5", "ef759cae-8fd6-4e36-9790-439e03c3a503", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "e94e2419-0294-4cc6-a06c-cb3d97ae3f7c", "6a954648-6b0b-4db0-88f2-7446218b85f5", "b9e4aa99-b324-4c2c-9c1a-b7ee1e23e3b7", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "e9af1ae0-3b32-4151-8a83-fc9b00f8c9fc", "6a954648-6b0b-4db0-88f2-7446218b85f5", "171a2550-9fa1-4fe8-84c3-7b61b7cc2c55", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "e9ff0dfc-bfd2-41e0-8dc2-d0310a47c2d3", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "6c105bb7-633d-4f59-b0d0-37b6dcc59bb7", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "eadb106f-c6d9-4b07-9093-554468790b5b", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ecd27e04-0ee4-47e2-bfda-7e6618a9def6", "b100a97f-5594-414d-93bd-a1e4599fee77", "a894d7ed-a10e-4359-804e-8223fde34bbd", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ee6e282b-e9b4-4fca-92ef-f94c654aa5d5", "b100a97f-5594-414d-93bd-a1e4599fee77", "5e9a1b26-93fe-4dbc-af0e-2967710e4483", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "ef350d46-91d0-4379-b3de-11da131a4767", "b100a97f-5594-414d-93bd-a1e4599fee77", "ef759cae-8fd6-4e36-9790-439e03c3a503", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "efba65fa-fcfd-4310-887d-7fbcfd352c72", "6a954648-6b0b-4db0-88f2-7446218b85f5", "951544df-6ad1-482d-89e0-4bd3d348e215", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "f042c758-76cf-4fb8-97c2-c5a50c52b0b5", "b100a97f-5594-414d-93bd-a1e4599fee77", "1d1d4319-e834-4876-87a9-f3148e17514a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "f058ee3b-7ead-4394-ad06-1e3d9f04287a", "b100a97f-5594-414d-93bd-a1e4599fee77", "f48e1e18-d42f-4d70-83e1-6210cdc22e5a", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "f1e3c95a-c201-4704-bf5d-e8663f311e1a", "b100a97f-5594-414d-93bd-a1e4599fee77", "fbd656eb-4a2f-4e32-b45c-44467a89a9aa", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "f2d39eec-6153-41eb-a216-2324b7112ea9", "6a954648-6b0b-4db0-88f2-7446218b85f5", "5e9a1b26-93fe-4dbc-af0e-2967710e4483", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "f3d028fd-cc52-4b61-8709-226e8740f936", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "eeb5b08f-596b-4966-8649-f3f119325a67", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "f4c8d829-2d39-4987-8d06-66de2727d0ce", "b100a97f-5594-414d-93bd-a1e4599fee77", "2980ec1e-cdbc-4e8c-a000-78cbdacabb34", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:39");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "f5ce7424-f66f-4b63-ae01-e314459aa4f4", "6a954648-6b0b-4db0-88f2-7446218b85f5", "361f2f6f-ab8c-4abe-827e-985d40f04f31", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "f7110342-8d26-4ecd-8e28-69568d2eaeb8", "6a954648-6b0b-4db0-88f2-7446218b85f5", "e3a75d9b-132f-47a5-8d3c-fbe2681474a5", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "fa7687c8-3ac2-40fa-a8bd-d12c1f9cdd93", "6a954648-6b0b-4db0-88f2-7446218b85f5", "50e11dfd-7c94-4f7e-a66b-347b7e506fe5", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "faf07b0f-4242-4c6c-84d3-b10a9e543b9d", "6a954648-6b0b-4db0-88f2-7446218b85f5", "04ee7f51-5847-4099-9d70-7b4f4d9a989c", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:55");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "fc355589-19f0-40c6-b135-60f419495d00", "6a954648-6b0b-4db0-88f2-7446218b85f5", "1d1d4319-e834-4876-87a9-f3148e17514a", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "fc7df4d8-88fe-40b1-a03a-e0d8cef9f8b1", "6a954648-6b0b-4db0-88f2-7446218b85f5", "abdabe47-4395-4f92-a66d-3d8844ff34bc", "1", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:08:42", "55b16625-efca-4093-8df0-20fc838f21b1", "2024-08-28 12:10:54");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "fe739355-8535-4f06-bac0-5d96283d517c", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "ef759cae-8fd6-4e36-9790-439e03c3a503", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:51", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");
INSERT INTO dt01_gen_role_dt VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "fe8631bd-cd9e-40bd-9965-e91afdc4538d", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "7e0b2ac1-cdac-4eee-8392-fa92e227fa2c", "0", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:24:52", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:25:11");



DROP TABLE IF EXISTS dt01_gen_role_ms;

CREATE TABLE `dt01_gen_role_ms` (
  `ORG_ID` varchar(36) DEFAULT NULL,
  `TRANS_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `ROLE` varchar(1000) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT '1',
  `CREATED_BY` varchar(36) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT current_timestamp(),
  `LAST_UPDATED_BY` varchar(36) DEFAULT NULL,
  `LAST_UPDATED_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_role_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "163dfc0c-f62a-4416-b269-9991f536cae3", "6c84969d-0271-433c-96ff-813509268a86", "Default", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_role_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "31287fde-08d4-45b7-8a6a-9706edb7c00a", "6a954648-6b0b-4db0-88f2-7446218b85f5", "Developer", "1", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56");
INSERT INTO dt01_gen_role_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "3675fb0d-ac18-421d-90bf-dbc1b914dda3", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "Admin Tilaka", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_role_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "3b214cd7-0eca-4b3c-bed3-555895c1a108", "cc1deca5-d4d6-4847-bde0-590a50cbe98f", "IT Operation", "1", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56");
INSERT INTO dt01_gen_role_ms VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "413fbfd8-8854-4252-876e-70904ae84a25", "b100a97f-5594-414d-93bd-a1e4599fee77", "IT Operation", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54");
INSERT INTO dt01_gen_role_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "73560e9a-56ca-4e30-935f-27c9fdf74e6c", "1a61453e-e2bb-4cda-acbe-ef38bc3c2230", "Default", "1", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56");
INSERT INTO dt01_gen_role_ms VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "dc0c19fc-89eb-4e2f-bd63-169fda5dc687", "34c2e933-4b1b-47cd-8497-71de44ac4e01", "Admin Tilaka", "1", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56", "3cfc3139-5290-407d-a77a-3bdc893f4194", "2024-08-29 22:08:56");



DROP TABLE IF EXISTS dt01_gen_user_data;

CREATE TABLE `dt01_gen_user_data` (
  `ORG_ID` varchar(36) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(4000) NOT NULL,
  `USER_IDENTIFIER` varchar(1000) NOT NULL,
  `PASSWORD` varchar(4000) NOT NULL DEFAULT '3832333435363731',
  `NIK` varchar(100) NOT NULL COMMENT 'Nomor Induk Kepegawaian',
  `NIP` varchar(100) DEFAULT NULL COMMENT 'NIP PNS Jika DiPerlukan',
  `NAME` varchar(1000) NOT NULL,
  `SEX_ID` varchar(1) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `IDENTITY_NO` varchar(16) DEFAULT NULL COMMENT 'No KTP',
  `NPWP_NO` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(4000) DEFAULT NULL,
  `KATEGORI_ID` varchar(36) DEFAULT NULL,
  `SUSPENDED` varchar(1) NOT NULL DEFAULT 'N',
  `REGISTER_ID` varchar(36) NOT NULL,
  `TILAKA_ID` varchar(100) NOT NULL,
  `REVOKE_ID` varchar(39) NOT NULL,
  `ISSUE_ID` varchar(42) NOT NULL,
  `CERTIFICATE` varchar(1) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `PLACE_BIRTH` varchar(100) DEFAULT NULL,
  `IMAGE_PROFILE` varchar(1) NOT NULL DEFAULT 'N',
  `IMAGE_IDENTITY` varchar(1) NOT NULL DEFAULT 'N',
  `NAME_IDENTITY` varchar(255) DEFAULT NULL,
  `PLACE_OF_BIRTH` varchar(255) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `KLINIS_ID` varchar(36) DEFAULT NULL,
  `MARITAL_ID` varchar(100) DEFAULT NULL,
  `RELIGION_ID` varchar(100) DEFAULT NULL,
  `ETHNIC_ID` varchar(100) DEFAULT NULL,
  `BLOOD_TYPE` varchar(3) DEFAULT NULL,
  `RHESUS` varchar(3) DEFAULT NULL,
  `CLOTHES_SIZE` varchar(10) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `DUTY_DAYS` int(11) DEFAULT 0,
  `DUTY_HOURS` int(11) DEFAULT 0,
  `HOURS_MONTH` int(11) DEFAULT 0,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dt01_gen_user_data VALUES ("378a0728-a914-43a5-ae90-186d8a052ff2", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "Admin_WT7A14", "", "3832333435363731", "WT7A14", "", "Administrator RS Permata Hati", "", "", "", "", "", "", "N", "", "", "", "", "", "1", "1769e1c0-13ae-4c2f-8128-51a5b8d3dd30", "2024-08-29 22:19:54", "", "N", "N", "", "", "1992-07-09", "", "", "", "", "", "", "", "", "0", "0", "0");
INSERT INTO dt01_gen_user_data VALUES ("3cfc3139-5290-407d-a77a-3bdc893f4194", "55b16625-efca-4093-8df0-20fc838f21b1", "1521027", "", "3832333435363731", "1521027", "", "Teguh Irawan", "L", "", "", "", "", "", "N", "", "", "", "", "", "1", "ab24ee31-f74c-4f86-a07b-27196b57e7a6", "2024-05-08 15:18:08", "", "N", "N", "", "", "1992-07-09", "", "", "", "", "", "", "", "", "0", "0", "0");



DROP TABLE IF EXISTS dt01_hrd_todo_dt;

CREATE TABLE `dt01_hrd_todo_dt` (
  `ORG_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `TODO_ID` varchar(36) NOT NULL,
  `TODO` varchar(4000) NOT NULL,
  `PRIORITY` varchar(1) NOT NULL DEFAULT '1',
  `STATUS` varchar(1) NOT NULL DEFAULT '0',
  `DUE_DATE` date DEFAULT NULL,
  `ACTIVE` varchar(1) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(36) NOT NULL,
  `CREATED_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`TODO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




