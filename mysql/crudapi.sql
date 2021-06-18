-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 18, 2021 at 03:23 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudapiold`
--

-- --------------------------------------------------------

--
-- Table structure for table `ca_city`
--

CREATE TABLE `ca_city` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinceId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_city`
--

INSERT INTO `ca_city` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `code`, `provinceId`) VALUES
(19, '南京', NULL, '2021-02-08 17:02:05', NULL, NULL, 5),
(20, '淮安', NULL, '2021-02-08 17:02:06', NULL, NULL, 5),
(21, '徐州', NULL, '2021-02-08 17:02:06', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ca_district`
--

CREATE TABLE `ca_district` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cityId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_district`
--

INSERT INTO `ca_district` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `code`, `cityId`) VALUES
(12, '雨花台', NULL, '2021-02-08 17:02:05', NULL, NULL, 19),
(13, '江宁', NULL, '2021-02-08 17:02:05', NULL, NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `ca_file`
--

CREATE TABLE `ca_file` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `md5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folderId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_folder`
--

CREATE TABLE `ca_folder` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_meta_column`
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
  `systemable` bit(1) DEFAULT NULL,
  `tableId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_meta_column`
--

INSERT INTO `ca_meta_column` (`id`, `autoIncrement`, `caption`, `createdDate`, `dataType`, `defaultValue`, `description`, `displayOrder`, `indexName`, `indexStorage`, `indexType`, `insertable`, `lastModifiedDate`, `length`, `name`, `nullable`, `precision`, `queryable`, `scale`, `seqId`, `unsigned`, `updatable`, `systemable`, `tableId`) VALUES
(1, b'1', '编号', '2020-12-23 17:06:29.211000', 'BIGINT', NULL, '编号', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-08 16:29:53.191000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 1),
(2, b'0', '名称', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 1),
(3, b'0', '全文索引', '2020-12-23 17:06:29.211000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-08 16:29:53.191000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 1),
(4, b'0', '创建时间', '2020-12-23 17:06:29.211000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-08 16:29:53.191000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 1),
(5, b'0', '修改时间', '2020-12-23 17:06:29.211000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-08 16:29:53.191000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 1),
(6, b'0', 'OPENID', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, 'OPENID', 5, 'uq_spring_user_openid', NULL, 'UNIQUE', b'1', '2021-02-08 16:29:53.191000', 50, 'openId', b'1', NULL, b'0', NULL, NULL, b'0', b'1', b'0', 1),
(7, b'0', '用户名', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, '用户名', 6, 'uq_spring_user_username', NULL, 'UNIQUE', b'1', '2021-02-08 16:29:53.191000', 50, 'username', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(8, b'0', '真实姓名', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, '真实姓名', 7, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 200, 'realname', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(9, b'0', '手机', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, '手机', 8, 'uq_spring_user_mobile', NULL, 'UNIQUE', b'1', '2021-02-08 16:29:53.191000', 20, 'mobile', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(10, b'0', '邮箱', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, '邮箱', 9, 'uq_spring_user_email', NULL, 'UNIQUE', b'1', '2021-02-08 16:29:53.191000', 200, 'email', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(11, b'0', '密码', '2020-12-23 17:06:29.211000', 'PASSWORD', NULL, '密码', 10, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 500, 'password', b'0', NULL, b'0', NULL, NULL, b'0', b'1', b'0', 1),
(12, b'0', '明文密码', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, '明文密码', 11, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 200, 'cleartextPwd', b'1', NULL, b'0', NULL, NULL, b'0', b'1', b'0', 1),
(13, b'0', 'TOKEN', '2020-12-23 17:06:29.211000', 'VARCHAR', NULL, 'TOKEN', 12, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 200, 'token', b'1', NULL, b'0', NULL, NULL, b'0', b'1', b'0', 1),
(14, b'0', '启用', '2020-12-23 17:06:29.211000', 'BOOL', 'true', '启用', 13, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 10, 'enabled', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(15, b'0', '账号没有过期', '2020-12-23 17:06:29.211000', 'BOOL', 'true', '账号没有过期', 14, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 10, 'accountNonExpired', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(16, b'0', '账号没有锁定', '2020-12-23 17:06:29.211000', 'BOOL', 'true', '账号没有锁定', 15, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 10, 'accountNonLocked', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(17, b'0', '凭证没有过期', '2020-12-23 17:06:29.211000', 'BOOL', 'true', '凭证没有过期', 16, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 10, 'credentialsNonExpired', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(20, b'1', '编号', '2021-02-01 10:51:21.334000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-05 17:45:36.256000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 2),
(21, b'0', '名称', '2021-02-01 10:51:21.334000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-05 17:45:36.256000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 2),
(22, b'0', '全文索引', '2021-02-01 10:51:21.334000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-05 17:45:36.256000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 2),
(23, b'0', '创建时间', '2021-02-01 10:51:21.334000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-05 17:45:36.256000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 2),
(24, b'0', '修改时间', '2021-02-01 10:51:21.334000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-05 17:45:36.256000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 2),
(25, b'0', '编码', '2021-02-01 10:51:21.334000', 'VARCHAR', NULL, '编码', 5, 'uq_spring_role_code', NULL, 'UNIQUE', b'1', '2021-02-05 17:45:36.256000', 200, 'code', b'0', NULL, b'1', NULL, 1, b'0', b'1', b'0', 2),
(26, b'0', '备注', '2021-02-01 10:51:21.334000', 'TEXT', NULL, '备注', 6, NULL, NULL, NULL, b'1', '2021-02-05 17:45:36.256000', NULL, 'remark', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 2),
(27, b'1', '编号', '2021-02-01 10:54:05.671000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-05 17:52:19.036000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 3),
(28, b'0', '名称', '2021-02-01 10:54:05.671000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-05 17:52:19.036000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 3),
(29, b'0', '全文索引', '2021-02-01 10:54:05.671000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-05 17:52:19.036000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 3),
(30, b'0', '创建时间', '2021-02-01 10:54:05.671000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-05 17:52:19.036000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 3),
(31, b'0', '修改时间', '2021-02-01 10:54:05.671000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-05 17:52:19.036000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 3),
(33, b'0', 'URL表达式', '2021-02-01 10:54:05.671000', 'VARCHAR', NULL, 'URL表达式', 6, 'uq_spring_resource_url', NULL, 'UNIQUE', b'1', '2021-02-05 17:52:19.036000', 200, 'url', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 3),
(34, b'0', '备注', '2021-02-01 10:54:05.671000', 'TEXT', NULL, '备注', 8, NULL, NULL, NULL, b'1', '2021-02-05 17:52:19.036000', NULL, 'remark', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 3),
(35, b'1', '编号', '2021-02-01 11:11:15.313000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-01 11:11:15.313000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 4),
(36, b'0', '名称', '2021-02-01 11:11:15.313000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-01 11:11:15.313000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 4),
(37, b'0', '全文索引', '2021-02-01 11:11:15.313000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-01 11:11:15.313000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 4),
(38, b'0', '创建时间', '2021-02-01 11:11:15.313000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-01 11:11:15.313000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 4),
(39, b'0', '修改时间', '2021-02-01 11:11:15.313000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-01 11:11:15.313000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 4),
(40, b'0', '用户编号', '2021-02-01 11:11:15.313000', 'BIGINT', NULL, '用户编号', 5, NULL, NULL, NULL, b'1', '2021-02-01 11:11:15.313000', 20, 'userId', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 4),
(41, b'0', '角色编号', '2021-02-01 11:11:15.313000', 'BIGINT', NULL, '角色编号', 6, NULL, NULL, NULL, b'1', '2021-02-01 11:11:15.313000', 20, 'roleId', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 4),
(42, b'1', '编号', '2021-02-01 11:27:24.851000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-03 16:43:36.326000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 5),
(43, b'0', '名称', '2021-02-01 11:27:24.851000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-03 16:43:36.326000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 5),
(44, b'0', '全文索引', '2021-02-01 11:27:24.851000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-03 16:43:36.326000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 5),
(45, b'0', '创建时间', '2021-02-01 11:27:24.851000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-03 16:43:36.326000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 5),
(46, b'0', '修改时间', '2021-02-01 11:27:24.851000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-03 16:43:36.326000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 5),
(47, b'0', '角色编号', '2021-02-01 11:27:24.851000', 'BIGINT', NULL, '角色编号', 5, NULL, NULL, NULL, b'1', '2021-02-03 16:43:36.326000', 20, 'roleId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 5),
(48, b'0', '资源编号', '2021-02-01 11:27:24.851000', 'BIGINT', NULL, '资源编号', 6, NULL, NULL, NULL, b'1', '2021-02-03 16:43:36.326000', 20, 'resourceId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 5),
(56, b'0', '编码', '2021-02-02 10:06:53.176000', 'VARCHAR', NULL, '编码', 5, 'uq_spring_resource_code', NULL, 'UNIQUE', b'1', '2021-02-05 17:52:19.036000', 200, 'code', b'1', NULL, b'1', NULL, 2, b'0', b'1', b'0', 3),
(58, b'0', '操作', '2021-02-03 16:44:10.071000', 'VARCHAR', NULL, '操作', 7, NULL, NULL, NULL, b'1', '2021-02-05 17:52:19.036000', 200, 'action', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 3),
(155, b'1', '编号', '2021-02-07 11:57:10.131000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-07 15:25:57.167000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 19),
(156, b'0', '名称', '2021-02-07 11:57:10.131000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-07 15:25:57.167000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 19),
(157, b'0', '全文索引', '2021-02-07 11:57:10.131000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-07 15:25:57.167000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 19),
(158, b'0', '创建时间', '2021-02-07 11:57:10.131000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-07 15:25:57.167000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 19),
(159, b'0', '修改时间', '2021-02-07 11:57:10.131000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-07 15:25:57.167000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 19),
(160, b'0', '编码', '2021-02-07 11:57:10.131000', 'VARCHAR', NULL, '编码', 5, NULL, NULL, NULL, b'1', '2021-02-07 15:25:57.167000', 200, 'code', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 19),
(161, b'1', '编号', '2021-02-07 11:59:06.948000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-08 16:21:31.011000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 20),
(162, b'0', '名称', '2021-02-07 11:59:06.948000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-08 16:21:31.011000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 20),
(163, b'0', '全文索引', '2021-02-07 11:59:06.948000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-08 16:21:31.011000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 20),
(164, b'0', '创建时间', '2021-02-07 11:59:06.948000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-08 16:21:31.011000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 20),
(165, b'0', '修改时间', '2021-02-07 11:59:06.948000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-08 16:21:31.011000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 20),
(166, b'0', '编码', '2021-02-07 11:59:06.948000', 'VARCHAR', NULL, '编码', 5, NULL, NULL, NULL, b'1', '2021-02-08 16:21:31.011000', 200, 'code', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 20),
(167, b'0', '省编号', '2021-02-07 11:59:06.948000', 'BIGINT', NULL, '省编号', 6, NULL, NULL, NULL, b'1', '2021-02-08 16:21:31.011000', 20, 'provinceId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 20),
(176, b'1', '编号', '2021-02-07 15:25:23.718000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-08 16:22:01.090000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 22),
(177, b'0', '名称', '2021-02-07 15:25:23.718000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-08 16:22:01.090000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 22),
(178, b'0', '全文索引', '2021-02-07 15:25:23.718000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-08 16:22:01.090000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 22),
(179, b'0', '创建时间', '2021-02-07 15:25:23.718000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-08 16:22:01.090000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 22),
(180, b'0', '修改时间', '2021-02-07 15:25:23.718000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-08 16:22:01.090000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 22),
(181, b'0', '编码', '2021-02-07 15:25:23.718000', 'VARCHAR', NULL, '编码', 5, NULL, NULL, NULL, b'1', '2021-02-08 16:22:01.090000', 200, 'code', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 22),
(182, b'0', '市编号', '2021-02-07 15:25:23.718000', 'BIGINT', NULL, '市编号', 6, NULL, NULL, NULL, b'1', '2021-02-08 16:22:01.090000', 20, 'cityId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 22),
(192, b'1', '编号', '2021-02-08 11:09:32.062000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-09 14:33:24.642000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 24),
(193, b'0', '名称', '2021-02-08 11:09:32.062000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-09 14:33:24.642000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 24),
(194, b'0', '全文索引', '2021-02-08 11:09:32.062000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-09 14:33:24.642000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 24),
(195, b'0', '创建时间', '2021-02-08 11:09:32.062000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-09 14:33:24.642000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 24),
(196, b'0', '修改时间', '2021-02-08 11:09:32.062000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-09 14:33:24.642000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 24),
(197, b'0', '大小', '2021-02-08 11:09:32.062000', 'BIGINT', NULL, '大小', 6, NULL, NULL, NULL, b'1', '2021-02-09 14:33:24.642000', 20, 'size', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 24),
(198, b'0', 'MD5', '2021-02-08 11:09:32.062000', 'VARCHAR', NULL, 'MD5', 7, NULL, NULL, NULL, b'1', '2021-02-09 14:33:24.642000', 200, 'md5', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 24),
(199, b'0', '类型', '2021-02-08 11:09:32.062000', 'VARCHAR', NULL, '类型', 8, NULL, NULL, NULL, b'1', '2021-02-09 14:33:24.642000', 200, 'type', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 24),
(218, b'0', '链接', '2021-02-08 16:17:56.520000', 'ATTACHMENT', NULL, '链接', 5, NULL, NULL, NULL, b'1', '2021-02-09 14:33:24.642000', 4000, 'url', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 24),
(219, b'0', '头像文件编号', '2021-02-08 16:27:37.689000', 'BIGINT', NULL, '头像文件编号', 17, NULL, NULL, NULL, b'1', '2021-02-08 16:29:53.191000', 20, 'fileId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 1),
(220, b'1', '编号', '2021-02-09 14:21:40.999000', 'BIGINT', NULL, '主键', 0, NULL, NULL, 'PRIMARY', b'0', '2021-02-09 14:21:40.999000', 20, 'id', b'0', NULL, b'0', NULL, NULL, b'1', b'0', b'1', 34),
(221, b'0', '名称', '2021-02-09 14:21:40.999000', 'VARCHAR', NULL, '名称', 1, NULL, NULL, NULL, b'1', '2021-02-09 14:21:40.999000', 200, 'name', b'0', NULL, b'1', NULL, NULL, b'0', b'1', b'1', 34),
(222, b'0', '全文索引', '2021-02-09 14:21:40.999000', 'TEXT', NULL, '全文索引', 2, 'ft_fulltext_body', NULL, 'FULLTEXT', b'0', '2021-02-09 14:21:40.999000', NULL, 'fullTextBody', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 34),
(223, b'0', '创建时间', '2021-02-09 14:21:40.999000', 'DATETIME', NULL, '创建时间', 3, NULL, NULL, NULL, b'0', '2021-02-09 14:21:40.999000', NULL, 'createdDate', b'0', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 34),
(224, b'0', '修改时间', '2021-02-09 14:21:40.999000', 'DATETIME', NULL, '修改时间', 4, NULL, NULL, NULL, b'0', '2021-02-09 14:21:40.999000', NULL, 'lastModifiedDate', b'1', NULL, b'0', NULL, NULL, b'0', b'0', b'1', 34),
(225, b'0', '父目录编号', '2021-02-09 14:21:40.999000', 'BIGINT', NULL, '父目录编号', 5, NULL, NULL, NULL, b'1', '2021-02-09 14:21:40.999000', 20, 'parentFolderId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 34),
(226, b'0', '目录编号', '2021-02-09 14:33:24.642000', 'BIGINT', NULL, '目录编号', 9, NULL, NULL, NULL, b'1', '2021-02-09 14:33:24.642000', 20, 'folderId', b'1', NULL, b'1', NULL, NULL, b'0', b'1', b'0', 24);

-- --------------------------------------------------------

--
-- Table structure for table `ca_meta_index`
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

-- --------------------------------------------------------

--
-- Table structure for table `ca_meta_index_line`
--

CREATE TABLE `ca_meta_index_line` (
  `id` bigint NOT NULL,
  `columnId` bigint DEFAULT NULL,
  `indexId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_meta_sequence`
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
-- Dumping data for table `ca_meta_sequence`
--

INSERT INTO `ca_meta_sequence` (`id`, `caption`, `createdDate`, `currentTime`, `cycle`, `description`, `format`, `incrementBy`, `lastModifiedDate`, `maxValue`, `minValue`, `name`, `nextValue`, `sequenceType`) VALUES
(1, '角色编码', '2021-02-01 11:17:34.807000', b'0', NULL, NULL, 'ROLE_%09d', 1, '2021-02-05 17:53:05.432000', 999999999, 1, 'roleCode', 8, 'STRING'),
(2, '资源编码', '2021-02-02 10:06:15.140000', b'0', NULL, NULL, 'RESOURCE_%09d', 1, '2021-02-02 10:06:15.140000', 999999999, 1, 'resourceCode', 4, 'STRING');

-- --------------------------------------------------------

--
-- Table structure for table `ca_meta_table`
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
  `tableName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_meta_table`
--

INSERT INTO `ca_meta_table` (`id`, `caption`, `createPhysicalTable`, `createdDate`, `description`, `engine`, `lastModifiedDate`, `name`, `pluralName`, `tableName`) VALUES
(1, '用户', b'1', '2020-12-23 17:06:29.161000', '用户', 'INNODB', '2021-02-08 16:29:53.183000', 'user', 'users', 'spring_user'),
(2, '角色', b'1', '2021-02-01 10:51:21.324000', '角色', 'INNODB', '2021-02-05 17:45:36.227000', 'role', 'roles', 'spring_role'),
(3, '资源', b'1', '2021-02-01 10:54:05.668000', '资源', 'INNODB', '2021-02-05 17:52:19.025000', 'resource', 'resources', 'spring_resource'),
(4, '用户角色行', b'1', '2021-02-01 11:11:15.312000', '用户角色行', 'INNODB', '2021-02-01 11:11:15.312000', 'userRoleLine', 'userRoleLines', 'ca_userRoleLine'),
(5, '角色资源行', b'1', '2021-02-01 11:27:24.848000', '角色资源行', 'INNODB', '2021-02-03 16:43:36.315000', 'roleResourceLine', 'roleResourceLines', 'ca_roleResourceLine'),
(19, '省', b'1', '2021-02-07 11:57:10.121000', '', 'INNODB', '2021-02-07 15:25:57.159000', 'province', 'provinces', 'ca_province'),
(20, '市', b'1', '2021-02-07 11:59:06.946000', '', 'INNODB', '2021-02-08 16:21:31.003000', 'city', 'cities', 'ca_city'),
(22, '区', b'1', '2021-02-07 15:25:23.709000', '', 'INNODB', '2021-02-08 16:22:01.083000', 'district', 'districts', 'ca_district'),
(24, '文件', b'1', '2021-02-08 11:09:32.053000', '', 'INNODB', '2021-02-09 14:33:24.635000', 'file', 'files', 'ca_file'),
(34, '目录', b'1', '2021-02-09 14:21:40.991000', '', 'INNODB', '2021-02-09 14:21:40.991000', 'folder', 'folders', 'ca_folder');

-- --------------------------------------------------------

--
-- Table structure for table `ca_meta_table_relation`
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
-- Dumping data for table `ca_meta_table_relation`
--

INSERT INTO `ca_meta_table_relation` (`id`, `caption`, `createdDate`, `description`, `lastModifiedDate`, `name`, `relationType`, `fromColumnId`, `fromTableId`, `toColumnId`, `toTableId`) VALUES
(1, '角色行', '2021-02-01 11:11:44.048000', '角色行', '2021-02-01 11:13:05.487000', 'roleLines', 'OneToMany', 1, 1, 40, 4),
(2, '角色', '2021-02-01 11:12:22.421000', '角色', '2021-02-01 11:12:22.421000', 'role', 'ManyToOne', 41, 4, 20, 2),
(3, '资源行', '2021-02-01 11:29:19.889000', '资源行', '2021-02-01 11:30:11.780000', 'resourceLines', 'OneToMany', 20, 2, 47, 5),
(4, '资源', '2021-02-01 11:30:41.473000', '资源', '2021-02-01 11:30:41.473000', 'resource', 'ManyToOne', 48, 5, 27, 3),
(5, '城市', '2021-02-07 11:59:30.554000', NULL, '2021-02-07 11:59:30.554000', 'cities', 'OneToMany', 155, 19, 167, 20),
(6, '区', '2021-02-07 15:26:36.647000', NULL, '2021-02-07 15:26:36.647000', 'districts', 'OneToMany', 161, 20, 182, 22),
(7, '头像', '2021-02-08 16:29:32.448000', NULL, '2021-02-08 16:29:32.448000', 'avatar', 'ManyToOne', 219, 1, 192, 24),
(8, '子目录', '2021-02-09 14:23:10.748000', NULL, '2021-02-09 14:23:10.748000', 'childrenFolders', 'OneToMany', 220, 34, 225, 34),
(13, '文件', '2021-02-09 14:33:59.185000', NULL, '2021-02-09 14:33:59.185000', 'files', 'OneToMany', 220, 34, 226, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ca_province`
--

CREATE TABLE `ca_province` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_province`
--

INSERT INTO `ca_province` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `code`) VALUES
(5, '江苏', '江苏', '2021-02-08 17:02:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ca_roleResourceLine`
--

CREATE TABLE `ca_roleResourceLine` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `roleId` bigint DEFAULT NULL,
  `resourceId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_roleResourceLine`
--

INSERT INTO `ca_roleResourceLine` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `roleId`, `resourceId`) VALUES
(2, '物流', NULL, '2021-02-01 13:33:17', NULL, 12, 3),
(3, '产品', NULL, '2021-02-01 13:33:17', NULL, 12, 2),
(4, '退货', NULL, '2021-02-01 13:35:00', NULL, 13, 5),
(5, '订单', NULL, '2021-02-01 13:35:00', NULL, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ca_userRoleLine`
--

CREATE TABLE `ca_userRoleLine` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `userId` bigint NOT NULL,
  `roleId` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_userRoleLine`
--

INSERT INTO `ca_userRoleLine` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `userId`, `roleId`) VALUES
(4, '售前', NULL, '2021-02-01 13:40:34', NULL, 5, 12),
(5, '售后', NULL, '2021-02-01 13:40:09', NULL, 6, 13),
(6, '售后', NULL, '2021-02-01 13:40:54', NULL, 7, 13),
(7, '售前', NULL, '2021-02-01 13:40:54', NULL, 7, 12),
(8, '超级管理员', NULL, '2021-02-01 15:59:10', NULL, 1, 11),
(9, '管理员', NULL, '2021-02-01 15:59:10', NULL, 1, 14),
(10, '普通用户', NULL, '2021-02-01 15:59:10', NULL, 1, 15),
(11, '管理员', NULL, '2021-02-01 15:59:35', NULL, 2, 14),
(12, '普通用户', NULL, '2021-02-01 15:59:35', NULL, 2, 15),
(13, '普通用户', NULL, '2021-02-01 15:59:52', NULL, 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spring_resource`
--

CREATE TABLE `spring_resource` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spring_resource`
--

INSERT INTO `spring_resource` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `url`, `remark`, `code`, `action`) VALUES
(2, '产品', '产品 RESOURCE_1 /api/business/product** * 产品', '2021-02-01 13:32:19', '2021-02-09 15:32:20', '/api/business/product**', '产品', 'RESOURCE_1', '*'),
(3, '物流', '物流 RESOURCE_2 /api/business/express** * 物流', '2021-02-01 13:32:38', '2021-02-09 15:32:05', '/api/business/express**', '物流', 'RESOURCE_2', '*'),
(4, '订单', '订单 RESOURCE_3 /api/business/salesOrders/** * 订单', '2021-02-01 13:34:00', '2021-02-09 15:30:03', '/api/business/salesOrders/**', '订单', 'RESOURCE_3', '*'),
(5, '退货', '退货 RESOURCE_4 /api/business/refundOrders * 退货', '2021-02-01 13:34:17', '2021-02-09 15:31:54', '/api/business/refundOrders', '退货', 'RESOURCE_4', '*');

