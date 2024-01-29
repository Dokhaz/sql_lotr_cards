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

-- values table damage
INSERT INTO damage (name_eng, description, deck_eng)
VALUES
(
	'Crushed',
    'Deplete 1 of you Item (without resolving its effect). Then flip this card facedown.',
    'damage'
),
(
	'Weariness',
    'Flip this card facedown.',
	'damage'
),
(
	'Deep Bruise',
    'Discard 2 prepared cards or suffer 2 facedown Damage. Then discard this card.',
    'damage'
),
(
	'Shaken',
    'Flip 1 Fear faceup. Then flip this card facedown.',
    'damage'
),
(
	'Cursed Injury',
    'Keep this card faceup. If you would discard a faceup Damage, flip it facedown instead.',
    'damage'
),
(
	'Entangled',
    'Keep this card faceup. When you perform the travel action, move 1 fewer space. After you Rest, flip this card facedown.',
    'damage'
),
(
	'Knocked Prone',
    'Deplete 1 of your Iteam (without resolving its effect) and discard 1 prepared card. Then discard this card.',
    'damage'
),
(
	'Exhaustion',
    'Keep this card faceup. When you scout during the rally phase, you cannot place cards back on top of your deck.',
    'damage'
),
(
	'Putrid Boils',
    'Each nearby hero flips 1 Fear faceup. Then flip this card facedown.',
    'damage'
),
(
	'Concussion',
    'Keep this card faceup. Decrease each of your stats by 1. At the end of your turn, flip this card facedown.',
    'damage'
),
(
	'Fever',
    'Discard 1 inspiration. Then flip this card facedown.',
    'damage'
),
(
	'Poison',
    'Gain 1 weakness and shuffle it into your deck. Then discard this card.',
    'damage'
),
(
	'Laceration',
    'Flip 1 Damage faceup. Then flip this card facedown.',
    'damage'
),
(
	'Dazed',
    'Keep this card faceup. Before you interact with a threat token, you must spend 1 inspiration.',
    'damage'
),
(
	'Feeble',
    'Suffer 1 facedown Fear. Then flip this card facedown.',
    'damage'
),
(
	'Short of Breath',
    'Discard all of your boons. Then flip this card facedown.',
    'damage'
),
(
	'Sudden Sickness',
    'Discard all of your inspiration. Then discard this card.',
    'damage'
),
(
	'Stunned',
    'Flip 1 Damage and 1 Fear faceup. Then discard this card.',
    'damage'
);
-- end table damage

-- values table fear
INSERT INTO fear (name_eng, description, deck_eng)
VALUES
(
	'Rage',
    'Keep this card faceup. You cannot prevent taking Damage (including nagete tests). When you attack, add 2 hits.',
    'fear'
),
(
	'Cower',
    'Keep this card faceup. When you attack, reveal 1 fewer card. During your turn, if you are emboldened, you may discard this card.',
	'fear'
),
(
	'Gloom',
    'Flip this card facedown.',
    'fear'
),
(
	'Delusions',
    'Discard 1 inspiration. Then flip this card facedown.',
    'fear'
),
(
	'Overcome',
    'Suffer 1 facedown Fear. Then flip this card facedown.',
    'fear'
),
(
	'Infighting',
    'Each nearby hero flips 1 Damage card faceup. Then flip this card facedown.',
    'fear'
),
(
	'Paranoia',
    'If there is a nearby hero, discard 1 prepared card. Then flip this card facedown.',
    'fear'
),
(
	'Ill Will',
    'Each other hero suffers 1 facedown Fear. Then discard this card.',
    'fear'
),
(
	'Hopelessness',
    'Discard 2 prepared cards or suffer 2 facedown Fear. Then discard this card.',
    'fear'
),
(
	'Hysteria',
    'You and each nearby hero suffer 1 Damage. Then discard this card.',
    'fear'
),
(
	'Surrender',
    'Keep this card faceup. If you would discard a faceup Fear, flip it facedown instead.',
    'fear'
),
(
	'Looming Shadows',
    'If you are in a space with darkness, suffer 1 Fear. Then flip this card facedown.',
    'fear'
),
(
	'Dark Whispers',
    'Keep this card faceup. At the end of your turn, suffer 1 Fear. When you test Wisdom or Wit, add 1 Success.',
    'fear'
),
(
	'Troubled',
    'Keep this card faceup. After you or a neraby hero suffers 1 or more Fear from darkness, that hero suffers 1 additional Fear.',
    'fear'
),
(
	'Tormented',
    'Flip 1 Damage faceup. Then flip this card facedown.',
    'fear'
),
(
	'Impending Doom',
    'Discard 1 prepared card or suffer 1 Fear. Then flip this card facedown.',
    'fear'
),
(
	'Greed',
    'Deplete another hero"s item (without resolving ist effect). If you cannot, suffer 1 facedown Fear. Then flip this card facedown.',
    'fear'
),
(
	'Anxiety',
    'Flip 1 Fear faceup. Then flip this card facedown.',
    'fear'
);
-- end table fear

