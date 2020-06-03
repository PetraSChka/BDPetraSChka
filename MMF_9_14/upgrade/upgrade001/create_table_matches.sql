CREATE TABLE MATCHES (
	MATCH_ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	SEASON_ID NUMBER NOT NULL,
	FIRST_TEAM_NAME VARCHAR2(100),
	SECOND_TEAM_NAME VARCHAR2(100),
	DATE_OF_MATCH VARCHAR2(100),
	AVG_PRICE DECIMAL,
	STADIUM VARCHAR2(100),
	TICKETS_SOLD NUMBER,
	CONSTRAINTS MATCH_ID_PK PRIMARY KEY (MATCH_ID)
);