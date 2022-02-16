/* Find the two highest paid people per department */

SELECT * FROM (
       SELECT name, deptid, salary,
       row_number() OVER (
           PARTITION BY deptid ORDER BY salary DESC
       ) AS salary_rank
       FROM employee) AS ranks
 WHERE salary_rank <= 2;
