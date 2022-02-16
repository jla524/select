/* Get the 10 years with the hottest average maximum temperature in July.
Order from hottest to coolest */

WITH july_temps AS (
     SELECT EXTRACT('year' FROM date_weather) AS year,
            AVG(temp_max) AS avg_high_temp
       FROM weather
      WHERE EXTRACT('month' FROM date_weather) = 7
      GROUP BY year
)

SELECT year AS date_part,
       MAX(avg_high_temp) avg_july_high_temp
  FROM july_temps
 GROUP BY year
 ORDER BY avg_july_high_temp DESC
 LIMIT 10;
