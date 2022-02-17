/* What is the average number of days between order and delivery for each year?
Take the year from the order date. */

SELECT EXTRACT('year' FROM date_ordered) AS order_year,
       AVG(date_delivered - date_ordered) AS avg_delivery_time
  FROM customer_order
 GROUP BY order_year
 ORDER BY avg_delivery_time DESC;
