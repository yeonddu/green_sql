DELIMITER $$ 
CREATE FUNCTION function_hierarchical() RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
   DECLARE v_articleNO INT;
   DECLARE v_parentNO INT;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET @articleNO = NULL;
   
   SET v_parentNO = @articleNO;
   SET v_articleNO = -1;
   
   IF @articleNO IS NULL THEN
      RETURN NULL;
   END IF;
   
   LOOP
   SELECT MIN(articleNO) INTO @articleNO
   FROM t_board
   WHERE parentNO = v_parentNO
   AND articleNO > v_articleNO;
   
   IF (@articleNO IS NOT NULL) OR (v_parentNO = @start_with) THEN
      SET @LEVEL = @LEVEL + 1;
      RETURN @articleNO;
   END IF;
   
   SET @LEVEL := @LEVEL - 1;
   
   SELECT articleNO, parentNO INTO v_articleNO, v_parentNO
   FROM t_board
   WHERE articleNO = v_parentNO;
   END LOOP;
END $$ 
DELIMITER ;