-- values table hero
-- values for Aragorn deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Wandere',
    null,
    null,
	'After you explore a tile, you or a nearby hero may Scout 1.',
    'Aragorn',
    'Aragorn 1'
),
(
	'hero',
	'Strider',
    'tactic',
    null,
    'Strike 3 (When you attack, discard to add 3 hits). Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
    'Aragorn',
    'Aragorn 2'
),
(
	'hero',
	'Strider',
    'tactic',
    null,
    'Strike 3 (When you attack, discard to add 3 hits). Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
    'Aragorn',
    'Aragorn 3'
),
(
	'hero',
	'Thorongil',
    'knowledge',
    null,
    'Before you test, you may discard this skill to test Wisdom instead. Sprint 1 (During your turn, discard to move 1 space).',
    'Aragorn',
    'Aragorn 4'
),
(
	'hero',
    'Gift of Men',
    'innate',
    'valour',
    'During your turn, you may discard this skill to discard 1 Fear.',
    'Aragorn',
    'Aragorn 4'
);
-- mistake on 5th card
update hero
SET card = 'Aragorn 5'
WHERE id = 5;
-- end Aragorn deck

-- values for Arwena deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Nobility',
    'aid',
    null,
	'Before a nearby hero tests, you may discard this skill for that hero to gain 2 inspiration; if they are an Elf or Human, you may gain 1 inspiration.',
    'Arwena',
    'Arwena 1'
),
(
	'hero',
	'Elven Light',
    'knowledge',
    'innate',
    'Before you test Wisdom or Spirit, you may look at the top card of your deck and place it on the top or bottom of your deck.',
    'Arwena',
    'Arwena 2'
),
(
	'hero',
	'Evenstar',
    null,
    null,
    'Before you test, you may discard this skill to test Spirit instead and reveal 2 additional cards. Sprint 1 (During your turn, discard to move 1 space).',
    'Arwena',
    'Arwena 3'
),
(
	'hero',
	'Evenstar',
    null,
    null,
    'Before you test, you may discard this skill to test Spirit instead and reveal 2 additional cards. Sprint 1 (During your turn, discard to move 1 space).',
    'Arwena',
    'Arwena 4'
),
(
	'hero',
    'Willfull',
    null,
    null,
    'During your turn, you may discard this skill to interact with a token in your space. Strike 2 (When you attack, discard this card to add 2 hits).',
    'Arwena',
    'Arwena 5'
);
-- end Arwena deck

-- values for Balin deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Kinship',
    'aid',
    null,
	'Before a nearby hero tests, you may discard this skill for that hero to reveal 2 additional cards; if they are a Dwarf, you may Scout 1.',
    'Balin',
    'Balin 1'
),
(
	'hero',
	'Raven Companion',
    'creature',
    'shadow',
    'When you test Wit, reveal 1 additional card. Rest 1 (Discard at the end of your turn to discard 1 facedown Damage or Fear).',
    'Balin',
    'Balin 2'
),
(
	'hero',
	'Loyal Friend',
    'valour',
    null,
    'Before you attack, you may discard this skill to test Spirit instead and gain 1 inspiration. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
    'Balin',
    'Balin 3'
),
(
	'hero',
	'Loyal Friend',
    'valour',
    null,
    'Before you attack, you may discard this skill to test Spirit instead and gain 1 inspiration. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
    'Balin',
    'Balin 4'
),
(
	'hero',
    'Misty Mountains Cold',
    'song',
    null,
    'When you Scout, you may reveal 1 fewer card to gain 1 inspiration.',
    'Balin',
    'Balin 5'
);
-- end Balin deck

-- values for Beorn deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'The Day Will Come',
    null,
    null,
	'After a nearby enemy is defeated, you may discard this skill to become determined or Scout 2.',
    'Beorn',
    'Beorn 1'
),
(
	'hero',
	'Beast Tongue',
    'knowledge',
    null,
    'After you interact with a search or threat token, you may discard this skill to perform 1 additional action. Sprint 1 (During your turn, discard to move 1 space).',
    'Beorn',
    'Beorn 2'
),
(
	'hero',
	'Friend of Bees',
    'creature',
    null,
    'Before you strike, add stun to the attack. Strike 1 (When you attack, discard to add 1 hit).',
    'Beorn',
    'Beorn 3'
),
(
	'hero',
	'The First Beoring',
    null,
    null,
    'Change to The Great Bear. When this card is discarded, change to Beorn. (When you change, replace your hero card, figure and equipped items.)',
    'Beorn',
    'Beorn 4'
),
(
	'hero',
    'The First Beoring',
    null,
    null,
    'Change to The Great Bear. When this card is discarded, change to Beorn. (When you change, replace your hero card, figure and equipped items.)',
    'Beorn',
    'Beorn 5'
);
-- end Beorn deck

-- values for Beravor deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Into Hiding',
	null,
	null,
	'During your turn, if there are no enemies in your space, you may discard this skill for you and each other hero in your space to become hidden. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space.)',
	'Beravor',
	'Beravor 1'
),
(
	'hero',
	'Ways of Old',
	'tactic',
	'knowledge',
	'When you test, you may discard this skill to convert 1 Fate to 1 Success and Scout 1. Sprint 1 (During your turn, discard to move 1 space).',
	'Beravor',
	'Beravor 2'
),
(
	'hero',
	'Ways of Old',
	'tactic',
	'knowledge',
	'When you test, you may discard this skill to convert 1 Fate to 1 Success and Scout 1. Sprint 1 (During your turn, discard to move 1 space).',
	'Beravor',
	'Beravor 3'
),
(
	'hero',
    'Fateless',
    'innate',
    null,
    'When you test, you may discard this skill to convert all Fate to Success.',
    'Beravor',
    'Beravor 4'
),
(
	'hero',
    'Gift of Men',
    'innate',
    'valour',
    'During your turn, you may discard this skill to discard 1 Fear.',
    'Beravor',
    'Beravor 5'
);
-- end Beravor deck

