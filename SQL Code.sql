CREATE table bane 
(
	id INT NOT NULL auto_increment,
    name_eng VARCHAR(50) NOT NULL,
    descrip VARCHAR(500) NOT NULL,
    deck_eng varchar(50),
    PRIMARY KEY (id)
);

CREATE TABLE basic
(
		id INT NOT NULL AUTO_INCREMENT,
        type VARCHAR(20),
        name_eng VARCHAR(50) NOT NULL,
        trait1 varchar(20),
        trait2 VARCHAR(20),
        descrip varchar(500) NOT NULL,
        deck_eng VARCHAR(50),
        card VARCHAR(50),
        PRIMARY KEY (id)
) ;

CREATE TABLE boon
(
		id INT NOT NULL AUTO_INCREMENT,
        type VARCHAR(20),
        name_eng VARCHAR(50) NOT NULL,
        trait1 varchar(20),
        trait2 VARCHAR(20),
        descrip varchar(500) NOT NULL,
        deck_eng VARCHAR(50),
        card VARCHAR(50),
        PRIMARY KEY (id)
) ;

CREATE TABLE damage
(
		id INT NOT NULL AUTO_INCREMENT,
        name_eng VARCHAR(50) NOT NULL,
        descrip varchar(500) NOT NULL,
        deck_eng VARCHAR(50),
        PRIMARY KEY (id)
) ;

CREATE TABLE fear
(
		id INT NOT NULL AUTO_INCREMENT,
        name_eng VARCHAR(50) NOT NULL,
        descrip varchar(500) NOT NULL,
        deck_eng VARCHAR(50),
        PRIMARY KEY (id)
) ;

CREATE TABLE hero
(
		id INT NOT NULL AUTO_INCREMENT,
        type VARCHAR(20),
        name_eng VARCHAR(50) NOT NULL,
        trait1 varchar(20),
        trait2 VARCHAR(20),
        descrip varchar(500) NOT NULL,
        deck_eng VARCHAR(50),
        card VARCHAR(50),
        PRIMARY KEY (id)
) ;

CREATE TABLE item
(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(20),
    name_eng VARCHAR(50) NOT NULL,
    trait1 VARCHAR(20),
    trait2 VARCHAR(20),
    descrip VARCHAR(500) NOT NULL,
    deck_eng VARCHAR(50),
    tier VARCHAR(50),
    PRIMARY KEY (id)
) ;

CREATE TABLE mount
(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(20),
    name_eng VARCHAR(50) NOT NULL,
    trait1 VARCHAR(20),
    trait2 VARCHAR(20),
    descrip VARCHAR(500) NOT NULL,
    deck_eng VARCHAR(50),
    card VARCHAR(50),
    PRIMARY KEY (id)
) ;

CREATE TABLE role
(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(20),
    name_eng VARCHAR(50) NOT NULL,
    trait1 VARCHAR(20),
    trait2 VARCHAR(20),
    descrip VARCHAR(500) NOT NULL,
    deck_eng VARCHAR(50),
    card VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE terrain
(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(20),
    name_eng VARCHAR(50) NOT NULL,
    trait1 VARCHAR(20),
    trait2 VARCHAR(20),
    descrip VARCHAR(500) NOT NULL,
    deck_eng VARCHAR(50),
    card VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE title
(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(20),
    name_eng VARCHAR(50) NOT NULL,
    trait1 VARCHAR(20),
    trait2 VARCHAR(20),
    descrip VARCHAR(500) NOT NULL,
    deck_eng VARCHAR(50),
    card VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE weakness
(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(20),
    name_eng VARCHAR(50) NOT NULL,
    trait1 VARCHAR(20),
    trait2 VARCHAR(20),
    description VARCHAR(500) NOT NULL,
    deck_eng VARCHAR(50),
    card VARCHAR(50),
    PRIMARY KEY (id)
);

