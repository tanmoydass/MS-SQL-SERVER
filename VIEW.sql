use SAMPLE_DB;

SELECT * FROM EMPLOYE;

GO
CREATE VIEW v_EmployeeDetails
AS SELECT employeName,salary FROM EMPLOYE;

GO
SELECT * FROM v_EmployeeDetails;