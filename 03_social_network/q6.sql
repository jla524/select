/* List the number of users each user follows */

WITH follow_counts AS (
     SELECT user_id,
            COUNT(follows) AS follows
       FROM follows
      GROUP BY user_id
)

SELECT CONCAT(u.first_name, ' ', u.last_name) AS user_name,
       COALESCE(follows, 0) AS num_followed
  FROM follow_counts AS f
 RIGHT JOIN users AS u
    ON f.user_id = u.user_id
