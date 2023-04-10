DROP PROCEDURE if EXISTS ifProc2;
USE employees;

delimiter $$
CREATE PROCEDURE ifProc2()
BEGIN
DECLARE hireDATE DATE;
DECLARE CURDATE DATE;
DECLARE days INT;

SELECT hire_date INTO hireDATE
	FROM employees.employees
	WHERE emp_no = 10001;

SET CURDATE = CURRENT_DATE();
SET days = DATEDIFF(CURDATE,hireDATE);

if(days/365) >= 5 then
	SELECT CONCAT('입사한지',days,'일이나 지났습니다. 축하합니다!');
ELSE
	SELECT '입사한지' + days + '일밖에 안되었네요. 열심히 일하세요.';
END if;
END $$
delimiter ;
CALL ifProc2();