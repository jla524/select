/* List all rows from the follows table, replacing both user_id's with first
name. */

SELECT CONCAT(u1.first_name, ' ', u1.last_name) AS username,
       u1.house AS user_house,
       CONCAT(u2.first_name, ' ', u2.last_name) AS follows_name,
       u2.house AS follows_house
  FROM follows AS f
  JOIN users AS u1
    ON f.user_id = u1.user_id
  JOIN users AS u2
    ON f.follows = u2.user_id
 WHERE u1.house != u2.house;
