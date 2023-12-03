CREATE OR REPLACE TABLE IPL_HISTORY(
Season 	NUMBER,
Title	VARCHAR,
Match_ID	NUMBER,
Match_Name	VARCHAR,
Series_ID	NUMBER,
Series_Name	VARCHAR,
Match_Date	DATE,
Match_Format	VARCHAR,
Team1_ID	NUMBER,
Team1_Name	VARCHAR,
Team1_Captain	VARCHAR,
Team1_Runs_Scored	NUMBER,
Team1_Wickets_Fell	NUMBER,
Team1_Extras_Received	NUMBER,
Team2_ID	NUMBER,
Team2_Name	VARCHAR,
Team2_Captain	VARCHAR,
Team2_Runs_Scored	NUMBER,
Team2_Wickets_Fell	NUMBER,
Team2_Extras_Received	NUMBER,
Match_Venue_Stadium	VARCHAR,
Match_Venue_City	VARCHAR,
Match_Venue_Country	VARCHAR,
Umpire_1	VARCHAR,
Umpire_2	VARCHAR,
Match_Referee	VARCHAR,
Toss_Winner	VARCHAR,
Toss_Winner_Choice	VARCHAR,
Match_Winner	VARCHAR,
Match_Result_Text	VARCHAR,
Man_of_the_Match_Player	VARCHAR,
Debut_Players	VARCHAR
);

DELETE FROM FOW_CARD;
CREATE OR REPLACE TABLE FOW_CARD(
match_id NUMBER(20,0),
innings	NUMBER(1,0),
team	VARCHAR(100) ,
player_id	 NUMBER(20,0),
wicket	 NUMBER(2,0),
overs	 DECIMAL(20,1),
runs NUMBER(4,0)
);


CREATE OR REPLACE TABLE PLAYER_INFO(
player_id	NUMBER(38,0),
player_object_id	NUMBER(38,0),
player_name	VARCHAR(50),
dob	DATE,
dod	DATE,
gender	CHAR(1),
batting_style VARCHAR(50)	,
bowling_style	VARCHAR(50)	,
country_id	NUMBER(38,0));



DELETE FROM BOWLING_STATS;

CREATE OR REPLACE TABLE BOWLING_STATS(
match_id	NUMBER(38,0),
innings	INTEGER,
team	VARCHAR(20),
opposition	VARCHAR(20),
bowler_id	NUMBER(38,0),
overs	DECIMAL(10,1),
balls	INTEGER,
maidens	NUMBER(38,0),
conceded	NUMBER(38,0),
wickets	INTEGER,
economy	DECIMAL(10,2),
dots	INTEGER,
fours	INTEGER,
sixes	INTEGER,
wides	INTEGER,
noballs INTEGER);



CREATE OR REPLACE TABLE BATTING_STATS(
match_id	NUMBER(38,0),
innings	INTEGER,
team	VARCHAR(50),
batsman_id	NUMBER(38,0),
batsman_position	INTEGER,
runs	NUMBER(20,0),
balls	NUMBER(38,0),
fours	INTEGER,
sixes	INTEGER,
strikerate	DECIMAL(10,2),
isout	CHAR(10),
wickettype	VARCHAR(50),
bowler_id NUMBER(38,0)
);


CREATE OR REPLACE TABLE BALL_BY_BALL_DATA(
series_id	NUMBER(38,0),
match_id	NUMBER(38,0),
innings_no	INTEGER,
batsman_id	NUMBER(38,0),
bowler_id	NUMBER(38,0),
over_number	INTEGER,
ball_number	INTEGER,
over	INTEGER,
total_runs	NUMBER(38,0),
batsman_runs	NUMBER(38,0),
isfour	BOOLEAN,
issix	BOOLEAN,
iswicket	BOOLEAN,
byes	INTEGER,
legbyes	INTEGER,
wides	INTEGER,
noballs	INTEGER,
penalties	INTEGER,
out_player_id	NUMBER(38,0),
current_innings_runs	NUMBER(38,0),
current_innings_wickets	INTEGER);


CREATE OR REPLACE TABLE PARTNERSHIP_STATS(
match_id	NUMBER(38,0),
innings	INTEGER,
for_wicket	INTEGER,
team	VARCHAR(20),
opposition	VARCHAR(20),
player1_id	NUMBER(38,0),
player2_id	NUMBER(38,0),
player1_runs	INTEGER,
player2_runs	INTEGER,
player1_balls	INTEGER,
player2_balls	INTEGER,
partnership_runs	INTEGER,
partnership_balls	INTEGER
);