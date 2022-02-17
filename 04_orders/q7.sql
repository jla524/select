/* Find the 10 customers that spent the most in 2017. Give the name and amount
spent. Take the date to be the order date (not the delivery date) */

SELECT c.customer_id, c.name, c.address, c.state,
       SUM(op.qty * p.price) AS total_spent
  FROM customer AS c
  JOIN customer_order AS co
    ON c.customer_id = co.customer_id
  JOIN order_product AS op
    ON co.order_id = op.order_id
  JOIN product AS p
    ON op.product_id = p.product_id
 WHERE EXTRACT('year' FROM date_ordered) = 2017
 GROUP BY c.customer_id, c.name, c.address, c.state
 ORDER BY total_spent DESC
 LIMIT 10;
