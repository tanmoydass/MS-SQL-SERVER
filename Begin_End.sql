USE SAMPLE_DB;

GO

SELECT * FROM EMPLOYE;
GO

BEGIN
DECLARE @NAME VARCHAR(30),@SALARY INT,@DEPT VARCHAR(30)='SD';
SELECT @NAME=dbo.EMPLOYE.employeName,@SALARY=dbo.EMPLOYE.salary FROM EMPLOYE WHERE dept=@DEPT;
SELECT @NAME AS NAME, @SALARY AS SALARY;
	BEGIN
	PRINT 'DEPT ID '+@DEPT;
	END
END
GO