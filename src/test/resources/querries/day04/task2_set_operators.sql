SELECT * FROM EMPLOYEES;

-- CREATE TABLE

CREATE TABLE DEVELOPERS(
    id_num INTEGER PRIMARY KEY ,
    name VARCHAR(30),
    salary INTEGER

);


CREATE TABLE  TESTERS(
                         id_num INTEGER PRIMARY KEY ,
                         name VARCHAR(30),
                         salary INTEGER

);


INSERT INTO  DEVELOPERS VALUES (1,'Mike',120000);
INSERT INTO  DEVELOPERS VALUES (2,'Jone',220000);
INSERT INTO  DEVELOPERS VALUES (3,'Lilo',520000);
INSERT INTO  DEVELOPERS VALUES (4,'Bob',720000);

INSERT INTO TESTERS VALUES (1,'Chila',320000);
INSERT INTO TESTERS VALUES (2,'Frank',70000);
INSERT INTO TESTERS VALUES (3,'KnoI',20000);


SELECT * FROM DEVELOPERS;
SELECT * FROM TESTERS;

COMMIT;

UPDATE TESTERS
SET name ='Frank'
WHERE id_num = 3;

/*
 UNION --> same num of columns
 removes duplicates
 combine tables data
 UNION ALL  --> WITH DUPLICATES
 */
SELECT name, salary FROM DEVELOPERS
UNION                     -- remove duplicates SORT
SELECT name from TESTERS;

SELECT name, salary FROM DEVELOPERS
UNION all                 -- with duplicates NO SORT
SELECT name, salary from TESTERS;


/*
 INTERSECT
 RETURN THE RESULT  WITCH IS IN BOTH COLUMNS
 */







