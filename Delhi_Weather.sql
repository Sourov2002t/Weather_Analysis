create database delhi_weather;

select * from weather;

-- Remove the time portion (HH:MM:SS) from the DATE column values,
-- converting any DATETIME entries to date-only values (YYYY-MM-DD)

UPDATE weather
SET `DATE` = DATE(`DATE`);

-- Permanently change the column data type to DATE
-- to ensure only date values (no time component) are stored going forward

ALTER TABLE weather
MODIFY `DATE` DATE;


