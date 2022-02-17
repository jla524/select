/* What is the average number of days between order and delivery? */

SELECT AVG(date_delivered - date_ordered) AS avg_delivery_time
  FROM customer_order;
