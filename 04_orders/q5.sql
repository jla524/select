/* Get the 10 customers that have spent the most. Give the customer_id and
amount spent */

SELECT c.customer_id, SUM(op.qty * p.price) AS total_spent
  FROM customer AS c
  JOIN customer_order AS co
    ON c.customer_id = co.customer_id
  JOIN order_product AS op
    ON co.order_id = op.order_id
  JOIN product AS p
    ON op.product_id = p.product_id
 GROUP BY c.customer_id
 ORDER BY total_spent DESC
 LIMIT 10;
