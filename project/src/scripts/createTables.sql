/* Ensure no duplicate tables */
DROP TABLE IF EXISTS Event;
DROP TABLE IF EXISTS Personality;
DROP TABLE IF EXISTS Holding;
DROP TABLE IF EXISTS Follower;
DROP TABLE IF EXISTS Ring;
DROP TABLE IF EXISTS Winds;
DROP TABLE IF EXISTS Stronghold;
DROP TABLE IF EXISTS Attachments;
DROP TABLE IF EXISTS MonkShugenjaAttachments;
DROP TABLE IF EXISTS Action;
DROP TABLE IF EXISTS Region;
DROP TABLE IF EXISTS Sensei;
DROP TABLE IF EXISTS Types;

/* Create Type table */
CREATE TABLE Types(
	typeID TINYINT not null,
	typeName VARCHAR (7) not null,
	PRIMARY KEY (typeID)
/*	on UPDATE cascade*/
/*	on DELETE cascade,*/
	)ENGINE = InnoDB;

/* Create Event table */
CREATE TABLE Event(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Personality table */
CREATE TABLE Personality(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	strength TINYINT check (strength >= 0),
	chi TINYINT check (chi >= 0),
	goldCost TINYINT check (goldCost >= 0),
	familyHonorRequirement TINYINT,
	personalHonor TINYINT,	 	 
	keywords VARCHAR (75),
	description VARCHAR (500),
	clan VARCHAR (15) not null,
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;	 

/* Create Holding table */
CREATE TABLE Holding(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	goldProduction TINYINT,
	honorProduction TINYINT,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Follower table */
CREATE TABLE Follower(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	strength TINYINT check (strength >= 0),
	chi TINYINT check (chi >= 0),
	personalHonor TINYINT,
	goldCost TINYINT not null check (goldCost >= 0),
	honorRequirement TINYINT,
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Ring table */
CREATE TABLE Ring(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Winds table */
CREATE TABLE Winds(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Stronghold table */
CREATE TABLE Stronghold(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	provinceStrength TINYINT check (provinceStrength >= 0),
	familyHonor TINYINT not null,
	goldProduction TINYINT check (goldProduction >= 0),
	keywords VARCHAR (75),
	description VARCHAR (500),
	clan VARCHAR (15) not null,
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Attachments table */
CREATE TABLE Attachments(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	strength TINYINT not null,
	chi TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	keywords VARCHAR (75),
	description VARCHAR (400),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create MonkShugenjaAttachments tables */
CREATE TABLE MonkShugenjaAttachments(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check  (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Action table */
CREATE TABLE Action(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Region table */
CREATE TABLE  Region(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Sensei table */
CREATE TABLE Sensei(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	provinceStrength TINYINT,
	goldProduction TINYINT,
	familyHonor TINYINT,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES Types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;