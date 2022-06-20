# Bike Rider Analysis and Cleaning by MYSQL

## Table of Contents
+ [About](#about)
+ [Background Info](#background)
+ [Prepare Data and Import](#prepare-data-and-import)
+ [Data Cleaning and Processing](#data-cleaning-and-processing)
+ [Data Analysis and Insights](#data-analysis-and-insights)
+ [Export sql data to R studio for data  visualisation](#export-data-to-r-studio)
+ [See More in R Markdown file](#see-more)

# About
By analyzing casual and annual riders' riding data, we need to derive data-driven insights about how Annual and casual riders differ in their behaviors, which will help us design better marketing tactics to promote annual riding membership.

# Background
This project is about a bike-share company in Chicago. The director of marketing wants to maximize the number of annual memberships. Therefore, I wants to understand how casual riders and annual members use Cyclistic bikes differently. 

Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

The data has been made available by Motivate International Inc. under a license:https://divvy-tripdata.s3.amazonaws.com/index.html


# Prepare Data and Import
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 
The scripts for each steps are in the associated sql files and the RMD file of the R script can display associated graphs with the relevant insights

First we create two tables, one for original data and the other for us to manipulate data afterwards.
Example codes:

```
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
```

The import statement for each file:
After examinizing the data, if some fields are empty, we replace them with the sql null value
```
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202205-divvy-tripdata.csv'
INTO TABLE master_ride
FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(ride_id,rideable_type	,started_at	,ended_at,	start_station_name	,start_station_id,	end_station_name,	end_station_id	,@start_lat	,@start_lng	,@end_lat,	@end_lng,	member_casual)
 SET start_lat = IF(@start_lat='' OR @start_lat='\r' OR @start_lat='\n' OR @start_lat='\r\n' ,NULL,@start_lat),
start_lng = IF(@start_lng='' OR @start_lng='\r' OR @start_lng='\n' OR @start_lng='\r\n' ,NULL,@start_lng),
end_lat = IF(@end_lat='' OR @end_lat='\r' OR @end_lat='\n' OR @end_lat='\r\n' ,NULL,@end_lat)
,
end_lng = IF(@end_lng='' OR @end_lng='\r' OR @end_lng='\n' OR @end_lng='\r\n' ,NULL,@end_lng);

```
# Data Cleaning and Processing

Copy data  from the original table to the master table

```
Insert master_ride1
   select * from master_Ride
```

check for full copy and no missing row

```
select count(*) as test from master_ride
   union all
   select count(*) from master_ride1;
```
Check for duplicate 
```
  select ride_id ,count(*) as c
  from master_ride1
   group by ride_id
   having c >=2
  order by c;
```

## Calcualte new fields for futher analysis

First, calculate duration and day of the week

```
create table difference_in_seconds AS (
  SELECT
   ride_id,
   started_at,
   ended_at,
    timestampdiff( SECOND, started_at, ended_at) AS seconds,
    DAYOFWEEK(started_at) as dayofweek
  FROM master_ride1 
);
```
clean fake trips(trips that start and stop at the same time)

```
SELECT ride_id FROM new_schema.difference_in_seconds where seconds = 0;
delete from master_ride1 where ride_id in (SELECT ride_id FROM new_schema.difference_in_seconds where seconds = 0);
delete from difference_in_seconds where seconds = 0;

```
delete trips above a week
```
select * from difference_in_seconds join
master_ride1 using(ride_id)
where seconds > 604800;
 delete from difference_in_seconds where seconds > 604800;
 delete from master_ride1 where ride_id not in (select ride_id from difference_in_seconds);

```

create primary key and foreign key for differences and master table(step not recorded, this step is finished by using Mysql workbench UI)
Update master table with new columns and calculations
```
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

```
clean negative time value
```
delete from differences where new_duration <0;
delete from master_ride1 where duration <0;
```

# Data Analysis and Insights

A step by step series of examples that tell you how to analyze data and derive data-driven insights

most commonly riding day for casual and member
```
select dayoftheweek, member_casual, count(dayoftheweek) as number from master_ride1
group by dayoftheweek, member_casual order by number desc;
```
avg for member - 13 minutes, casual = 28 minutes, promotion towards longer rides
```
select member_casual, SEC_TO_TIME(AVG(TIME_TO_SEC(duration))) as Average  from master_ride1
group by member_casual
```
Ride counts by bike type

```
select member_casual, rideable_type, count(ride_id) as ridenumber from master_ride1
group by member_casual, rideable_type order by ridenumber;
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo.

# Export Data to R STudio

using ifnull to process null value to empty value, convert time value to decimal number in minutes
```

SELECT * FROM new_schema.master_ride1;
SELECT ride_id,rideable_type, member_casual, ifnull(ROUND((TIME_TO_SEC(duration))/60,2),""), ifnull(dayoftheweek,"") FROM master_ride1 INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/test2.csv'
  FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"'
    LINES TERMINATED BY '\n';
    SHOW VARIABLES LIKE "secure_file_priv"
```


# See more

For further analysis with graphs and visualisation, see the markdown file in this project