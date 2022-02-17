/* Extension of previous question: for each election from 1984 to 2016, give
the party that won the popular vote and the margin (i.e. the amount that the
winning party got over the party that came in second place) */

SELECT year,
       ABS(SUM(total_democrat) - SUM(total_republican)) AS margin,
       winner
  FROM popular_vote_winner
 WHERE year BETWEEN 1984 AND 2016
 GROUP BY year, winner
 ORDER BY year ASC;
