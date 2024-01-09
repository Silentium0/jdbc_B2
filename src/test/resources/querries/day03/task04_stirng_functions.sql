SELECT * FROM EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME, SALARY FROM  EMPLOYEES; -- HERE WE HAVE PER MONTH SALARY
SELECT FIRST_NAME, LAST_NAME, SALARY*12 FROM  EMPLOYEES;-- WE MULTIPLY BY 12 MONTH SO WE HAVE PER 1 YEAR AMOUNT


SELECT * FROM EMPLOYEES;
-- concatenation
SELECT EMAIL || '@gmail.com' FROM EMPLOYEES;
SELECT FIRST_NAME || '@gmail.com' FROM EMPLOYEES;
SELECT LAST_NAME || '@gmail.com' FROM EMPLOYEES;
SELECT CONCAT(email, '@gmail.com') from EMPLOYEES;
SELECT UPPER(EMAIL || '@gmail.com') FROM EMPLOYEES;
SELECT LOWER(EMAIL || '@gmail.com') FROM EMPLOYEES;

SELECT * FROM EMPLOYEES
WHERE LAST_NAME = 'King';
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Jack';

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME like '____';


-- INITCAP - ONLY FIRST letter in UPPER case
select INITCAP(EMAIL) from EMPLOYEES;

-- LENGTH
-- Display the length of eamil
SELECT EMAIL, LENGTH(EMAIL) FROM  EMPLOYEES;

-- Display  all the employees first_name and order by based on length of firstname
SELECT FIRST_NAME, LENGTH(FIRST_NAME) FROM EMPLOYEES
order by 2;

SELECT FIRST_NAME, LENGTH(FIRST_NAME) FROM EMPLOYEES
order by LENGTH(FIRST_NAME);

SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS LENGTH_FIRSTNAME FROM EMPLOYEES
order by LENGTH_FIRSTNAME;

--Display the result as below concatenation
-- $first_name makes $salary salary
SELECT FIRST_NAME || ' makes $' || SALARY || ' salary' AS "Emaployees Salary" from EMPLOYEES;


-- SUBSTRING --- >  SUBSTR(columnName, beginningIndex, endingIndex)
-- Display all employees First_Name 2 characters
SELECT FIRST_NAME, SUBSTR(FIRST_NAME, 0, 2) from EMPLOYEES;

SELECT FIRST_NAME, SUBSTR(FIRST_NAME, 0, 2) from EMPLOYEES
where FIRST_NAME = 'Steven';

-- Display all Initials from employees --- >  first character for first_name and first character of last_name
SELECT FIRST_NAME, LAST_NAME from EMPLOYEES
WHERE LAST_NAME = 'King';


SELECT FIRST_NAME, LAST_NAME, SUBSTR(FIRST_NAME, 0,1) || SUBSTR(LAST_NAME, 0,1) AS INITIALS from EMPLOYEES
WHERE LAST_NAME = 'King';

SELECT FIRST_NAME, LAST_NAME, SUBSTR(FIRST_NAME, 0,1) || SUBSTR(LAST_NAME, 0,1) AS INITIALS from EMPLOYEES;


-- Display all employees with first_name with 6 characters
SELECT FIRST_NAME from EMPLOYEES
WHERE LENGTH(FIRST_NAME) = 6;

SELECT FIRST_NAME, LENGTH(FIRST_NAME) from EMPLOYEES
WHERE LENGTH(FIRST_NAME) = 6;
-- OR we can do this.
SELECT FIRST_NAME from EMPLOYEES
WHERE FIRST_NAME LIKE '______';



-- Display how many employees with first_name being in 6 characters
SELECT  COUNT(FIRST_NAME) from EMPLOYEES
where LENGTH(FIRST_NAME) = 6;















