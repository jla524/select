/* For each manager, list the number of employees he or she is managing. For
these purposes, a manager is anyone who is not managed by someone else, even
if that person has no direct reports. */

SELECT m.name,
       COUNT(e.empid) AS num_managed
  FROM employee AS m
  LEFT JOIN employee AS e
    ON m.empid = e.managerid
 WHERE m.managerid IS NULL
 GROUP BY m.name
 ORDER BY num_managed DESC;