-- values for Bilbo deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
    'The Tookish Part',
    'innate',
    'valour',
    'Before you test, you may discard this skill to test Wit instead and gain 1 inspiration. Hide (After you test, discard to become hidden).',	
    'Bilbo',
    'Bilbo 1'
),
(
	'hero',
	'The Tookish Part',
	'innate',
	'valour',
	'Before you test, you may discard this skill to test Wit instead and gain 1 inspiration. Hide (After you test, discard to become hidden).',
	'Bilbo',
	'Bilbo 2'
),
(
	'hero',
	'Well-Nourished',
	'food',
    null,
    'After you prepare this skill flip 1 Fear facedown. Rest 2 (Discard at end of turn to discard 2 facedown Damage or Fear).',
	'Bilbo',
	'Bilbo 3'
),
(
	'hero',
	'Simple Desires',
	'innate',
    null,
    'At the start of your turn, you may discard this skill to Scout 2; then gain 1 inspiration for each Aid, Food or Song card in your play area.',
	'Bilbo',
	'Bilbo 4'
),
(
	'hero',
	'The Road Goes Ever On',
	'song',
    null,
    'During your turn, you may discard this skill for you and each earby hero to move up to 1 space.',
	'Bilbo',
	'Bilbo 5'
);
-- end Bilbo deck

-- values for Boromir deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Fierce Resolve',
	'innate',
	'valour',
	'When you attack, if you convert 1 or more Fate to Success, add 1 Success to the test. Rest 2 (Discard at the end of turn to discard 2 facedown Damage or Fear).',
	'Boromir',
	'Boromir 1'
),
(
	'hero',
	'Born to Lead',
    null,
    null,
    'During your turn, if there is nearby enemy, you may discard this skill for you and each nearby hero to become emboldened. Strike 2 (When you attack, discard to add 2 hits).',
	'Boromir',
	'Boromir 2'
),
(
	'hero',
	'Overpower',
	'tactic',
    null,
    'Before you test, you may discard this skill to test Might instead and gain 1 inspiration. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
	'Boromir',
	'Boromir 3'
),
(
	'hero',
	'Blood of Gondor',
	'innate',
    null,
    'When you test, you may discard this skill to reveal 3 additional cards. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
	'Boromir',
	'Boromir 4'
),
(
	'hero',
	'Gift of Men',
	'innate',
	'valour',
	'During your turn, you may discard this skill to discard 1 Fear.',
	'Boromir',
	'Boromir 5'
);
-- end Boromir deck

-- values for Dis deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Fury',
    null,
    null,
    'When you attack, you may spend any amount of Fate to add an equal number of hits.',
	'Dis',
	'Dis 1'
),
(
	'hero',
	'Kinship',
	'aid',
    null,
    'Before a nearby hero tests, you may discard this skill for that hero to reveal 2 additional cards; if they are a Dwarf, you may Scout 1.',
	'Dis',
	'Dis 2'
),
(
	'hero',
	'Strengt of Thrain',
    null,
    null,
    'Once per round, after you perform a Might test, gain 1 inspiration. Sprint 1 (During your turn, discard to move 1 space).',
	'Dis',
	'Dis 3'
),
(
	'hero',
	'Fire Heart',
	'innate',
    null,
    'Increase your Spirit by 1. Once per round, when test, you may add 1 Fate. Strike 2 (When you attack, discard this card to add 2 hits).',
	'Dis',
	'Dis 4'
),
(
	'hero',
	'Fire Heart',
	'innate',
    null,
    'Increase your Spirit by 1. Once per round, when test, you may add 1 Fate. Strike 2 (When you attack, discard this card to add 2 hits).',
	'Dis',
	'Dis 5'
);
-- end Dis deck

-- values for Eleanora deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Nobility',
	'aid',
    null,
    'Before a nearby hero tests, you may discard this skill for that hero to gain 2 inspiration; if they are an Elf or Human, you may gain 1 inspiration.',
	'Eleanora',
    'Eleanora 1'
),
(
	'hero',
	'Fateless',
	'innate',
    null,
    'When you test, you may discard this skill to convert all Fate to Success.',
	'Eleanora',
	'Eleanora 2'
),
(
	'hero',
	'Blood of Gondor',
	'innate',
    null,
    'When you test, you may discard this skill to reveal 3 additional cards. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
	'Eleanora',
	'Eleanora 3'
),
(
	'hero',
	'Blood of Gondor',
	'innate',
    null,
    'When you test, you may discard this skill to reveal 3 additional cards. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
	'Eleanora',
	'Eleanora 4'
),
(
	'hero',
	'Gift of Men',
	'innate',
	'valour',
	'During your turn, you may discard this skill to discard 1 Fear.',
	'Eleanora',
	'Eleanora 5'
);
-- end Eleanora deck

