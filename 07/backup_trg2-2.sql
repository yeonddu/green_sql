USE sqldb;

UPDATE usertbl SET addr = '몽고' WHERE userID = 'JKW';
DELETE FROM usertbl WHERE height >= 177;

SELECT * FROM backup_usertbl;

TRUNCATE TABLE usertbl;

SELECT * FROM backup_usertbl;