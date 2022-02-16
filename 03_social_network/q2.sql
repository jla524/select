/* List all following links that were created before September 1st, 1993 */

SELECT * FROM follows WHERE date_created < '1993-09-01'::date;
