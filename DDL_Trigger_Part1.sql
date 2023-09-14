USE SAMPLE_DB;

GO
CREATE OR ALTER TRIGGER tr_OnTableCreate
ON DATABASE
FOR CREATE_TABLE,DROP_TABLE
AS
BEGIN
	PRINT 'New table is created or deleted'
END

CREATE TABLE Pratice(ID INT,NAME VARCHAR(20));
DROP TABLE Pratice;