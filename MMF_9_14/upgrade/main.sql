SET TIMING ON

SPOOL UPGRADE001_SCHEMA.LOG
SET SERVEROUTPUT ON

DEFINE USER_NAME = &&1

PROMPT Connecting to user &&USER_NAME

connect &&USER_NAME/oracle 

PROMPT Creating tables

-- Creating tables
@upgrade001\create_table_coaches.sql
@upgrade001\create_table_leagues.sql
@upgrade001\create_table_matches.sql
@upgrade001\create_table_player_statistics.sql
@upgrade001\create_table_players.sql
@upgrade001\create_table_seasons.sql
@upgrade001\create_table_stadiums.sql
@upgrade001\create_table_team_statistics.sql
@upgrade001\create_table_teams.sql
@upgrade001\create_table_transfers.sql
@upgrade001\create_table_events.sql

-- Creating constraints
PROMPT Creating constraints
@upgrade001\create_constraints.sql &&USER_NAME

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE USER_NAME