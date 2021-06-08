/* Q6: Find the player who had the most success stealing bases in 2016, 
       where __success__ is measured as the percentage of stolen base 
	   attempts which are successful. (A stolen base attempt results 
	   either in a stolen base or being caught stealing.) Consider only 
	   players who attempted _at least_ 20 stolen bases. */
	   
SELECT namegiven, sb, cs,
	   ROUND(((sb::numeric/(sb::numeric + cs::numeric))*100),2) AS percent_successful_steal
FROM people FULL JOIN batting
	ON people.playerid = batting.playerid
WHERE (sb::numeric+cs::numeric) >= 20
AND yearid = 2016
ORDER BY percent_successful_steal DESC;

-- A: Christopher Scott with 91.3% of steals being successful
