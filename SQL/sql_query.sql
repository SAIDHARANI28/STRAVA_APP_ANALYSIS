# creating a database
create database DA_Project2;
use DA_Project2;
describe da_project2;
SHOW VARIABLES LIKE 'secure_file_priv';

#creating tables uncleaned csv files


create table heartrate_seconds_merged(
        id int,
        time varchar(20),
        value int
);
create table dailyintensities_merged(
        Id int,
        ActivityDay varchar(30),
        SedentaryMinutes int,
        LightlyActiveMinutes int,
        FairlyActiveMinutes int,
        VeryActiveMinutes int,
        SedentaryActiveDistance int,
        LightActiveDistance int,
        ModeratelyActiveDistance int,
        VeryActiveDistance int
);
alter table dailyintensities_merged modify id bigint;
alter table heartrate_seconds_merged modify id bigint;
create table hourlycalories_merged(Id bigint,ActivityHour datetime,Calories int);
alter table hourlycalories_merged modify ActivityHour varchar(30);

CREATE TABLE hourlyIntensities_merged (
    Id BIGINT,
    ActivityHour varchar(20),
    TotalIntensity INT,
    AverageIntensity FLOAT
);

alter table hourlyIntensities_merged modify ActivityHour varchar(40);

CREATE TABLE hourlySteps_merged (
    Id BIGINT,
    ActivityHour varchar(20),
    StepTotal INT
);
alter table hourlySteps_merged modify ActivityHour varchar(40);

CREATE TABLE minuteCaloriesNarrow_merged (
    Id BIGINT,
    ActivityMinute varchar(20),
    Calories FLOAT
);
alter table minuteCaloriesNarrow_merged modify ActivityMinute varchar(40);

CREATE TABLE minuteIntensitiesNarrow_merged (
    Id BIGINT,
    ActivityMinute varchar(20),
    Intensity INT
);
alter table minuteIntensitiesNarrow_merged modify ActivityMinute varchar(40);

CREATE TABLE minuteMETsNarrow_merged (
    Id BIGINT,
    ActivityMinute varchar(20),
    METs INT
);
alter table minuteMETsNarrow_merged modify ActivityMinute varchar(40);

CREATE TABLE minuteStepsNarrow_merged (
    Id BIGINT,
    ActivityMinute varchar(20),
    Steps INT
);
alter table minuteStepsNarrow_merged modify ActivityMinute varchar(40);

CREATE TABLE minuteSleep_merged (
    Id BIGINT,
    date varchar(20),
    value INT,
    logId BIGINT
);
alter table minuteSleep_merged modify date varchar(40);

CREATE TABLE sleepDay_merged (
    Id BIGINT,
    SleepDay DATETIME,
    TotalSleepRecords INT,
    TotalMinutesAsleep INT,
    TotalTimeInBed INT
);
alter table sleepDay_merged modify SleepDay varchar(40);


CREATE TABLE weightLogInfo_merged (
    Id BIGINT,
    Date DATETIME,
    WeightKg FLOAT,
    WeightPounds FLOAT,
    Fat FLOAT,
    BMI FLOAT,
    IsManualReport BOOLEAN,
    LogId BIGINT
);
alter table weightLogInfo_merged modify Fat varchar(10) null;

CREATE TABLE minuteCaloriesWide_merged (
    Id BIGINT,
    ActivityHour DATETIME,Minute_0 FLOAT,Minute_1 FLOAT,Minute_2 FLOAT,Minute_3 FLOAT,Minute_4 FLOAT,Minute_5 FLOAT,Minute_6 FLOAT,Minute_7 FLOAT,
    Minute_8 FLOAT,Minute_9 FLOAT,Minute_10 FLOAT,Minute_11 FLOAT,Minute_12 FLOAT,Minute_13 FLOAT,Minute_14 FLOAT,Minute_15 FLOAT,Minute_16 FLOAT,
    Minute_17 FLOAT,Minute_18 FLOAT,Minute_19 FLOAT,Minute_20 FLOAT,Minute_21 FLOAT,Minute_22 FLOAT,Minute_23 FLOAT,Minute_24 FLOAT,Minute_25 FLOAT,
    Minute_26 FLOAT,Minute_27 FLOAT,Minute_28 FLOAT,Minute_29 FLOAT,Minute_30 FLOAT,Minute_31 FLOAT,Minute_32 FLOAT,Minute_33 FLOAT,Minute_34 FLOAT,
    Minute_35 FLOAT,Minute_36 FLOAT,Minute_37 FLOAT,Minute_38 FLOAT,Minute_39 FLOAT,Minute_40 FLOAT,Minute_41 FLOAT,Minute_42 FLOAT,
    Minute_43 FLOAT,Minute_44 FLOAT,Minute_45 FLOAT,Minute_46 FLOAT,Minute_47 FLOAT,Minute_48 FLOAT,Minute_49 FLOAT,Minute_50 FLOAT,Minute_51 FLOAT,
    Minute_52 FLOAT,Minute_53 FLOAT,Minute_54 FLOAT,Minute_55 FLOAT,Minute_56 FLOAT,Minute_57 FLOAT,Minute_58 FLOAT,Minute_59 FLOAT
);
alter table minuteCaloriesWide_merged modify ActivityHour varchar(40);

