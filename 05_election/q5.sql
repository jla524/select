/* Which states have had fewer than 3 democratic victories (i.e. fewer than 3
elections where the democrats got the majority of the votes in that state)
since 1952? */

SELECT state, winner,
       COUNT(winner) AS num_democratic_victories
  FROM state_winner
 WHERE year >= 1952
   AND winner = 'democrat'
 GROUP BY state, winner
HAVING COUNT(state) < 3;
