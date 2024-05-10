SELECT * FROM world_cup_matches;


SELECT year, concat(`Home Team Name`," VS ", `Away Team Name`) AS Matches, concat(`Home Team Goals`, "-", `Away Team Goals`) AS Resultes,
Attendance, Referee , city , stadium FROM world_cup_matches;


SELECT year, concat(`Home Team Name`," VS ", `Away Team Name`) AS Matches, (`Home Team Goals`+`Away Team Goals`) AS numbers_of_goals_perMatch from world_cup_matches
ORDER BY 3 DESC LIMIT 1;


SELECT year, concat(`Home Team Name`," VS ", `Away Team Name`) AS Matches, Attendance, city from world_cup_matches
ORDER BY 3 DESC LIMIT 1;
------------------------------------------------------------------------------
SELECT * FROM world_cups_summary;

SELECT winner, COUNT(Winner) AS number_of_WC_Trophys from world_cups_summary
GROUP BY 1
ORDER BY 2 DESC;

SELECT HostContinent, COUNT(WinnerContinent) AS number_of_WC_Trophys FROM world_cups_summary
GROUP BY 1
ORDER BY 2 DESC;

SELECT HostCountry, Attendance FROM world_cups_summary
ORDER BY 2 DESC ;

SELECT year, HostCountry, CONCAT(ROUND(GoalsScored/MatchesPlayed,2),"%") AS  Goals_per_Game FROM world_cups_summary;

-------------------------------------------------------
SELECT * FROM world_cup_players;

ALTER TABLE world_cup_players
DROP COLUMN Position;

SELECT Year,  concat(`Home Team Name`," VS ", `Away Team Name`) AS Matches,GROUP_CONCAT(Event) AS Events FROM world_cup_matches M
JOIN world_cup_players P ON P.Matchid = M.MatchID
WHERE M.Stage = "Final" AND event <> ""
GROUP BY 1, `Home Team Name`,`Away Team Name`;












