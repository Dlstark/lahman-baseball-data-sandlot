SELECT DISTINCT s.schoolname, p.namegiven, 
		sal.salary:: numeric :: text::money, sal.yearid
FROM schools as s LEFT JOIN collegeplaying as c
using(schoolid)
LEFT JOIN people as p
ON (c.playerid) = (p.playerid)
LEFT JOIN salaries as sal
ON (c.playerid) = (sal.playerid)
WHERE schoolstate = 'TN'
AND sal.salary IS NOT NULL
ORDER BY sal.salary::numeric::text::money DESC;

-- A: Vandy has the highest 1 year salary at 30,000,000 for David Taylor in 2016, 
-- But UT is pretty comsistantly up there with Todd Lynn.  No direct winner, 
-- just depends how you want to weight the question.