-- --------------------------------------------------------

--
-- Table structure for table `spring_role`
--

CREATE TABLE `spring_role` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdDate` datetime NOT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spring_role`
--

INSERT INTO `spring_role` (`id`, `name`, `fullTextBody`, `createdDate`, `lastModifiedDate`, `code`, `remark`) VALUES
(11, '超级管理员', '超级管理员 ROLE_SUPER_ADMIN 超级管理员', '2021-02-01 13:28:37', '2021-02-07 14:06:58', 'ROLE_SUPER_ADMIN', '超级管理员'),
(12, '售前', '售前 ROLE_00005 售前', '2021-02-01 13:31:18', '2021-02-01 13:33:17', 'ROLE_00005', '售前'),
(13, '售后', '售后 售后', '2021-02-01 13:35:00', NULL, 'ROLE_00006', '售后'),
(14, '管理员', '管理员 ROLE_ADMIN 管理员', '2021-02-01 15:55:27', '2021-02-01 15:56:04', 'ROLE_ADMIN', '管理员'),
(15, '普通用户', '普通用户 ROLE_USER 普通用户', '2021-02-01 15:55:56', NULL, 'ROLE_USER', '普通用户');

-- --------------------------------------------------------

--
-- Table structure for table `SPRING_SESSION`
--

CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SESSION_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `SPRING_SESSION`
--

INSERT INTO `SPRING_SESSION` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
('b5e288a4-a2cd-4a2e-b9e2-2a0dd6b98197', 'f9440b10-70ab-44af-81b2-515ce3e4996b', 1623983347370, 1623986533932, 3600, 1623990133932, 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

INSERT INTO `SPRING_SESSION_ATTRIBUTES` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
('b5e288a4-a2cd-4a2e-b9e2-2a0dd6b98197', 'SPRING_SECURITY_CONTEXT', 0xaced00057372003d6f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e636f6e746578742e5365637572697479436f6e74657874496d706c00000000000002080200014c000e61757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b78707372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000002080200024c000b63726564656e7469616c737400124c6a6176612f6c616e672f4f626a6563743b4c00097072696e636970616c71007e0004787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c7371007e0004787001737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00067870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000003770400000003737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000002080200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b7870740010524f4c455f53555045525f41444d494e7371007e000e74000a524f4c455f41444d494e7371007e000e740009524f4c455f555345527871007e000d73720038636e2e637275646170692e73656375726974792e636f6d706f6e656e742e436157656241757468656e7469636174696f6e44657461696c7300000000000000010200015a0010696d616765436f646549735269676874787200486f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e61757468656e7469636174696f6e2e57656241757468656e7469636174696f6e44657461696c7300000000000002080200024c000d72656d6f74654164647265737371007e000f4c000973657373696f6e496471007e000f78707400093132372e302e302e3174002461313231666531352d326362352d343530632d393131312d64653264333038343864373201707372001f636e2e637275646170692e73656375726974792e64746f2e5573657244544f00000000000000010200115a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00094c000c636c6561727465787450776471007e000f4c0005656d61696c71007e000f4c000269647400104c6a6176612f6c616e672f4c6f6e673b4c00066d6f62696c6571007e000f4c00046e616d6571007e000f4c00066f70656e496471007e000f4c000870617373776f726471007e000f4c00087265616c6e616d6571007e000f4c00097265736f757263657371007e00094c0005726f6c657371007e00094c0005746f6b656e71007e000f4c0008757365726e616d6571007e000f7870010101017371007e000c0000000377040000000371007e001071007e001271007e001478707400046e756c6c7372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000171007e001f7071007e001f74003c24326124313024523948576f747170587a6d4c4f553061596c466b7175786373306a7137663172614b48486e736266543531674d3954462e3271377174000fe8b685e7baa7e7aea1e79086e591987371007e000c00000000770400000000787371007e000c000000037704000000037372001f636e2e637275646170692e73656375726974792e64746f2e526f6c6544544f00000000000000010200034c0004636f646571007e000f4c0002696471007e001c4c00046e616d6571007e000f7870740010524f4c455f53555045525f41444d494e7371007e0020000000000000000b74000fe8b685e7baa7e7aea1e79086e591987371007e002774000a524f4c455f41444d494e7371007e0020000000000000000e740009e7aea1e79086e591987371007e0027740009524f4c455f555345527371007e0020000000000000000f74000ce699aee9809ae794a8e688b77871007e001f74000a737570657261646d696e);

-- --------------------------------------------------------

--
-- Table structure for table `spring_user`
--

CREATE TABLE `spring_user` (
  `id` bigint NOT NULL,
  `openId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `realname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleartextPwd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `accountNonExpired` bit(1) NOT NULL DEFAULT b'1',
  `accountNonLocked` bit(1) NOT NULL DEFAULT b'1',
  `credentialsNonExpired` bit(1) NOT NULL DEFAULT b'1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullTextBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fileId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spring_user`
--

INSERT INTO `spring_user` (`id`, `openId`, `username`, `realname`, `mobile`, `email`, `password`, `cleartextPwd`, `token`, `enabled`, `accountNonExpired`, `accountNonLocked`, `credentialsNonExpired`, `createdDate`, `lastModifiedDate`, `name`, `fullTextBody`, `fileId`) VALUES
(1, NULL, 'superadmin', '超级管理员', NULL, NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, NULL, b'1', b'1', b'1', b'1', '2020-07-21 15:00:24', '2021-02-01 15:59:10', '超级管理员', '超级管理员 ', NULL),
(2, NULL, 'admin', '管理员', NULL, NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, NULL, b'1', b'1', b'1', b'1', '2020-07-21 15:00:24', '2021-02-01 15:59:35', '管理员', '管理员', NULL),
(3, NULL, 'user', '默认用户', NULL, NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, NULL, b'1', b'1', b'1', b'1', '2020-07-21 15:00:24', '2021-02-01 15:59:52', '默认用户', '默认用户 ', NULL),
(5, NULL, 'frontend', '售前工作人员', NULL, NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, NULL, b'1', b'1', b'1', b'1', '2021-02-01 13:30:37', '2021-02-01 13:40:34', '售前工作人员', '售前工作人员', NULL),
(6, NULL, 'backend', '售后工作人员', NULL, NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, NULL, b'1', b'1', b'1', b'1', '2021-02-01 13:35:56', '2021-02-01 13:40:09', '售后工作人员', '售后工作人员', NULL),
(7, NULL, 'fullstack', '全栈工作人员', NULL, NULL, '$2a$10$R9HWotqpXzmLOU0aYlFkquxcs0jq7f1raKHHnsbfT51gM9TF.2q7q', NULL, NULL, b'1', b'1', b'1', b'1', '2021-02-01 13:37:09', '2021-02-01 13:40:54', '全栈工作人员', '全栈工作人员', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ca_city`
--
ALTER TABLE `ca_city`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_city` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `ca_district`
--
ALTER TABLE `ca_district`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_district` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `ca_file`
--
ALTER TABLE `ca_file`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_file` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `ca_folder`
--
ALTER TABLE `ca_folder`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_folder` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `ca_meta_column`
--
ALTER TABLE `ca_meta_column`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_column_name` (`tableId`,`name`),
  ADD UNIQUE KEY `uq_bsm_column_index_name` (`tableId`,`indexName`),
  ADD KEY `fk_bsm_column_seq_id` (`seqId`);

--
-- Indexes for table `ca_meta_index`
--
ALTER TABLE `ca_meta_index`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_index_name` (`tableId`,`name`);

--
-- Indexes for table `ca_meta_index_line`
--
ALTER TABLE `ca_meta_index_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bsm_index_line_column_id` (`columnId`),
  ADD KEY `fk_bsm_index_line_index_id` (`indexId`);

--
-- Indexes for table `ca_meta_sequence`
--
ALTER TABLE `ca_meta_sequence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_sequence_name` (`name`);

--
-- Indexes for table `ca_meta_table`
--
ALTER TABLE `ca_meta_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_table_name` (`name`),
  ADD UNIQUE KEY `uq_bsm_table_plural_name` (`pluralName`),
  ADD UNIQUE KEY `uq_bsm_table_table_name` (`tableName`);

--
-- Indexes for table `ca_meta_table_relation`
--
ALTER TABLE `ca_meta_table_relation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_bsm_table_relation` (`fromTableId`,`toTableId`,`relationType`) USING BTREE,
  ADD KEY `fk_bsm_table_relation_from_table_id` (`fromTableId`),
  ADD KEY `fk_bsm_table_relation_to_table_id` (`toTableId`),
  ADD KEY `fk_bsm_table_relation_from_column_id` (`fromColumnId`),
  ADD KEY `fk_bsm_table_relation_to_column_id` (`toColumnId`);

--
-- Indexes for table `ca_province`
--
ALTER TABLE `ca_province`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_province` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `ca_roleResourceLine`
--
ALTER TABLE `ca_roleResourceLine`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_roleResourceLine` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `ca_userRoleLine`
--
ALTER TABLE `ca_userRoleLine`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ca_userRoleLine` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indexes for table `spring_resource`
--
ALTER TABLE `spring_resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_spring_resource_code` (`code`),
  ADD UNIQUE KEY `uq_spring_resource_url` (`url`);
ALTER TABLE `spring_resource` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `spring_role`
--
ALTER TABLE `spring_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_spring_role_code` (`code`);
ALTER TABLE `spring_role` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- Indexes for table `SPRING_SESSION`
--
ALTER TABLE `SPRING_SESSION`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `SPRING_SESSION_ATTRIBUTES`
--
ALTER TABLE `SPRING_SESSION_ATTRIBUTES`
  ADD PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`);

--
-- Indexes for table `spring_user`
--
ALTER TABLE `spring_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_spring_user_username` (`username`),
  ADD UNIQUE KEY `uq_spring_user_openid` (`openId`),
  ADD UNIQUE KEY `uq_spring_user_mobile` (`mobile`),
  ADD UNIQUE KEY `uq_spring_user_email` (`email`);
ALTER TABLE `spring_user` ADD FULLTEXT KEY `ft_fulltext_body` (`fullTextBody`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ca_city`
--
ALTER TABLE `ca_city`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ca_district`
--
ALTER TABLE `ca_district`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ca_file`
--
ALTER TABLE `ca_file`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ca_folder`
--
ALTER TABLE `ca_folder`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ca_meta_column`
--
ALTER TABLE `ca_meta_column`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `ca_meta_index`
--
ALTER TABLE `ca_meta_index`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca_meta_index_line`
--
ALTER TABLE `ca_meta_index_line`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca_meta_sequence`
--
ALTER TABLE `ca_meta_sequence`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ca_meta_table`
--
ALTER TABLE `ca_meta_table`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ca_meta_table_relation`
--
ALTER TABLE `ca_meta_table_relation`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ca_province`
--
ALTER TABLE `ca_province`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ca_roleResourceLine`
--
ALTER TABLE `ca_roleResourceLine`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ca_userRoleLine`
--
ALTER TABLE `ca_userRoleLine`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `spring_resource`
--
ALTER TABLE `spring_resource`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `spring_role`
--
ALTER TABLE `spring_role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `spring_user`
--
ALTER TABLE `spring_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ca_meta_column`
--
ALTER TABLE `ca_meta_column`
  ADD CONSTRAINT `fk_bsm_column_seq_id` FOREIGN KEY (`seqId`) REFERENCES `ca_meta_sequence` (`id`),
  ADD CONSTRAINT `fk_bsm_column_table_id` FOREIGN KEY (`tableId`) REFERENCES `ca_meta_table` (`id`);

--
-- Constraints for table `ca_meta_index`
--
ALTER TABLE `ca_meta_index`
  ADD CONSTRAINT `fk_bsm_index_table_id` FOREIGN KEY (`tableId`) REFERENCES `ca_meta_table` (`id`);

--
-- Constraints for table `ca_meta_index_line`
--
ALTER TABLE `ca_meta_index_line`
  ADD CONSTRAINT `fk_bsm_index_line_column_id` FOREIGN KEY (`columnId`) REFERENCES `ca_meta_column` (`id`),
  ADD CONSTRAINT `fk_bsm_index_line_index_id` FOREIGN KEY (`indexId`) REFERENCES `ca_meta_index` (`id`);

--
-- Constraints for table `ca_meta_table_relation`
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
