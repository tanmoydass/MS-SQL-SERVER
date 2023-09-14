USE SAMPLE_DB;

GO
SELECT *FROM EMPLOYE;
SELECT *FROM employeLogs;

GO
CREATE TABLE employeLogs(id INT,name VARCHAR(30), department VARCHAR(30), salary DECIMAL, age DECIMAL,number INT,
modifiedBy VARCHAR(30), modifiedOn DATE);

GO
CREATE TRIGGER tr_log
ON EMPLOYE
AFTER INSERT
AS 
BEGIN
	INSERT INTO employeLogs
	SELECT employeId,employeName,dept,salary,AGE,PHONE_NO,'Tanmoy Das',GETDATE()
	FROM inserted; --MAGIC TABLE
END


GO
INSERT INTO EMPLOYE VALUES(13,'ARINDAM ROY','SD',80000,24,NULL);
GO
