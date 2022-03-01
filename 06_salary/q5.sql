/* Find the top 10 companies with the highest average annual salaryl */

SELECT company, ROUND(AVG(annual_salary)) AS avg, COUNT(annual_salary)
  FROM annual_salary_category
 GROUP BY company
 ORDER BY avg DESC
 LIMIT 5;
