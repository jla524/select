/* List all the department names, and the number of employees in that
department. Order by number of employees in department (greatest to least) */

SELECT d.deptname, COUNT(name) AS num_in_dept
  FROM department AS d
  FULL JOIN employee AS e
    ON d.deptid = e.deptid
 GROUP BY d.deptname
 ORDER BY num_in_dept DESC;
