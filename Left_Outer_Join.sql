USE SAMPLE_DB;

SELECT * FROM EMPLOYE;
SELECT * FROM EMP_ADDRESS;

SELECT employeName,dept,address FROM EMPLOYE LEFT OUTER JOIN EMP_ADDRESS ON EMPLOYE.employeId=EMP_ADDRESS.employeId;

