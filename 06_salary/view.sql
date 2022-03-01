CREATE OR REPLACE VIEW salary_category AS
SELECT title, company, salaries_reported, location, salary,
       CASE WHEN STRPOS(title, 'Data Analyst') > 0
            THEN 'Data Analyst'
            WHEN STRPOS(title, 'Data Engineer') > 0
            THEN 'Data Engineer'
            WHEN STRPOS(title, 'Data Scientist') > 0
                 OR STRPOS(title, 'Data Science') > 0
            THEN 'Data Scientist'
            WHEN STRPOS(title, 'Machine Learning') > 0
            THEN 'Machine Learning Engineer'
            ELSE 'Uncategorized'
        END AS category
  FROM salary;

CREATE OR REPLACE VIEW annual_salary_category AS
SELECT title, company, salaries_reported, location, category,
       CASE WHEN SPLIT_PART(salary, '/', 2) = 'hr'
            THEN SPLIT_PART(salary, '/', 1)::INTEGER * 9 * 5 * 52
            WHEN SPLIT_PART(salary, '/', 2) = 'mo'
            THEN SPLIT_PART(salary, '/', 1)::INTEGER * 12
            ELSE SPLIT_PART(salary, '/', 1)::INTEGER
        END AS annual_salary
  FROM (
       SELECT title, company, salaries_reported, location, category,
              REPLACE(RIGHT(salary, length(salary) -1), ',', '') AS salary
         FROM salary_category
) AS clean_salary;
