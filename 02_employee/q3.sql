/* List all employees by name, and the name of their manager. If the employee
doesn't have a manager, leave the column as NULL. */

SELECT * FROM employee WHERE managerid IS NULL;
