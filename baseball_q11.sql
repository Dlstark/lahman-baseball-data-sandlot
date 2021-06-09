/* Q11: Is there any correlation between number of wins and team salary? Use data from 2000 
        and later to answer this question. As you do this analysis, keep in mind that salaries
		across the whole league tend to increase together, so you may want to look on a 
		year-by-year basis. */

-- Correlation between salaries and wins 2000-2016: 0.34226
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid >= 2000
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2000: 0.33108
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2000
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2001: 0.32064
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2001
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2002: 0.44241
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2002
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2003: 0.41870
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2003
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2004: 0.54101
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2004
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2005: 0.49106
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2005
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2006: 0.53627
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2006
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2007: 0.49105
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2007
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2008: 0.32697
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2008
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2009: 0.47631
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2009
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2010: 0.36886
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2010
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2011: 0.40920
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2011
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2012: 0.19005
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2012
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2013: 0.29957
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2013
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2014: 0.32243
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2014
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2015: 0.23878
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2015
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;

-- Correlation between salaries and wins 2016: 0.64628
WITH team_wins_salaries as (SELECT s.teamid, s.yearid::text, SUM(s.salary) as team_salary, (t.w) as wins
							FROM salaries AS s LEFT JOIN teams AS t
								ON s.teamid=t.teamid
								AND s.yearid=t.yearid
							WHERE s.yearid = 2016
							GROUP BY s.teamid, s.yearid, t.w
							ORDER BY s.teamid, s.yearid)
SELECT CORR(wins, team_salary)
FROM team_wins_salaries;
