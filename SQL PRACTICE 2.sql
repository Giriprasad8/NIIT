create database techmac_db;


use techmac_db;


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



----/*task 1 A. adding constraint not null*/  



alter table techhyve_employees modify first_name char(50) not null;
alter table techhyve_employees modify last_name char(50) not null;



/*task 1 B  set default age 21*/

alter table techhyve_employees alter age set default 21;


/*task 1 C  age b/w 21 to 55 */

alter table techhyve_employees add constraint check(age between 21 and 55);


/*task 1 D  add columns */

alter table techhyve_employees add column username varchar(50) not null;
alter table techhyve_employees add column password varchar(50) not null;
alter table techhyve_employees add constraint unique(username);
alter table techhyve_employees add constraint unique(password);
ALTER TABLE techhyve_employees ADD CONSTRAINT check_gender CHECK (employee_gender IN ('M', 'F'));


/*task 2 add communication proficiency column*/
alter table techhyve_employees add column communication_proficiency varchar(50) default(1);
alter table techhyve_employees add constraint check (communication_proficiency between 1 and 5);




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


----/*task 1 A*/


alter table techcloud_employees modify first_name char(50) not null;
alter table techcloud_employees modify last_name char(50) not null;



/*task 1 B  set default age 21*/

alter table techcloud_employees alter age set default 21;

/*task 1 C  age b/w 21 to 55 */

alter table techcloud_employees add constraint check(age between 21 and 55);


alter table techcloud_employees add column username varchar(50) not null;
alter table techcloud_employees add column password varchar(50) NOT NULL;
alter table techcloud_employees add constraint unique(username);
alter table techcloud_employees add constraint unique(password);

/*task 2 add communication proficiency column*/
alter table techcloud_employees add column communication_proficiency varchar(50) default(1);
alter table techcloud_employees add constraint check(communication_proficiency between 1 and 5);



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

/*task1  A */
alter table techsoft_employees modify first_name char(50) not null;
alter table techsoft_employees modify last_name char(50) not null;




/*task 1 B  set default age 21*/

alter table techsoft_employees alter age set default 21;




/*task 1 C  age b/w 21 to 55 */

alter table techsoft_employees add constraint check(age between 21 and 55);



alter table techsoft_employees add column username varchar(50) not null;
alter table techsoft_employees add column password varchar(50) NOT NULL;
alter table techsoft_employees add constraint unique(username);
alter table  techsoft_employees add constraint unique(password);



/*task 2 add communication proficiency column*/


alter table techsoft_employees add column communication_proficiency varchar(50) default(1);
alter table techsoft_employees add constraint check(communication_proficiency between 1 and 5);



/*task 3 merge hyve and cloud */

create table techhyvecloud_employees like techhyve_employees;

use techmac_db;
insert  techhyvecloud_employees select *  from techcloud_employees;
select *  from techcloud_employees;
select * from  techhyvecloud_employees;
 select *  from techcloud_employees;
 select * from techhyve_employees;





