CREATE TABLE minuteIntensitiesWide_merged (
    Id BIGINT,
    ActivityHour varchar(40),
    Intensity0 INT,Intensity1 INT,Intensity2 INT,Intensity3 INT,Intensity4 INT,Intensity5 INT,Intensity6 INT,Intensity7 INT,Intensity8 INT,Intensity9 INT,
    Intensity10 INT,Intensity11 INT,Intensity12 INT,Intensity13 INT,Intensity14 INT,Intensity15 INT,Intensity16 INT,Intensity17 INT,
    Intensity18 INT,Intensity19 INT,Intensity20 INT,Intensity21 INT,Intensity22 INT,Intensity23 INT,Intensity24 INT,Intensity25 INT,
    Intensity26 INT,Intensity27 INT,Intensity28 INT,Intensity29 INT,Intensity30 INT,Intensity31 INT,Intensity32 INT,Intensity33 INT,
    Intensity34 INT,Intensity35 INT,Intensity36 INT,Intensity37 INT,Intensity38 INT,Intensity39 INT,Intensity40 INT,
    Intensity41 INT,Intensity42 INT,Intensity43 INT,Intensity44 INT,Intensity45 INT,Intensity46 INT,Intensity47 INT,
    Intensity48 INT,Intensity49 INT,Intensity50 INT,Intensity51 INT,Intensity52 INT,Intensity53 INT,Intensity54 INT,Intensity55 INT,
    Intensity56 INT,Intensity57 INT,Intensity58 INT,Intensity59 INT
);

CREATE TABLE minuteCaloriesNarrow_merged (
    Id BIGINT,
    ActivityHour varchar(40),Minute_0 FLOAT,Minute_1 FLOAT,Minute_2 FLOAT,Minute_3 FLOAT,Minute_4 FLOAT,Minute_5 FLOAT,Minute_6 FLOAT,Minute_7 FLOAT,
    Minute_8 FLOAT,Minute_9 FLOAT,Minute_10 FLOAT,Minute_11 FLOAT,Minute_12 FLOAT,Minute_13 FLOAT,Minute_14 FLOAT,Minute_15 FLOAT,Minute_16 FLOAT,
    Minute_17 FLOAT,Minute_18 FLOAT,Minute_19 FLOAT,Minute_20 FLOAT,Minute_21 FLOAT,Minute_22 FLOAT,Minute_23 FLOAT,Minute_24 FLOAT,Minute_25 FLOAT,Minute_26 FLOAT,
    Minute_27 FLOAT,Minute_28 FLOAT,Minute_29 FLOAT,Minute_30 FLOAT,Minute_31 FLOAT,Minute_32 FLOAT,Minute_33 FLOAT,Minute_34 FLOAT,
    Minute_35 FLOAT,Minute_36 FLOAT,Minute_37 FLOAT,Minute_38 FLOAT,Minute_39 FLOAT,Minute_40 FLOAT,Minute_41 FLOAT,Minute_42 FLOAT,Minute_43 FLOAT,
    Minute_44 FLOAT,Minute_45 FLOAT,Minute_46 FLOAT,Minute_47 FLOAT,Minute_48 FLOAT,Minute_49 FLOAT,Minute_50 FLOAT,Minute_51 FLOAT,Minute_52 FLOAT,Minute_53 FLOAT,
    Minute_54 FLOAT,Minute_55 FLOAT,Minute_56 FLOAT,Minute_57 FLOAT,Minute_58 FLOAT,Minute_59 FLOAT
);


