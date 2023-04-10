USE sqldb;
DROP TRIGGER if EXISTS backUserTbl_UpdateTrg;
delimiter //
CREATE TRIGGER backUserTbl_UpdateTrg 
	AFTER UPDATE 
	ON usertbl 
	FOR EACH ROW 
BEGIN
	INSERT INTO backup_usertbl VALUES ( OLD.userID, OLD.userName, OLD.birthYear, OLD.addr, OLD.mobile1, OLD.mobile2, OLD.height, OLD.mDate, '수정', CURDATE(), CURRENT_USER());
END //
delimiter ;

DROP TRIGGER if EXISTS backUserTbl_DeleteTrg;
delimiter //
CREATE TRIGGER backUserTbl_DeleteTrg 
	AFTER DELETE
	ON usertbl 
	FOR EACH ROW 
BEGIN
	INSERT INTO backup_usertbl VALUES ( OLD.userID, OLD.userName, OLD.birthYear, OLD.addr, OLD.mobile1, OLD.mobile2, OLD.height, OLD.mDate, '삭제', CURDATE(), CURRENT_USER());
END //
delimiter ;