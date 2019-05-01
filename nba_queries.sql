--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------

-- [1] All columns for all players from the New York Knicks (NYK).

SELECT * FROM players 
WHERE team = 'NYK';

-- [2] All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.

SELECT * FROM players
WHERE team = 'IND' AND age < 26;

-- [3] All columns for all players, ordered from least points scored to most points
-- scored.

--SELECT * FROM players 
--ORDER BY points ASC;

-- [4] Player Name and Points per game (points/games)=ppg,
-- for the players with the top 20 highest points-per-game
-- per game for the players who have played AT LEAST 20 games
-- result set: [name, ppg, points, games]

SELECT name, points/games AS ppg, points, games
FROM players
WHERE games > 20
ORDER BY ppg DESC 
LIMIT 20 ;


-- [5] The average age for all players. Name the result
-- result set: [average_age]

SELECT AVG(age) AS average_age
FROM players;

-- [6] The average age for all players on the Oklahoma City Thunder (OKC).
-- result set: [average_age]

SELECT team,AVG(age) AS average_age
FROM players
WHERE team = 'OKC'
GROUP BY team;


-- [7] The average age for all players who played more than 40 games.
-- result set: [average_age]

-- SELECT team,AVG(age) AS average_age
-- FROM players
-- WHERE games>40
-- GROUP BY team;
-- ORDER BY average_age DESC;

SELECT AVG(age) AS average_age
FROM players
WHERE games>40;

--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- [8] The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.
-- HINT: GROUP BY
-- result set: [team,total_points]

SELECT team, SUM(points) AS total_points
FROM players
GROUP BY team 
ORDER BY total_points DESC;
-- [9] The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.
-- result set: [age, ppg]

SELECT age, AVG(points/games) AS ppg 
FROM players
GROUP BY age
ORDER BY age DESC;

-- [10] The team and the the number of players who score above 12 points per game on
--- that team, ordered from the most number of players to the least number of players.
-- result set: [team, player_count]

SELECT team, COUNT(name) AS player_count
FROM players
WHERE points/games > 12
GROUP BY team 
ORDER BY player_count DESC;

-- SUPER BONUS !!
-- [11] take the above query and only show those teams who are HAVING more than 3 players in each group.
-- result set: [team, player_count]

SELECT team, 
COUNT(name) AS player_count
FROM players
WHERE points/games > 12  
GROUP BY team
HAVING COUNT(name)>3 
ORDER BY player_count ASC;


