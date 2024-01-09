select * from employees;

CREATE TABLE address2 (
    address_id INTEGER PRIMARY KEY,
    address varchar(50) NOT NULL,
    phone NUMBER not null
);

INSERT INTO address2 (address_id, address, phone) VALUES (5, '193 Hello St', 2830334455);
INSERT INTO address2 (address_id, address, phone) VALUES (7,	'692 Bye Rd', 2830334456);
INSERT INTO address2 (address_id, address, phone) VALUES (8,	'1556 Tom Way', 2830334457);
INSERT INTO address2 (address_id, address, phone) VALUES (10, '1795 Jerry St', 2830334458);
INSERT INTO address2 (address_id, address, phone) VALUES (11, '900 Fairfax Blvd', 2830334459);

SELECT * FROM address2;


CREATE TABLE CUSTOMER (
     customer_id INTEGER PRIMARY KEY,
     first_name varchar(30) not null,
     last_name varchar(40) not null,
     address_id INTEGER REFERENCES address2(address_id)
);


INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id) VALUES (1, 'Marry', 'Smith',5);
INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id) VALUES (2, 'Patricia', 'Johnson',NULL);
INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id) VALUES (3, 'Linda', 'Jones',7);
INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara', 'Jones',8);
INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id) VALUES (5, 'Elizabeth', 'Brown',NULL);


SELECT * FROM CUSTOMER;


commit;

/*
 INNER JOIN

    Get the info ONLY matching portion of the tables
    Inner Join eliminates if there is no matching
    If you do nto write inner and just write join, it will by default act like INNER JOIN

 */

 SELECT first_name, last_name, address, phone
 FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- This will give an issue because the query does not know from WICH table it needs to get the address_id column since both have it.
SELECT first_name, last_name, address, phone, address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- The solution is, we can call that column with the table name.  -- > USTOMER.address_id
SELECT first_name, last_name, address, phone, CUSTOMER.address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- The solution is, we can call that column with the table name.  -- > ADDRESS.address_id
SELECT first_name, last_name, address, phone, ADDRESS.address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- YOu can get that column form both table since both have it -- > ADDRESS.address_id, CUSTOMER.address_id
SELECT first_name, last_name, address, phone, ADDRESS.address_id, CUSTOMER.address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;




SELECT FIRST_NAME, last_name , address, phone from CUSTOMER left outer join address2
on CUSTOMER.address_id = address2.address_id;



