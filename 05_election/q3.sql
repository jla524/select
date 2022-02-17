/* For each election from 1984 to 2016, give the party that won the popular
vote (i.e. the most votes, not the most electoral college seats) */

SELECT year,
       SUM(total_democrat) AS total_democrat,
       SUM(total_republican) AS total_republican,
       SUM(total_other) AS total_other,
       winner
  FROM popular_vote_winner
 WHERE year BETWEEN 1984 AND 2016
 GROUP BY year, winner
 ORDER BY year ASC;
