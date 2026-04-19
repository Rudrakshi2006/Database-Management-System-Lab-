CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10, 2),
    manager_id INT
);
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
CREATE TABLE Projects (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(50),
    dept_id INT
);
CREATE TABLE Assignments (
    emp_id INT,
    proj_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (proj_id) REFERENCES Projects(proj_id)
);

INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES
(1, 'John', 101, 5000.00, NULL),
(2, 'Alice', 102, 3000.00, 1),
(3, 'Robert', 101, 4000.00, 1),
(4, 'Michael', 103, 7000.00, NULL),
(5, 'Susan', 102, 3500.00, 2),
(6, 'Nancy', 104, 4200.00, NULL),
(7, 'David', 103, 3900.00, 4),
(8, 'Laura', 101, 5200.00, 3);

INSERT INTO Departments (dept_id, dept_name, location) VALUES
(101, 'Finance', 'New York'),
(102, 'HR', 'Chicago'),
(103, 'IT', 'Dallas'),
(104, 'Marketing', 'San Francisco');

INSERT INTO Projects (proj_id, proj_name, dept_id) VALUES
(201, 'Project A', 101),
(202, 'Project B', 103),
(203, 'Project C', 102),
(204, 'Project D', 104);

INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES
(1, 201, 30),
(2, 203, 40),
(3, 201, 20),
(4, 202, 50),
(5, 203, 35),
(6, 204, 25),
(7, 202, 45);

   SELECT e.emp_name, d.dept_name 
    FROM Employees e 
    INNER JOIN Departments d ON e.dept_id = d.dept_id;
   
    SELECT e.emp_name, p.proj_name 
    FROM Employees e 
    LEFT JOIN Assignments a ON e.emp_id = a.emp_id
    LEFT JOIN Projects p ON a.proj_id = p.proj_id;

    SELECT p.proj_name, e.emp_name 
    FROM Projects p 
    RIGHT JOIN Assignments a ON p.proj_id = a.proj_id
    RIGHT JOIN Employees e ON a.emp_id = e.emp_id;

    SELECT e.emp_name, d.dept_name 
    FROM Employees e 
    FULL OUTER JOIN Departments d ON e.dept_id = d.dept_id;

    SELECT e.emp_name AS Employee, m.emp_name AS Manager 
    FROM Employees e 
    LEFT JOIN Employees m ON e.manager_id = m.emp_id;

SELECT e.emp_name, p.proj_name 
FROM Employees e 
CROSS JOIN Projects p;


