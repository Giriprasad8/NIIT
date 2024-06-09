use sakila;

-- task 1 actors names and id

select first_name,last_name,actor_id,last_update from actor;

-- task 2 A.fullnames

select concat(first_name,last_name) as full_name from actor;

-- task 2 B.first names and count

select first_name,count(*) as name_count from actor
group by first_name
order by name_count desc,first_name;

-- task 2 C. last name	 and count 

select last_name ,count(*) as name_count from actor
group by last_name
order by name_count desc,last_name;


 -- task 3 display movie by ratings
 
 select rating ,count(*) as movies_count from film
 group by rating
 order by movies_count desc,rating;
 
 -- task 4 avg rental rates of movies
 
 select rating,avg(rental_rate) as average_rental_rate from film
 group by rating
 order by average_rental_rate desc;
 
 -- task 5 A. Display the movie titles where the replacement cost is up to $9.
 
 select * from film;
 select title,replacement_cost from film
 where replacement_cost<=9.00;
 
 -- task 5 B Display the movie titles where the replacement cost is between $15 and $20.
 
 select title,replacement_cost from film
 where replacement_cost between 15 and 20;
 
 -- task 5 C.Display the movie titles with the highest replacement cost and the lowest rental cost
 
  select * from film
  where replacement_cost=(select max(replacement_cost) from film)
  or rental_rate=(select min(rental_rate) from film);
  
  -- task 6 list all movies along with the actors id 
  
  select film.title,count(film_actor.actor_id) as actor_count from film
  join  film_actor using(film_id)
  group by film.title,film_id
  order by actor_count desc;
  
  -- task 7 movie name starting with letter 'K' and 'Q'
  
  select title from film
  where title like 'k%' or title like 'q%';
  
  -- task 8 'AGENT TRUMAN'  first name ,last name and 
  
  select actor.first_name,actor.last_name from actor
  join film_actor using(actor_id)
  join film using(film_id)
  where title='AGENT TRUMAN';
  
  -- task 9 display the namas of family category movies
  
  select * from category;
  select film.title from film
  join film_category using(film_id)
  join category using(category_id)
  where name in ('children','family');
 
 -- task 10 frequently rented movies
 
select film.title,count(rental.rental_id) as rental_count from film
join inventory using(film_id)
join rental using(inventory_id)
group by film.title
order by rental_count desc,film.title;

-- task 11 display the movies with average difference

SELECT COUNT(DISTINCT film_category.category_id) as category_count from film
join  film_category using (film_id)
group by  film_category.category_id
having avg(film.replacement_cost - film.rental_rate) > 15;

-- task 12  Display the names of these genres and number of movies per genre, sorted by the number of movies

select category.name as genre,count(film_category.film_id) as movie_count from category
join film_category using(category_id)
group by genre
having movie_count between 60 and 70
order by movie_count;


