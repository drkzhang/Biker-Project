-- clean negative time value
SET GLOBAL innodb_buffer_pool_size=2147483648;
select * from master_ride1 where duration <0;
delete from differences where new_duration <0;
delete from master_ride1 where duration <0;
-- most commonly riding day for casual and member
select dayoftheweek, member_casual, count(dayoftheweek) as number from master_ride1
group by dayoftheweek, member_casual order by number desc;

-- member rides more than casual except: on Sunday and Monday,  casual members are 
-- more than members.
-- casual members are lower in volume than all members in all other days
-- promotion towards casual riders riding on Sunday and Monday



-- avg for member - 13 minutes, casual = 28 minutes, promotion towards longer rides
select member_casual, SEC_TO_TIME(AVG(TIME_TO_SEC(duration))) as Average  from master_ride1
group by member_casual
;

select member_casual, rideable_type, count(ride_id) as ridenumber from master_ride1
group by member_casual, rideable_type order by ridenumber;