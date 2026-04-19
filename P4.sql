SELECT first_name, last_name
FROM emp
ORDER BY salary DESC;

SELECT emp_no, first_name, last_name
FROM emp
WHERE job = 'Clerk'
ORDER BY salary DESC;

SELECT first_name, last_name FROM emp
WHERE job = 'Clerk' AND (salary > (SELECT salary FROM emp WHERE first_name = 'Emma')
OR salary < (SELECT salary FROM emp WHERE first_name = 'John'));

select * from Emp where salary between 8000 and 12000;

select first_name ,last_name from emp where LENGTH(first_name) = 5;

SELECT first_name, last_name
FROM emp
WHERE first_name LIKE 'A%";

select first_name last_name from emp where first_name LIKE '%a';

select first_name last_name from emp where first_name LIKE ' __ v%';

select job,max(salary) from emp group by job;



