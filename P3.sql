ALTER TABLE INSTRUCTOR MODIFY salary Decimal(12,2);

ALTER table section Modify course_id Varchar(6);

desc section;

ALTER TABLE COURSE MODIFY TITLE VARCHAR2(70);

desc COURSE;

update instructor set salary = salary * 1.1 where DEPT_ID=104;

DESC INSTRUCTOR;

SELECT * FROM instructor where dept_id='104';

SELECT AVG(I.Salary) AS AverageSalary
FROM Instructor I
JOIN Department D ON I.DeptID = D.DeptID
WHERE D.Name = 'Computer Science';

SELECT D.Name AS Department, AVG(I.Salary) AS AverageSalary
FROM Department D
JOIN Instructor I ON D.DeptID = I.DeptID
GROUP BY D.Name;








DEPT ID
