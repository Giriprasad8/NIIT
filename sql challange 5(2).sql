use sakila;

-- task 1 Identify and display the film/movie IDs and the existing number of copies for the following movies

select f.film_id,f.title as film_title,
count(i.inventory_id) as number_of_copies
from film f
join inventory i on f.film_id = i.film_id
where f.title in ('brotherhood blanket', 'soup wisdom')
group by f.film_id, f.title
order by f.film_id;

-- task 2 calculate and display total number of movie in each genre

select name as genre,count(film.film_id) as total_movies
from film
join film_category using(film_id)
join category using (category_id)
group by name
order by total_movies desc;

-- task 3 Display the first names and last names of the top 3 actors whose movies have
--        the highest replacement cost.

select first_name,last_name,sum(film.replacement_cost) as total_replacement_cost
from actor
join film_actor using(actor_id)
join film using (film_id)
group by actor_id
order by total_replacement_cost desc
limit 3;

-- task 4  movies based on total sales amount 

select
case
When c.name like'Doc%' then'Actual incidents'
when c.name like'Fore%' then 'Political issues'
when c.name like'Horror' then 'Mystery'
when c.name like 'Sci%' or c.name like 'Drama' or c.name like 'Animation' then 'Fiction'
end as 'Movie_category',
sum(p.amount) as 'Total Revenues Amount' from category c
join film_category fc on c.category_id = fc.category_id
join film f on fc.film_id = f.film_id
join inventory i on f.Film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join payment p on r.rental_id = p.rental_id
group by Movie_category
order by sum(p.amount)
limit 4;





