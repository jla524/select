/* Find the average, minimum, and maximum annual salary for each job
category. */

SELECT category, ROUND(AVG(annual_salary)) AS avg,
       MIN(annual_salary), MAX(annual_salary)
  FROM annual_salary_category
 GROUP BY category;
