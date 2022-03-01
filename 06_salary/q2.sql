/* Use the `CHARINDEX` function to map the job titles into 4 categories: data
analyst, data scientist, data engineer, and machine learning engineer; then
show the count for each category. If a job title fits into more than one
category (e.g. "Machine Learning Engineer/Data Scienst"), choose the one
that comes first alphabetically. */

-- Categories are created in view.sql

SELECT category, COUNT(category)
  FROM salary_category
 GROUP BY category
 ORDER BY count DESC;
