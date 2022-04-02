-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： db
-- 生成日期： 2022-01-11 09:17:51
-- 服务器版本： 8.0.23
-- PHP 版本： 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `crudapi`
--

-- --------------------------------------------------------

--
-- 表的结构 `ca_meta_column`
--

CREATE TABLE `ca_meta_column` (
  `id` bigint NOT NULL,
  `autoIncrement` bit(1) DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `dataType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int DEFAULT NULL,
  `indexName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexStorage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insertable` bit(1) DEFAULT NULL,
  `lastModifiedDate` datetime(6) DEFAULT NULL,
  `length` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nullable` bit(1) DEFAULT NULL,
  `precision` int DEFAULT NULL,
  `queryable` bit(1) DEFAULT NULL,
  `scale` int DEFAULT NULL,
  `seqId` bigint DEFAULT NULL,
  `unsigned` bit(1) DEFAULT NULL,
  `updatable` bit(1) DEFAULT NULL,
  `displayable` bit(1) DEFAULT NULL,
  `systemable` bit(1) DEFAULT NULL,
  `tableId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ca_meta_column`
--

INSERT INTO `ca_meta_column` (`id`, `autoIncrement`, `caption`, `createdDate`, `dataType`, `defaultValue`, `description`, `displayOrder`, `indexName`, `indexStorage`, `indexType`, `insertable`, `lastModifiedDate`, `length`, `name`, `nullable`, `precision`, `queryable`, `scale`, `seqId`, `unsigned`, `updatable`, `displayable`, `systemable`, `tableId`) VALUES
(432, b'1', '编号', '2021-09-02 15:30:37.086000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-09-06 17:30:59.446000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'0', b'0', 62),
(433, b'0', '名称', '2021-09-02 15:30:37.086000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-09-06 17:30:59.446000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', b'0', 62),
(434, b'0', '全文索引', '2021-09-02 15:30:37.086000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-09-06 17:30:59.446000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 62),
(435, b'0', '创建时间', '2021-09-02 15:30:37.086000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-09-06 17:30:59.446000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 62),
(436, b'0', '修改时间', '2021-09-02 15:30:37.086000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-09-06 17:30:59.446000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 62),
(437, b'1', '编号', '2021-09-02 15:34:04.947000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-09-02 15:34:04.947000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'0', b'0', 63),
(438, b'0', '名称', '2021-09-02 15:34:04.947000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-09-02 15:34:04.947000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', b'0', 63),
(439, b'0', '全文索引', '2021-09-02 15:34:04.947000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-09-02 15:34:04.947000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 63),
(440, b'0', '创建时间', '2021-09-02 15:34:04.947000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-09-02 15:34:04.947000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 63),
(441, b'0', '修改时间', '2021-09-02 15:34:04.947000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-09-02 15:34:04.947000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 63),
(442, b'0', '模块编号', '2021-09-02 15:34:04.947000', 'BIGINT', NULL, '模块编号', 5, NULL, NULL, NULL, b'1', '2021-09-02 15:34:04.947000', 20, 'moduleId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 63),
(443, b'0', '表编号', '2021-09-02 15:34:04.947000', 'BIGINT', NULL, '表编号', 6, NULL, NULL, NULL, b'1', '2021-09-02 15:34:04.947000', 20, 'tableId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 63),
(461, b'1', '编号', '2021-09-02 15:59:07.090000', 'BIGINT', NULL, '编号', 0, NULL, NULL, 'PRIMARY', b'1', '2021-09-06 16:20:28.739000', NULL, 'id', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(462, b'0', '中文名称', '2021-09-02 15:59:07.090000', 'VARCHAR', NULL, '中文名称', 2, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', 255, 'caption', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'1', b'0', 66),
(463, b'0', '是否创建物理表', '2021-09-02 15:59:07.090000', 'BOOL', NULL, '是否创建物理表', 3, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', NULL, 'createPhysicalTable', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(464, b'0', '创建时间', '2021-09-02 15:59:07.090000', 'DATETIME', NULL, '创建时间', 4, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', 6, 'createdDate', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(465, b'0', '描述', '2021-09-02 15:59:07.090000', 'VARCHAR', NULL, '描述', 5, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', 255, 'description', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(466, b'0', '引擎', '2021-09-02 15:59:07.090000', 'VARCHAR', NULL, '引擎', 6, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', 255, 'engine', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(467, b'0', '修改时间', '2021-09-02 15:59:07.090000', 'DATETIME', NULL, '修改时间', 7, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', 6, 'lastModifiedDate', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(468, b'0', '英文名称', '2021-09-02 15:59:07.090000', 'VARCHAR', NULL, '英文名称', 1, 'uq_bsm_table_name', 'BTREE', 'UNIQUE', b'1', '2021-09-06 16:20:28.739000', 255, 'name', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'1', b'0', 66),
(469, b'0', '英文复数', '2021-09-02 15:59:07.090000', 'VARCHAR', NULL, '英文复数', 8, 'uq_bsm_table_plural_name', 'BTREE', 'UNIQUE', b'1', '2021-09-06 16:20:28.739000', 255, 'pluralName', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(470, b'0', '物理表名称', '2021-09-02 15:59:07.090000', 'VARCHAR', NULL, '物理表名称', 9, 'uq_bsm_table_table_name', 'BTREE', 'UNIQUE', b'1', '2021-09-06 16:20:28.739000', 255, 'tableName', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(471, b'0', '是否系统表', '2021-09-02 15:59:07.090000', 'BOOL', NULL, '是否系统表', 10, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', NULL, 'systemable', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(473, b'0', '是否只读', '2021-09-06 16:10:31.028000', 'BOOL', NULL, '是否只读', 11, NULL, NULL, NULL, b'1', '2021-09-06 16:20:28.739000', NULL, 'readOnly', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 66),
(489, b'1', '编号', '2021-11-03 11:23:02.177000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-11-03 11:23:02.177000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'0', b'0', 69),
(490, b'0', '名称', '2021-11-03 11:23:02.177000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-11-03 11:23:02.177000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', b'0', 69),
(491, b'0', '全文索引', '2021-11-03 11:23:02.177000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-11-03 11:23:02.177000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 69),
(492, b'0', '创建时间', '2021-11-03 11:23:02.177000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-11-03 11:23:02.177000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 69),
(493, b'0', '修改时间', '2021-11-03 11:23:02.177000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-11-03 11:23:02.177000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'0', b'0', 69),
(494, b'0', '类型', '2021-11-03 11:23:02.177000', 'VARCHAR', NULL, '类型', 5, NULL, NULL, NULL, b'1', '2021-11-03 11:23:02.177000', 200, 'type', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 69),
(495, b'0', '设备', '2021-11-03 11:23:02.177000', 'VARCHAR', NULL, '设备', 6, NULL, NULL, NULL, b'1', '2021-11-03 11:23:02.177000', 200, 'device', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 69),
(496, b'0', '内容', '2021-11-03 11:23:02.177000', 'LONGTEXT', NULL, '内容', 7, NULL, NULL, NULL, b'1', '2021-11-03 11:23:02.177000', NULL, 'body', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 69),
(497, b'0', '表编号', '2021-11-03 11:23:02.177000', 'BIGINT', NULL, '表编号', 8, NULL, NULL, NULL, b'1', '2021-11-03 11:23:02.177000', 20, 'tableId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', b'0', 69);

-- --------------------------------------------------------

--
-- 表的结构 `ca_meta_index`
--

CREATE TABLE `ca_meta_index` (
  `id` bigint NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexStorage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModifiedDate` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tableId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ca_meta_index`
--

INSERT INTO `ca_meta_index` (`id`, `caption`, `createdDate`, `description`, `indexStorage`, `indexType`, `lastModifiedDate`, `name`, `tableId`) VALUES
(12, '表页面类型', '2021-11-03 11:23:02.222000', '表页面类型唯一', 'BTREE', 'UNIQUE', '2021-11-03 11:23:02.222000', 'tableTypeIndex', 69);

-- --------------------------------------------------------

--
-- 表的结构 `ca_meta_index_line`
--

CREATE TABLE `ca_meta_index_line` (
  `id` bigint NOT NULL,
  `columnId` bigint DEFAULT NULL,
  `indexId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ca_meta_index_line`
--

INSERT INTO `ca_meta_index_line` (`id`, `columnId`, `indexId`) VALUES
(20, 494, 12),
(21, 497, 12);

-- --------------------------------------------------------

--
-- 表的结构 `ca_meta_sequence`
--

CREATE TABLE `ca_meta_sequence` (
  `id` bigint NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `currentTime` bit(1) DEFAULT NULL,
  `cycle` bit(1) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incrementBy` bigint DEFAULT NULL,
  `lastModifiedDate` datetime(6) DEFAULT NULL,
  `maxValue` bigint DEFAULT NULL,
  `minValue` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextValue` bigint DEFAULT NULL,
  `sequenceType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ca_meta_sequence`
--

INSERT INTO `ca_meta_sequence` (`id`, `caption`, `createdDate`, `currentTime`, `cycle`, `description`, `format`, `incrementBy`, `lastModifiedDate`, `maxValue`, `minValue`, `name`, `nextValue`, `sequenceType`) VALUES
(1, '角色编码', '2021-02-01 11:17:34.807000', b'0', NULL, NULL, 'ROLE_%09d', 1, '2021-02-05 17:53:05.432000', 999999999, 1, 'roleCode', 8, 'STRING'),
(2, '资源编码', '2021-02-02 10:06:15.140000', b'0', NULL, NULL, 'RESOURCE_%09d', 1, '2021-02-02 10:06:15.140000', 999999999, 1, 'resourceCode', 8, 'STRING'),
(3, '会员流水号', '2021-07-25 21:24:48.973000', b'0', NULL, NULL, '%018d', 1, '2021-07-25 21:28:07.858000', 9999999999, 1, 'membershipCode', 17, 'STRING');

-- --------------------------------------------------------

--
-- 表的结构 `ca_meta_table`
--

CREATE TABLE `ca_meta_table` (
  `id` bigint NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createPhysicalTable` bit(1) DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModifiedDate` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pluralName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tableName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systemable` bit(1) DEFAULT NULL,
  `readOnly` bit(1) DEFAULT NULL COMMENT '是否只读'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ca_meta_table`
--

INSERT INTO `ca_meta_table` (`id`, `caption`, `createPhysicalTable`, `createdDate`, `description`, `engine`, `lastModifiedDate`, `name`, `pluralName`, `tableName`, `systemable`, `readOnly`) VALUES
(62, '模块', b'1', '2021-09-02 15:30:37.082000', '', 'INNODB', '2021-09-06 17:30:59.436000', 'module', 'modules', 'ca_sys_module', b'1', b'0'),
(63, '模块行', b'1', '2021-09-02 15:34:04.944000', '', 'INNODB', '2021-09-02 15:34:04.944000', 'moduleLine', 'moduleLines', 'ca_sys_moduleLine', b'1', b'0'),
(66, '表', b'1', '2021-09-02 15:59:07.087000', '', 'INNODB', '2021-09-06 16:20:28.729000', 'table', 'tables', 'ca_meta_table', b'1', b'1'),
(69, '表页面', b'1', '2021-11-03 11:23:02.166000', '', 'INNODB', '2021-11-03 11:23:02.166000', 'tableFormBuilder', 'tableFormBuilders', 'ca_tableFormBuilder', b'1', b'0');

-- --------------------------------------------------------

--
-- 表的结构 `ca_meta_table_relation`
--

CREATE TABLE `ca_meta_table_relation` (
  `id` bigint NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModifiedDate` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromColumnId` bigint DEFAULT NULL,
  `fromTableId` bigint DEFAULT NULL,
  `toColumnId` bigint DEFAULT NULL,
  `toTableId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ca_meta_table_relation`
--

INSERT INTO `ca_meta_table_relation` (`id`, `caption`, `createdDate`, `description`, `lastModifiedDate`, `name`, `relationType`, `fromColumnId`, `fromTableId`, `toColumnId`, `toTableId`) VALUES
(22, '模块行', '2021-09-02 16:03:43.184000', NULL, '2021-09-02 16:03:43.184000', 'moduleLines', 'OneToMany', 432, 62, 442, 63),
(23, '表', '2021-09-02 16:04:27.912000', NULL, '2021-09-02 16:04:27.912000', 'table', 'ManyToOne', 443, 63, 461, 66);

-- --------------------------------------------------------

--
-- 表的结构 `ca_sys_module`
--

CREATE TABLE `ca_sys_module` (
  `id` bigint UNSIGNED NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '全文索引',
  `createdDate` datetime NOT NULL COMMENT '创建时间',
  `lastModifiedDate` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模块';

-- --------------------------------------------------------

--
-- 表的结构 `ca_sys_moduleLine`
--

CREATE TABLE `ca_sys_moduleLine` (
  `id` bigint UNSIGNED NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '全文索引',
  `createdDate` datetime NOT NULL COMMENT '创建时间',
  `lastModifiedDate` datetime DEFAULT NULL COMMENT '修改时间',
  `moduleId` bigint DEFAULT NULL COMMENT '模块编号',
  `tableId` bigint DEFAULT NULL COMMENT '表编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模块行';

-- --------------------------------------------------------

--
-- 表的结构 `ca_tableFormBuilder`
--

CREATE TABLE `ca_tableFormBuilder` (
  `id` bigint UNSIGNED NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '全文索引',
  `createdDate` datetime NOT NULL COMMENT '创建时间',
  `lastModifiedDate` datetime DEFAULT NULL COMMENT '修改时间',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `device` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备',
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `tableId` bigint DEFAULT NULL COMMENT '表编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='表页面';

--
-- 转储表的索引
--

--
-- 表的索引 `ca_meta_column`
--
ALTER TABLE `ca_meta_column`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_column_name` (`tableId`,`name`),
  ADD UNIQUE KEY `uq_bsm_column_index_name` (`tableId`,`indexName`),
  ADD KEY `fk_bsm_column_seq_id` (`seqId`);

--
-- 表的索引 `ca_meta_index`
--
ALTER TABLE `ca_meta_index`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_index_name` (`tableId`,`name`);

--
-- 表的索引 `ca_meta_index_line`
--
ALTER TABLE `ca_meta_index_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bsm_index_line_column_id` (`columnId`),
  ADD KEY `fk_bsm_index_line_index_id` (`indexId`);

--
-- 表的索引 `ca_meta_sequence`
--
ALTER TABLE `ca_meta_sequence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_sequence_name` (`name`);

--
-- 表的索引 `ca_meta_table`
--
ALTER TABLE `ca_meta_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_table_name` (`name`),
  ADD UNIQUE KEY `uq_bsm_table_plural_name` (`pluralName`),
  ADD UNIQUE KEY `uq_bsm_table_table_name` (`tableName`);

--
-- 表的索引 `ca_meta_table_relation`
--
ALTER TABLE `ca_meta_table_relation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_ca_table_relation` (`fromTableId`,`toTableId`,`relationType`,`fromColumnId`,`toColumnId`) USING BTREE,
  ADD KEY `fk_bsm_table_relation_from_table_id` (`fromTableId`),
  ADD KEY `fk_bsm_table_relation_to_table_id` (`toTableId`),
  ADD KEY `fk_bsm_table_relation_from_column_id` (`fromColumnId`),
  ADD KEY `fk_bsm_table_relation_to_column_id` (`toColumnId`);

--
-- 表的索引 `ca_sys_module`
--
ALTER TABLE `ca_sys_module`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_sys_module` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- 表的索引 `ca_sys_moduleLine`
--
ALTER TABLE `ca_sys_moduleLine`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_sys_moduleLine` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- 表的索引 `ca_tableFormBuilder`
--
ALTER TABLE `ca_tableFormBuilder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tableTypeIndex` (`type`,`tableId`) USING BTREE COMMENT '表页面类型';
ALTER TABLE `ca_tableFormBuilder` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ca_meta_column`
--
ALTER TABLE `ca_meta_column`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_meta_index`
--
ALTER TABLE `ca_meta_index`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_meta_index_line`
--
ALTER TABLE `ca_meta_index_line`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_meta_sequence`
--
ALTER TABLE `ca_meta_sequence`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_meta_table`
--
ALTER TABLE `ca_meta_table`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_meta_table_relation`
--
ALTER TABLE `ca_meta_table_relation`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_sys_module`
--
ALTER TABLE `ca_sys_module`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_sys_moduleLine`
--
ALTER TABLE `ca_sys_moduleLine`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=10000;

--
-- 使用表AUTO_INCREMENT `ca_tableFormBuilder`
--
ALTER TABLE `ca_tableFormBuilder`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号';

--
-- 限制导出的表
--

--
-- 限制表 `ca_meta_column`
--
ALTER TABLE `ca_meta_column`
  ADD CONSTRAINT `fk_bsm_column_seq_id` FOREIGN KEY (`seqId`) REFERENCES `ca_meta_sequence` (`id`),
  ADD CONSTRAINT `fk_bsm_column_table_id` FOREIGN KEY (`tableId`) REFERENCES `ca_meta_table` (`id`);

--
-- 限制表 `ca_meta_index`
--
ALTER TABLE `ca_meta_index`
  ADD CONSTRAINT `fk_bsm_index_table_id` FOREIGN KEY (`tableId`) REFERENCES `ca_meta_table` (`id`);

--
-- 限制表 `ca_meta_index_line`
--
ALTER TABLE `ca_meta_index_line`
  ADD CONSTRAINT `fk_bsm_index_line_column_id` FOREIGN KEY (`columnId`) REFERENCES `ca_meta_column` (`id`),
  ADD CONSTRAINT `fk_bsm_index_line_index_id` FOREIGN KEY (`indexId`) REFERENCES `ca_meta_index` (`id`) ON DELETE CASCADE;

--
-- 限制表 `ca_meta_table_relation`
--
ALTER TABLE `ca_meta_table_relation`
  ADD CONSTRAINT `fk_bsm_table_relation_from_column_id` FOREIGN KEY (`fromColumnId`) REFERENCES `ca_meta_column` (`id`),
  ADD CONSTRAINT `fk_bsm_table_relation_from_table_id` FOREIGN KEY (`fromTableId`) REFERENCES `ca_meta_table` (`id`),
  ADD CONSTRAINT `fk_bsm_table_relation_to_column_id` FOREIGN KEY (`toColumnId`) REFERENCES `ca_meta_column` (`id`),
  ADD CONSTRAINT `fk_bsm_table_relation_to_table_id` FOREIGN KEY (`toTableId`) REFERENCES `ca_meta_table` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
