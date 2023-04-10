DROP PROCEDURE if EXISTS caseProc;
delimiter $$
CREATE PROCEDURE caseProc()
BEGIN
	DECLARE POINT INT;
	declare credit CHAR(1);
	SET POINT = 77;
	
	case
	when POINT >= 90 then
	SET credit = 'A';
	when POINT >= 80 then
	SET credit = 'B';
	when POINT >= 70 then
	SET credit = 'C';
	when POINT >= 60 then
	SET credit = 'D';
	else
	SET credit = 'F';
	END case;
	SELECT CONCAT('취득점수==>',POINT),  CONCAT('학점==>',credit);
END $$
delimiter ;
CALL caseProc();