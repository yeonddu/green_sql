USE servletex;
CREATE TABLE `t_board` (
 `articleNO` INT(10) unsigned NOT NULL,
 `parentNo` INT(10) null DEFAULT '0',
 `title` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
 `content` VARCHAR(4000) null DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
 `imageFileName` VARCHAR(100) null DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
 `writeDate` datetime NULL DEFAULT CURRENT_TIMESTAMP(),
 `id` VARCHAR(20) null DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
 PRIMARY KEY (`articleNO`) USING btree,
 INDEX `t_board_ibfk_1`(`id`) using btree,
 CONSTRAINT `t_board_ibfk_1` FOREIGN KEY (`id`) REFERENCES `servletex`.`t_member`(`id`) ON UPDATE CASCADE ON DELETE CASCADE)
 
 ENGINE = INNODB COLLATE='utf8mb4_unicode_ci';
