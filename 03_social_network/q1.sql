/* How many users are there in each house? */

SELECT house, COUNT(user_id)
  FROM users
 GROUP BY house;
