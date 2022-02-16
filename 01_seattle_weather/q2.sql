/* Get the average maximum temperature for every year from the year 2000
onward. Order the results by year (ascending) */

WITH yearly_max AS (
     SELECT EXTRACT('year' FROM date_weather) AS year, temp_max
     FROM weather
)

SELECT year,
       AVG(temp_max) AS avg_high_temp
  FROM yearly_max
 WHERE year >= 2000
 GROUP BY year
 ORDER BY year ASC;
