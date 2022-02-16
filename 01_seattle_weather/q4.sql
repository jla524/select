/* What are the 10 hottest days on record? Take hottest to mean 'highest
maximum temperature'. */

SELECT *
  FROM weather
 ORDER BY temp_max DESC
 LIMIT 10;
