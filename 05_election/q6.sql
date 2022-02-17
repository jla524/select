/* Which states have had fewer than 3 republican victories since 1952? */

SELECT state, winner,
       COUNT(winner) AS num_republican_victories
  FROM state_winner
 WHERE winner = 'republican'
 GROUP BY state, winner
HAVING COUNT(winner) < 3
 UNION
SELECT DISTINCT state, 
       'republican' AS winner,
       0 AS num_republican_victories
  FROM state_winner AS s
 WHERE NOT EXISTS(
       SELECT state, winner
         FROM state_winner AS o
        WHERE s.state = o.state
          AND winner = 'republican'
);
