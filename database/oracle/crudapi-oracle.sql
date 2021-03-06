drop sequence "ca_meta_sequence_id";
drop sequence "ca_meta_table_id";
drop sequence "ca_meta_column_id";
drop sequence "ca_meta_index_id";
drop sequence "ca_meta_index_line_id";
drop sequence "ca_meta_table_relation_id";
drop sequence "spring_user_id";
drop sequence "spring_resource_id";
drop sequence "spring_role_id";
drop sequence "ca_roleResourceLine_id";
drop sequence "ca_userRoleLine_id";
drop sequence "ca_weixinConfig_id";
drop sequence "ca_smsTemplate_id";
drop sequence "ca_smsConfig_id";
drop sequence "ca_folder_id";
drop sequence "ca_file_id";
drop sequence "ca_district_id";
drop sequence "ca_city_id";
drop sequence "ca_province_id";
drop sequence "ca_tableFormBuilder_id";
drop sequence "ca_sys_module_id";
drop sequence "ca_sys_moduleLine_id";

DROP TABLE "ca_meta_table_relation";
DROP TABLE "ca_meta_index_line";
DROP TABLE "ca_meta_index";
DROP TABLE "ca_meta_column";
DROP TABLE "ca_meta_table";
DROP TABLE "ca_meta_sequence";

DROP TABLE "ca_userRoleLine";
DROP TABLE "ca_roleResourceLine";
DROP TABLE "spring_role";
DROP TABLE "spring_resource";
DROP TABLE "spring_user";
DROP TABLE "persistent_logins";
DROP TABLE SPRING_SESSION_ATTRIBUTES;
DROP TABLE SPRING_SESSION;

DROP TABLE "ca_weixinConfig";
DROP TABLE "ca_smsTemplate";
DROP TABLE "ca_smsConfig";
DROP TABLE "ca_folder";
DROP TABLE "ca_file";
DROP TABLE "ca_district";
DROP TABLE "ca_city";
DROP TABLE "ca_province";
DROP TABLE "ca_tableFormBuilder";
DROP TABLE "ca_sys_moduleLine";
DROP TABLE "ca_sys_module";

CREATE TABLE "ca_meta_sequence" (
  "id" INT NOT NULL PRIMARY KEY,
  "caption" VARCHAR(255) DEFAULT NULL,
  "createdDate" DATE DEFAULT NULL,
  "currentTime" NUMBER(1) DEFAULT NULL,
  "cycle" NUMBER(1) DEFAULT NULL,
  "description" VARCHAR(255) DEFAULT NULL,
  "format" VARCHAR(255) DEFAULT NULL,
  "incrementBy" INT DEFAULT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "maxValue" INT DEFAULT NULL,
  "minValue" INT DEFAULT NULL,
  "name" VARCHAR(255) DEFAULT NULL,
  "nextValue" INT DEFAULT NULL,
  "sequenceType" VARCHAR(255) DEFAULT NULL
);

ALTER TABLE "ca_meta_sequence" ADD CONSTRAINT "uq_bsm_sequence_name" UNIQUE("name");

INSERT INTO "ca_meta_sequence" ("id", "caption", "createdDate", "currentTime", "cycle", "description", "format", "incrementBy", "lastModifiedDate", "maxValue", "minValue", "name", "nextValue", "sequenceType") VALUES
(1, '????????????', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 0, NULL, NULL, 'ROLE_%09d', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 999999999, 1, 'roleCode', 8, 'STRING');

INSERT INTO "ca_meta_sequence" ("id", "caption", "createdDate", "currentTime", "cycle", "description", "format", "incrementBy", "lastModifiedDate", "maxValue", "minValue", "name", "nextValue", "sequenceType") VALUES
(2, '????????????', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 0, NULL, NULL, 'RESOURCE_%09d', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 999999999, 1, 'resourceCode', 8, 'STRING');

INSERT INTO "ca_meta_sequence" ("id", "caption", "createdDate", "currentTime", "cycle", "description", "format", "incrementBy", "lastModifiedDate", "maxValue", "minValue", "name", "nextValue", "sequenceType") VALUES
(3, '???????????????', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 0, NULL, NULL, '%018d', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 9999999999, 1, 'membershipCode', 17, 'STRING');

CREATE TABLE "ca_meta_table" (
  "id" INT NOT NULL PRIMARY KEY,
  "caption" VARCHAR(255) DEFAULT NULL,
  "createPhysicalTable" NUMBER(1) DEFAULT NULL,
  "createdDate" DATE DEFAULT NULL,
  "description" VARCHAR(255) DEFAULT NULL,
  "engine" VARCHAR(255) DEFAULT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "name" VARCHAR(255) DEFAULT NULL,
  "pluralName" VARCHAR(255) DEFAULT NULL,
  "tableName" VARCHAR(255) DEFAULT NULL,
  "systemable" NUMBER(1) DEFAULT NULL,
  "readOnly" NUMBER(1) DEFAULT NULL
);

