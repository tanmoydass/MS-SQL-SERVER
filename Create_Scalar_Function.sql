USE SAMPLE_DB;

GO
CREATE FUNCTION paisa(@name VARCHAR(30))
RETURNS decimal
BEGIN
	DECLARE @SAL INT;
	SELECT @SAL=SALARY FROM EMPLOYE WHERE employeName=@name;
	RETURN @SAL;
END
GO

SELECT dbo.paisa('TANMOY DAS');
