USE  SAMPLE_DB;

--DATE & TIME FUNCTIONS
-- 1. GETDATE(), CURRENT_TIMESTAMP, SYSDATETIME()
-- 2. DATENAME()
-- 3. DATEDIFF()
-- 4. DATEADD()

SELECT GETDATE() AS TODAY_DATE;
SELECT CURRENT_TIMESTAMP AS TODAY_DATE;
SELECT SYSDATETIME() AS TODAY_DATE;

SELECT DATENAME(YEAR,CURRENT_TIMESTAMP) AS YEAR;
SELECT DATENAME(MONTH,CURRENT_TIMESTAMP) AS MONTH;
SELECT DATENAME(HOUR,CURRENT_TIMESTAMP) AS HOUR;

SELECT DATEDIFF(YEAR,'JUNE 24 2000',CURRENT_TIMESTAMP) AS AGE;

SELECT DATEADD(YEAR, 100, CURRENT_TIMESTAMP) AS AFTER_100_YEARS;
SELECT DATEADD(MONTH, 100, CURRENT_TIMESTAMP) AS AFTER_100_MONTHS;
