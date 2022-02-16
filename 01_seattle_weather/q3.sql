/* Get the standard deviation of the maximum temperature per year, from 2000
onward. Order by year (ascending) */

WITH yearly_max AS (
     SELECT EXTRACT('year' FROM date_weather) AS year, temp_max
     FROM weather
)

SELECT year,
       STDDEV(temp_max) AS std_dev_temp_max
  FROM yearly_max
 WHERE year >= 2000
 GROUP BY year
 ORDER BY year ASC;
