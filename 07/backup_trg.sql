USE sqldb;
DROP TRIGGER if EXISTS backUserTbl_UpdateTrg;
delimiter //
CREATE TRIGGER backUserTbl_UpdateTrg --트리거 이름
	AFTER UPDATE -- 변경 후에 작동하도록 지정
	ON usertbl -- 트리거를 부착할 테이블
	FOR EACH row
BEGIN
	INSERT INTO backup_usertbl VALUES ( OLD.userID, OLD.name, OLD.birthYear, OLD.addr, OLD.mobile1, OLD.mobile2, OLD.height, OLD.mDate, '수정', CURDATE(), CURRENT_USER());
END//
delimiter ;

DROP TRIGGER if EXISTS bakUserTbl_DeleteTrg;
delimiter //
CREATE TRIGGER if EXISTS backUserTbl_DeleteTrg; -- 트리거 이름
	AFTER DELETE -- 삭제 후에 작동하도록 지정
	ON usertbl -- 트리거를 부착할 테이블
	FOR EACH ROW 
BEGIN 
	INSERT INTO backup_usertbl VALUES ( OLD.userID, OLD.name, OLD.birthYear, OLD.addr, OLD.mobile1, OLD.mobile2, OLD.height, OLD.mDate, '삭제', CURDATE(), CURRENT_USER());
END //
delimiter ;

UPDATE usertbl SET addr = '몽고' WHERE userID = 'JKW';
DELETE FROM usertbl WHERE height >= 177;

SELECT * FROM backup_usertbl;
