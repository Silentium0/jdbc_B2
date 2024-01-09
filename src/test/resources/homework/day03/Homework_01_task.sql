SELECT * FROM EMPLOYEES;
--1 -- Select - Distinct - Where - Order By - Like - Group By - Having
-- 1. List all the employees first and last name with their salary in employees table
-- 2. How many employees have salary less than 5000?
-- 3. How many employees have salary between 6000 and 7000?
-- 4. List all the different region_ids in countries table
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
-- 7. display the maximum salary in employees table
-- 8. display the the minimum salary in employees table
-- 9. display the average salary of the employees;
-- 10. count the total numbers of the departments in departs table
-- 11. sort the start_date in ascending order in job_history's table
-- 12. sort the start_date in descending order in job_history's table
-- 13. display all records whose last name contains 2 lowercase 'a's
-- 14. display all the employees whose first name starts with 'A'
-- 15. display all the employees whose job_ID contains 'IT'
-- 16. display all  unique job_id that end with CLERK in employee table
-- 17.display all  employees first name starts with A and have exactly 4 characters Total
-- 18. display all the employees whose department id in 50, 80, 100
-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
-- 20. divide employees into groups by using thier job id
       -- 1 display the maximum salaries in each groups
       -- 2 display the minium salaries in each groups
       -- 3 display the average salary of each group
       -- 4 how many employees are there in each group that have minimum salary of 5000 ?
       -- 5 display the total budgests of each groups
-- 21. display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
-- 22.display max salary  for each department
-- 23. display total salary for each department except department_id 50, and where total salary >30000

--1 List all the employees first and last name with their salary in employees table
SELECT FIRST_NAME , LAST_NAME, SALARY FROM EMPLOYEES;
--2 How many employees have salary less than 5000?
SELECT * FROM EMPLOYEES
WHERE SALARY < 5000;
--3 How many employees have salary between 6000 and 7000?
SELECT * FROM EMPLOYEES
WHERE SALARY BETWEEN 6000 AND 10000;
--4 List all the different region_ids in countries table
SELECT  REGION_ID FROM COUNTRIES;
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
SELECT FIRST_NAME,LAST_NAME, SALARY FROM EMPLOYEES
WHERE FIRST_NAME = 'Douglas' AND LAST_NAME = 'Grant';
-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_NAME IN ('IT','Public Relations','Sales','Executive');
-- 7. display the maximum salary in employees table
SELECT MAX(SALARY) FROM EMPLOYEES;
-- 8. display the the minimum salary in employees table
SELECT MIN(SALARY) FROM EMPLOYEES;
-- 9. display the average salary of the employees;
SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES;
-- 11. sort the start_date in ascending order in job_history's table
SELECT START_DATE FROM JOB_HISTORY
ORDER BY START_DATE ASC;
-- 12. sort the start_date in descending order in job_history's table
SELECT START_DATE FROM JOB_HISTORY
ORDER BY START_DATE DESC;
-- 13. display all records whose last name contains 2 lowercase 'a's
SELECT LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE '%a%' AND LAST_NAME LIKE '%s%';
-- 14. display all the employees whose first name starts with 'A'
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%';
-- 15. display all the employees whose job_ID contains 'IT'
SELECT * FROM EMPLOYEES
WHERE JOB_ID LIKE '%IT%';
-- 16. display all  unique job_id that end with CLERK in employee table
SELECT DISTINCT JOB_ID FROM EMPLOYEES
WHERE JOB_ID LIKE '%CLERK';
-- 17.display all  employees first name starts with A and have exactly 4 characters Total
SELECT FIRST_NAME  FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A___';
-- 18. display all the employees whose department id in 50, 80, 100
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (50,80,100);
-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN (90,60,100,130,120);
-- 20. divide employees into groups by using thier job id
    -- 1 display the maximum salaries in each groups
    -- 2 display the minium salaries in each groups
    -- 3 display the average salary of each group
    -- 4 how many employees are there in each group that have minimum salary of 5000 ?
    -- 5 display the total budgests of each groups
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;
--2
SELECT JOB_ID, MIN(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;
--3
SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;
--4
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES
WHERE  SALARY <5000
GROUP BY JOB_ID;
--5
SELECT JOB_ID, SUM(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;



-- 21. display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
SELECT JOB_ID,  AVG(SALARY)  FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG','SA_REP','FI_ACCOUNT','AD_VP')
GROUP BY JOB_ID;
-- 22.display max salary  for each department
SELECT DEPARTMENT_ID,  MAX(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
-- 23. display total salary for each department except department_id 50, and where total salary >30000
SELECT DEPARTMENT_ID, SUM(SALARY) FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN  50
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY)>30000;

-- 1. display full addresses from locations table in a single column
-- 2. display all informations of the employee who has the minimum salary in employees table
-- 3. display the second minimum salary from the employees
-- 4. display all informations of the employee who has the second minimum salary
-- 5. list all the employees who are making above the average salary;
-- 6. list all the employees who are making less than the average salary
-- 7. display manager name of 'Neena'
-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
-- 14. find the 7th maximum salary from the employees table (do not include duplicates)
-- 15. find the 10th maximum salary from the employees table (do not include duplicates)


-- 2. display all informations of the employee who has the minimum salary in employees table
SELECT EMPLOYEE_ID, MIN(SALARY)FROM EMPLOYEES
group by EMPLOYEE_ID
ORDER BY 1;

-- 1. display full addresses from locations table in a single column
SELECT * FROM LOCATIONS;
SELECT CONCAT(STREET_ADDRESS,POSTAL_CODE) FROM LOCATIONS;
-- 3. display the second minimum salary from the employees
SELECT  min(salary)  FROM EMPLOYEES
WHERE salary IN
      (SELECT salary FROM EMPLOYEES MINUS SELECT min(salary)
       FROM EMPLOYEES);
-- 4. display all informations of the employee who has the second minimum salary
SELECT  MIN(SALARY) FROM EMPLOYEES
WHERE SALARY> (SELECT MIN(SALARY) FROM EMPLOYEES);
-- 5. list all the employees who are making above the average salary;
SELECT * FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);
-- 6. list all the employees who are making less than the average salary
SELECT * FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);
-- 7. display manager name of 'Neena'
SELECT * FROM EMPLOYEES
    WHERE FIRST_NAME = ('Neena');
-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
SELECT DISTINCT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY< (SELECT MAX(SALARY) FROM EMPLOYEES
       WHERE  SALARY <  (SELECT MAX(SALARY) FROM EMPLOYEES));
-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
    ORDER BY SALARY DESC)
WHERE ROWNUM < 6);
-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
 WHERE ROWNUM < 8);
-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM < 11);
-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM < 57);
-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
 ORDER BY SALARY DESC)
WHERE ROWNUM < 55);
-- 14. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM < 53);
-- 15. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM < 50);















