-- values for Elena deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Child of the Lhun',
	'tactic',
    null,
    'When an enemy moves into your space, you may discard this skill to apply 4 hits and stun to that enemy. Hide (After you test, discard to become hidden).',
	'Elena',
	'Elena 1'
),
(
	'hero',
	'Elven Light',
	'knowledge',
	'innate',
	'Before you test Wisdom or Spirit, you may look at the top card of your deck and place it on the top or bottom of your deck.',
	'Elena',
	'Elena 2'
),
(
	'hero',
	'Immortality',
	'innate',
    null,
    'Rest 2 (Discard at the end of turn to discard 2 facedown Damage or Fear). Strike 2 (When you attack, discard to add 2 hits.',
	'Elena',
	'Elena 3'
),
(
	'hero',
	'Lay of Twilight',
	'knowledge',
	'song',
	'During your turn, you may discard this skill for you and nearby heroes to collectively discard up to 4 facedown Damage and Fear.',
	'Elena',
	'Elena 4'
),
(
	'hero',
	'Lay of Twilight',
	'knowledge',
	'song',
	'During your turn, you may discard this skill for you and nearby heroes to collectively discard up to 4 facedown Damage and Fear.',
	'Elena',
	'Elena 5'
);
-- end Elena deck

-- values for Freahild deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Fateless',
    'innate',
    null,
    'When you test, you may discard this skill to convert all Fate to Success.',
	'Freahild',
	'Freahild 1'
),
(
	'hero',
	'Faithful Companion',
	'aid',
    null,
    'When a nearby hero tests, you may spend inspiration to convert Fate to Success. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
	'Freahild',
	'Freahild 2'
),
(
	'hero',
	'Gift of Men',
    'innate',
    'valour',
    'During your turn, you may discard this skill to discard 1 Fear.',
	'Freahild',
	'Freahild 3'
),
(
	'hero',
	'Cavalry Combat',
	'tactic',
    null,
    'After you test to negate, you may discard this skill to Scout 2 and move 1 space without provoking attacks.',
	'Freahild',
	'Freahild 4'
),
(
	'hero',
	'Cavalry Combat',
	'tactic',
    null,
    'After you test to negate, you may discard this skill to Scout 2 and move 1 space without provoking attacks.',
	'Freahild',
	'Freahild 5'
);
-- end Freahil deck

-- values for Gandalf deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Grey Pilgrim',
    null,
    null,
    'Once per round, when you Scout, you may reveal 1 additional card. Guard 2 (Discard to prevent 2 Damage or Fear for a hero in your space).',
	'Gandalf',
	'Gandalf 1'
),
(
	'hero',
	'Uncanny',
	'shadow',
    null,
    'During your turn, you may discard this skill to search your deck for a weakness. Remove that skill from the adventure, then shuffle your deck.',
	'Gandalf',
	'Gandalf 2'
),
(
	'hero',
	'Flame Imperishable',
    null,
    null,
    'When you prepare this skill, gain 1 inspiration. When you test, you may discard this skill to convert 1 Fate to 1 Success.',
	'Gandalf',
	'Gandalf 3'
),
(
	'hero',
	'Greater Power',
	'knowledge',
    null,
    'Strike 2. Sprint 2. Guard 2. Rest 2. Hide.',
	'Gandalf',
	'Gandalf 4'
),
(
	'hero',
	'Dazzling Flash',
	'tactic',
    null,
    'When you attack an enemy in your space, you may discard this skill to add smite and stun to the attack.',
	'Gandalf',
	'Gandalf 5'
);
-- end Gandalf deck

-- values for Gimloi deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Poets Heart',
    null,
    null,
    'Before you interact with a person token, gain 1 inspiration. Rest 2 (Discard at end of turn to discard 2 facedown Damage or Fear).',
	'Gimli',
	'Gimli 1'
),
(
	'hero',
	'Restless Axe',
	'tactic',
    null,
    'At the start of your turn, you may discard this skill to attack and add 2 hits. Strike 2 (When you attac, discard to add 2 hits).',
	'Gimli',
	'Gimli 2'
),
(
	'hero',
	'Restless Axe',
	'tactic',
    null,
    'At the start of your turn, you may discard this skill to attack and add 2 hits. Strike 2 (When you attac, discard to add 2 hits).',
	'Gimli',
	'Gimli 3'
),
(
	'hero',
	'Kinship',
	'aid',
    null,
    'Before a nearby hero tests, you may discard this skill for that gero to reveal 2 additional cards; if they are a Dwarf, you may Scout 1.',
	'Gimli',
	'Gimli 4'
),
(
	'hero',
	'Fury',
    null,
    null,
    'When you attack, you may spend any amount of Fate to add an equal number of hits.',
	'Gimli',
	'Gimli 5'
);
-- end Gimli deck

-- values for Legolas deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Keen Eyes',
	'innate',
    null,
    'Your Range attacks can target enemies 1 additional space away. Strike 2 (When you attack, discard to add 2 hits).',
	'Legolas',
	'Legolas 1'
),
(
	'hero',
	'Light-Footed',
    null,
    null,
    'When you interact with a search or threat token, before you test, you may discard this skill to dest Agility instead and Scout 1. Sprint 1 (During your turn, discard to move 1 space).',
	'Legolas',
	'Legolas 2'
),
(
	'hero',
	'Light-Footed',
    null,
    null,
    'When you interact with a search or threat token, before you test, you may discard this skill to dest Agility instead and Scout 1. Sprint 1 (During your turn, discard to move 1 space).',
	'Legolas',
	'Legolas 3'
),
(
	'hero',
	'Tireless',
    null,
    null,
    'At the end of your turn, you may discard this skill to perform an action that you have not performed this turn.',
	'Legolas',
	'Legolas 4'
),
(
	'hero',
	'Immortality',
	'innate',
    null,
    'Rest 2 (Riscard at the end of turn to discard 2 facedown Damage or Fear). Strike 2 (When you attack, discard to add 2 hits.',
	'Legolas',
	'Legolas 5'
);
-- end Legolas deck

