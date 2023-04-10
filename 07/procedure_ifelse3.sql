DROP PROCEDURE if EXISTS ifProc3;
delimiter $$
CREATE PROCEDURE ifProc3()
BEGIN 
	DECLARE POINT INT; -- POINT 변수 선언
	DECLARE credit CHAR(1);
	SET POINT = 77; -- 변수에 값 대입
	
	if POINT >= 90 then
		SET credit = 'A';
	ELSEIF POINT >= 80 then
		SET credit = 'B';
	ELSEIF POINT >= 70 then
		SET credit = 'C';
	ELSEIF POINT >= 60 then
		SET credit = 'D';
	ELSe
		SET credit = 'F';
	END if;
	SELECT CONCAT('취득점수==>',POINT), CONCAT('학점==>',credit);
END $$
delimiter ;
CALL ifProc3();