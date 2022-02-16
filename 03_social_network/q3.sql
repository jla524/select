/* List all rows from the follows table, replacing both user_id's with first
name. */

SELECT u1.first_name AS user_first,
       u2.first_name AS follows_first,
       date_created
  FROM follows AS f
  JOIN users AS u1
    ON f.user_id = u1.user_id
  JOIN users AS u2
    ON f.follows = u2.user_id;
