select * from employees;
SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;
           -- DISTINCT REMOVE DUPLICATES
SELECT FIRST_NAME FROM EMPLOYEES; -- ALL FIRST NAMES  WITH DUPLICATES
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES; -- DISTINCT REMOVE DUPLICATES

SELECT  JOB_ID FROM EMPLOYEES; -- WITH  DUPLICATES
SELECT DISTINCT JOB_ID FROM EMPLOYEES;-- NO DUPLICATES

SELECT  COUNTRY_ID FROM LOCATIONS;-- WITH  DUPLICATES
SELECT DISTINCT COUNTRY_ID FROM LOCATIONS;-- NO DUPLICATES

SELECT DISTINCT JOB_ID FROM EMPLOYEES; -- SAME  NO DUPLICATES IN JOB_ID TABLE
SELECT  JOB_ID FROM JOBS; -- SAME NO DUPLICATES IN TABLE


