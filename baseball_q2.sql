-- Find the name and height of the shortest player in the database. How many games did he play in? What is the name of the team for which he played?

SELECT name FROM teams WHERE teamid = 'SLA';

SELECT Distinct(namegiven),height,playerid
FROM people
WHERE height IS NOT NULL
ORDER BY height;
	SELECT *
	FROM appearances
	WHERE playerid = 'gaedeed01';

-- A: Edward Carl - 43in - 1 game - St. Louis Browns

