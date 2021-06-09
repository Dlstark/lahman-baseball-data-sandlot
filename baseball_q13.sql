SELECT DISTINCT p.namegiven, p.throws, pi.so, pi.r, pi.g, p.debut, p.finalgame
FROM people AS p LEFT JOIN pitching AS pi
USING(playerid)
WHERE p.throws IS NOT NULL
AND p.throws ='L';
-- A: 13670 Left hand pitchers

SELECT DISTINCT p.namegiven, p.throws, pi.so, pi.r, pi.g, p.debut, p.finalgame
FROM people AS p LEFT JOIN pitching AS pi
USING(playerid)
WHERE p.throws IS NOT NULL
AND p.throws ='R';
-- A: 39976 Right handed pitchers

-- So when you take the number of left handed pitchers and divide by total
-- which is 53646 youll see that roughly 25% oh pitchers are left handed leaving 
-- 75% being right handed

SELECT DISTINCT p.namegiven, SUM(pi.so) AS strikeouts, SUM(pi.r) AS runs_allowed, 
				SUM(pi.g) AS games_played, p.throws, a.awardid
FROM people AS p LEFT JOIN pitching AS pi
USING(playerid)
LEFT JOIN awardsplayers AS a
ON (p.playerid) = (a.playerid)
WHERE p.throws IS NOT NULL
AND pi.so IS NOT NULL
AND p.throws = 'R'
AND awardid = 'Cy Young Award'
GROUP BY p.namegiven, p.throws, a.awardid
ORDER BY SUM(pi.so) DESC;

-- A: Out of the 77 total pitchers that recived the Cy Young Award, 53 of them
-- were right handed proving that right handed pitchers have a higher chance to win that award.
-- However only 25% of pitchers are left hand so if you break down the math behind it you will see that per percentage 
-- leht handed pitchers actually have a better chance of winning this reward.

SELECT DISTINCT p.namegiven, SUM(pi.so) AS strikeouts, SUM(pi.r) AS runs_allowed, 
				SUM(pi.g) AS games_played, p.throws, h.inducted
FROM people AS p LEFT JOIN pitching AS pi
USING(playerid)
LEFT JOIN halloffame AS h
ON (p.playerid) = (h.playerid)
WHERE p.throws IS NOT NULL
AND pi.so IS NOT NULL
AND p.throws = 'R'
AND inducted = 'Y'
GROUP BY p.namegiven, p.throws, h.inducted
ORDER BY SUM(pi.so) DESC;

-- A: Out of the 100 pitchers inducted into the hall of fame, 77 of those pitchers are right 
-- handed. even with the percentage aspect taken into consideration, right handed pitchers 
-- still have a batter chance of getting inducted into the hall of fame.