-- values for Dwalin deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Kinship',
	'aid',
    null,
    'Before a nearby hero tests, you may discard this skill for that hero to reveal 2 additional cards; if they are a Dwarf, you may Scout 1.',
	'Dwalin',
	'Dwalin 1'
),
(
	'hero',
	'Ancestral Grudge',
	'innate',
	'tactic',
	'When you attack an Orc or Goblin, you may add 2 hits and lethal. Strike 3 (When you attack, discard to add 3 hits).',
	'Dwalin',
	'Dwalin 2'
),
(
	'hero',
	'Ancestral Grudge',
	'innate',
	'tactic',
	'When you attack an Orc or Goblin, you may add 2 hits and lethal. Strike 3 (When you attack, discard to add 3 hits).',
	'Dwalin',
	'Dwalin 3'
),
(
	'hero',
	'Misty Mountains Cold',
	'song',
    null,
    'When you Scout, you may reveal 1 fewer card to gain 1 inspiration.',
	'Dwalin',
	'Dwalin 4'
),
(
	'hero',
	'Stirring Performance',
	'song',
    null,
    'Before you test Spirit or Wit, you may discard this skill to reveal 1 additional card and gain 1 inspiration. Rest 2 (Discard at the end of turn to discard 2 facedown Damage or Fear).',
	'Dwalin',
	'Dwalin 5'
);
-- end Dwalin deck

-- values for Renerien
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Child of the Lhun',
	'tactic',
    null,
    'When an enemy moves into your space, you may discard this skill to apply 4 hits and stun to that enemy. Hide (After you test, discard to become hidden).',
	'Renerien',
	'Renerien 1'
),
(
	'hero',
	'Mischief',
	'shadow',
    null,
    'During your turn, you may choose a hero to select 3 cards from their discard pile. They prepare 1 revealed card and place the rest on top of their deck. Then discard this skill.',
	'Renerien',
	'Renerien 2'
),
(
	'hero',
	'Tireless',
    null,
    null,
    'At the end of your turn, you may discard this skill to perform an action that you have not performed this turn.',
	'Renerien',
	'Renerien 3'
),
(
	'hero',
	'Grey Haven Craft',
    null,
    null,
    'When you prepare this skill, discard all banes and gain a boon of your choice. Sprint 1 (During your turn, discard to move 1 space).',
	'Renerien',
	'Renerien 4'
),
(
	'hero',
	'Grey Haven Craft',
    null,
    null,
    'When you prepare this skill, discard all banes and gain a boon of your choice. Sprint 1 (During your turn, discard to move 1 space).',
	'Renerien',
	'Renerien 5'
);
-- end Renerien deck

-- values for Took deck
INSERT INTO hero (type, name_eng, trait1, trait2, description, deck_eng, card)
VALUES
(
	'hero',
	'Simple Desires',
	'innate',
    null,
    'At the start of your turn, you may discard this skill to Scout 2; then gain 1 inspiration for each Aid, Food or Song card in your play area.',
	'Calaminth Took',
	'Calaminth Took 1'
),
(
	'hero',
	'The Tookish Part',
	'innate',
	'valour',
	'Before you test, you may discard this skill to test Wit instead and gain 1 inspiration. Hide (After you test, discard to become hidden).',
	'Calaminth Took',
	'Calaminth Took 2'
),
(
	'hero',
	'Hobbit-Sense',
	'innate',
    null,
    'At the end of your turn, if there are no nearby enemies, you may Scout 1. Hide (After you test, discard to become hidden).',
	'Calaminth Took',
	'Calaminth Took 3'
),
(
	'hero',
	'Drinking Ditty',
	'food',
	'song',
	'During your turn, you may discard this skill for you and each nearby hero to discard 1 Damage or 1 Fear. Strike 1 (when you attack, discard to add 1 hit).',
	'Calaminth Took',
	'Calaminth Took 4'
),
(
	'hero',
	'Fierce Resolve',
    'innate',
    'valour',
    'When you attack, if you convert 1 or more Fate to Success, add 1 Success to the test. Rest 2 (Discard at the end of turn to discard 2 facedown Damage or Fear).',	
    'Calaminth Took',
    'Calaminth Took 5'
);
-- end Took deck
-- end table hero

-- values table item, item
INSERT INTO item (type, name_eng, trait1, trait2, description, deck_eng, tier)
VALUES
(
	'item',
	'Hammer and Tongs',
    null,
	null,	
    'When you attack or test to negate Damage or Fear, you may deplete this trinket to convert 1 Fate to 1 Success.',
	'smith',
    0
),
(
	'item',
    'The Crown of Shadows',	
    null,	
    null,	
    'You may equip 1 additional Iteam. When you test, you may deplete this trinket to add Success equal to your corruption.',	
    'quest',
    0
);

