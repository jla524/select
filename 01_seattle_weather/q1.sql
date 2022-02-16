/* Select all rows from December 1st, 2000 to December 15th, 2000
(inclusive) */

SELECT *
  FROM weather
 WHERE EXTRACT('year' FROM date_weather) = 2000
   AND EXTRACT('month' FROM date_weather) = 12
   AND EXTRACT('day' FROM date_weather) BETWEEN 1 AND 15;
