create database stylexcarz_db;


/*task1*/ /*create a database and name it as stylexcarz_db*/


use stylexcarz_db;

/*task2*/ /*create three tables*/
/*task3*/ /*insert the values in the tables*/


create table salesperson
(
salesperson_id varchar(50) PRIMARY KEY,
salesperson_name char(50),
salesperson_city char(50),
commission_rate int
);
desc salesperson;

insert into salesperson values('1001','WILLAMS','NEWYORK',12);
insert into salesperson values('1002','LIAM','NEW JERSY',13);
insert into salesperson values('1003','AXELROD','SAN JOSE',10);
insert into salesperson values('1004','JAMES','SAN DIEGO',11);
insert into salesperson values('1005','FRAN','AUSTIN',26);
insert into salesperson values('1007','OLIVER','NEWYORK',15);
insert into salesperson values('1008','JOHN','ATLANDA',2);
insert into salesperson values('1009','CHARLES','NEW JERSY',2);
SELECT * FROM salesperson;
select * from stylexcarz_db.salesperson;

/*task4*/ /*increase the commission rate =15*/

update salesperson
set commission_rate=commission_rate+commission_rate*.15
where commission_rate<15;
set sql_safe_updates=0;

select * from stylexcarz_db.salesperson;



create table customers
(
customers_id varchar(50) PRIMARY KEY,
c_firstname char(50),
c_lastname char(50),
c_city char(50),
c_rating int
);
desc customers;


insert into customers values('2001','Hoffman','Anny','New York',1);
insert into customers values('2002','giovanni','jenny','New jersy',2);
insert into customers values('2003','liu','willams','san jose',3);
insert into customers values('2004','grass','harry','san diego',3);
insert into customers values('2005','clemens','john','austin',4);
insert into customers values('2006','cisneros','fanny','New York',4);
insert into customers values('2007','pereira','jonathan','atlanda',3);
select * from customers;

set sql_safe_updates=0;





create table orders
(
order_id varchar(50) PRIMARY KEY,
amount int,
order_date date,
salesperson_id varchar(50),
customer_id varchar(50)
);
desc customers;



insert into orders values('3001',23,'2020-02-01','1009','2007');
insert into orders values('3002',20,'2021-02-23','1007','2007');
insert into orders values('3003',89,'2021-03-06','1002','2002');
insert into orders values('3004',67,'2021-04-02','1004','2002');
insert into orders values('3005',30,'2021-07-30','1001','2007');
insert into orders values('3006',35,'2021-09-18','1001','2004');
insert into orders values('3007',19,'2021-10-02','1001','2001');
insert into orders values('3008',21,'2021-10-09','1003','2003');
insert into orders values('3009',45,'2021-10-10','1009','2005');
select * from orders;

/*task6*/ /*increase the c_rating */


UPDATE customers
SET c_rating=c_rating+ 3
WHERE customers_id IN
 (
    SELECT customers_id
    FROM orders
    GROUP BY customers_id
    HAVING COUNT(order_id) > 1
);

select * from orders;


set sql_safe_updates=0;


/*task5*/  /*create a backup database*/

create database stylexcarz_bkp_db;


use stylexcarz_bkp_db;


create table orders_bkp select * from stylexcarz_db.orders;
select * from orders_bkp;













