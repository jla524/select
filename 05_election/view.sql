CREATE OR REPLACE VIEW popular_vote_winner AS
SELECT year,
       SUM(democrat_votes) AS total_democrat,
       SUM(republican_votes) AS total_republican,
       SUM(other_votes) AS total_other,
  CASE WHEN SUM(democrat_votes) > SUM(republican_votes) THEN 'democrat'
       WHEN SUM(democrat_votes) < SUM(republican_votes) THEN 'republican'
   END AS winner
  FROM election
 GROUP BY year;

CREATE OR REPLACE VIEW state_winner AS
SELECT year,
       SUM(democrat_votes) AS total_democrat,
       SUM(republican_votes) AS total_republican,
       SUM(other_votes) AS total_other,
  CASE WHEN SUM(democrat_votes) > SUM(republican_votes) THEN 'democrat'
       WHEN SUM(democrat_votes) < SUM(republican_votes) THEN 'republican'
   END AS winner,
       state
  FROM election
 GROUP BY year, state;
