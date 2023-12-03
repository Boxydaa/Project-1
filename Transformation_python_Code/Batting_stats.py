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
        insert_query = f"""INSERT INTO IPL_APP.STATS.BATTING_STATS 
        					(player_id
							,player_name
							,AGE
							,batting_style
							,bowling_style
							,Total_runs
							,Strike_rate
							,fours
							,sixes
							,avg)
        				select distinct
						p.player_id
						,p.player_name
						, ROUND(DATEDIFF(YEAR, p.dob, CURRENT_DATE())) AS age
						,p.batting_style
						,COALESCE(p.bowling_style,'Did not bowl') as bowling_style
						,sum(b.runs) as Total_runs
						,CASE
						    WHEN SUM(b.balls) IS NULL or SUM(b.balls) =0 THEN 0
						    ELSE (sum(b.runs)/sum(b.balls))*100 
						END as Strike_rate
						,COALESCE(sum(b.fours),'0') as fours
						,COALESCE(sum(b.sixes),'0') as Sixes
						,Total_runs/count(isout = 'yes') as avg
						from IPL_APP.IPL_CORE.PLAYER_INFO p
						left outer join IPL_APP.IPL_CORE.BATTING_STATS b
						on p.player_id = b.batsman_id
						group by p.player_id,p.player_name,b.batsman_id,age,p.batting_style
						,p.bowling_style
						order by Total_runs;
        				"""
        cursor.execute(insert_query)

        # Commit the changes
        connection.commit()

finally:
        # Close the cursor and connection
        cursor.close()
        connection.close()
