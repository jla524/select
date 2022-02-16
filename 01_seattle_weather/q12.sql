/* Give ethe average inches of rain that fell per day for each month, where
the average is taken over 2000 - 2010 (inclusive). */

SELECT EXTRACT('month' FROM date_weather) AS month,
       AVG(inches_rain) AS avg_daily_inches_rain
  FROM weather
 WHERE EXTRACT('year' FROM date_weather) BETWEEN 2000 AND 2010
 GROUP BY month;
