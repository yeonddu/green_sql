DROP PROCEDURE if EXISTS whileProc2;
delimiter $$
CREATE PROCEDURE whileProc2()
BEGIN 
	DECLARE i INT;
	DECLARE hap INT;
		SET i = 1;
		SET hap = 0;

	myWhile:while (i<=100) do
	if(i%7 = 0) then
	SET i = i + 1;
	iterate myWhile;
	END if;
	
	SET hap = hap + i;
	if(hap>1000) then
	leave myWhile;
	END if;
	
	SET i = i +1;
	END while;
		SELECT hap;
END $$
delimiter ;
CALL whileProc2();	