USE SAMPLE_DB;

CREATE TABLE EMP_ADDRESS(employeId int not null,address varchar(30));

INSERT INTO EMP_ADDRESS VALUES(1,'BARASAT');
INSERT INTO EMP_ADDRESS VALUES(2,'SILIGURI');
INSERT INTO EMP_ADDRESS VALUES(3,'BONGAON');
INSERT INTO EMP_ADDRESS VALUES(4,'BARASAT');
INSERT INTO EMP_ADDRESS VALUES(5,'BOJBOJ');
INSERT INTO EMP_ADDRESS VALUES(6,'DIGHA');
INSERT INTO EMP_ADDRESS VALUES(7,'BAKURA');
INSERT INTO EMP_ADDRESS VALUES(8,'MASLANDAPUR');

SELECT *FROM EMP_ADDRESS;

SELECT employeName,address FROM EMPLOYE INNER JOIN EMP_ADDRESS
ON EMPLOYE.employeId=EMP_ADDRESS.employeId;