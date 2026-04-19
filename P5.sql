select upper('abcdefg') "UCASE" from dual;

select lower('ABCDEFG') "LCASE" from dual;

select initcap('abcdefg') "F_CAP" from dual;

select length('ABCDEfg') "LEN" from dual;

SELECT SUBSTR('DATABASE', 1, 4)
FROM DUAL;

SELECT INSTR('DATABASE', 'A")
FROM DUAL;

SELECT CONCAT('DATA', 'BASE')
FROM DUAL;

select ltrim(' *** abcdefg *** ', '*') "TRIM" from dual;
select rtrim(' *** abcdefg *** ', '*') "TRIM" from dual;

select round(123.456,2) from dual;

 select mod(9,2) from dual;

select ceil(1234.2356) from dual;

select floor(1234.2356) from dual;

 select exp(3) from dual;