INSERT INTO item (type, name_eng, trait1, trait2, description, deck_eng, tier)
VALUES
(
	'item',
	'Brooch',	
    null,	
    null,	
    'If you would suffer any amount of Fear, you may deplete this item to suffer that Fear facedown instead.',
    'brooch',	
    1
),
(
	'item',	
    'Eriador Brooch',	
    null,	
    null,	
    'If you would suffer any amount of Fear, you may deplete this item to suffer that Fear facedown instead and prevent 1 of that Fear.',	
    'brooch',	
    2
),
(
	'item',
	'Mark of Arnor',
	null,	
    null,	
    'If you would suffer any amount of Fear, you may deplete this item to suffer that Fear facedown instead and prevent 1 of that Fear. During your turn, you may deplete this item to flip 1 Damage or Fear facedown.',	
    'brooch',	
    3
);

-- without traits
INSERT INTO item (type, name_eng, description, deck_eng, tier)
VALUES
(
	'item',
	'Waterskin',
    'When you travel, you may deplete this item to move 1 additional space.',	
    'waterskin',	
    1
),
(
	'item',
	'Elven Waterskin',
    'When you travel, you may deplete this item to move 1 additional space.',	
    'waterskin',
    2
),
(
	'item',	
    'Clear-Water',
    'Increase your Fear limit by 1. When you travel, you may deplete this item to move 1 additional space.',	
    'waterskin',	
    3
),
(
	'item',	
    'Boots',
    'If you would test Agility or Might, you may deplete this item to test Might or Agility instead.',	
    'shoes',	
    1
),
(
	'item',	
    'Greenway Boots',
    'If you would test Agility or Might, you may deplete this item to test Might or Agility instead. Before you move out of a space, you may deplete this item to not provoke attacks.',	
    'shoes',	
    2
),
(
	'item',	
    'Dusk Treaders',
    'If you would test Agility or Might, you may deplete this item to test Might or Agility instead. Before you move out of a space or interact with a token, you may deplete this item to not provoke attacks.',	
    'shoes',	
    3
),
(
	'item',	
    'Handkerchief',
    'After you interact with a person token, you may deplete this item to gain 1 inspiration and perform 1 additional action.',
	'tissue',	
    1
),
(
	'item',
	'Heirloom Handkerchief',
    'After you interact with a person token, you may deplete this item to gain 1 inspiration, become determined and perform 1 additional action.',	
    'tissue',	
    2
),
(
	'item',	
    'Forget-Me-Never',
    'While there are no nearby heroes, increase your Spirit by 1. After you interact with a person token, you may deplete this item to gain 1 inspiration, become determined, and perform 1 additional action.',	
    'tissue',	
    3
);

-- with traits
INSERT INTO item (type, name_eng, trait1, trait2, description, deck_eng, tier)
VALUES
(
	'item',	
    'Extra Rations',	
    'food',
    null,	
    'At the start of the rally phase, you may deplete this item for a hero in your space to discard 1 Damage.',	
    'ex_rations',	
    1
),
(
	'item',	
    'Extra Rations',	
    'food',	
    null,	
    'At the start of the rally phase, you may deplete this item for a hero in your space to discard 1 Damage.',	
    'ex_rations',	
    1
),
(
	'item',	
    'Breeland Rations',	
    'food',	
    null,	
    'At the start of the rally phase, you may deplete this item for a hero in your space to discard 2 Damage.',	
    'ex_rations',	
    2
),
(
	'item',
	'Hobbit Rations',	
    'food',	
    null,	
    'At the start of the rally phase, you may deplete this item for a hero in your space to discard 1 Damage.',	
    'ex_rations',	
    2
),
(
	'item',	
    'Butterbur Biscuts',	
    'food',	
    null,	
    'At the start of the rally phase, you may deplete this item for a hero in your space to become determined and to discard up to 2 Damage and Fear.',	
    'ex_rations',	
    3
),
(
	'item',	
    'Tookish Apple Cakes',	
    'food',	
    null,	
    'At the start of the rally phase, you may deplete this item for heroes in your space to collectively discard up  2 Damage and Fear.',	
    'ex_rations',	
    3
);

