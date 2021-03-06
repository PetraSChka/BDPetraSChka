DEFINE VIEW_NAME = &&1

CREATE VIEW &&VIEW_NAME AS 
SELECT 
	S.SEASON_YEAR CHAMPIONSHIP,
	LG.NAME LEAGUE,
	TM1.YEAR_OF_FOUNDATION FOUNDED_TEAM_1,
    CH1.NAME TRAINER_TEAM_1,
    TM2.YEAR_OF_FOUNDATION FOUNDED_TEAM_2,
    CH2.NAME TRAINER_TEAM_2,
	TM1.NAME TEAM_1,
    TM2.NAME TEAM_2,
	EV.EVENT EVENT,
    EV.PLAYER_NAME Player_Last_Name,
    EV.TEAM_NAME PLAYER_TEAM,
    PS.POSITION POSITION,
    EV.EVENT_TIME EVENT_TIME,
	M.DATE_OF_MATCH Date_of_match,
    ST.CITY LOCATION,
    ST.NAME VENUE,
    ST.CAPACITY CAPACITY,
	M.AVG_PRICE AVG_PRICE,
	M.TICKETS_SOLD TICKETS_SOLD
FROM MATCHES M
LEFT JOIN TEAMS TM1 ON TM1.NAME = M.FIRST_TEAM_NAME
LEFT JOIN TEAMS TM2 ON TM2.NAME = M.SECOND_TEAM_NAME
LEFT JOIN EVENTS EV ON M.MATCH_ID = EV.MATCH_ID
LEFT JOIN PLAYERS PS ON EV.PLAYER_NAME = PS.LASTNAME
LEFT JOIN SEASONS S ON M.SEASON_ID = S.SEASON_ID
LEFT JOIN LEAGUES LG ON TM1.LEAGUE_ID = LG.LEAGUE_ID
LEFT JOIN STADIUMS ST ON M.STADIUM_ID = ST.STADIUM_ID
LEFT JOIN COACHES CH1 ON TM1.TEAM_ID = CH1.TEAM_ID
LEFT JOIN COACHES CH2 ON TM2.TEAM_ID = CH2.TEAM_ID;

commit;
    