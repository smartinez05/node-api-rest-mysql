CREATE DATABASE IF NOT EXISTS pruebas;

USE pruebas;

CREATE TABLE users(
id INT(11) NOT NULL AUTO_INCREMENT,
name varchar(50) DEFAULT NULL,
age int(3) DEFAULT NULL,
PRIMARY KEY(id)
);

DESCRIBE users;

INSERT INTO users values 
	(1, "Carlos Gonzalez", 13),
	(2, "Luis Martinez", 25),
	(3, "Maria Quevedo", 47);
    
SELECT * FROM users;