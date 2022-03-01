/* Use the `SPLIT_PART` function to show all unique units used in the salary
column. */

SELECT DISTINCT SPLIT_PART(salary, '/', 2) AS unit
  FROM salary;
