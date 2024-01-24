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


-- decided to change column name

ALTER TABLE bane
RENAME COLUMN descrip TO description;

ALTER TABLE basic
RENAME COLUMN descrip TO description;

ALTER TABLE boon
RENAME COLUMN descrip TO description;

ALTER TABLE damage
RENAME COLUMN descrip TO description;

ALTER TABLE fear
RENAME COLUMN descrip TO description;

ALTER TABLE hero
RENAME COLUMN descrip TO description;

ALTER TABLE item
RENAME COLUMN descrip TO description;

ALTER TABLE mount
RENAME COLUMN descrip TO description;

ALTER TABLE role
RENAME COLUMN descrip TO description;

ALTER TABLE terrain
RENAME COLUMN descrip TO description;

ALTER TABLE title
RENAME COLUMN descrip TO description;

-- started to insert values

INSERT INTO bane (name_eng, description, deck_eng)
VALUES 
(
	'Despondent', 
	'You cannot spend inspiration. (You can still discard inspiration). During the action phase, a nearby hero may discard 2 inspiration to discard this bane.',
    'bane'
);

INSERT INTO bane (name_eng, description, deck_eng)
VALUES 
(
	'Terrified', 
	'When you attack, remove 1 Success produced during that test. At the end of your turn, you may discard prepared skill to discard this bane.',
    'bane'
);

-- realized bane table does not have card_number column

ALTER TABLE bane
ADD card_number int;

UPDATE bane
SET card_number = 1 WHERE id=1;

UPDATE bane
SET card_number = 2 WHERE id=2;

-- realized I can insert multiple values at once

INSERT INTO bane (name_eng, description, deck_eng, card_number)
VALUES 
(
	'Captured', 
	'Remove your figure from the map. You are uneffected by other game effects and cannot perform other actions. When you would discard this bane, flip it instead. ACTION: You attempt to escape. Flip this bane.',
    'bane',
    1
) ,
(
	'Captured', 
	'Remove your figure from the map. You are uneffected by other game effects and cannot perform other actions. When you would discard this bane, flip it instead. ACTION: You attempt to escape. Flip this bane.',
    'bane',
    2
) ,
(
	'Captured', 
	'Remove your figure from the map. You are uneffected by other game effects and cannot perform other actions. When you would discard this bane, flip it instead. ACTION: You attempt to escape. Flip this bane.',
    'bane',
    3
) ,
(
	'Captured', 
	'Remove your figure from the map. You are uneffected by other game effects and cannot perform other actions. When you would discard this bane, flip it instead. ACTION: You attempt to escape. Flip this bane.',
    'bane',
    4
) ,
(
	'Captured', 
	'Remove your figure from the map. You are uneffected by other game effects and cannot perform other actions. When you would discard this bane, flip it instead. ACTION: You attempt to escape. Flip this bane.',
    'bane',
    5
) ;
-- end table bane

-- values for table basic
INSERT into basic (type, name_eng, description, deck_eng, card)
VALUES
(
	'basic',
    'Undying Might',
    'When you test Might, you may discard this skill to add 1 Success.',
    'Basic',
    'Basic 1'
);

INSERT into basic (type, name_eng, description, deck_eng, card)
VALUES
(
	'basic',
    'Honed Agillity',
    'When you test Agility, you may discard this skill to add 1 Success.',
    'Basic',
    'Basic 2'
),
(
	'basic',
    'Unyielding Spirit',
    'When you test Spirit, you may discard this skill to add 1 Success.',
    'Basic',
    'Basic 3'
),
(
	'basic',
    'Ancient Wisdom',
    'When you test Wisdom, you may discard this skill to add 1 Success.',
    'Basic',
    'Basic 4'
),
(
	'basic',
    'Clever Wit',
    'When you test Wit, you may discard this skill to add 1 Success.',
    'Basic',
    'Basic 5'
),
(
	'basic',
    'Time of Need',
    'When you test, if you do not reveal any Success, you may discard this skill, to convert all Fate to Success.',
    'Basic',
    'Basic 6'
);
-- end table basic

-- values for boon table
INSERT into boon (type, name_eng, description, deck_eng, card)
VALUES
(
	'boon',
    'Determination',
    'When you test, you may discard this boon to discard any number of cards from the test and 
    reveal that many additional cards.',
    'Boon',
    'Boon'
),
(
	'boon',
    'Hidden',
    'If you are attacked, before you test, prevent all Damage and discard this boon. 
    When you attack, you may discard this boon to add 1 success.',
    'Boon',
    'Boon'
),
(
	'boon',
    'Emboldened',
    'At the and of your turn, if there are no nearby enemies, discard this. 
    If you suffer Damage or Fear, discard this boon. When you attack, add 2 strikes.',
    'Boon',
    'Boon'
);
-- end table boon