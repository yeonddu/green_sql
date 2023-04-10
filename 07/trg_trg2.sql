USE triggerdb;

DROP TRIGGER if EXISTS prodtrg;
delimiter //
CREATE TRIGGER prodtrg
	AFTER update
	ON prodtbl
	FOR EACH ROWbackup_usertbl
BEGIN
	DECLARE orderAmount INT;
	SET orderAmount = OLD.account - NEW.account;
	INSERT INTO delivertbl(prodName, ACCOUNT)
		VALUES (NEW.prodName, orderAmount);
END //
delimiter ;

INSERT INTO ordertbl VALUES (NULL, 'JOHN','배',5);

SELECT * FROM ordertbl;
SELECT * FROM prodtbl;
SELECT * FROM delivertbl;

ALTER TABLE delivertbl CHANGE prodName productName VARCHAR(5);

ALTER TRIGGER prodtrg
	ALTER TABLE delivertbl RENAME column productName as  prodName;

INSERT INTO ordertbl VALUES (NULL, 'DANG','사과',9);

SELECT * FROM ordertbl;
SELECT * FROM prodtbl;
SELECT * FROM delivertbl;