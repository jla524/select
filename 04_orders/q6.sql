/* Repeat the previous question, but include the customer's name, address,
and state, in addition to the customer id and total amount spent */

SELECT c.customer_id, c.name, c.address, c.state,
       SUM(op.qty * p.price) AS total_spent
  FROM customer AS c
  JOIN customer_order AS co
    ON c.customer_id = co.customer_id
  JOIN order_product AS op
    ON co.order_id = op.order_id
  JOIN product AS p
    ON op.product_id = p.product_id
 GROUP BY c.customer_id, c.name, c.address, c.state
 ORDER BY total_spent DESC
 LIMIT 10;
