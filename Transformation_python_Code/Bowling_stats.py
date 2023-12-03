import snowflake.connector

    # Snowflake connection parameters
conn_params = {
    'user': 'DE2024',
    'password': 'Kol@2023',
    'account': 'lbcujsb-PS80693',
    'warehouse': 'COMPUTE_WH',
    'database': 'IPL_APP',
    'schema': 'STATS',
    'role': 'ACCOUNTADMIN',
}
    # Establishing a connection to Snowflake
connection = snowflake.connector.connect(**conn_params)
cursor = connection.cursor()

try:


        # Insert data into the new table in the destination schema
        insert_query = f"""INSERT INTO IPL_APP.STATS.BOWLING_STATS 
        					(player_id
							,player_name
							,AGE
							,batting_style
							,bowling_style
							,overs
							,balls
							,maidens
							,wickets
							,Strike_rate
							,ECONOMY
							,dots
							,fours
							,sixes
							,wides
							,noballs)
        				select distinct 
							p.player_id
							,p.player_name
							,ROUND(DATEDIFF(YEAR, p.dob, CURRENT_DATE())) AS age
							,p.batting_style
							,p.bowling_style
							,sum(b.overs)
							,sum(b.balls)
							,sum(b.maidens)
							,sum(b.wickets)
							,CASE
							    WHEN SUM(b.balls) IS NULL or SUM(b.balls) =0 THEN 0
							    WHEN SUM(b.wickets) IS NULL or SUM(b.wickets) =0 THEN 0
							    ELSE (sum(b.balls)/sum(b.wickets))
							END as Strike_rate
							,SUM(b.ECONOMY)
							,SUM(b.dots)
							,SUM(b.fours)
							,SUM(b.sixes)
							,SUM(b.wides)
							,SUM(b.noballs)
							from IPL_APP.IPL_CORE.PLAYER_INFO p
						  left outer join IPL_APP.IPL_CORE.BOWLING_STATS b
						on p.player_id = b.bowler_id
						 group by all;
        				"""
        cursor.execute(insert_query)

        # Commit the changes
        connection.commit()

finally:
        # Close the cursor and connection
        cursor.close()
        connection.close()
