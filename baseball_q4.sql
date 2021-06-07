/* Q4: Using the fielding table, group players into three groups based on their 
       position: label players with position OF as "Outfield", those with position
	   "SS", "1B", "2B", and "3B" as "Infield", and those with position "P" or "C"
	   as "Battery". Determine the number of putouts made by each of these three 
	   groups in 2016. */

SELECT *
FROM fielding;

WITH grouped_positions as (SELECT *, CASE WHEN pos = 'OF' THEN 'Outfield'
									   	  WHEN pos = 'SS' 
						   					OR pos = '1B' 
						   					OR pos = '2B' 
						   					OR pos = '3B' 
						   					THEN 'Infield'
			                           	  WHEN pos = 'P' 
						   					OR pos = 'C'
						   					THEN 'Battery' END as pos_group
						   FROM fielding)
SELECT pos_group, SUM(po) as putouts
FROM grouped_positions
WHERE yearid = '2016'
GROUP BY pos_group;