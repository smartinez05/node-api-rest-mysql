CREATE DEFINER=`root`@`localhost` PROCEDURE `userAddOrEdit`(IN _id INT,
    IN _name VARCHAR(50),
    IN _age INT)
BEGIN
	IF _id = 0 THEN
		INSERT INTO users (name, age)
        VALUES (_name, _age);
		SET _id = LAST_INSERT_ID();
    ELSE
		UPDATE users
        SET
			name = _name,
            age = _age
            WHERE id = _id;
	END IF;
    SELECT _id AS id;
END