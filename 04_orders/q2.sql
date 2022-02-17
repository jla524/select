/* Which states have more than 5 customers? */

SELECT state, COUNT(customer_id) AS count
  FROM customer
 GROUP BY state
HAVING COUNT(customer_id) > 5
 ORDER BY count DESC;
