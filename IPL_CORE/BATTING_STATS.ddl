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