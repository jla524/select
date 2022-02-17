/* Which three products have we sold the most of? i.e. the greatest number of
units? */

SELECT o.product_id,
       p.product_name,
       SUM(o.qty) AS num_sold
  FROM order_product AS o
  JOIN product AS p
    ON o.product_id = p.product_id
 GROUP BY o.product_id, p.product_name
 ORDER BY num_sold DESC
 LIMIT 3;
