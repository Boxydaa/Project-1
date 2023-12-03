CREATE OR REPLACE TABLE BATTING_STATS(
player_id	NUMBER(38,0) NOT NULL ,
player_name	VARCHAR(100),
AGE	NUMBER(10,0),
batting_style	VARCHAR(50),
bowling_style	VARCHAR(50),
team	VARCHAR(50),
Total_runs	NUMBER(38,0),
Strike_rate	DECIMAL(10,2),
fours	NUMBER(10,0),
sixes	NUMBER(10,0),
avgerage	DECIMAL(10,2));