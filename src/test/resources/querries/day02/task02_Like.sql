select * from employees;

/*
 LIKE
    any sequence of character  --> Jen% --> Starts with Jen --> refers to 0 or more characters
    any sequence of character  --> %fer --> Ends with fer --> refers to 0 or more characters
 */

 -- Display all employees whose first_name starts with B
select * from EMPLOYEES
where FIRST_NAME like  'B%';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like  'B%';

--Display all info from employees whose first name starts with B and has 5 characters  in total

select * from EMPLOYEES
where FIRST_NAME like 'B____';

-- Display 5 letters name where middle character is l

SELECT  FIRST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE  '__l__';

-- first  name is x
SELECT  * FROM EMPLOYEES
WHERE FIRST_NAME LIKE  '%x%';

-- Display all info who has 4 characters long name
SELECT  * FROM EMPLOYEES
WHERE FIRST_NAME LIKE  '____'; -- 4 underScore

-- Display all info  where  the first name 2nd character is d
SELECT * FROM  EMPLOYEES
WHERE FIRST_NAME LIKE '_d%';

-- Display last_names whose first name ends with l
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%l';

-- Display any job information with job_title ends with Manager
SELECT * FROM JOBS
WHERE JOB_TITLE LIKE '%Manager';









