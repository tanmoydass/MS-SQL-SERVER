USE SAMPLE_DB;

SELECT * FROM EMPLOYE;

SELECT * FROM EMPLOYE WHERE salary>=10000 AND dept='SD';

SELECT * FROM EMPLOYE WHERE salary=15000 OR dept='DA';

SELECT * FROM EMPLOYE WHERE salary!=15000;

SELECT * FROM EMPLOYE WHERE NOT salary=15000;