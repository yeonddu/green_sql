--물품 테이블에서 개수를 감소시키는 트리거
DROP TRIGGER if EXISTS ordertrg;
delimiter //
CREATE TRIGGER ordertrg
	AFTER insert
	ON ordertbl
	FOR EACH row
BEGIN
	UPDATE prodtbl SET ACCOUNT = ACCOUNT - NEW.orderamount
		WHERE prodName = NEW.prodName;
END //
delimiter;