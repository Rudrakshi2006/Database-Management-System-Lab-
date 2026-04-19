CREATE TABLE customer(
    cid VARCHAR2(10),
    name VARCHAR2(20),
    street VARCHAR2(20),
    city VARCHAR2(20),
    d_o_b DATE
);
INSERT INTO customer VALUES ('C101', 'Amit', 'MG Road', 'Mumbai', '10-JAN-2000');
INSERT INTO customer VALUES ('C102', 'Neha', 'FC Road', 'Pune', '15-MAY-1999');
INSERT INTO customer VALUES ('C103', 'Rahul', 'Ring Road', 'Delhi', '20-AUG-2001');

SELECT * FROM customer;

SELECT * FROM customer WHERE CITY='Delhi';
SELECT * FROM customer WHERE d_o_b ='13-feb-1995';
SELECT cid, name FROM customer WHERE d_o_b ='13-feb-1995';
SELECT * FROM customer WHERE d_o_b <'13-feb-1995';

SELECT * FROM customer WHERE CITY='nagpur' and STREET='CB road';
SELECT * FROM customer WHERE CITY='Delhi' or STREET='CB road';









