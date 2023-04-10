DROP PROCEDURE if EXISTS whileProc;
delimiter $$
CREATE PROCEDURE whileProc()
BEGIN 
	DECLARE i INT;
	DECLARE hap INT;
		SET i = 1;
		SET hap = 0;

	while (i<=100) do
	SET hap = hap + 1;
	SET i = i + 1;
	END while;
	
	SELECT hap;
END $$
delimiter ;
CALL whileProc();	