SET SESSION FOREIGN_KEY_CHECKS=0;


/* Create Tables */

CREATE TABLE GB_MEMBER
(
	MEM_SEQ decimal NOT NULL AUTO_INCREMENT,
	GB_SEQ decimal NOT NULL,
	GB_GRADE varchar(1),
	FST_JOIN_DT date,
	LT_CH_DT date,
	LT_CH_ID varchar(100),
	PRIMARY KEY (MEM_SEQ)
);


CREATE TABLE SP_GB
(
	GB_SEQ decimal NOT NULL AUTO_INCREMENT,
	GB_NM varchar(500) NOT NULL,
	GB_EP varchar(2000),
	FST_REG_DT date,
	LT_CH_DT date,
	LT_CH_ID varchar(100),
	PRIMARY KEY (GB_SEQ)
);


CREATE TABLE SP_MEMBER
(
	MEM_SEQ decimal NOT NULL AUTO_INCREMENT,
	MEM_NICK varchar(30) NOT NULL,
	LINK_SC varchar(1) NOT NULL,
	LINK_SC_SPC varchar(300),
	LAST_ACCESS_DT date,
	FST_JOIN_DT date NOT NULL,
	LT_CH_DT date NOT NULL,
	LT_CH_ID varchar(100) NOT NULL,
	PRIMARY KEY (MEM_SEQ),
	UNIQUE (MEM_NICK)
);


CREATE TABLE SP_VIDEO
(
	VD_SEQ decimal NOT NULL AUTO_INCREMENT,
	MEM_SEQ decimal NOT NULL,
	VD_URL varchar(500),
	FST_REG_DT date NOT NULL,
	LT_CH_DT date NOT NULL,
	LT_CH_ID varchar(100) NOT NULL,
	PRIMARY KEY (VD_SEQ),
	UNIQUE (MEM_SEQ)
);



/* Create Indexes */

CREATE INDEX GB_INDEX ON SP_GB (GB_NM ASC);
CREATE INDEX MEM_INDEX ON SP_MEMBER (MEM_SEQ ASC, MEM_NICK ASC, LINK_SC_SPC ASC);
CREATE INDEX VD_INDEX ON SP_VIDEO (MEM_SEQ ASC);



