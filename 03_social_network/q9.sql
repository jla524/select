/* List all unrequited followings (i.e. where A follows B but B does not follow
A) */

SELECT CONCAT(u1.first_name, ' ', u1.last_name) AS follower,
       CONCAT(u2.first_name, ' ', u2.last_name) AS follows
  FROM follows AS f1
  JOIN users AS u1
    ON f1.user_id = u1.user_id
  JOIN users AS u2
    ON f1.follows = u2.user_id
 WHERE NOT EXISTS (
       SELECT f2.user_id, f2.follows
         FROM follows AS f2
        WHERE f1.follows = f2.user_id
          AND f2.follows = f1.user_id
       )
