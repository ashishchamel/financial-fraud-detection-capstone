-- A) Create schema & tables

-- STEP 1 — Make database
CREATE DATABASE finance;
USE finance;

CREATE TABLE cc_data (
  index_id INT,
  trans_date_trans_time DATETIME,
  cc_num VARCHAR(32),
  merchant VARCHAR(200),
  category VARCHAR(100),
  amt DECIMAL(10,2),
  first VARCHAR(100),
  last VARCHAR(100),
  gender VARCHAR(10),
  street VARCHAR(200),
  city VARCHAR(100),
  state VARCHAR(50),
  zip VARCHAR(20),
  lat DECIMAL(10,6),
  longt DECIMAL(10,6),
  city_pop BIGINT,
  job VARCHAR(200),
  dob DATE,
  trans_num VARCHAR(100),
  unix_time BIGINT,
  merch_lat DECIMAL(10,6),
  merch_long DECIMAL(10,6),
  is_fraud TINYINT,
  PRIMARY KEY (index_id)
);

SHOW VARIABLES LIKE 'secure_file_priv';


SET GLOBAL net_read_timeout = 3600;
SET GLOBAL net_write_timeout = 3600;
SET GLOBAL wait_timeout = 3600;
SET GLOBAL interactive_timeout = 3600;
SET GLOBAL max_allowed_packet = 512*1024*1024;

-- B) Bulk load CSV
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cc_data_clean.csv'
INTO TABLE cc_data
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

TRUNCATE TABLE cc_data;

-- using workbench import wizard as its failing to load due to timeout issues

TRUNCATE TABLE cc_data;

USE finance;

TRUNCATE TABLE cc_data;

LOAD DATA LOCAL INFILE ' "D:\\test\\cc_data_clean.csv"'
INTO TABLE cc_data
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


SELECT COUNT(*) FROM cc_data;
select * FROM cc_data;

-- C) Exploration queries (profiling)

-- Total rows and fraud percentage
SELECT COUNT(*) AS total_txns,
       SUM(is_fraud) AS total_frauds,
       ROUND(100*SUM(is_fraud)/COUNT(*),2) AS fraud_pct
FROM cc_data;

-- Top 10 merchants
SELECT merchant, COUNT(*) AS txn_count
FROM cc_data
GROUP BY merchant
ORDER BY txn_count DESC
LIMIT 10;

-- Average amount by category
SELECT category, ROUND(AVG(amt),2) AS avg_amt
FROM cc_data
GROUP BY category
ORDER BY avg_amt DESC;

-- Earliest and latest transaction date
SELECT MIN(trans_date_trans_time) AS earliest,
       MAX(trans_date_trans_time) AS latest
FROM cc_data;

-- City with highest population
SELECT city, state, city_pop
FROM cc_data
ORDER BY city_pop DESC
LIMIT 1;

-- D) Aggregations (patterns)


-- Total spend per category
SELECT category, SUM(amt) AS total_spend
FROM cc_data
GROUP BY category
ORDER BY total_spend DESC;

-- Number of transactions per category
SELECT category, COUNT(*) AS txn_count
FROM cc_data
GROUP BY category
ORDER BY txn_count DESC;


-- Average transaction amount by gender
SELECT gender, ROUND(AVG(amt),2) AS avg_amt
FROM cc_data
GROUP BY gender;

-- Day-of-week with highest average transaction amount
SELECT DAYNAME(trans_date_trans_time) AS day_of_week,
       ROUND(AVG(amt),2) AS avg_amt
FROM cc_data
GROUP BY day_of_week
ORDER BY avg_amt DESC;
