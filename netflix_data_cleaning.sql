SELECT *
FROM netflix;

CREATE TABLE netflix2
LIKE netflix;

INSERT netflix2
SELECT *
FROM netflix;

SELECT *
FROM netflix2;

# The purpose of creating an identical table is so that if we make a mistake, we still have a backup of the original dataset.

WITH layoff_cte AS
(
	SELECT *,
	ROW_NUMBER() OVER(PARTITION BY show_id, `type`, title, director, country, date_added, release_year, rating, duration, listed_in) AS duplicates		# Making a new column that shows data duplicates
	FROM layoff_staging
)
SELECT *
FROM layoff_cte
WHERE duplicates > 1;

# Data shows no duplicates

SELECT DISTINCT `type`
FROM netflix2;

SELECT DISTINCT title
FROM netflix2;

SELECT DISTINCT director
FROM netflix2;

SELECT DISTINCT country
FROM netflix2;

SELECT DISTINCT listed_in
FROM netflix2;

# SELECT DISTINCT use to check if there are some typo in the column

CREATE TABLE netflix3
LIKE netflix2;

INSERT netflix3
SELECT *
FROM netflix2;

SELECT *
FROM netflix3;

UPDATE netflix3
SET date_added = STR_TO_DATE(date_added, '%m/%d/%Y');

ALTER TABLE netflix3
MODIFY COLUMN date_added date;

# Changing date_added data type from text to date

SELECT *
FROM netflix3
WHERE show_id IS NULL OR show_id = ''
OR `type` IS NULL OR `type` = ''
OR title IS NULL OR title = ''
OR director IS NULL OR director = ''
OR country IS NULL OR country = ''
OR date_added IS NULL 
OR release_year IS NULL 
OR listed_in IS NULL OR listed_in = '';

# Query shows there are no nulls or missing values in every column in the dataset

SELECT *
FROM netflix3;

# Data is cleaned!!
















