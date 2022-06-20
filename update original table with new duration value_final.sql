

create table difference_in_seconds AS (
  SELECT
   ride_id,
   start_time,
   end_time,
    timestampdiff( SECOND, start_time, end_time) AS seconds,
    DAYOFWEEK(start_time) as dayofweek
  FROM master_ride
);
create table differences AS (
  SELECT
    ride_id,
    seconds,
    SEC_TO_TIME(seconds) as new_duration,
    dayofweek
  FROM difference_in_seconds
)
;
update master_ride set duration = (select new_duration from differences
where differences.ride_id = 2019_q2.ride_id);
update master_ride set dayoftheweek = (select dayofweek from dayofweek
where differences.ride_id = 2019_q2.ride_id)
