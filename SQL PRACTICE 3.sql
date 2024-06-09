use sakila;
---/*task 1  identify inactive */
select * from customer;

select* from customer
where active=0;

---/*task 2   identofy first name ,last name ,email  */

select first_name,last_name,email from customer
where active=0;

---/*task 3 indentify highest number of inactive*/


select store_id from customer
where active=0
order by 1 desc;

---/*task 4  identify pg-13 title */


select * from film;
select title from film
where rating='pg-13';

---/*task 5 top three length movies */

select * from film;
select title,length>90 from film
where rating='pg-13'
order by 1 desc
limit 3;


---/* task 6 rental duration*/
select * from film
where rating='pg-13'
order by rental_duration desc
limit 1;


---/*task 7 avg rental rate*/


select avg(rental_rate) from film;


---/*task 8 total replacement cost */

select sum(replacement_cost) from film;

select * from film_category;
select * from category;


---/* task 9 count of 'animation' and 'children'*/


select
(select count(*) from film_category where category_id  =(select category_id from category where name ='animation')) as animation_count,
(select count(*) from film_category where category_id  =(select category_id from category where name ='children')) as children_count;







