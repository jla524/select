SELECT category, COUNT(category)
  FROM salary_category
 GROUP BY category
 ORDER BY count DESC;
