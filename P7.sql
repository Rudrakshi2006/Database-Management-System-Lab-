create table studentts( 
prn number(15) primary key,
 name varchar2(20) unique,
 mno number(15),
 d_o_b date not null);

create table emp2(
id varchar2(10),
 name varchar2(20),
 salary number(6),
 constraint cksal check(salary>=3000));
