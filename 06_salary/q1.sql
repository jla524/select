/* List all the job titles where count is no more than 5 */

SELECT title, COUNT(title)
  FROM salary
 GROUP BY title
HAVING COUNT(title) <= 5
 ORDER BY count desc;
