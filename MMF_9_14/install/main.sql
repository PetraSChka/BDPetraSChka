SET TIME ON
SET TIMING ON
SET APPINFO ON
SPOOL INSTALL_SCHEMA.LOG

DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION =  &&2

SET SERVEROUTPUT ON

PROMPT *********
PROMPT Username to create: &&USER_NAME
PROMPT Path of datafile location: &&TBS_LOCATION
PROMPT *********
PROMPT

PROMPT *********
PROMPT Calling create_tablespace.sql for data tablespace
@create_tablespace.sql &&USER_NAME &&TBS_LOCATION DATA
PROMPT *********
PROMPT

PROMPT *********
PROMPT Calling create_tablespace.sql for index tablespace
@create_tablespace.sql &&USER_NAME &&TBS_LOCATION INDEX
PROMPT *********
PROMPT

PROMPT *********
PROMPT Calling create_user.sql 
@create_user.sql &&USER_NAME oracle &&USER_NAME._DATA &&USER_NAME._INDEX
PROMPT *********
PROMPT

PROMPT *********
PROMPT Calling grant.sql for &&USER_NAME
@grants.sql &&USER_NAME
PROMPT *********
PROMPT

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME;
UNDEFINE TBS_LOCATION;
UNDEFINE SCHEMA_PASSWORD

SPOOL OFF