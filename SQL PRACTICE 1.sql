create database techmac_db;

/*task1*/

use techmac_db;

/*task2*/
/*task3*/


create table techhyve_employees
(
employee_id varchar(50) PRIMARY KEY,
first_name char(50),
last_name char(50),
employee_gender char,
age int
);
desc techhyve_employees;


insert into techhyve_employees values('TH0001','ELI','EVANS','M',26);
insert into techhyve_employees values('TH0002','CARLOS','SIMMONS','M',32);
insert into techhyve_employees values('TH0003','KATHIE','BRYANT','F',25);
insert into techhyve_employees values('TH0004','JOEY','HUGES','M',41);
insert into techhyve_employees values('TH0005','ALICE','MATTHEWS','F',52);
select * from techhyve_employees;

delete from techhyve_employees where employee_id = 'TH0003';
delete from techhyve_employees where employee_id = 'th0005';


create table techcloud_employees
(
employee_id varchar(50) PRIMARY KEY,
first_name char(50),
last_name char(50),
employee_gender char,
age int
);
desc techcloud_employees;


insert into techcloud_employees values('TC0001','TERESA','BRYANT','F',39);
insert into techcloud_employees values('TC0002','ALEXIS','PATTERSON','M',48);
insert into techcloud_employees values('TC0003','ROSE','BELL','F',42);
insert into techcloud_employees values('TC0004','GEMMA','WATKINS','F',44);
insert into techcloud_employees values('TC0005','KINGSTON','MARTINEZ','M',29);
select * from techcloud_employees;

delete from techcloud_employees where employee_id = 'TC0001';
delete from techcloud_employees where employee_id = 'TC0004';

create table techsoft_employees
(
employee_id varchar(50) PRIMARY KEY,
first_name char(50),
last_name char(50),
employee_gender char,
age int
);
desc techsoft_employees;

insert into techsoft_employees values('TS0001','PETER','BURTLER','M',44);
insert into techsoft_employees values('TS0002','HAROLD','SIMMONS','M',54);
insert into techsoft_employees values('TS0003','JULIANA','SANDERS','F',36);
insert into techsoft_employees values('TS0004','PAUL','WARD','M',29);
insert into techsoft_employees values('TS0005','NICOLE','BRYANT','F',30);
select * from techsoft_employees;

/*task4*/


create database backup_techmac_db; 


use backup_techmac_db;


/*task6*/  

create table techhyve_employees_bkp select * from techmac_db.techhyve_employees;

select * from techhyve_employees_bkp;

create table techcloud_employees_bkp select * from techmac_db.techcloud_employees;

select * from techcloud_employees_bkp;

create table techsoft_employees_bkp select * from techmac_db.techsoft_employees;

select * from techcloud_employees_bkp;





