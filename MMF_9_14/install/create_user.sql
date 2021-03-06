PROMPT *******************************
PROMPT Script start: create_user.sql
PROMPT *******************************

SET SERVEROUTPUT ON

define SCHEMA_NAME = &&1
define SCHEMA_PASSWORD = &&2
define DEFAULT_TBS = &&3
define INDEX_TBS = &&4

CREATE USER &&SCHEMA_NAME
IDENTIFIED BY &&SCHEMA_PASSWORD
DEFAULT TABLESPACE &&DEFAULT_TBS
TEMPORARY TABLESPACE temp
QUOTA 20M on &&DEFAULT_TBS;
QUOTA 20M on &&INDEX_TBS;

undefine SCHEMA_NAME 
undefine SCHEMA_PASSWORD
undefine DEFAULT_TBS
undefine INDEX_TBS

