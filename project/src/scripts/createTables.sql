/* Ensure no duplicate tables */
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS personalitys;
DROP TABLE IF EXISTS holdings;
DROP TABLE IF EXISTS followers;
DROP TABLE IF EXISTS rings;
DROP TABLE IF EXISTS windss;
DROP TABLE IF EXISTS strongholds;
DROP TABLE IF EXISTS attachmentss;
DROP TABLE IF EXISTS monk_shugenja_attachments;
DROP TABLE IF EXISTS acts;
DROP TABLE IF EXISTS regions;
DROP TABLE IF EXISTS senseis;
DROP TABLE IF EXISTS types;

/* Create Type table */
CREATE TABLE types(
	typeID TINYINT not null,
	typeName VARCHAR (7) not null,
	PRIMARY KEY (typeID)
/*	on UPDATE cascade*/
/*	on DELETE cascade,*/
	)ENGINE = InnoDB;

/* Create Event table */
CREATE TABLE events(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Personality table */
CREATE TABLE personalitys(
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
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;	 

/* Create Holding table */
CREATE TABLE holdings(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	goldProduction TINYINT,
	honorProduction TINYINT,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Follower table */
CREATE TABLE followers(
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
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Ring table */
CREATE TABLE rings(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Winds table */
CREATE TABLE winds(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Stronghold table */
CREATE TABLE strongholds(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	provinceStrength TINYINT check (provinceStrength >= 0),
	familyHonor TINYINT not null,
	goldProduction TINYINT check (goldProduction >= 0),
	keywords VARCHAR (75),
	description VARCHAR (500),
	clan VARCHAR (15) not null,
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Attachments table */
CREATE TABLE attachments(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	strength TINYINT not null,
	chi TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	keywords VARCHAR (75),
	description VARCHAR (400),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create MonkShugenjaAttachments tables */
CREATE TABLE monk_shugenja_attachments(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check  (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Action table */
CREATE TABLE acts(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	goldCost TINYINT check (goldCost >= 0),
	keywords VARCHAR (75),
	description VARCHAR (500),
	focus TINYINT check (focus >= 0),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Region table */
CREATE TABLE  regions(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;

/* Create Sensei table */
CREATE TABLE senseis(
	title VARCHAR (40) not null,
	typeID TINYINT not null,
	provinceStrength TINYINT,
	goldProduction TINYINT,
	familyHonor TINYINT,
	keywords VARCHAR (75),
	description VARCHAR (500),
	PRIMARY KEY (title),
	FOREIGN KEY (typeID) REFERENCES types (typeID)
	on UPDATE cascade
	on DELETE cascade
	)ENGINE = InnoDB;