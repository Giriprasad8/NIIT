use stylexcarz_db;

---/*task 1 A*/
alter table orders add constraint foreign key (salesperson_id) references salesperson(salesperson_id);

---/*TASK 1 B*/
alter table orders add constraint foreign key (customer_id) references customers(customers_id);

---/* task 1 C*/
alter table orders modify amount int default(500);

---/*task 2 A*/
create table CITY
(
city_id varchar(30) PRIMARY KEY,
city_name varchar(30) unique
);

---/* task 3 A*/

alter table customers add column age int not null;
alter table customers modify age int default(18);
desc customers;

---/*task 3 B*/

alter table customers add column gender char not null;
alter table customers add constraint check_gender check (gender in ('M','F'));

---/*task 3 C*/

alter table customers add column profession varchar(50) not null;
alter table customers add constraint check_profession check(profession in ('public sector service','private sector service','homemaker','entreprenuer','student'));

---/*task 3 D*/

alter table customers add constraint check_c_rating check(c_rating between 1 and 5);
alter table customers modify c_rating int default(1);
desc customers;

---/*task 3 E*/

alter table customers add constraint foreign key (c_city) references city(city_id);
desc customers;

---/*task 4 A*/

alter table salesperson add constraint check_commission_rate check(commission_rate between 15 and 30);
desc salesperson;


---/* task 4 B*/
alter table salesperson modify commission_rate int default(20);
desc salesperson;

---/*task 4 c*/
alter table salesperson add constraint foreign key(salesperson_id) references city(city_id);
desc salesperson;
desc city;