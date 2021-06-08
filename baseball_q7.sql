/* Q7: From 1970 – 2016, what is the largest number of wins for a team that did not win the world
       series? What is the smallest number of wins for a team that did win the world series? Doing
	   this will probably result in an unusually small number of wins for a world series champion
	   – determine why this is the case. Then redo your query, excluding the problem year. How often 
	   from 1970 – 2016 was it the case that a team with the most wins also won the world series? 
	   What percentage of the time? */


-- What is the largest number of wins for a team that did not win the world series?
SELECT teamid, wswin, w
FROM teams
WHERE wswin = 'N'
AND yearid BETWEEN 1970 and 2016
ORDER BY w DESC;
-- 116 (SEA)


-- What is the smallest number of wins for a team that did win the world series?
SELECT teamid, wswin, w
FROM teams
WHERE wswin = 'Y'
AND yearid BETWEEN 1970 and 2016
ORDER BY w;
-- 63 (LAN)


/* Doing this will probably result in an unusually small number of wins for a world series
   champion – determine why this is the case. */
SELECT teamid, yearid, wswin, w
FROM teams
WHERE yearid BETWEEN 1970 and 2016
AND teamid = 'LAN'
ORDER BY teamid, yearid;
/* They have a small number of wins despite winning the world series because they only won the 
   world series once from 1970 to 2016, in 1981. */


/* Then redo your query, excluding the problem year. How often from 1970 – 2016 was it the case
   that a team with the most wins also won the world series? What percentage of the time? */
SELECT yearid, max(w) as max_wins
FROM teams
WHERE (yearid BETWEEN 1970 and 1980 OR yearid BETWEEN 1982 and 2016)
GROUP BY yearid
ORDER BY yearid;