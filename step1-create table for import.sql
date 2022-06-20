CREATE TABLE master_ride(
   ride_id varchar(255) NOT NULL,
   rideable_type varchar(50),
   started_at datetime,
   ended_at datetime,
   start_station_name varchar(255),
   start_station_id varchar(50),
   end_station_name varchar(255),
   end_station_id varchar(50),
   start_lat double(10,7),
   start_lng double(10,7),
   end_lat double(10,7),
   end_lng double(10,7),
   member_casual varchar(50));
   
   drop table if exists master_ride1;
   CREATE TABLE master_ride1(
   ride_id varchar(255) NOT NULL,
   rideable_type varchar(50),
   started_at datetime,
   ended_at datetime,
   start_station_name varchar(255),
   start_station_id varchar(50),
   end_station_name varchar(255),
   end_station_id varchar(50),
   start_lat double(10,7),
   start_lng double(10,7),
   end_lat double(10,7),
   end_lng double(10,7),
   member_casual varchar(50),
   duration time,
   dayoftheweek int);
   
   Insert master_ride1
   select * from master_Ride limit 0, 3000000;
   
   Insert master_ride1
   select * from master_Ride limit 3000000, 3000000;
   
  
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