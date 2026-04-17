CREATE TABLE Employee(
    Eid NUMBER(5),
    Ename VARCHAR2(20),
    Salary NUMBER(10),
    Dept VARCHAR2(10),
    D_O_J DATE,
    D_O_B DATE,
    City VARCHAR2(15)
);
INSERT INTO Employee VALUES (101, 'Amit', 30000, 'HR', '10-JAN-22', '15-MAY-95', 'Mumbai');
INSERT INTO Employee VALUES (102, 'Neha', 40000, 'IT', '12-MAR-21', '20-JUL-96', 'Pune');
INSERT INTO Employee VALUES (103, 'Rahul', 35000, 'HR', '05-JUN-20', '10-FEB-94', 'Delhi');

SELECT * FROM Employee;

SELECT Eid, Ename FROM Employee;

SELECT * FROM Employee
WHERE Dept = 'HR';


