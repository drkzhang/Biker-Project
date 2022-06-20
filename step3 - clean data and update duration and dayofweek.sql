SET GLOBAL innodb_buffer_pool_size=2147483648;
-- check for full copy and no missing row
   select count(*) as test from master_ride
   union all
   select count(*) from master_ride1;
   
   -- check for duplicate
   select ride_id ,count(*) as c
  from master_ride1
   group by ride_id
   having c >=2
  order by c;
-- calculate duration
drop table if exists difference_in_seconds;
create table difference_in_seconds AS (
  SELECT
   ride_id,
   started_at,
   ended_at,
    timestampdiff( SECOND, started_at, ended_at) AS seconds,
    DAYOFWEEK(started_at) as dayofweek
  FROM master_ride1 
);


-- clean fake trips(trips that start and stop at the same time)
SELECT ride_id FROM new_schema.difference_in_seconds where seconds = 0;
delete from master_ride1 where ride_id in (SELECT ride_id FROM new_schema.difference_in_seconds where seconds = 0);
delete from difference_in_seconds where seconds = 0;

-- delete trips above a week
select * from difference_in_seconds where seconds >= 604800 order by seconds desc
;
select * from difference_in_seconds join
master_ride1 using(ride_id)
where seconds > 604800;
 delete from difference_in_seconds where seconds > 604800;
 delete from master_ride1 where ride_id not in (select ride_id from difference_in_seconds);

-- create primary key and foreign key for differences and master table
drop table if exists differences;
create table differences AS (
  SELECT
    ride_id,
    seconds,
    SEC_TO_TIME(seconds) as new_duration,
    dayofweek
  FROM difference_in_seconds
)
;
update master_ride1 set duration = (select new_duration from differences
where differences.ride_id = master_ride1.ride_id);
update master_ride1 set dayoftheweek = (select dayofweek from differences
where differences.ride_id = master_ride1.ride_id)
