/* Get the 17 customers that have made the largest number of orders. Include
the name, address, state, and number of orders made. */

SELECT c.name, c.address, c.state,
       COUNT(o.order_id) AS num_orders
 FROM customer AS c
 JOIN customer_order AS o
   ON c.customer_id = o.customer_id
GROUP BY c.name, c.address, c.state
ORDER BY num_orders DESC
LIMIT 17;
