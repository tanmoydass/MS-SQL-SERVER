USE SAMPLE_DB;

SELECT * FROM EMPLOYE;
SELECT * FROM EMP_ADDRESS;

SELECT employeName,dept,address FROM EMPLOYE RIGHT OUTER JOIN EMP_ADDRESS ON EMPLOYE.employeId=EMP_ADDRESS.employeId;
