/* What is the 75th percentile for the amount of rain that fell on a day where
there was some rain in 2016? */

SELECT PERCENTILE_CONT(0.75) WITHIN GROUP(
       ORDER BY inches_rain) AS percentile_75
  FROM weather
 WHERE EXTRACT('year' FROM date_weather) = 2016
   AND inches_rain > 0;
