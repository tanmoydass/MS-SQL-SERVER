USE SAMPLE_DB;

GO 
CREATE PROCEDURE proc_Employe_Details
AS
BEGIN
	SELECT * FROM EMPLOYE;
END

EXECUTE proc_Employe_Details;