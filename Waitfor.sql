USE SAMPLE_DB;

BEGIN
	WAITFOR TIME '21:06:00' --9:06 PM
	SELECT * FROM EMPLOYE;
END

BEGIN
	WAITFOR DELAY '00:00:10'  --10 SECONDS
	SELECT * FROM EMPLOYE;
END

BEGIN
	DECLARE @TIME VARCHAR(20)='00:00:10'
	WAITFOR DELAY @TIME			--10 SECONDS
	SELECT * FROM EMPLOYE;
END

SELECT GETDATE() AS 'TIME'
GO
BEGIN
	WAITFOR DELAY '00:00:20';
	SELECT * FROM EMPLOYE;
END
GO
SELECT GETDATE() AS 'TIME'
GO