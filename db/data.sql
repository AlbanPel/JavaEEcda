CREATE DATABASE javaeecda DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE  profiles (
                        id INT( 11 ) NOT NULL AUTO_INCREMENT ,
                        firstName VARCHAR( 200 ) NOT NULL ,
                        lastName VARCHAR( 200 ) NOT NULL ,
                        gender VARCHAR(100) NOT NULL,
                        city VARCHAR(200) NOT NULL,
                        PRIMARY KEY ( id )
) ENGINE = INNODB;

INSERT INTO profiles(firstName, lastName, gender, city) VALUES("Alban", "Pelissier", "M", "Paris");
INSERT INTO profiles(firstName, lastName, gender, city) VALUES("Fred", "Apolonio", "M", "Melun");