-- without traits
INSERT INTO item (type, name_eng, description, deck_eng, tier)
VALUES
(
	'item',	
    'Helm',
    'If you would suffer any amount of Damage, you may deplete this item to suffer that Damage facedown instead.',
    'helm',	
    1
),
(
	'item',	
    'Dwarf-Forged helm',
    'If you would suffer any amount of Damage, you may deplete this item to suffer that Damage facedown instead.',	
    'helm',	
    2
),
(
	'item',	
    'Fire-Scale',
    'Increase your Damage limit by 1. If you would suffer any amount of Damage, you may deplete this item to suffer that Damage facedown instead.',	
    'helm',	
    3
),
(
	'item',	
    'Book',
    'When you Scout, you may deplete this item to reveal 2 additional cards.',	
    'book',	
    1
),
(
	'item',	
    'Book of Battles',
    'When you Scout, you may deplete this item to reveal 2 additional cards. If you do and there is an enemy in your space, gain 1 inspiration.',
	'book',	
    2
),
(
	'item',	
    'Legendarium of Thror',
    'When you Scout, you may deplete this item to reveal 2 additional cards and prepare 1 additional card. If you do and there is an enemy in your space gain 1 inspiration.',	
    'book',	
    3
),
(
	'item',	
    'Rope',	
    'When you interact with a token and test Might or Agility, you may deplete this item to convert 1 Fate to 1 Success.',	
    'rope',	
    1
),
(
	'item',	
    'Hobson rope',
    'When you interact with a token, if you would test Might, you may test Agility instead. When you interact with a token and test Might or Agility, you may deplete this item to convert 1 Fate to 1 Success.',	
    'rope',	
    2
),
(
	'item',
	'Ninnyhammer Braid',
    'When you interact with a token, if you would test Might, you may test Agility instead. When you interact with a token and test Might or Agility, you may deplete this item to convert 1 Fate to 2 Success.',	
    'rope',	
    3
),
(
	'item',	
    'Torch',
    'You and other heroes in your space ignore darkness.',	
    'torch'	,
    1
),
(
	'item',	
    'Weathertop Torch',
    'You and other heroes in your space ignore darkness. If you attack an enemy in your space, you may deplete this item to add pierce or smite.',	
    'torch',	
    2
),
(
	'item',	
    'Under-Sun',	
    'You and other heroes in your space ignore darkness. If you attack an enemy in your space, you may deplete this item to add pierce, smite and stun.',	
    'torch',	
    3
),
(
	'item',
	'Old pipe',
    'When you Scout during rally phase, if there are no nearby enemies, you may deplete this item to prepare 1 additional card.',	
    'pipe',	
    1
),
(
	'item',	
    'Long-Stemmed Pipe',
    'When you Scout during rally phase, if there are no nearby enemies, you may deplete this item to prepare 1 additional card and discard 2 facedown Fear.',	
    'pipe',	
    2
),
(
	'item',	
    'Storm-Maker',
    'When you Scout during rally phase, if there are no nearby enemies, you may deplete this item to prepare 1 additional card and discard 2 facedown Fear and gain a boon of your choice.',	
    'pipe',	
    3
),
(
	'item',	
    'Old map',
    'After you explore a tile, you may deplete this item to choose another hero to gain 1 inspiration.',	
    'map',	
    1
),
(
	'item',	
    'Bounders Map',
    'After you explore a tile or defeat an enemy group, you may deplete this item to choose another hero to gain 1 inspiration.',	
    'map',	
    2
),
(
	'item',	
    'Bullroarers Course',
    'After you explore a tile or defeat an enemy group, you may deplete this item to choose another hero to gain 1 inspiration. When you attack, you may deplete this item to add lethal.',	
    'map',	
    3
);

-- with traits
INSERT INTO item (type, name_eng, trait1, trait2, description, deck_eng, tier)
VALUES
(
	'item',	
    'Provisions',	
    'food',	
    null,
	'At the end of your turn, you may deplete this item to Scout 1. For each Creature card in your play area, reveal 1 additional card.',	
    'provision',	
    1
),
(
	'item',	
    'Wayfarers Provisions',	
    'food',	
    null,	
    'During your turn, you may deplete this item to Scout 1. For each Creature card in your play area, reveal 1 additional card.',	
    'provision',	
    2
),
(
	'item',	
    'Horselord Supply',	
    'food',	
    null,	
    'During your turn, you may deplete this item to Scout 1. For each Creature card in your play area, reveal 1 additional card.',	
    'provision',	
    3
);

