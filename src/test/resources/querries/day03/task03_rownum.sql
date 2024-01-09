SELECT * FROM EMPLOYEES;
-------------------------------------------
--DISPLAY ALL INFO  FIRST 5 HIGHEST SALARY
SELECT * FROM EMPLOYEES
WHERE ROWNUM <=8 -- WILL GIVE 5 ROWS
ORDER BY  SALARY ASC;

---NO DUPLICATES
SELECT DISTINCT (SALARY) FROM EMPLOYEES
WHERE ROWNUM <=5 -- WILL GIVE 5 ROWS
ORDER BY  SALARY ASC
--------------------------------------------

-- Display first 52 highest salary
SELECT * FROM (SELECT DISTINCT (SALARY) from EMPLOYEES
               ORDER BY SALARY DESC)
WHERE rownum < 53;


-- FInd me the info about 5th highest salary

-- This below will give me all salary in DESCENDING order with NO DUPLICATES
select  Distinct (SALARY) from EMPLOYEES
order by SALARY DESC; -- 13K


SELECT * FROM EMPLOYEES
WHERE SALARY = 13000;



SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
               ORDER BY SALARY DESC)
where ROWNUM < 6;

-- 1st step -- >find all salary in descending order with no Duplicates
SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC;

-- 2step -- > once we did the step 1st, go ahead and cut the view to show only the first highest one
SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
               ORDER BY SALARY DESC)
where ROWNUM < 6;

-- 3 step - Once we did the step 2, go ahead and find me the minium one among those 5 salaries
SELECT MIN(SALary) from (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
                                        ORDER BY SALARY DESC)
                         where ROWNUM < 6); -- 13K

-- 4 step -  Once we did the step 3, I use is as a dynamic value from my condition
SELECT * FROM  EMPLOYEES
WHERE SALARY = (SELECT MIN(SALary) from (SELECT * FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
                                                        ORDER BY SALARY DESC)
                                         where ROWNUM < 6));









