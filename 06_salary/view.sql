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
