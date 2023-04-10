USE servletex;
CREATE TABLE `t_member`
(
`id` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_unicode_ci',
`pwd` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_unicode_ci',
`name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
`email` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
`joinDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
PRIMARY KEY (`id`) USING BTREE
)
COLLATE = 'utf8mb4_unicode_ci'
ENGINE=INNODB
;