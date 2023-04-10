USE servletex;

DROP PROCEDURE if EXISTS ifProc;
delimiter $$
CREATE PROCEDURE ifProc()
BEGIN
	DECLARE var1 INT;
	SET var1 = 100;
	if var1 = 100 then SELECT '100입니다';
	ELSE
	SELECT '100이 아닙니다.';
	END IF;
	END $$
	DELIMITER ;
	
	CALL ifProc();