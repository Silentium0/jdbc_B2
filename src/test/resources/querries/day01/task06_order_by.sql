SELECT * FROM EMPLOYEES;

/*
 order by to sort data base on provided colum name
 it can be ASC or DESC order
 */

 -- information from high to low

SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC; -- SORT ->  FROM HIGH TO LOW

SELECT * FROM EMPLOYEES
ORDER BY SALARY ASC ; -- SORT ->  FROM LOW TO  HIGH

-- WE AN SORT BY INDEX NUMBER, OF THE COLUM
SELECT * FROM EMPLOYEES
ORDER BY 8 ASC; -- SAME RESULT, EWE HAVE HERE SELECT *  ,  SO INDEX (8) BECAUSE WE GET ALL COLUM


SELECT EMAIL,FIRST_NAME,LAST_NAME FROM EMPLOYEES
ORDER BY 3 ASC; -- WE HAVE 3 SELECT STATEMENT SO WE CAN PROVIDE (3) IN BOX INDEX AND (SORT BASE ON LAST_NAME)


SELECT  * FROM EMPLOYEES
WHERE EMPLOYEE_ID < 110
ORDER BY FIRST_NAME;

SELECT  * FROM EMPLOYEES
WHERE EMPLOYEE_ID < 110
ORDER BY 2;

-- DISPLAY ALL INFORMATION ALL EMPLOYEES BASE ON FIRST_NAME  ASC  LAST_NAME DESCENDING

SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME  ASC , LAST_NAME DESC ;

SELECT * FROM EMPLOYEES
ORDER BY 2  ASC , 3 DESC; -- BY INDEX OF THE COLUM

-- SALARY OF ALL FROM HIGH TO LOW
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;