CREATE TABLE minuteStepsWide_merged (
    Id BIGINT,
    ActivityHour DATETIME,
    Minute_0 FLOAT,Minute_1 FLOAT,Minute_2 FLOAT,Minute_3 FLOAT,Minute_4 FLOAT,Minute_5 FLOAT,Minute_6 FLOAT,Minute_7 FLOAT,
    Minute_8 FLOAT,Minute_9 FLOAT,Minute_10 FLOAT,Minute_11 FLOAT,Minute_12 FLOAT,Minute_13 FLOAT,Minute_14 FLOAT,Minute_15 FLOAT,Minute_16 FLOAT,
    Minute_17 FLOAT,Minute_18 FLOAT,Minute_19 FLOAT,Minute_20 FLOAT,Minute_21 FLOAT,Minute_22 FLOAT,Minute_23 FLOAT,Minute_24 FLOAT,Minute_25 FLOAT,Minute_26 FLOAT,
    Minute_27 FLOAT,Minute_28 FLOAT,Minute_29 FLOAT,Minute_30 FLOAT,Minute_31 FLOAT,Minute_32 FLOAT,Minute_33 FLOAT,Minute_34 FLOAT,
    Minute_35 FLOAT,Minute_36 FLOAT,Minute_37 FLOAT,Minute_38 FLOAT,Minute_39 FLOAT,Minute_40 FLOAT,Minute_41 FLOAT,Minute_42 FLOAT,Minute_43 FLOAT,
    Minute_44 FLOAT,Minute_45 FLOAT,Minute_46 FLOAT,Minute_47 FLOAT,Minute_48 FLOAT,Minute_49 FLOAT,Minute_50 FLOAT,Minute_51 FLOAT,Minute_52 FLOAT,Minute_53 FLOAT,
    Minute_54 FLOAT,Minute_55 FLOAT,Minute_56 FLOAT,Minute_57 FLOAT,Minute_58 FLOAT,Minute_59 FLOAT
);
alter table minuteStepsWide_merged modify ActivityHour varchar(40);


CREATE TABLE sleepDay_merged (
    Id BIGINT,
    SleepDay DATETIME,
    TotalSleepRecords INT,
    TotalMinutesAsleep INT,
    TotalTimeInBed INT
);
alter table minuteCaloriesWide_merged modify ActivityHour varchar(40);




# loading data into the tables created
 
 load data local infile "C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/dailyintensities_merged.csv"
 into table dailyintensities_merged
 fields terminated by ","
 enclosed by '"'
 lines terminated by "\n"
 ignore 1 rows;
 
 load data local infile "C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/heartrate_seconds_merged.csv"
 into table heartrate_seconds_merged
 fields terminated by ","
 enclosed by '"'
 lines terminated by "\n"
 ignore 1 rows;
 
 load data local infile "C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/hourlycalories_merged.csv"
 into table hourlycalories_merged
 fields terminated by ","
 enclosed by '"'
 lines terminated by "\n"
 ignore 1 rows;
 
LOAD DATA LOCAL INFILE "C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/hourlyIntensities_merged.csv"
INTO TABLE hourlyIntensities_merged
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
"C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/hourlySteps_merged.csv"
INTO TABLE hourlySteps_merged
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteCaloriesNarrow_merged.csv'
INTO TABLE minuteCaloriesNarrow_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteIntensitiesNarrow_merged.csv'
INTO TABLE minuteIntensitiesNarrow_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteMETsNarrow_merged.csv'
INTO TABLE minuteMETsNarrow_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteStepsNarrow_merged.csv'
INTO TABLE minuteStepsNarrow_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteSleep_merged.csv'
INTO TABLE minuteSleep_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/sleepDay_merged.csv'
INTO TABLE sleepDay_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 
"C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/weightLogInfo_merged.csv"
INTO TABLE weightLogInfo_merged
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteCaloriesWide_merged.csv'
INTO TABLE minuteCaloriesWide_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/minuteIntensitiesWide_merged.csv'
INTO TABLE minuteIntensitiesWide_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 
'C:/DATA Analytics internship data/project 2/sql_folder/uncleaned_files/sleepDay_merged.csv'
INTO TABLE sleepDay_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#function for cleaning the data(datatype changing) 'UPDATE' TABLE_NAME, ' SET', COLUMN_NAME,' = STR_TO_DATE(', COLUMN_NAME,', "%m/%d/%Y";',

SELECT CONCAT(
    '-- Cleaning Table: ', TABLE_NAME, '\n',
    'UPDATE ', TABLE_NAME, ' SET', COLUMN_NAME,' = STR_TO_DATE(', COLUMN_NAME,', "%m/%d/%Y"; ',
    'ALTER TABLE ', TABLE_NAME, ' MODIFY COLUMN ', COLUMN_NAME, ' DATETIME;'
) AS automation_script
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME in ('ActivityDate','ActivityDay','Time','ActivityHour','ActivityMinute','date','SleepDay')
  AND TABLE_SCHEMA = 'da_project2';

-- Cleaning Table: dailyactivity_merged
 UPDATE dailyactivity_merged SET ActivityDate = STR_TO_DATE(ActivityDate, "%m/%d/%Y"); ALTER TABLE dailyactivity_merged MODIFY COLUMN ActivityDate DATETIME;
-- Cleaning Table: dailycalories_merged
 UPDATE dailycalories_merged SET ActivityDay = STR_TO_DATE(ActivityDay, "%m/%d/%Y"); ALTER TABLE dailycalories_merged MODIFY COLUMN ActivityDay DATETIME;
