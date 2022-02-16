/* Repeat the last question, but round the temperature to 3 decimal places */

WITH december_temps AS (
     SELECT EXTRACT('year' FROM date_weather) AS year,
            AVG(temp_min) AS avg_low_temp
       FROM weather
      WHERE EXTRACT('month' FROM date_weather) = 12
      GROUP BY year
)

SELECT year AS date_part,
       ROUND(MAX(avg_low_temp)::numeric, 3) avg_dec_min_temp
  FROM december_temps
 GROUP BY year
 ORDER BY avg_dec_min_temp ASC
 LIMIT 10;
