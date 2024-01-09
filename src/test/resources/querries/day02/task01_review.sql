SELECT * FROM EMPLOYEES;

SELECT  * FROM JOBS
WHERE JOB_TITLE = 'President' or JOB_TITLE = 'Sales Manager' or JOB_TITLE = 'Finance Manager';
-- same result
SELECT  * FROM JOBS
WHERE JOB_TITLE in ('President','Sales Manager','Finance Manager');

--display all Departments that does not have manager_id in departments table
select  * from DEPARTMENTS
where MANAGER_ID is null;

-- display all information from  locations table where locations in US or Uk

select * from LOCATIONS
where COUNTRY_ID in ('US','UK');

select * from LOCATIONS
where COUNTRY_ID  = 'US' or COUNTRY_ID = 'UK';

--Display all information where Country ID is not US or GB from location table

select * from LOCATIONS
where COUNTRY_ID  not in ('US', 'GB');

select * from LOCATIONS
where COUNTRY_ID  <> 'US' and COUNTRY_ID <> 'GB';

select * from LOCATIONS
where COUNTRY_ID  != 'US' and COUNTRY_ID != 'GB';

-- Display All information where region ID id 10 and country name Belgium

SELECT * from  COUNTRIES
where REGION_ID = 10 and  COUNTRY_NAME = 'Belgium';

SELECT * from  COUNTRIES
where REGION_ID = 10 and  COUNTRY_NAME != 'Belgium';

--Display all information who does not work in any these department id 90, 60 , 100,130,122
select * from EMPLOYEES
where DEPARTMENT_ID not in (90,60,100,122,130);




