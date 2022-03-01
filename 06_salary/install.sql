CREATE DATABASE ex_salary;

\connect ex_salary;

CREATE TABLE salary(
  company TEXT,
  title TEXT,
  salaries_reported INTEGER,
  location TEXT,
  salary TEXT
);

\copy salary FROM 'salary.csv' WITH DELIMITER ',' CSV HEADER;
