-- Find the average number of strikeouts per game by decade since 1920. Round the numbers you report to 2 decimal places. 
-- Do the same for home runs per game. Do you see any trends?

SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1920' AND '1929';
-- A:2.81
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1920' AND '1929';
-- A:.4
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1930' AND '1939';
-- A:3.32
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1930' AND '1939';
-- A:.55
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1940' AND '1949';
-- A:3.55
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1940' AND '1949';
-- A:.52
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1950' AND '1959';
-- A:4.4
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1950' AND '1959';
-- A:.84
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1960' AND '1969';
-- A:5.72
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1960' AND '1969';
-- A:.82
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1970' AND '1979';
-- A:5.14
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1970' AND '1979';
-- A:.75
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1980' AND '1989';
-- A:5.36
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1980' AND '1989';
-- A:.81
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1990' AND '1999';
-- A:6.15
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '1990' AND '1999';
-- A:.96
SELECT ROUND(SUM(soa):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '2000' AND '2009';
-- A:6.56
SELECT ROUND(SUM(hra):: numeric / SUM(g), 2) AS avg_strike 
FROM teams
WHERE yearid BETWEEN '2000' AND '2009';
-- A:1.07

-- TREND: Throughout the years not only have the average strikeouts per game increases, but the average amount of homeruns per game has also increased.