-- Cleaning Table: dailyintensities_merged
 UPDATE dailyintensities_merged SET ActivityDay = STR_TO_DATE(ActivityDay, "%m/%d/%Y"); ALTER TABLE dailyintensities_merged MODIFY COLUMN ActivityDay DATETIME;
-- Cleaning Table: dailysteps_merged
 UPDATE dailysteps_merged SET ActivityDay = STR_TO_DATE(ActivityDay, "%m/%d/%Y"); ALTER TABLE dailysteps_merged MODIFY COLUMN ActivityDay DATETIME;
-- Cleaning Table: heartrate_seconds_merged
 UPDATE heartrate_seconds_merged SET Time = STR_TO_DATE(Time, "%m/%d/%Y"); ALTER TABLE heartrate_seconds_merged MODIFY COLUMN Time DATETIME;
-- Cleaning Table: hourlycalories_merged
 UPDATE hourlycalories_merged SET ActivityHour = STR_TO_DATE(ActivityHour, "%m/%d/%Y"); ALTER TABLE hourlycalories_merged MODIFY COLUMN ActivityHour DATETIME;
-- Cleaning Table: hourlyintensities_merged
 UPDATE hourlyintensities_merged SET ActivityHour = STR_TO_DATE(ActivityHour, "%m/%d/%Y"); ALTER TABLE hourlyintensities_merged MODIFY COLUMN ActivityHour DATETIME;
-- Cleaning Table: hourlysteps_merged
 UPDATE hourlysteps_merged SET ActivityHour = STR_TO_DATE(ActivityHour, "%m/%d/%Y"); ALTER TABLE hourlysteps_merged MODIFY COLUMN ActivityHour DATETIME;
-- Cleaning Table: minutecaloriesnarrow_merged
 UPDATE minutecaloriesnarrow_merged SET ActivityMinute = STR_TO_DATE(ActivityMinute, "%m/%d/%Y"); ALTER TABLE minutecaloriesnarrow_merged MODIFY COLUMN ActivityMinute DATETIME;
-- Cleaning Table: minutecalorieswide_merged
 UPDATE minutecalorieswide_merged SET ActivityHour = STR_TO_DATE(ActivityHour, "%m/%d/%Y"); ALTER TABLE minutecalorieswide_merged MODIFY COLUMN ActivityHour DATETIME;
-- Cleaning Table: minuteintensitiesnarrow_merged
 UPDATE minuteintensitiesnarrow_merged SET ActivityMinute = STR_TO_DATE(ActivityMinute, "%m/%d/%Y"); ALTER TABLE minuteintensitiesnarrow_merged MODIFY COLUMN ActivityMinute DATETIME;
-- Cleaning Table: minuteintensitieswide_merged
 UPDATE minuteintensitieswide_merged SET ActivityHour = STR_TO_DATE(ActivityHour, "%m/%d/%Y"); ALTER TABLE minuteintensitieswide_merged MODIFY COLUMN ActivityHour DATETIME;
-- Cleaning Table: minutemetsnarrow_merged
 UPDATE minutemetsnarrow_merged SET ActivityMinute = STR_TO_DATE(ActivityMinute, "%m/%d/%Y"); ALTER TABLE minutemetsnarrow_merged MODIFY COLUMN ActivityMinute DATETIME;
-- Cleaning Table: minutesleep_merged
 UPDATE minutesleep_merged SET date = STR_TO_DATE(date, "%m/%d/%Y"); ALTER TABLE minutesleep_merged MODIFY COLUMN date DATETIME;
-- Cleaning Table: minutestepsnarrow_merged
 UPDATE minutestepsnarrow_merged SET ActivityMinute = STR_TO_DATE(ActivityMinute, "%m/%d/%Y"); ALTER TABLE minutestepsnarrow_merged MODIFY COLUMN ActivityMinute DATETIME;
-- Cleaning Table: minutestepswide_merged
 UPDATE minutestepswide_merged SET ActivityHour = STR_TO_DATE(ActivityHour, "%m/%d/%Y"); ALTER TABLE minutestepswide_merged MODIFY COLUMN ActivityHour DATETIME;
-- Cleaning Table: sleepday_merged
 UPDATE sleepday_merged SETSleepDay = STR_TO_DATE(SleepDay, "%m/%d/%Y"; ALTER TABLE sleepday_merged MODIFY COLUMN SleepDay DATETIME;
-- Cleaning Table: weightloginfo_merged
 UPDATE weightloginfo_merged SET date = STR_TO_DATE(date, "%m/%d/%Y"); ALTER TABLE weightloginfo_merged MODIFY COLUMN date DATETIME;
  
 
 
 





