
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