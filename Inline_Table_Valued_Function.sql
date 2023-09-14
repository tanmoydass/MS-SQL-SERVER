USE SAMPLE_DB;

GO
CREATE FUNCTION getEmployeeDetailsBySalary(@salary AS DECIMAL)
RETURNS TABLE
AS 
RETURN
	SELECT * FROM EMPLOYE WHERE salary>@salary;


SELECT * FROM dbo.getEmployeeDetailsBySalary(40000);