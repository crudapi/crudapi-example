RENAME TABLE `bs_meta_table_relation` TO `ca_meta_table_relation`;
RENAME TABLE `bs_meta_index_line` TO `ca_meta_index_line`;
RENAME TABLE `bs_meta_index` TO `ca_meta_index`;
RENAME TABLE `bs_meta_column` TO `ca_meta_column`;
RENAME TABLE `bs_meta_table` TO `ca_meta_table`;
RENAME TABLE `bs_meta_sequence` TO `ca_meta_sequence`;



ALTER TABLE `ca_meta_table` ADD `systemable` BIT(1) NULL DEFAULT NULL;
ALTER TABLE `ca_meta_column` ADD `displayable` BIT(1) NULL DEFAULT NULL;

ALTER TABLE `ca_meta_table` ADD `readOnly` BIT(1) NULL DEFAULT NULL;

UPDATE `ca_meta_table` SET `systemable` = b'1' 
WHERE `ca_meta_table`.`name` in ('province','city','district','file','folder','weixinConfig','smsConfig','smsTemplate','table','moduleLine','module');

UPDATE `ca_meta_table` SET `readOnly` = b'0';

UPDATE `ca_meta_table` SET `readOnly` = b'1' 
WHERE `ca_meta_table`.`name` in ('table');
