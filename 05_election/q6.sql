/* Which states have had fewer than 3 republican victories since 1952? */

-- TODO: count state with no wins also
SELECT state, winner,
       COUNT(winner) AS num_republican_victories
  FROM state_winner
 WHERE winner = 'republican'
 GROUP BY state, winner
HAVING COUNT(winner) < 3;
