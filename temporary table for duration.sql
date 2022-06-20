CREATE TABLE temp 
( newduration time)
;

WITH difference_in_seconds AS (
  SELECT
   rental_id,
   start_time,
   end_time,
   duration,
    timestampdiff( SECOND, start_time, end_time) AS seconds
  FROM 2019_q2
),
 
differences AS (
  SELECT
    rental_id,
    start_time,
    end_time,
    duration,
    seconds,
    SEC_TO_TIME(seconds) as new_duration
  FROM difference_in_seconds
)
update 2019_q2 set new_duration = (select new_duration from differences);