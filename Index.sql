USE SAMPLE_DB;

SELECT * FROM employeLogs;

CREATE INDEX IDX_SALARY ON employelogs(salary asc);

DROP INDEX IDX_SALARY ON employelogs;