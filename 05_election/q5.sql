/* Which states have had fewer than 3 democratic victories (i.e. fewer than 3
elections where the democrats got the majority of the votes in that state)
since 1952? */

SELECT state, winner,
       COUNT(winner) AS num_democratic_victories
  FROM state_winner
 WHERE year >= 1952
   AND winner = 'democrat'
 GROUP BY state, winner
HAVING COUNT(state) < 3
 UNION ALL
SELECT DISTINCT state, 
       'democrat' AS winner,
       0 AS num_republican_victories
  FROM state_winner AS s
 WHERE NOT EXISTS(
       SELECT state, winner
         FROM state_winner AS o
        WHERE s.state = o.state
          AND winner = 'democrat'
);
