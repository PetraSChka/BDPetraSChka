CREATE TABLE PLAYERS 
(
	PLAYER_ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	LASTNAME VARCHAR2(100),
	POSITION VARCHAR2(100),
	TEAM_NAME VARCHAR2(100),
	CONSTRAINTS PLAYER_ID_PK PRIMARY KEY (PLAYER_ID)
);