/* In 2016, what fraction of days did it rain? */

WITH rain_percentage AS (
     SELECT did_rain, COUNT(*) * 100.0 / SUM(COUNT(*)) over() AS percentage
      FROM weather
      WHERE EXTRACT('year' FROM date_weather) = 2016
      GROUP BY did_rain
)

SELECT percentage
  FROM rain_percentage
 WHERE did_rain = True;
