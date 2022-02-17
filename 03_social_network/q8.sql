/* List all friendships and when they were established. We define a friendship
as a relationship between two users where both follow each other. The
friendship is established when the later of the two links is established. */

SELECT CONCAT(u1.first_name, ' ', u1.last_name) AS user1,
       CONCAT(u2.first_name, ' ', u2.last_name) AS user2,
       GREATEST(f1.date_created, f2.date_created) AS friendship_established,
       f1.user_id, f1.follows, f2.user_id, f2.follows
  FROM follows AS f1
  JOIN follows AS f2
    ON f1.follows = f2.user_id
   AND f2.follows = f1.user_id
  JOIN users AS u1
    ON f1.user_id = u1.user_id
  JOIN users AS u2
    ON f1.follows = u2.user_id
 WHERE u1.user_id < u2.user_id;
