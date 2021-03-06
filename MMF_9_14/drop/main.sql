SET TIME ON
SET TIMING ON
SPOOL DROP_SCHEMA.LOG

DEFINE USER_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = &&2
DEFINE INDEX_TABLESPACE_NAME = &&3

SET SERVEROUTPUT ON

PROMPT *********
PROMPT Username caling to drop_user: &&USER_NAME
@drop_user.sql &&USER_NAME
PROMPT *********
PROMPT

PROMPT *********
PROMPT Username caling to drop_tablspace: &&DATA_TABLESPACE_NAME
@drop_tablespace.sql &&DATA_TABLESPACE_NAME
PROMPT *********
PROMPT

PROMPT *********
PROMPT Username caling to drop_tablspace: &&INDEX_TABLESPACE_NAME
@drop_tablespace.sql &&INDEX_TABLESPACE_NAME
PROMPT *********
PROMPT

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE DATA_TABLESPACE_NAME
UNDEFINE INDEX_TABLESPACE_NAME

SPOOL OFF