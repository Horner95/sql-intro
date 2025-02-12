-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


SELECT players.first_name, players.last_name, SUM(stats.hits)
FROM stats
INNER JOIN players ON stats.player_id = players.id
WHERE players.first_name = "Barry" and players.last_name = "Bonds"
GROUP BY players.first_name, players.last_name