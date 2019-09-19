
CREATE TABLE command (
  name character varying(32) NOT NULL DEFAULT(''),
  status boolean NOT NULL DEFAULT(false),
  extra character varying(255),
  CONSTRAINT command_pkey PRIMARY KEY (name)
);

--DROP INDEX ix_command_name;

CREATE INDEX ix_command_lookupcode --An index on the command table name column
  ON command
  USING btree
  (lower(name::text) COLLATE pg_catalog."default");

INSERT INTO command (name, status, extra) VALUES (
       'relayone'
     , false
	 , '')
RETURNING name;

INSERT INTO command (name, status, extra) VALUES (
       'relaytwo'
     , false
	 , '')
RETURNING name;

INSERT INTO command (name, status, extra) VALUES (
       'droneone'
     , false
	 , '')
RETURNING name;

--SELECT * FROM command;

--DELETE FROM command;
