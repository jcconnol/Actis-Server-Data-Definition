
CREATE TABLE command (
  name character varying(32) NOT NULL DEFAULT(''), --Stored in the edu.uark.models.entities:ProductEntity#lookupCode property. See also the named constant defined in edu.uark.models.entities.fieldnames:ProductFieldNames that is used for Java <-> SQL mappings.
  status boolean NOT NULL DEFAULT(false), --Stored in the edu.uark.models.entities:ProductEntity#count property. See also the named constant defined in edu.uark.models.entities.fieldnames:ProductFieldNames that is used for Java <-> SQL mappings.
  extra character varying(255),
  CONSTRAINT command_pkey PRIMARY KEY (name)
);

--DROP INDEX ix_command_name;

CREATE INDEX ix_product_lookupcode --An index on the command table name column
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