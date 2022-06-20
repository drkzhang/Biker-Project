
SELECT * FROM new_schema.master_ride1;
SELECT ride_id,rideable_type, member_casual, ifnull(ROUND((TIME_TO_SEC(duration))/60,2),""), ifnull(dayoftheweek,"") FROM master_ride1 INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/test2.csv'
  FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"'
    LINES TERMINATED BY '\n';
    SHOW VARIABLES LIKE "secure_file_priv"