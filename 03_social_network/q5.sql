/* Give a count of how many people followed each user as of 1999-12-31. Give
the result in term of "users full name, number of followers". */

WITH follower_counts AS (
     SELECT follows,
            COUNT(user_id) AS followers
       FROM follows
      WHERE date_created <= '1999-12-31'::Date
      GROUP BY follows
)

SELECT CONCAT(u.first_name, ' ', u.last_name) AS user_followed_name,
       COALESCE(followers, 0) AS num_followers
  FROM follower_counts AS f
 RIGHT JOIN users AS u
    ON f.follows = u.user_id
