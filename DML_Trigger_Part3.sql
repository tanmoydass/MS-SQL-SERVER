USE SAMPLE_DB;

GO
SELECT *FROM EMPLOYE;
SELECT *FROM employeLogs;

GO
CREATE TRIGGER tr_All_DML_Log
ON EMPLOYE
AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	--INSERT
	IF EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT* FROM deleted)
		INSERT INTO employeLogs
		SELECT employeId,employeName,dept,salary,AGE,PHONE_NO,'Tanmoy Das',GETDATE()
		FROM inserted;

	--UPDATE
	ELSE IF EXISTS (SELECT * FROM inserted) AND EXISTS(SELECT* FROM deleted)
		INSERT INTO employeLogs
		SELECT employeId,employeName,dept,salary,AGE,PHONE_NO,'Tanmoy Das',GETDATE()
		FROM deleted;

	--DELETE
	ELSE IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS(SELECT* FROM deleted)
		INSERT INTO employeLogs
		SELECT employeId,employeName,dept,salary,AGE,PHONE_NO,'Tanmoy Das',GETDATE()
		FROM deleted;
	ELSE
		BEGIN
			PRINT 'NOTHING IS CHANGED'
		END
END
GO

GO
INSERT INTO EMPLOYE VALUES(14,'RUPA SIKDAR','JSD',30000,22,NULL);
GO

GO
UPDATE EMPLOYE SET salary=25000 WHERE employeId=7;
GO

GO 
DELETE FROM EMPLOYE WHERE employeId=12;
GO