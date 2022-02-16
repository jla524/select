/* List all employees by name, and the name of their manager. If the employee
doesn't have a manager, leave the column as NULL. */

SELECT e.name AS employee,
       m.name AS manager
  FROM employee AS e
  LEFT JOIN employee AS m
    ON e.managerid = m.empid;