ALTER TABLE "ca_meta_table" ADD CONSTRAINT "uq_bsm_table_name" UNIQUE("name");
ALTER TABLE "ca_meta_table" ADD CONSTRAINT "uq_bsm_table_plural_name" UNIQUE("pluralName");
ALTER TABLE "ca_meta_table" ADD CONSTRAINT "uq_bsm_table_table_name" UNIQUE("tableName");

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(1, '??????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '??????', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'user', 'users', 'spring_user', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(2, '??????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '??????', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'role', 'roles', 'spring_role', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(3, '??????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '??????', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'resource', 'resources', 'spring_resource', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(4, '???????????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '???????????????', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'userRoleLine', 'userRoleLines', 'ca_userRoleLine', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(5, '???????????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '???????????????', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'roleResourceLine', 'roleResourceLines', 'ca_roleResourceLine', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(19, '???', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'province', 'provinces', 'ca_province', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(20, '???', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'city', 'cities', 'ca_city', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(22, '???', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'district', 'districts', 'ca_district', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(24, '??????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'file', 'files', 'ca_file', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(34, '??????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'folder', 'folders', 'ca_folder', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(37, '????????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'weixinConfig', 'weixinConfigs', 'ca_weixinConfig', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(42, '????????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'smsConfig', 'smsConfigs', 'ca_smsConfig', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(43, '????????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'smsTemplate', 'smsTemplates', 'ca_smsTemplate', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(62, '??????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'module', 'modules', 'ca_sys_module', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(63, '?????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'moduleLine', 'moduleLines', 'ca_sys_moduleLine', 1, 0);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(66, '???', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'table', 'tables', 'ca_meta_table', 1, 1);

INSERT INTO "ca_meta_table" ("id", "caption", "createPhysicalTable", "createdDate", "description", "engine", "lastModifiedDate", "name", "pluralName", "tableName", "systemable", "readOnly") VALUES
(69, '?????????', 1, to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), '', 'INNODB', to_date('2022-03-09 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'tableFormBuilder', 'tableFormBuilders', 'ca_tableFormBuilder', 1, 0);

CREATE TABLE "ca_meta_column" (
  "id" INT NOT NULL PRIMARY KEY,
  "autoIncrement" NUMBER(1) DEFAULT NULL,
  "caption" VARCHAR(255) DEFAULT NULL,
  "createdDate" DATE DEFAULT NULL,
  "dataType" VARCHAR(255) DEFAULT NULL,
  "defaultValue" VARCHAR(255) DEFAULT NULL,
  "description" VARCHAR(255) DEFAULT NULL,
  "displayOrder" INT DEFAULT NULL,
  "indexName" VARCHAR(255) DEFAULT NULL,
  "indexStorage" VARCHAR(255) DEFAULT NULL,
  "indexType" VARCHAR(255) DEFAULT NULL,
  "insertable" NUMBER(1) DEFAULT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "length" INT DEFAULT NULL,
  "name" VARCHAR(255)  DEFAULT NULL,
  "nullable" NUMBER(1) DEFAULT NULL,
  "precision" INT DEFAULT NULL,
  "queryable" NUMBER(1) DEFAULT NULL,
  "scale" INT DEFAULT NULL,
  "seqId" INT DEFAULT NULL,
  "unsigned" NUMBER(1) DEFAULT NULL,
  "updatable" NUMBER(1) DEFAULT NULL,
  "displayable" NUMBER(1) DEFAULT NULL,
  "systemable" NUMBER(1) DEFAULT NULL,
  "multipleValue" NUMBER(1) DEFAULT 0,
  "tableId" INT DEFAULT NULL,
  CONSTRAINT "fk_bsm_column_seq_id" FOREIGN KEY ("seqId") REFERENCES "ca_meta_sequence" ("id"),
  CONSTRAINT "fk_bsm_column_table_id" FOREIGN KEY ("tableId") REFERENCES "ca_meta_table" ("id")
);

ALTER TABLE "ca_meta_column" ADD CONSTRAINT "uq_bsm_column_name" UNIQUE("tableId","name");
ALTER TABLE "ca_meta_column" ADD CONSTRAINT "uq_bsm_column_index_name" UNIQUE("indexName");

Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (1,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,0,1,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (2,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (3,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'spring_user_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,0,1,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (4,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,0,1,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (5,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,0,1,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (6,0,'OPENID',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'OPENID',5,'uq_spring_user_openid',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),50,'openId',1,null,0,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (7,0,'?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'?????????',6,'uq_spring_user_username',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),50,'username',0,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (8,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'????????????',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'realname',1,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (9,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',8,'uq_spring_user_mobile',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'mobile',1,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (10,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',9,'uq_spring_user_email',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'email',1,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (11,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'PASSWORD',null,'??????',10,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),500,'password',0,null,0,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (12,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'????????????',11,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'cleartextPwd',1,null,0,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (13,0,'TOKEN',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'TOKEN',12,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'token',1,null,0,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (14,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL','true','??????',13,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),10,'enabled',0,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (15,0,'??????????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL','true','??????????????????',14,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),10,'accountNonExpired',0,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (16,0,'??????????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL','true','??????????????????',15,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),10,'accountNonLocked',0,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (17,0,'??????????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL','true','??????????????????',16,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),10,'credentialsNonExpired',0,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (20,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,0,1,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (21,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (22,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'spring_role_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,0,1,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (23,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,0,1,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (24,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,0,1,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (25,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,'uq_spring_role_code',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'code',0,null,1,null,1,0,1,0,0,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (26,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'??????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'remark',1,null,1,null,null,0,1,0,0,2);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (27,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (28,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (29,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'spring_resource_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (30,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (31,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (33,0,'URL?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'URL?????????',6,'uq_spring_resource_url',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'url',1,null,1,null,null,0,1,null,0,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (34,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'??????',8,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'remark',1,null,1,null,null,0,1,null,0,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (35,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (36,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (37,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_userRoleLine_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (38,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (39,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (40,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'????????????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'userId',0,null,1,null,null,0,1,null,0,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (41,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'????????????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'roleId',0,null,1,null,null,0,1,null,0,4);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (42,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (43,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (44,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_roleResourceLine_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (45,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (46,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (47,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'????????????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'roleId',1,null,1,null,null,0,1,null,0,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (48,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'????????????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'resourceId',1,null,1,null,null,0,1,null,0,5);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (56,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,'uq_spring_resource_code',null,'UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'code',1,null,1,null,2,0,1,null,0,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (58,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'action',1,null,1,null,null,0,1,null,0,3);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (155,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,19);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (156,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,19);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (157,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_province_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,19);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (158,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,19);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (159,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,19);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (160,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'code',1,null,1,null,null,0,1,null,0,19);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (161,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (162,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (163,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_city_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (164,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (165,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (166,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'code',1,null,1,null,null,0,1,null,0,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (167,0,'?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'?????????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'provinceId',1,null,1,null,null,0,1,null,0,20);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (176,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,0,1,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (177,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (178,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_district_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,0,1,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (179,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,0,1,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (180,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,0,1,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (181,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'code',1,null,1,null,null,0,1,0,0,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (182,0,'?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'?????????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'cityId',1,null,1,null,null,0,1,0,0,22);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (192,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (193,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (194,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_file_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (195,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (196,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (197,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'size',1,null,1,null,null,0,1,null,0,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (198,0,'MD5',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'MD5',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'md5',1,null,1,null,null,0,1,null,0,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (199,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',8,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'type',1,null,1,null,null,0,1,null,0,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (218,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'ATTACHMENT',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),4000,'url',1,null,1,null,null,0,1,null,0,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (219,0,'??????????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????????????????',17,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'fileId',1,null,1,null,null,0,1,0,0,1);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (220,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,34);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (221,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,34);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (222,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_folder_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,34);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (223,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,34);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (224,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,34);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (225,0,'???????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'???????????????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'parentFolderId',1,null,1,null,null,0,1,null,0,34);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (226,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'????????????',9,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'folderId',1,null,1,null,null,0,1,null,0,24);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (244,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (245,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (246,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_weixinConfig_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (247,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (248,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (249,0,'AppId',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'AppId',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'appId',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (250,0,'AppSecret',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'AppSecret',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'appSecret',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (251,0,'Token',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'Token',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'token',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (252,0,'EncodingAESKey',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'EncodingAESKey',8,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'encodingAESKey',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (253,0,'AccessToken',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'AccessToken',9,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'accessToken',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (254,0,'ExpiresIn',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'ExpiresIn',10,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'expiresIn',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (255,0,'Enable',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'INT',null,'Enable',11,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),10,'enable',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (256,0,'Log',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'Log',12,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'log',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (257,0,'JsapiTicket',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'JsapiTicket',13,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),400,'jsapiTicket',1,null,1,null,null,0,1,null,0,37);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (293,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (294,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (295,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_smsConfig_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (296,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (297,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (298,0,'Url',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'Url',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'url',1,null,1,null,null,0,1,null,0,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (299,0,'?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'?????????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'username',1,null,1,null,null,0,1,null,0,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (300,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'password',1,null,1,null,null,0,1,null,0,42);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (301,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,null,1,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (302,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,1,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (303,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_smsTemplate_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,null,1,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (304,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,null,1,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (305,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,null,1,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (306,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'sign',1,null,1,null,null,0,1,null,0,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (307,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'template',1,null,1,null,null,0,1,null,0,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (308,0,'??????????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????????????????',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'smsConfigId',1,null,1,null,null,0,1,null,0,43);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (432,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,0,0,62);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (433,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,0,62);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (434,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_sys_module_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,0,0,62);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (435,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,0,0,62);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (436,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,0,0,62);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (437,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,0,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (438,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (439,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_sys_moduleLine_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,0,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (440,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,0,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (441,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,0,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (442,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'????????????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'moduleId',1,null,1,null,null,0,1,0,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (443,0,'?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'?????????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'tableId',1,null,1,null,null,0,1,0,0,63);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (461,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'id',0,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (462,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'????????????',2,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),255,'caption',1,null,1,null,null,0,1,1,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (463,0,'?????????????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL',null,'?????????????????????',3,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createPhysicalTable',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (464,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),6,'createdDate',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (465,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),255,'description',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (466,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),255,'engine',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (467,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),6,'lastModifiedDate',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (468,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'????????????',1,'uq_bsm_table_name','BTREE','UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),255,'name',1,null,1,null,null,0,1,1,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (469,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'????????????',8,'uq_bsm_table_plural_name','BTREE','UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),255,'pluralName',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (470,0,'???????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'???????????????',9,'uq_bsm_table_table_name','BTREE','UNIQUE',1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),255,'tableName',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (471,0,'???????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL',null,'???????????????',10,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'systemable',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (473,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BOOL',null,'????????????',11,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'readOnly',1,null,1,null,null,0,1,0,0,66);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (489,1,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'??????',0,null,null,'PRIMARY',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'id',0,null,0,null,null,1,0,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (490,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',1,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'name',0,null,1,null,null,0,1,1,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (491,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'TEXT',null,'????????????',2,'ca_tableFormBuilder_ftidx',null,'FULLTEXT',0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'fullTextBody',1,null,0,null,null,0,0,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (492,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',3,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'createdDate',0,null,0,null,null,0,0,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (493,0,'????????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'DATETIME',null,'????????????',4,null,null,null,0,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'lastModifiedDate',1,null,0,null,null,0,0,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (494,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',5,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'type',1,null,1,null,null,0,1,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (495,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'VARCHAR',null,'??????',6,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),200,'device',1,null,1,null,null,0,1,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (496,0,'??????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'LONGTEXT',null,'??????',7,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),null,'body',1,null,1,null,null,0,1,0,0,69);
Insert into "ca_meta_column" ("id","autoIncrement","caption","createdDate","dataType","defaultValue","description","displayOrder","indexName","indexStorage","indexType","insertable","lastModifiedDate","length","name","nullable","precision","queryable","scale","seqId","unsigned","updatable","displayable","systemable","tableId") values (497,0,'?????????',to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),'BIGINT',null,'?????????',8,null,null,null,1,to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),20,'tableId',1,null,1,null,null,0,1,0,0,69);


CREATE TABLE "ca_meta_index" (
  "id" INT  NOT NULL PRIMARY KEY,
  "caption" VARCHAR(255) DEFAULT NULL,
  "createdDate" DATE DEFAULT NULL,
  "description" VARCHAR(255) DEFAULT NULL,
  "indexStorage" VARCHAR(255) DEFAULT NULL,
  "indexType" VARCHAR(255) DEFAULT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "name" VARCHAR(255) DEFAULT NULL,
  "tableId" INT DEFAULT NULL,
  CONSTRAINT "fk_bsm_index_table_id" FOREIGN KEY ("tableId") REFERENCES "ca_meta_table" ("id")
);

ALTER TABLE "ca_meta_index" ADD CONSTRAINT "uq_bsm_index_name" UNIQUE("tableId","name");

INSERT INTO "ca_meta_index" ("id", "caption", "createdDate", "description", "indexStorage", "indexType", "lastModifiedDate", "name", "tableId") VALUES
(12, '???????????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '?????????????????????', 'BTREE', 'UNIQUE', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'tableTypeIndex', 69);

CREATE TABLE "ca_meta_index_line" (
  "id" INT NOT NULL PRIMARY KEY,
  "columnId" INT DEFAULT NULL,
  "indexId" INT DEFAULT NULL,
  CONSTRAINT "fk_bsm_index_line_index_id" FOREIGN KEY ("indexId") REFERENCES "ca_meta_index" ("id") ON DELETE CASCADE
);

INSERT INTO "ca_meta_index_line" ("id", "columnId", "indexId") VALUES (20, 494, 12);
INSERT INTO "ca_meta_index_line" ("id", "columnId", "indexId") VALUES (21, 497, 12);

CREATE TABLE "ca_meta_table_relation" (
  "id" INT NOT NULL PRIMARY KEY,
  "caption" VARCHAR(255) DEFAULT NULL,
  "createdDate" DATE DEFAULT NULL,
  "description" VARCHAR(255) DEFAULT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "name" VARCHAR(255) DEFAULT NULL,
  "relationType" VARCHAR(255) DEFAULT NULL,
  "fromColumnId" INT DEFAULT NULL,
  "fromTableId" INT DEFAULT NULL,
  "toColumnId" INT DEFAULT NULL,
  "toTableId" INT DEFAULT NULL,
  CONSTRAINT "fk_bsm_t_r_from_column_id" FOREIGN KEY ("fromColumnId") REFERENCES "ca_meta_column" ("id"),
  CONSTRAINT "fk_bsm_t_r_from_table_id" FOREIGN KEY ("fromTableId") REFERENCES "ca_meta_table" ("id"),
  CONSTRAINT "fk_bsm_t_r_to_column_id" FOREIGN KEY ("toColumnId") REFERENCES "ca_meta_column" ("id"),
  CONSTRAINT "fk_bsm_t_r_to_table_id" FOREIGN KEY ("toTableId") REFERENCES "ca_meta_table" ("id")
);

ALTER TABLE "ca_meta_table_relation" ADD CONSTRAINT "uq_ca_table_relation" UNIQUE("fromTableId","toTableId","relationType","fromColumnId","toColumnId");

;
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(1, '?????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '?????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'roleLines', 'OneToMany', 1, 1, 40, 4);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(2, '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'role', 'ManyToOne', 41, 4, 20, 2);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(3, '?????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '?????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'resourceLines', 'OneToMany', 20, 2, 47, 5);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(4, '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'resource', 'ManyToOne', 48, 5, 27, 3);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(5, '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'cities', 'OneToMany', 155, 19, 167, 20);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(6, '???', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'districts', 'OneToMany', 161, 20, 182, 22);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(7, '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'avatar', 'ManyToOne', 219, 1, 192, 24);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(8, '?????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'childrenFolders', 'OneToMany', 220, 34, 225, 34);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(13, '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'files', 'OneToMany', 220, 34, 226, 24);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(21, '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'templates', 'OneToMany', 293, 42, 308, 43);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(22, '?????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'moduleLines', 'OneToMany', 432, 62, 442, 63);
INSERT INTO "ca_meta_table_relation" ("id", "caption", "createdDate", "description", "lastModifiedDate", "name", "relationType", "fromColumnId", "fromTableId", "toColumnId", "toTableId") VALUES 
(23, '???', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'table', 'ManyToOne', 443, 63, 461, 66);


CREATE TABLE "spring_resource" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "url" VARCHAR(200) DEFAULT NULL,
  "remark" VARCHAR(200),
  "code" VARCHAR(200) DEFAULT NULL,
  "action" VARCHAR(200) DEFAULT NULL
);

ALTER TABLE "spring_resource" ADD CONSTRAINT "uq_spring_resource_code" UNIQUE("code");
ALTER TABLE "spring_resource" ADD CONSTRAINT "uq_spring_resource_url" UNIQUE("url");

INSERT INTO "spring_resource" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "url", "remark", "code", "action") VALUES
(12, '????????????', '???????????? RESOURCE_BUSINESS /api/business/** *', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '/api/business/**', NULL, 'RESOURCE_BUSINESS', '*');
INSERT INTO "spring_resource" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "url", "remark", "code", "action") VALUES
(13, '??????????????????', '?????????????????? RESOURCE_BUSINESS_COUNT /api/business/**/count *', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '/api/business/**/count', NULL, 'RESOURCE_BUSINESS_COUNT', '*');
INSERT INTO "spring_resource" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "url", "remark", "code", "action") VALUES
(14, '??????', '?????? RESOURCE_USER /api/business/user** *', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '/api/business/user**', NULL, 'RESOURCE_USER', '*');
INSERT INTO "spring_resource" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "url", "remark", "code", "action") VALUES
(15, '????????????', '???????????? RESOURCE_ROLE /api/business/role** *', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '/api/business/role**', NULL, 'RESOURCE_ROLE', '*');
INSERT INTO "spring_resource" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "url", "remark", "code", "action") VALUES
(16, '????????????', '???????????? RESOURCE_RESOURCE /api/business/resource** *', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '/api/business/resource**', NULL, 'RESOURCE_RESOURCE', '*');

CREATE TABLE "spring_user" (
  "id" INT NOT NULL PRIMARY KEY,
  "openId" VARCHAR(50) DEFAULT NULL,
  "username" VARCHAR(50) NOT NULL,
  "realname" VARCHAR(200) DEFAULT NULL,
  "mobile" VARCHAR(20) DEFAULT NULL,
  "email" VARCHAR(200) DEFAULT NULL,
  "password" VARCHAR(500) NOT NULL,
  "cleartextPwd" VARCHAR(200) DEFAULT NULL,
  "token" VARCHAR(200) DEFAULT NULL,
  "enabled" NUMBER(1) DEFAULT 1 NOT NULL,
  "accountNonExpired" NUMBER(1) DEFAULT 1 NOT NULL,
  "accountNonLocked" NUMBER(1) DEFAULT 1 NOT NULL,
  "credentialsNonExpired" NUMBER(1) DEFAULT 1 NOT NULL,
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "fileId" INT DEFAULT NULL
);

ALTER TABLE "spring_user" ADD CONSTRAINT "uq_spring_user_username" UNIQUE("username");
ALTER TABLE "spring_user" ADD CONSTRAINT "uq_spring_user_openid" UNIQUE("openId");
ALTER TABLE "spring_user" ADD CONSTRAINT "uq_spring_user_mobile" UNIQUE("mobile");
ALTER TABLE "spring_user" ADD CONSTRAINT "uq_spring_user_email" UNIQUE("email");

INSERT INTO "spring_user" ("id", "openId", "username", "realname", "mobile", "email", "password", "cleartextPwd", "token", "enabled", "accountNonExpired", "accountNonLocked", "credentialsNonExpired", "createdDate", "lastModifiedDate", "name", "fullTextBody", "fileId") VALUES
(1, NULL, 'superadmin', '???????????????', '11111111111', NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, '1094a2c5e57c4c7fa3922d69b012cfa7', 1, 1, 1, 1,  to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'),  to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), '???????????????', '??????????????? superadmin ??????????????? 11111111111 1 1 1 1', NULL);

CREATE TABLE "spring_role" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "code" VARCHAR(200) NOT NULL,
  "remark" VARCHAR(2000)
);

ALTER TABLE "spring_role" ADD CONSTRAINT "uq_spring_role_code" UNIQUE("code");

INSERT INTO "spring_role" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "code", "remark") VALUES
(11, '???????????????', '??????????????? ROLE_SUPER_ADMIN ???????????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'ROLE_SUPER_ADMIN', '???????????????');
INSERT INTO "spring_role" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "code", "remark") VALUES
(20, '??????????????????', '?????????????????? ROLE_BUSINESS ??????????????????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 'ROLE_BUSINESS', '??????????????????');

CREATE TABLE "ca_roleResourceLine" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "roleId" INT DEFAULT NULL,
  "resourceId" INT DEFAULT NULL
);

INSERT INTO "ca_roleResourceLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "roleId", "resourceId") VALUES
(11, '??????????????????', NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, 20, 12);
INSERT INTO "ca_roleResourceLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "roleId", "resourceId") VALUES
(12, '????????????????????????', NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, 20, 13);

CREATE TABLE "ca_userRoleLine" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "userId" INT NOT NULL,
  "roleId" INT NOT NULL
);

INSERT INTO "ca_userRoleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "userId", "roleId") VALUES
(15, '???????????????', NULL, to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, 1, 11);

CREATE TABLE "ca_sys_module" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL
);

INSERT INTO "ca_sys_module" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate") VALUES
(1, '??????', '?????? bg-teal', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'));
INSERT INTO "ca_sys_module" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate") VALUES
(2, '??????', '?????? bg-primary', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'));
INSERT INTO "ca_sys_module" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate") VALUES
(3, '????????????', '???????????? bg-purple', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'));
INSERT INTO "ca_sys_module" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate") VALUES
(4, '??????', '??????', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL);

CREATE TABLE "ca_sys_moduleLine" (
  "id" INT NOT NULL PRIMARY KEY ,
  "name" VARCHAR(200)  NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "moduleId" INT DEFAULT NULL,
  "tableId" INT DEFAULT NULL
);

INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(1, '???', '??? 1 19', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 1, 19);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(2, '???', '??? 1 20', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 1, 20);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(3, '???', '??? 1 22', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 1, 22);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(4, '??????', '?????? 2 24', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 2, 24);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(5, '??????', '?????? 2 34', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 2, 34);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(6, '??????', '?????? 3 1', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 3, 1);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(7, '??????', '?????? 3 2', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 3, 2);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(8, '??????', '?????? 3 3', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 3, 3);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(9, '???????????????', '??????????????? 3 4', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 3, 4);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(10, '???????????????', '??????????????? 3 5', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), 3, 5);
INSERT INTO "ca_sys_moduleLine" ("id", "name", "fullTextBody", "createdDate", "lastModifiedDate", "moduleId", "tableId") VALUES 
(11, '????????????', '???????????? 4 37', to_date('2022-02-28 17:06:29','yyyy-mm-dd HH24:MI:SS'), NULL, 4, 37);

CREATE TABLE "ca_tableFormBuilder" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "type" VARCHAR(200) DEFAULT NULL,
  "device" VARCHAR(200) DEFAULT NULL,
  "body" VARCHAR(4000),
  "tableId" INT DEFAULT NULL
);

CREATE TABLE SPRING_SESSION (
  PRIMARY_ID CHAR(36) NOT NULL,
  SESSION_ID CHAR(36) NOT NULL,
  CREATION_TIME NUMBER(19,0) NOT NULL,
  LAST_ACCESS_TIME NUMBER(19,0) NOT NULL,
  MAX_INACTIVE_INTERVAL NUMBER(10,0) NOT NULL,
  EXPIRY_TIME NUMBER(19,0) NOT NULL,
  PRINCIPAL_NAME VARCHAR2(100 CHAR),
  CONSTRAINT SPRING_SESSION_PK PRIMARY KEY (PRIMARY_ID)
);

CREATE UNIQUE INDEX SPRING_SESSION_IX1 ON SPRING_SESSION (SESSION_ID);
CREATE INDEX SPRING_SESSION_IX2 ON SPRING_SESSION (EXPIRY_TIME);
CREATE INDEX SPRING_SESSION_IX3 ON SPRING_SESSION (PRINCIPAL_NAME);

CREATE TABLE SPRING_SESSION_ATTRIBUTES (
  SESSION_PRIMARY_ID CHAR(36) NOT NULL,
  ATTRIBUTE_NAME VARCHAR2(200 CHAR) NOT NULL,
  ATTRIBUTE_BYTES BLOB NOT NULL,
  CONSTRAINT SPRING_SESSION_ATTRIBUTES_PK PRIMARY KEY (SESSION_PRIMARY_ID, ATTRIBUTE_NAME),
  CONSTRAINT SPRING_SESSION_ATTRIBUTES_FK FOREIGN KEY (SESSION_PRIMARY_ID) REFERENCES SPRING_SESSION(PRIMARY_ID) ON DELETE CASCADE
);

CREATE TABLE "persistent_logins" (
  "username" VARCHAR(64) NOT NULL,
  "series" VARCHAR(64) NOT NULL,
  "token" VARCHAR(64) NOT NULL,
  "last_used" DATE NOT NULL
);

CREATE TABLE "ca_province" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "code" VARCHAR(200) DEFAULT NULL
) ;

CREATE TABLE "ca_city" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "code" VARCHAR(200) DEFAULT NULL,
  "provinceId" INT DEFAULT NULL
);

CREATE TABLE "ca_district" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000) ,
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "code" VARCHAR(200) DEFAULT NULL,
  "cityId" INT DEFAULT NULL
);

CREATE TABLE "ca_file" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000) ,
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "size" INT DEFAULT NULL,
  "md5" VARCHAR(200) DEFAULT NULL,
  "type" VARCHAR(200) DEFAULT NULL,
  "url" VARCHAR(4000) DEFAULT NULL,
  "folderId" INT DEFAULT NULL
);

CREATE TABLE "ca_folder" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000) ,
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "parentFolderId" INT DEFAULT NULL
) ;

CREATE TABLE "ca_smsConfig" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "url" VARCHAR(200) DEFAULT NULL,
  "username" VARCHAR(200) DEFAULT NULL,
  "password" VARCHAR(200) DEFAULT NULL
);

CREATE TABLE "ca_smsTemplate" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "sign" VARCHAR(200) DEFAULT NULL,
  "template" VARCHAR(200) DEFAULT NULL,
  "smsConfigId" INT DEFAULT NULL
);

CREATE TABLE "ca_weixinConfig" (
  "id" INT NOT NULL PRIMARY KEY,
  "name" VARCHAR(200) NOT NULL,
  "fullTextBody" VARCHAR(4000),
  "createdDate" DATE NOT NULL,
  "lastModifiedDate" DATE DEFAULT NULL,
  "appId" VARCHAR(200) DEFAULT NULL,
  "appSecret" VARCHAR(200) DEFAULT NULL,
  "token" VARCHAR(200) DEFAULT NULL,
  "encodingAESKey" VARCHAR(200) DEFAULT NULL,
  "accessToken" VARCHAR(200) DEFAULT NULL,
  "expiresIn" DATE DEFAULT NULL,
  "enable" INT DEFAULT NULL,
  "log" VARCHAR(4000),
  "jsapiTicket" VARCHAR(400) DEFAULT NULL
);

CREATE INDEX "ca_userRoleLine_ftidx" ON "ca_userRoleLine" ("fullTextBody");
CREATE INDEX "ca_roleResourceLine_ftidx" ON "ca_roleResourceLine" ("fullTextBody");
CREATE INDEX "spring_role_ftidx" ON "spring_role" ("fullTextBody");
CREATE INDEX "spring_resource_ftidx" ON "spring_resource" ("fullTextBody");
CREATE INDEX "spring_user_ftidx" ON "spring_user" ("fullTextBody");
CREATE INDEX "ca_weixinConfig_ftidx" ON "ca_weixinConfig" ("fullTextBody");
CREATE INDEX "ca_smsTemplate_ftidx" ON "ca_smsTemplate" ("fullTextBody");
CREATE INDEX "ca_smsConfig_ftidx" ON "ca_smsConfig" ("fullTextBody");
CREATE INDEX "ca_folder_ftidx" ON "ca_folder" ("fullTextBody");
CREATE INDEX "ca_file_ftidx" ON "ca_file" ("fullTextBody");
CREATE INDEX "ca_district_ftidx" ON "ca_district" ("fullTextBody");
CREATE INDEX "ca_city_ftidx" ON "ca_city" ("fullTextBody");
CREATE INDEX "ca_province_ftidx" ON "ca_province" ("fullTextBody");
CREATE INDEX "ca_tableFormBuilder_ftidx" ON "ca_tableFormBuilder" ("fullTextBody");
CREATE INDEX "ca_sys_moduleLine_ftidx" ON "ca_sys_moduleLine" ("fullTextBody");
CREATE INDEX "ca_sys_module_ftidx" ON "ca_sys_module" ("fullTextBody");

create sequence "ca_meta_sequence_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_meta_table_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_meta_column_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_meta_index_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_meta_index_line_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_meta_table_relation_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "spring_user_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "spring_resource_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "spring_role_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_roleResourceLine_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_userRoleLine_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_weixinConfig_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_smsTemplate_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_smsConfig_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_folder_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_file_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_district_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_city_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_province_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_tableFormBuilder_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_sys_module_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;
create sequence "ca_sys_moduleLine_id" minvalue 1 nomaxvalue increment by 1 start with 10000 nocache;

create or replace trigger "ca_meta_sequence_tg_insert" before insert on "ca_meta_sequence" for each row
begin
  select "ca_meta_sequence_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_meta_table_tg_insert" before insert on "ca_meta_table" for each row
begin
  select "ca_meta_table_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_meta_column_tg_insert" before insert on "ca_meta_column" for each row
begin
  select "ca_meta_column_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_meta_index_tg_insert" before insert on "ca_meta_index" for each row
begin
  select "ca_meta_index_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_meta_index_line_tg_insert" before insert on "ca_meta_index_line" for each row
begin
  select "ca_meta_index_line_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_meta_t_r_tg_insert" before insert on "ca_meta_table_relation" for each row
begin
  select "ca_meta_table_relation_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "spring_user_tg_insert" before insert on "spring_user" for each row
begin
  select "spring_user_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "spring_resource_tg_insert" before insert on "spring_resource" for each row
begin
  select "spring_resource_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "spring_role_tg_insert" before insert on "spring_role" for each row
begin
  select "spring_role_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_roleResourceLine_tg_insert" before insert on "ca_roleResourceLine" for each row
begin
  select "ca_roleResourceLine_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_userRoleLine_tg_insert" before insert on "ca_userRoleLine" for each row
begin
  select "ca_userRoleLine_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_weixinConfig_tg_insert" before insert on "ca_weixinConfig" for each row
begin
  select "ca_weixinConfig_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_smsTemplate_tg_insert" before insert on "ca_smsTemplate" for each row
begin
  select "ca_smsTemplate_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_smsConfig_tg_insert" before insert on "ca_smsConfig" for each row
begin
  select "ca_smsConfig_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_folder_tg_insert" before insert on "ca_folder" for each row
begin
  select "ca_folder_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_file_tg_insert" before insert on "ca_file" for each row
begin
  select "ca_file_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_district_tg_insert" before insert on "ca_district" for each row
begin
  select "ca_district_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_city_tg_insert" before insert on "ca_city" for each row
begin
  select "ca_city_id".nextval into:new."id" from dual;
end;
/


create or replace trigger "ca_province_tg_insert" before insert on "ca_province" for each row
begin
  select "ca_province_id".nextval into:new."id" from dual;
end;
/


create or replace trigger "ca_tableFormBuilder_tg_insert" before insert on "ca_tableFormBuilder" for each row
begin
  select "ca_tableFormBuilder_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_sys_module_tg_insert" before insert on "ca_sys_module" for each row
begin
  select "ca_sys_module_id".nextval into:new."id" from dual;
end;
/

create or replace trigger "ca_sys_moduleLine_tg_insert" before insert on "ca_sys_moduleLine" for each row
begin
  select "ca_sys_moduleLine_id".nextval into:new."id" from dual;
end;
/

