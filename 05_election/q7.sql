/* Find the states where all of the elections since 1988 (including 1988) have
been won by the same party */

SELECT DISTINCT s.state, s.winner
  FROM state_winner AS s
 WHERE year >= 1988
   AND NOT EXISTS (
       SELECT o.state, o.winner
         FROM state_winner AS o
        WHERE year >= 1988
          AND s.state = o.state
          AND s.winner <> o.winner
       );
