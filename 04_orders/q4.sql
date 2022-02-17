/* Get all orders by customer 1026. Include the amount spent in each order,
the order id, and the total number of distinct products purchased. */

SELECT op.order_id, SUM(op.qty * p.price) AS spend,
       COUNT(op.order_id) AS num_distinct_product
  FROM customer_order AS c
  JOIN order_product AS op
    ON c.order_id = op.order_id
  JOIN product AS p
    ON op.product_id = p.product_id
 WHERE c.customer_id = 1026
 GROUP BY op.order_id;