-- values table item, armor
INSERT INTO item (type, name_eng, description, deck_eng, tier)
VALUES
(
	'armor',	
    'Hoary Coat',
    'Suffer all Damage facedown. After you suffer any amount of Damage or Fear, you may prepare one skill from your discard pile.',	
    'beorn',
	0
),
(
	'armor',	
    'Cloak',
    'Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 1 of that Damage or Fear.',	
    'cloak',	
    1
),
(
	'armor',	
    'Ranger Cloak',
    'Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 1 of that Damage or Fear. Before you suffer facedown Damage or Fear, you may prevent 1 of that Damage or Fear.',	
    'cloak',	
    2
),
(
	'armor',	
    'Fangorn Cloak',
    '1 Success: 2 hits. Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 1 of that Damage or Fear.',	
    'cloak',	
    2
),
(
	'armor',	
    'Tuckborough Cloak',
    'Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 1 of that Damage or Fear. After setup, become hidden.',	
    'cloak',	
    2
),
(
	'armor',	
    'Splendor-Well',
    'Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 1 of that Damage or Fear. Before you suffer facedown Damage or Fear, you may prevent 1 of that Damage or Fear. After setup, gain 3 inspiration.',	
    'cloak',	
    3
),
(
	'armor',	
    'Slip-Thorn',
    '1 Success: 2 hits, pierce. Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 2 of that Damage and Fear.',	
    'cloak',	
    3
),
(
	'armor',	
    'Wind-Walker',
    'Before you perform a travel action, you may move 1 space. Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 1 of that Damage or Fear. After setup, become hidden.',	
    'cloak',	
    3
),
(
	'armor',	
    'Storm-Shroud',
    '1 Success: 3 hits, pierce. Before you suffer Damage or Fear, you may spend 1 inspiration to prevent 2 of that Damage and Fear. After setup, gain 1 boon of your choice or 2 inspiration.',
    'cloak',	
    4
),
(
	'armor',	
    'Travel Garb',
    'Increase your Fear limit by 1. Before you suffer facedown Damage, you may prevent 1 of that Damage.',
    'garb',	
    1
),
(
	'armor',	
    'Greenwood Garb',	
    'Increase your Fear limit by 1. Before you suffer facedown Damage, you may prevent 1 of that Damage. After you explore a tile, you may spend 1 inspiration to Scout 2.',	
    'garb',	
    2
),
(
	'armor',	
    'Westmarch Garb',
    'Increase your Damage and Fear limit by 1. Before you suffer facedown Damage, you may prevent 1 of that Damage.',	
    'garb',	
    2
),
(
	'armor',	
    'Wanderers Wish',
    'Increase your Fear limit by 1. Before you suffer facedown Damage, you may prevent 2 of that Damage. After you explore a tile, you may spend 1 inspiration to Scout 4.',	
    'garb',	
    3
),
(
	'armor',	
    'Ever-Bloom',
    'Increase your Damage and Fear limits by 1. Before you suffer facedown Damage, you may prevent 1 of that Damage. When Damage or Fear instruct you to doscard inspiration or prepared cards, ignore those effects.',	
    'garb',	
    3
),
(
	'armor',	
    'Endless Road',
    'Increase your Fear limit by 2. Before you suffer facedown Damage, you may prevent 2 of that Damage. Once per round, during your turn, you may reveal the top 4 cards of any deck and place them back in any order.',	
    'garb',	
    4
),
(
	'armor',	
    'Ring Mail',
    'Decrease your Agility by 1. If you would test Wisdom, Spirit or Wit to negate, you may test Might instead.',	
    'mail',	
    1
),
(
	'armor',	
    'Twice-Wrought Ring Mail',
    'When you suffer Damage, after resolving all Damage from single source, gain 1 inspiration. If you would test Wisdom, Spirit or Wit to negate, you may test Might instead.',	
    'mail',	
    2
),
(
	'armor',	
    'Evendim Ring Mail',
    'Decrease your Agility by 1. Increase your Fear limit by 1. If you would test Wisdom, Spirit or Wit to negate, you may test Might instead.',	
    'mail',	
    2
),
(
	'armor',	
    'Wraths-End',
    'Decrease your Agility by 1. Increase your Spirit by 1. Increase your Damage and Fear limit by 1. If you would test Wisdom, Spirit or Wit to negate, you may test Might instead.',	
    'mail',	
    3
),
(
	'armor',	
    'Blade-Bane',
    'Decrease your Agility by 1. Increace your Damage and Fear limits by 1. If you would test Wisdom, Spirit, or Wit to negate, you may test Might instead. Suffer all Damage facedown.',
	'mail',	
    3
),
(
	'armor',	
    'Second Skin',
    'Incease your Agility by 1. Increase your Fear limit by 1. If you would test Wisdom, Spirit or Wit to negate, you may test Might instead.',	
    'mail',	
    3
),
(
	'armor',	
    'Dragon Scale',
    'Increase your Damage, Fear and inspiration limits by 1. When you test to negete, you may test Might of Spirit instead. Suffer all Damage facedown.',	
    'mail',	
    4
),
(
	'armor',	
    'Padded Armor',
    'When you test to negate Damage or Fear, you may spend 1 inspiration to convert 2 Fate to 2 Success.',
	'gambeson',	
    1
),
(
	'armor',	
    'Guards Tabard',
    'When you test to negate Damage or Fear, you may spend 1 inspiration to convert 2 Fate to 2 Success. After you suffer any amount of Damage or Fear, you may flip 1 Damage or Fear facedown.',	
    'gambeson',	
    2
),
(
	'armor',	
    'Vanguard Armor',
    'When you test to negate Damage or Fear, you may spend 1 inspiration to convert 2 Fate to 3 Success.',	
    'gambeson',	
    2
),
(
	'armor',	
    'Ever-Vigilant',
    'When you test to negate Damage or Fear, you may spend 1 inspiration to convert 2 Fate to 2 Success. After you suffer any amount of Damage or Fear, you may flip up to 2 Damage or Fear facedown.',	
    'gambeson',	
    3
),
(
	'armor',	
    'Glory-Mantle',
    'You can have up to 1 additional prepared skill. When you test to negare Damage or Fear, you may spend 1 inspiration to convert 2 Fate to 3 Success.',	
    'gambeson',	
    3
),
(
	'armor',	
    'Heart-Swell',
    'Increase your inspiration limit by 1. When you test to negate Damage or Fear, you may convert 2 Fate to 2 Success.',	
    'gambeson',	
    3
),
(
	'armor',	
    'Star of the West',
    'Increase your inspiration limit by 1. When you test to negate Damage or Fear, you may convert 1 Fate to 2 Success. Suffer all Fear facedown.',
	'gambeson',	
    4
),
(
	'armor',	
    'Plate Armor',
    'Decrease your Agility by 1. When you test to negate Damage, add 1 Success.',	
    'plate',	
    1
),
(
	'armor',	
    'Iron Hills Plate',
    'Decrease your Agility by 1. When you test to negate, add 1 Success.',
    'plate',	
    2
),
(
	'armor',
	'Defender of the Citadel',
    'Decrease your Agility by 1. Increase your Might and Spirit by 1. When you test to negate, add 1 Success.',
	'plate',	
    3
),
(
	'armor',	
    'Iron-Soul',
    'Decrease your Agility by 1. When a hero in your spce tests to negate, add 1 Success. Before you perform a last stand, flip all of your Damage and Fear facedown.',	
    'plate',	
    3
),
(
	'armor',
	'Kings Crest',
    'When a hero in your space tests to negate, add 1 Success. Once per phase, when a hero in your space tests, that hero may discard 1 card from the test to reveal 2 additional cards.',
	'plate',	
    4
);