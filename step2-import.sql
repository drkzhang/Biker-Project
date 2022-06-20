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

 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202204-divvy-tripdata.csv'
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

 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202203-divvy-tripdata.csv'
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

 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202202-divvy-tripdata.csv'
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
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202201-divvy-tripdata.csv'
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
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202112-divvy-tripdata.csv'
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
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202111-divvy-tripdata.csv'
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
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202110-divvy-tripdata.csv'
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
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202109-divvy-tripdata.csv'
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
 load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202108-divvy-tripdata.csv'
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
load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202107-divvy-tripdata.csv'
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
load DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202106-divvy-tripdata.csv'
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