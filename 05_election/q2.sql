/* How many candidates are in the candidate table for each election from 1984
to 2016? */

SELECT year, COUNT(candidate)
  FROM candidate
 WHERE year BETWEEN 1984 AND 2016
 GROUP BY year
 ORDER BY year ASC;
